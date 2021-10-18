.class public Lex6;


#To assemble and run this on a phone or emulator:
#
#java -jar smali.jar a -o classes.dex Facto.smali
#zip Facto.zip classes.dex
#adb push Facto.zip /data/local/tmp
#adb shell dalvikvm -cp /data/local/tmp/Facto.zip Facto
#
#if you get out of memory type errors when running smali.jar, try
#java -Xmx512m -jar smali.jar Facto.smali
#instead
# java -jar .\smali-2.5.2.jar a -o classes.dex ex6.smali ; zip ex6.zip classes.dex ; adb push ex6.zip /data/local/tmp; adb shell dalvikvm -cp /data/local/tmp/ex6.zip ex6

.super Ljava/lang/Object;

.method public static main([Ljava/lang/String;)V
    .registers 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
    const/16 v1, 10
    const v2, 1
    const/4 v3, 1

    :start
    if-lez v1, :end
    mul-int v2, v2, v1
    sub-int v1, v1, v3
    goto :start

    :end
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(I)V
    return-void
.end method