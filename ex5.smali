.class public LExpression;

#Compute and display the value of the expression (7+1)*(8-3)
#To assemble and run this on a phone or emulator:
#
#java -jar smali.jar a -o classes.dex Expression.smali
#zip Expression.zip classes.dex
#adb push Expression.zip /data/local/tmp
#adb shell dalvikvm -cp /data/local/tmp/Expression.zip Expression
#
#if you get out of memory type errors when running smali.jar, try
#java -Xmx512m -jar smali.jar Expression.smali
#instead

# java -jar .\smali-2.5.2.jar a -o classes.dex ex5.smali ; zip ex5.zip classes.dex ; adb push ex5.zip /data/local/tmp; adb shell dalvikvm -cp /data/local/tmp/ex5.zip Expression


.super Ljava/lang/Object;

.method public static main([Ljava/lang/String;)V
    .registers 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const v1,7
    const v2,1
    add-int v1, v1, v2

    const v2,8
    const v3,3
    sub-int v2,v2,v3

    mul-int v1,v1,v2

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    return-void
.end method