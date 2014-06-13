module: dfmc-testing

define suite dfmc-test-suite ()
  suite dfmc-typist-algebra-suite;
end;

define function callback-handler (#rest args)
  format-out("%=\n", args);
end function callback-handler;

define function main()
  let project = find-project("dylan");
  open-project-compiler-database(project,
                                 warning-callback: callback-handler,
                                 error-handler: callback-handler);

  run-typist-inference-tests(safely?: #f);

  run-test-application(dfmc-test-suite);
end;

main();