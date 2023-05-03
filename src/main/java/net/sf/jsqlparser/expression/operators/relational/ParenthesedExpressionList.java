package net.sf.jsqlparser.expression.operators.relational;

import net.sf.jsqlparser.expression.Expression;
import net.sf.jsqlparser.statement.select.PlainSelect;

import java.util.Arrays;
import java.util.Collection;

public class ParenthesedExpressionList<T extends Expression> extends ExpressionList<T> {
    public ParenthesedExpressionList() {}

    public ParenthesedExpressionList(ExpressionList<T> expressions) {
        addAll(expressions);
    }

    public ParenthesedExpressionList(T... expressions) {
        addAll(Arrays.asList(expressions));
    }

    public ParenthesedExpressionList(Collection<T> expressions) {
        addAll(expressions);
    }

    public static ParenthesedExpressionList<?> from(ExpressionList<?> expressions) {
        return new ParenthesedExpressionList(expressions);
    }

    @Override
    public void accept(ItemsListVisitor itemsListVisitor) {
        itemsListVisitor.visit(this);
    }

    @Override
    public String toString() {
        return PlainSelect.getStringList(this, true, true);
    }
}