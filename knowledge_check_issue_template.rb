# frozen_string_literal: true

class KnowledgeCheckIssueTemplate
  def initialize(course_name, lesson_name, reference_issue)
    @course_name = course_name
    @lesson_name = lesson_name
    @reference_issue = reference_issue
  end

  def title
    "Add missing Knowledge Checks, Learning Outcomes, and Knowledge Check links to #{@course_name}/#{@lesson_name}"
  end

  def body
"Related to #{@reference_issue}

This task is to go through the #{@lesson_name} lesson in the #{@course_name} course and (as applicable):

- Add missing Learning Outcomes
- Add missing Knowledge Checks
- Add answer links in the Knowledge Checks

If the lesson already has Learning Outcomes or Knowledge Checks they do not need to be added to. Many lessons only need answer links added.

Knowledge check links should consist of an `<a>` tag which adds the `knowledge-check-link` class and links to the part of the lesson (or the external resource that is linked in the lesson) where the answer to the Knowledge Check can be found. Knowledge Check links should **not** point to external resources that weren't linked to as part of the lesson content or assignment. You can link to a specific line in the lesson like so:

```html
Lorem ipsum dolor sit amet, <span id='example-knowledge-check'>consectetur adipiscing elit</span>, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua

...
<!-- This a tag just goes to the page where the span with this id lives -->
<a class='knowledge-check-link' href='#example-knowledge-check'>How do you return a value from a function?</a>
```
Or you can link to just a section of the lesson by just linking to the section heading and following [these](https://github.com/TheOdinProject/curriculum/wiki/Contributing-to-Wiki#anchor-linking) rules for determining how to format the link. Example:

```html
### Lorem ipsum dolor sit amet

sed do eiusmod tempor incididunt ut labore et dolore magna aliqua

...
<!-- This a tag just goes to a heading on the page-->
<a class='knowledge-check-link' href='#lorem-ipsum-dolor-sit-amet'>How do you return a value from a function?</a>
```

### Acceptance Criteria

- [ ] Lesson referenced in the title has Learning Outcomes, Knowledge Checks, and Knowledge Check links
- [ ] Knowledge Check links all link to the proper place in the lesson, or the proper external resource that was linked to earlier in the lesson
- [ ] Knowledge Check styling should **not** change

Please do not start work on this unless you've been assigned to it. Comment on this issue and ping me @wise-king-sullyman if you would like to be assigned to it.

Additionally, we would like for contributors to only take on one of these issues at a time. Please only request assignment for (and begin work on) an issue after the Learning Outcome/Knowledge Check/Knowledge Check link issue you're currently assigned to has been approved and merged."
  end
end