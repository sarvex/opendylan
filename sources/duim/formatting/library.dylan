Module:       Dylan-User
Synopsis:     DUIM output formatting
Author:       Scott McKay
Copyright:    Original Code is Copyright (c) 1995-2004 Functional Objects, Inc.
              All rights reserved.
License:      See License.txt in this distribution for details.
Warranty:     Distributed WITHOUT WARRANTY OF ANY KIND

define library duim-formatting
  use dylan;

  use duim-utilities;
  use duim-geometry;
  use duim-DCs;
  use duim-sheets;
  use duim-graphics;  
  use duim-layouts;
  use duim-gadgets;
  use duim-frames;
  use duim-recording;

  export duim-formatting;
  export duim-formatting-internals;
end library duim-formatting;
