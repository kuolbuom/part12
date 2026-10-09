import { render, screen } from "@testing-library/react";
import { describe, it, expect } from "vitest";
//import Todo component amended to import from the correct path
import Todo from "./Todo";
//describe block to group related tests for the Todo component
describe("Todo component", () => {
  //test case to check if the Todo component renders the todo text correctly
  it("renders the todo text", () => {
    //mock todo object to be passed as a prop to the Todo component
    const todo = {
      id: 1,
      text: "Write code",
    };
    //render the Todo component with the mock todo object
    render(<Todo todo={todo} />);
    //assertion to check if the todo text is present in the document
    expect(screen.getByText("Write code")).toBeInTheDocument();
  });
});
