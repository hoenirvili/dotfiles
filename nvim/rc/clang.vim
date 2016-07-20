let g:clang_format#code_style="Webkit"
let g:clang_format#style_options = {
                \ "AccessModifierOffset" : -4,
				\ "AlignAfterOpenBracket" : "Align",
                \ "AllowShortIfStatementsOnASingleLine" : "true",
				\ "AlignEscapedNewlinesLeft" : "true",
				\ "AlignTrailingComments" : "true",
                \ "AlignConsecutiveAssignments" : "true",
                \ "AllowShortCaseLabelsOnASingleLine" : "true",
                \ "AllowShortLoopsOnASingleLine" : "false",
                \ "AlwaysBreakAfterDefinitionReturnType": "None",
                \ "AlwaysBreakTemplateDeclarations": 'true',
                \ "BreakBeforeBinaryOperators" : "All",
                \ "BreakBeforeBraces" : "WebKit",
                \ "KeepEmptyLinesAtTheStartOfBlocks" : "false",
                \ "ObjCBlockIndentWidth" : 20,
                \ "PointerAlignment" : "Right",
                \ "ReflowComments" : 'true',
                \ "SpaceBeforeAssignmentOperators" : 'true',
                \ "SpaceBeforeParens" : "ControlStatements",
                \ "SpacesBeforeTrailingComments" : 20,
                \ "SpacesInParentheses" : "false",
                \ "Standard" : "Auto",
                \ "UseTab" : "Always",
				\ "TabWidth" : 4,
				\ "SpacesInSquareBrackets": "false"}

let g:clang_format#auto_formatexpr=1
