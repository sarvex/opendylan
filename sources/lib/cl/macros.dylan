Module:    CL-internals
Author:    Scott McKay
Copyright:    Original Code is Copyright (c) 1995-2004 Functional Objects, Inc.
              All rights reserved.
License:      See License.txt in this distribution for details.
Warranty:     Distributed WITHOUT WARRANTY OF ANY KIND

// 'push!' and 'pop!' are intended to be called only on lists
define macro push!
  { push! (?list:expression, ?item:expression) }
    => { ?list := add!(?list, ?item) }
end macro push!;

define macro pop!
  { pop! (?list:expression) }
    => { begin
           let _result = head(?list);
           ?list := tail(?list);
           _result
	 end }
end macro pop!;

