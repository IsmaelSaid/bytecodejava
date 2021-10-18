.class public Lex4;
#Commandes 
# java -jar .\smali-2.5.2.jar a -o classes.dex ex4.smali
#zip ex4.zip classes.dex
# adb push ex4.zip /data/local/tmp
#adb shell dalvikvm -cp /data/local/tmp/ex4.zip ex4

.super Ljava/lang/Object;

.method public static main([Ljava/lang/String;)V
    .registers 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
    
    const-string	v1, "Hello World!"
    const v2,20 
    const v3,1
    :debut
    if-eqz v2, :fin
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    # --
    sub-int v2, v2, v3 
    goto :debut
    :fin 

    return-void
.end method