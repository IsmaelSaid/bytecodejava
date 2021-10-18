.class public LFacto;


# java -jar .\smali-2.5.2.jar a -o classes.dex ex7.smali ; zip ex7.zip classes.dex ; adb push ex7.zip /data/local/tmp; adb shell dalvikvm -cp /data/local/tmp/ex7.zip Facto


.super Ljava/lang/Object;

.method public static facto(I)I
    .registers 2

    const v0, 1

    if-lez p0, :end

    sub-int v0, p0, v0
    invoke-static {v0}, LFacto;->facto(I)I
    move-result v0
    mul-int v0, p0, v0

    :end
    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const v1, 10
    invoke-static {v1}, LFacto;->facto(I)I
    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    return-void
.end method