module Test.Main where


import Prelude

import Effect (Effect)
import Test.Async (asyncTest)
import Test.GraphQL.Execution (executionSpec, introspectionSpec)
import Test.GraphQL.Execution.Result (executionResultSpec)
import Test.GraphQL.Language.Parser (parserSpec)
import Test.Spec.Reporter (consoleReporter)
import Test.Spec.Runner.Node (runSpecAndExitProcess)

main :: Effect Unit
main = runSpecAndExitProcess [consoleReporter] do
  parserSpec
  executionSpec
  introspectionSpec
  executionResultSpec
  asyncTest