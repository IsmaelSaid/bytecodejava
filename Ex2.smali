.class public LEx2;
#Commandes 
# java -jar .\smali-2.5.2.jar a -o classes.dex Ex2.smali
#zip ex2.zip classes.dex
# adb push ex2.zip /data/local/tmp
#cl

.super Ljava/lang/Object;

.method public static main([Ljava/lang/String;)V
    .registers 4

    sget-object v0, Ljava/lang/Systexm;->out:Ljava/io/PrintStream;

    const-string v1,"hell world"

    const v1,7
    const v2,1
    add-int v1,v1,v2



    const v2,8
    const v3,3 
    sub-int v2,v2,v3


    mul-int v1,v1,v2
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

  
    return-void
.end method