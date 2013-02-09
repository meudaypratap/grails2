import org.codenarc.rule.AbstractRule
import org.codenarc.source.SourceCode

class MyStaticFieldRule extends AbstractRule {
	String name = 'MyStaticField'
	int priority = 2

	void applyTo(SourceCode sourceCode, List violations) {
		sourceCode.ast.classes.each { clazz ->
			clazz.fields.each { fieldNode ->
				if (fieldNode.static) {
					violations << createViolation(sourceCode, fieldNode)
				}
			}
		}
	}
}
