.class public Lex8;


# java -jar .\smali-2.5.2.jar a -o classes.dex ex8.smali ; zip ex8.zip classes.dex ; adb push ex8.zip /data/local/tmp; adb shell dalvikvm -cp /data/local/tmp/ex8.zip ex8


.super Ljava/lang/Object;


.method public static main([Ljava/lang/String;)V
    .registers 3
    array-length v0,v2 
    const v0,v2

    

    return-void
.end method