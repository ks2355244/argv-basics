# Place your solutions here
class RPNCalculator
    def evaluate(expression)
        expression = expression.split
        operands = []
        evaluation = []

        expression.each do |x|
            case x
                when /\d/
                    evaluation.push(x.to_f)
                when "-", "/", "*", "+", "**"
                    operands = evaluation.pop(2)
                    evaluation.push(operands[0].send(x, operands[1]))
            end
        end
        puts evaluation(3 + 4)
    end
end

puts ARGV.join('') + "ay"