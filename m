Return-Path: <ashish.dalela@gmail.com>
Received: from mail-yk0-f170.google.com (mail-yk0-f170.google.com
	[209.85.160.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1405BE00746
	for <yocto@yoctoproject.org>; Wed, 12 Feb 2014 23:35:12 -0800 (PST)
Received: by mail-yk0-f170.google.com with SMTP id 9so18294655ykp.1
	for <yocto@yoctoproject.org>; Wed, 12 Feb 2014 23:35:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=oj8nEz7W3cjKtS9eU3O4UWuxFgi/+nZszPi/AIW1pkY=;
	b=wjTlkGI24C3B/CXiCKWageQ2rWEKJINvVTXG701R+pKj1rDcgzz0merzzdLvNmLUuz
	pdm3px47D+gyWR/MgRdYFZCzeBcLSfE00tjZPSHieNsMPU/VldQMLNhMfsOd9frrPNKR
	TFH0oiOjrIqo4UZWksYzYVBdT/29CxIuF2hNZCC6egWY4eQU8B65DGoCCVNUB+nCGf7d
	I8QJyeNLuvIJk65Y7vmgNHojQXhP7aJ7494nt9jGSl+MfvSWjswixosJWrf7BGPaCpvt
	6dJbxnuwK8stW3IRUk3RNAezo75olwMHegMyJuCVnZ9cGbtnouV3c6Kd7kGvweEV4BwA
	Jzgw==
MIME-Version: 1.0
X-Received: by 10.236.90.144 with SMTP id e16mr8571yhf.142.1392276911452; Wed,
	12 Feb 2014 23:35:11 -0800 (PST)
Received: by 10.170.130.5 with HTTP; Wed, 12 Feb 2014 23:35:11 -0800 (PST)
In-Reply-To: <CAE_REAvKGCm4k=UZvG7UDe6updeBs-TYNGVa+BtoF4jUPFbwhQ@mail.gmail.com>
References: <CABhkJRdZ9zR+Pn8dWtNe2Xeob5QhcXTZPkNoNGgd_yHmbDzJKg@mail.gmail.com>
	<CAE_REAvKGCm4k=UZvG7UDe6updeBs-TYNGVa+BtoF4jUPFbwhQ@mail.gmail.com>
Date: Thu, 13 Feb 2014 13:05:11 +0530
Message-ID: <CABhkJRdrR2EeadeZHQBhmLei1Yb-T454F1bE7xZTyMK4n_zGzQ@mail.gmail.com>
From: Ashish Dalela <ashish.dalela@gmail.com>
To: Gaurang Shastri <gmshastri@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: meta-java compilation failure
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 13 Feb 2014 07:35:15 -0000
Content-Type: multipart/alternative; boundary=20cf300faa67bc79b804f244ba0c

--20cf300faa67bc79b804f244ba0c
Content-Type: text/plain; charset=ISO-8859-1

I see these in my tree:

build/tmp/sysroots/x86_64-linux/usr/share/java/gnumail-1.1.2.jar
./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/source/javax/mail
./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/javamail.providers.in
./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/javamail.providers
./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/javamail.address.map.in
./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/javamail.address.map
./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/classes/javax/mail
./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/javamail.charset.map
./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/META-INF/javamail.default.address.map
./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/META-INF/javamail.default.providers
./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/META-INF/javamail.charset.map

Since I'm building java, I should not have to import an external JAR right?

Thanks
-Ashish



On Thu, Feb 13, 2014 at 12:59 PM, Gaurang Shastri <gmshastri@gmail.com>wrote:

> Hi,
>
> The main error is
>  DEBUG: Executing shell function do_compile
> | ----------
> | 1. WARNING in src/main/java/org/apache/log4j/spi/NOPLogger.java (at line
> 59)
> |       void closeNestedAppenders() {
> |            ^^^^^^^^^^^^^^^^^^^^^^
> | The method NOPLogger.closeNestedAppenders() does not override the
> inherited method from Category since it is private to a different package
> | ----------
> | ----------
> | 2. ERROR in src/main/java/org/apache/log4j/net/SMTPAppender.java (at
> line 1)
> |       /*
> |       ^
> | The type javax.mail.Transport cannot be resolved. It is indirectly
> referenced from required .class files
> | ----------
> | 3. ERROR in src/main/java/org/apache/log4j/net/SMTPAppender.java (at
> line 39)
> |       import javax.mail.Transport;
> |              ^^^^^^^^^^^^^^^^^^^^
> | The import javax.mail.Transport cannot be resolved
> | ----------
> | 4. ERROR in src/main/java/org/apache/log4j/net/SMTPAppender.java (at
> line 416)
> |       Transport.send(msg);
> |       ^^^^^^^^^
> | Transport cannot be resolved
>
> Do your java contain mail.jar ??
>
> //Gaurang
>
>
>
> On Thu, Feb 13, 2014 at 6:46 AM, Ashish Dalela <ashish.dalela@gmail.com>wrote:
>
>>
>> Hi
>>
>> I'm facing the below compilation failure while doing "bitbake
>> openjdk-7-jre". Any suggestions on how to fix this?
>>
>> Thanks!
>>
>> Log data follows:
>> | DEBUG: Executing shell function do_compile
>> | ----------
>> | 1. WARNING in src/main/java/org/apache/log4j/spi/NOPLogger.java (at
>> line 59)
>> |       void closeNestedAppenders() {
>> |            ^^^^^^^^^^^^^^^^^^^^^^
>> | The method NOPLogger.closeNestedAppenders() does not override the
>> inherited method from Category since it is private to a different package
>> | ----------
>> | ----------
>> | 2. ERROR in src/main/java/org/apache/log4j/net/SMTPAppender.java (at
>> line 1)
>> |       /*
>> |       ^
>> | The type javax.mail.Transport cannot be resolved. It is indirectly
>> referenced from required .class files
>> | ----------
>> | 3. ERROR in src/main/java/org/apache/log4j/net/SMTPAppender.java (at
>> line 39)
>> |       import javax.mail.Transport;
>> |              ^^^^^^^^^^^^^^^^^^^^
>> | The import javax.mail.Transport cannot be resolved
>> | ----------
>> | 4. ERROR in src/main/java/org/apache/log4j/net/SMTPAppender.java (at
>> line 416)
>> |       Transport.send(msg);
>> |       ^^^^^^^^^
>> | Transport cannot be resolved
>> | ----------
>> | ----------
>> | 5. WARNING in
>> src/main/java/org/apache/log4j/lf5/viewer/LogFactor5InputDialog.java (at
>> line 38)
>> |       public class LogFactor5InputDialog extends LogFactor5Dialog {
>> |                    ^^^^^^^^^^^^^^^^^^^^^
>> | The serializable class LogFactor5InputDialog does not declare a static
>> final serialVersionUID field of type long
>> | ----------
>> | 6. WARNING in
>> src/main/java/org/apache/log4j/lf5/viewer/LogFactor5InputDialog.java (at
>> line 88)
>> |       hide();
>> |       ^^^^^^
>> | The method hide() from the type Dialog is deprecated
>> | ----------
>> | 7. WARNING in
>> src/main/java/org/apache/log4j/lf5/viewer/LogFactor5InputDialog.java (at
>> line 96)
>> |       hide();
>> |       ^^^^^^
>> | The method hide() from the type Dialog is deprecated
>> | ----------
>> | 8. WARNING in
>> src/main/java/org/apache/log4j/lf5/viewer/LogFactor5InputDialog.java (at
>> line 103)
>> |       hide();
>> |       ^^^^^^
>> | The method hide() from the type Dialog is deprecated
>> | ----------
>> | ----------
>> | 9. WARNING in
>> src/main/java/org/apache/log4j/lf5/viewer/LogBrokerMonitor.java (at line
>> 826)
>> |       JMenuItem menuItem = result;
>> |                 ^^^^^^^^
>> | The local variable menuItem is never read
>> | ----------
>> | 10. WARNING in
>> src/main/java/org/apache/log4j/lf5/viewer/LogBrokerMonitor.java (at line
>> 945)
>> |       JMenuItem exitMI;
>> |                 ^^^^^^
>> | The local variable exitMI is never read
>> | ----------
>> | 11. WARNING in
>> src/main/java/org/apache/log4j/lf5/viewer/LogBrokerMonitor.java (at line
>> 1097)
>> |       LogFactor5ErrorDialog error = new LogFactor5ErrorDialog(
>> |                             ^^^^^
>> | The local variable error is never read
>> | ----------
>> | 12. WARNING in
>> src/main/java/org/apache/log4j/lf5/viewer/LogBrokerMonitor.java (at line
>> 1277)
>> |       fonts = tk.getFontList();
>> |                  ^^^^^^^^^^^^^
>> | The method getFontList() from the type Toolkit is deprecated
>> | ----------
>> | 13. WARNING in
>> src/main/java/org/apache/log4j/lf5/viewer/LogBrokerMonitor.java (at line
>> 1459)
>> |       LogFactor5ErrorDialog error = new LogFactor5ErrorDialog(
>> |                             ^^^^^
>> | The local variable error is never read
>> | ----------
>> | 14. WARNING in
>> src/main/java/org/apache/log4j/lf5/viewer/LogBrokerMonitor.java (at line
>> 1506)
>> |       LogFactor5ErrorDialog error = new LogFactor5ErrorDialog(
>> |                             ^^^^^
>> | The local variable error is never read
>> | ----------
>> | 15. WARNING in
>> src/main/java/org/apache/log4j/lf5/viewer/LogBrokerMonitor.java (at line
>> 1569)
>> |       LogFactor5ErrorDialog error = new LogFactor5ErrorDialog(
>> |                             ^^^^^
>> | The local variable error is never read
>> | ----------
>> | 16. WARNING in
>> src/main/java/org/apache/log4j/lf5/viewer/LogBrokerMonitor.java (at line
>> 1586)
>> |       LogFactor5ErrorDialog error = new LogFactor5ErrorDialog(
>> |                             ^^^^^
>> | The local variable error is never read
>> | ----------
>> | ----------
>> | 17. WARNING in
>> src/main/java/org/apache/log4j/lf5/viewer/FilteredLogTableModel.java (at
>> line 39)
>> |       public class FilteredLogTableModel
>> |                    ^^^^^^^^^^^^^^^^^^^^^
>> | The serializable class FilteredLogTableModel does not declare a static
>> final serialVersionUID field of type long
>> | ----------
>> | ----------
>> | 18. WARNING in
>> src/main/java/org/apache/log4j/lf5/viewer/LogFactor5LoadingDialog.java (at
>> line 35)
>> |       public class LogFactor5LoadingDialog extends LogFactor5Dialog {
>> |                    ^^^^^^^^^^^^^^^^^^^^^^^
>> | The serializable class LogFactor5LoadingDialog does not declare a
>> static final serialVersionUID field of type long
>> | ----------
>> | ----------
>> | 19. WARNING in
>> src/main/java/org/apache/log4j/lf5/viewer/LogFactor5Dialog.java (at line 42)
>> |       public abstract class LogFactor5Dialog extends JDialog {
>> |                             ^^^^^^^^^^^^^^^^
>> | The serializable class LogFactor5Dialog does not declare a static final
>> serialVersionUID field of type long
>> | ----------
>> | 20. WARNING in
>> src/main/java/org/apache/log4j/lf5/viewer/LogFactor5Dialog.java (at line 69)
>> |       super.show();
>> |             ^^^^^^
>> | The method show() from the type Dialog is deprecated
>> | ----------
>> | ----------
>> | 21. WARNING in
>> src/main/java/org/apache/log4j/lf5/viewer/LogFactor5ErrorDialog.java (at
>> line 38)
>> |       public class LogFactor5ErrorDialog extends LogFactor5Dialog {
>> |                    ^^^^^^^^^^^^^^^^^^^^^
>> | The serializable class LogFactor5ErrorDialog does not declare a static
>> final serialVersionUID field of type long
>> | ----------
>> | 22. WARNING in
>> src/main/java/org/apache/log4j/lf5/viewer/LogFactor5ErrorDialog.java (at
>> line 60)
>> |       hide();
>> |       ^^^^^^
>> | The method hide() from the type Dialog is deprecated
>> | ----------
>> | ----------
>> | 23. WARNING in
>> src/main/java/org/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor.java
>> (at line 93)
>> |       CategoryNode node = (CategoryNode) path.getLastPathComponent();
>> |                    ^^^^
>> | The local variable node is never read
>> | ----------
>> | 24. WARNING in
>> src/main/java/org/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor.java
>> (at line 94)
>> |       boolean rv = false;
>> |               ^^
>> | The local variable rv is never read
>> | ----------
>> | ----------
>> | 25. WARNING in
>> src/main/java/org/apache/log4j/lf5/LogLevelFormatException.java (at line 30)
>> |       public class LogLevelFormatException extends Exception {
>> |                    ^^^^^^^^^^^^^^^^^^^^^^^
>> | The serializable class LogLevelFormatException does not declare a
>> static final serialVersionUID field of type long
>> | ----------
>> | ----------
>> | 26. WARNING in
>> src/main/java/org/apache/log4j/lf5/util/LogFileParser.java (at line 162)
>> |       LogFactor5ErrorDialog error = new LogFactor5ErrorDialog(
>> |                             ^^^^^
>> | The local variable error is never read
>> | ----------
>> | 27. WARNING in
>> src/main/java/org/apache/log4j/lf5/util/LogFileParser.java (at line 171)
>>  |       _loadDialog.hide();
>> |                   ^^^^^^
>> | The method hide() from the type Dialog is deprecated
>> | ----------
>> | ----------
>> | 28. WARNING in
>> src/main/java/org/apache/log4j/lf5/util/AdapterLogRecord.java (at line 33)
>> |       public class AdapterLogRecord extends LogRecord {
>> |                    ^^^^^^^^^^^^^^^^
>> | The serializable class AdapterLogRecord does not declare a static final
>> serialVersionUID field of type long
>> | ----------
>> | ----------
>> | 29. WARNING in src/main/java/org/apache/log4j/lf5/LogLevel.java (at
>> line 42)
>> |       public class LogLevel implements java.io.Serializable {
>> |                    ^^^^^^^^
>> | The serializable class LogLevel does not declare a static final
>> serialVersionUID field of type long
>> | ----------
>> | ----------
>> | 30. WARNING in src/main/java/org/apache/log4j/lf5/LogRecord.java (at
>> line 33)
>> |       public abstract class LogRecord implements java.io.Serializable {
>> |                             ^^^^^^^^^
>> | The serializable class LogRecord does not declare a static final
>> serialVersionUID field of type long
>> | ----------
>> | ----------
>> | 31. WARNING in src/main/java/org/apache/log4j/lf5/Log4JLogRecord.java
>> (at line 32)
>> |       public class Log4JLogRecord extends LogRecord {
>> |                    ^^^^^^^^^^^^^^
>> | The serializable class Log4JLogRecord does not declare a static final
>> serialVersionUID field of type long
>> | ----------
>> | ----------
>> | 32. WARNING in src/main/java/org/apache/log4j/chainsaw/DetailPanel.java
>> (at line 37)
>> |       class DetailPanel
>> |             ^^^^^^^^^^^
>> | The serializable class DetailPanel does not declare a static final
>> serialVersionUID field of type long
>> | ----------
>> | 33. WARNING in src/main/java/org/apache/log4j/chainsaw/DetailPanel.java
>> (at line 42)
>> |       private static final Logger LOG =
>> |                                   ^^^
>> | The field DetailPanel.LOG is never read locally
>> | ----------
>> | ----------
>> | 34. WARNING in src/main/java/org/apache/log4j/chainsaw/Main.java (at
>> line 44)
>> |       public class Main
>> |                    ^^^^
>> | The serializable class Main does not declare a static final
>> serialVersionUID field of type long
>> | ----------
>> | ----------
>> | 35. WARNING in
>> src/main/java/org/apache/log4j/chainsaw/LoadXMLAction.java (at line 40)
>> |       class LoadXMLAction
>> |             ^^^^^^^^^^^^^
>> | The serializable class LoadXMLAction does not declare a static final
>> serialVersionUID field of type long
>> | ----------
>> | ----------
>> | 36. WARNING in
>> src/main/java/org/apache/log4j/chainsaw/MyTableModel.java (at line 37)
>> |       class MyTableModel
>> |             ^^^^^^^^^^^^
>> | The serializable class MyTableModel does not declare a static final
>> serialVersionUID field of type long
>> | ----------
>> | 37. WARNING in
>> src/main/java/org/apache/log4j/chainsaw/MyTableModel.java (at line 142)
>> |       private Priority mPriorityFilter = Priority.DEBUG;
>> |                                                   ^^^^^
>> | The field Priority.DEBUG is deprecated
>> | ----------
>> | ----------
>> | 38. WARNING in src/main/java/org/apache/log4j/chainsaw/ExitAction.java
>> (at line 29)
>> |       class ExitAction
>> |             ^^^^^^^^^^
>> | The serializable class ExitAction does not declare a static final
>> serialVersionUID field of type long
>> | ----------
>> | ----------
>> | 39. WARNING in
>> src/main/java/org/apache/log4j/chainsaw/ControlPanel.java (at line 40)
>> |       class ControlPanel extends JPanel {
>> |             ^^^^^^^^^^^^
>> | The serializable class ControlPanel does not declare a static final
>> serialVersionUID field of type long
>> | ----------
>> | 40. WARNING in
>> src/main/java/org/apache/log4j/chainsaw/ControlPanel.java (at line 42)
>> |       private static final Logger LOG =
>> |                                   ^^^
>> | The field ControlPanel.LOG is never read locally
>> | ----------
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--20cf300faa67bc79b804f244ba0c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-family:arial,sans-serif;font-size:13.3=
33333969116211px">I see these in my tree:</span><div style=3D"font-family:a=
rial,sans-serif;font-size:13.333333969116211px"><br><div>build/tmp/sysroots=
/x86_64-linux/usr/share/java/gnumail-1.1.2.jar</div>
<div><div>./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/source/javax/ma=
il</div><div>./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/<a href=3D"h=
ttp://javamail.providers.in/" target=3D"_blank">javamail.providers.in</a></=
div>
<div>./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/javamail.providers</=
div><div>./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/<a href=3D"http:=
//javamail.address.map.in/" target=3D"_blank">javamail.address.map.in</a></=
div>
<div>./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/javamail.address.map=
</div><div>./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/classes/javax/=
mail</div><div>./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/javamail.c=
harset.map</div>
<div>./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/META-INF/javamail.de=
fault.address.map</div><div>./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1=
.2/META-INF/javamail.default.providers</div><div>./x86_64-linux/gnumail-nat=
ive/1.1.2-r1/mail-1.1.2/META-INF/javamail.charset.map</div>
</div><div><br></div><div>Since I&#39;m building java, I should not have to=
 import an external JAR right?</div><div><br></div><div>Thanks</div><div>-A=
shish</div><div><br></div></div></div><div class=3D"gmail_extra"><br><br>
<div class=3D"gmail_quote">On Thu, Feb 13, 2014 at 12:59 PM, Gaurang Shastr=
i <span dir=3D"ltr">&lt;<a href=3D"mailto:gmshastri@gmail.com" target=3D"_b=
lank">gmshastri@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex">
<div dir=3D"ltr">Hi,<div><br></div><div>The main error is=A0</div><div clas=
s=3D""><div><div style=3D"font-family:arial,sans-serif;font-size:13px">=A0D=
EBUG: Executing shell function do_compile</div><div style=3D"font-family:ar=
ial,sans-serif;font-size:13px">

| ----------</div><div style=3D"font-family:arial,sans-serif;font-size:13px=
">| 1. WARNING in src/main/java/org/apache/log4j/spi/NOPLogger.java (at lin=
e 59)</div><div style=3D"font-family:arial,sans-serif;font-size:13px">| =A0=
 =A0 =A0 void closeNestedAppenders() {</div>

<div style=3D"font-family:arial,sans-serif;font-size:13px">| =A0 =A0 =A0 =
=A0 =A0 =A0^^^^^^^^^^^^^^^^^^^^^^</div><div style=3D"font-family:arial,sans=
-serif;font-size:13px">| The method NOPLogger.closeNestedAppenders() does n=
ot override the inherited method from Category since it is private to a dif=
ferent package</div>

<div style=3D"font-family:arial,sans-serif;font-size:13px">| ----------</di=
v><div style=3D"font-family:arial,sans-serif;font-size:13px">| ----------</=
div><div style=3D"font-family:arial,sans-serif;font-size:13px">| 2. ERROR i=
n src/main/java/org/apache/log4j/net/SMTPAppender.java (at line 1)</div>

<div style=3D"font-family:arial,sans-serif;font-size:13px">| =A0 =A0 =A0 /*=
</div><div style=3D"font-family:arial,sans-serif;font-size:13px">| =A0 =A0 =
=A0 ^</div><div style=3D"font-family:arial,sans-serif;font-size:13px">| The=
 type javax.mail.Transport cannot be resolved. It is indirectly referenced =
from required .class files</div>

<div style=3D"font-family:arial,sans-serif;font-size:13px">| ----------</di=
v><div style=3D"font-family:arial,sans-serif;font-size:13px">| 3. ERROR in =
src/main/java/org/apache/log4j/net/SMTPAppender.java (at line 39)</div><div=
 style=3D"font-family:arial,sans-serif;font-size:13px">

| =A0 =A0 =A0 import javax.mail.Transport;</div><div style=3D"font-family:a=
rial,sans-serif;font-size:13px">| =A0 =A0 =A0 =A0 =A0 =A0 =A0^^^^^^^^^^^^^^=
^^^^^^</div><div style=3D"font-family:arial,sans-serif;font-size:13px">| Th=
e import javax.mail.Transport cannot be resolved</div>

<div style=3D"font-family:arial,sans-serif;font-size:13px">| ----------</di=
v><div style=3D"font-family:arial,sans-serif;font-size:13px">| 4. ERROR in =
src/main/java/org/apache/log4j/net/SMTPAppender.java (at line 416)</div><di=
v style=3D"font-family:arial,sans-serif;font-size:13px">

| =A0 =A0 =A0 Transport.send(msg);</div><div style=3D"font-family:arial,san=
s-serif;font-size:13px">| =A0 =A0 =A0 ^^^^^^^^^</div><div style=3D"font-fam=
ily:arial,sans-serif;font-size:13px">| Transport cannot be resolved</div></=
div><div style=3D"font-family:arial,sans-serif;font-size:13px">

<br></div></div><div style=3D"font-family:arial,sans-serif;font-size:13px">=
Do your java contain mail.jar ??</div><div style=3D"font-family:arial,sans-=
serif;font-size:13px"><br></div><div style=3D"font-family:arial,sans-serif;=
font-size:13px">

//Gaurang</div><div><br></div></div><div class=3D"gmail_extra"><br><br><div=
 class=3D"gmail_quote"><div><div class=3D"h5">On Thu, Feb 13, 2014 at 6:46 =
AM, Ashish Dalela <span dir=3D"ltr">&lt;<a href=3D"mailto:ashish.dalela@gma=
il.com" target=3D"_blank">ashish.dalela@gmail.com</a>&gt;</span> wrote:<br>

</div></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div><div class=3D"h5"><div dir=
=3D"ltr"><br><div>Hi</div><div><br></div><div>I&#39;m facing the below comp=
ilation failure while doing &quot;bitbake openjdk-7-jre&quot;. Any suggesti=
ons on how to fix this?</div>

<div><br></div><div>Thanks!</div><div>
<br></div><div><div>Log data follows:</div><div>| DEBUG: Executing shell fu=
nction do_compile</div><div>| ----------</div><div>| 1. WARNING in src/main=
/java/org/apache/log4j/spi/NOPLogger.java (at line 59)</div><div>| =A0 =A0 =
=A0 void closeNestedAppenders() {</div>


<div>| =A0 =A0 =A0 =A0 =A0 =A0^^^^^^^^^^^^^^^^^^^^^^</div><div>| The method=
 NOPLogger.closeNestedAppenders() does not override the inherited method fr=
om Category since it is private to a different package</div><div>| --------=
--</div>


<div>| ----------</div><div>| 2. ERROR in src/main/java/org/apache/log4j/ne=
t/SMTPAppender.java (at line 1)</div><div>| =A0 =A0 =A0 /*</div><div>| =A0 =
=A0 =A0 ^</div><div>| The type javax.mail.Transport cannot be resolved. It =
is indirectly referenced from required .class files</div>


<div>| ----------</div><div>| 3. ERROR in src/main/java/org/apache/log4j/ne=
t/SMTPAppender.java (at line 39)</div><div>| =A0 =A0 =A0 import javax.mail.=
Transport;</div><div>| =A0 =A0 =A0 =A0 =A0 =A0 =A0^^^^^^^^^^^^^^^^^^^^</div=
><div>| The import javax.mail.Transport cannot be resolved</div>


<div>| ----------</div><div>| 4. ERROR in src/main/java/org/apache/log4j/ne=
t/SMTPAppender.java (at line 416)</div><div>| =A0 =A0 =A0 Transport.send(ms=
g);</div><div>| =A0 =A0 =A0 ^^^^^^^^^</div><div>| Transport cannot be resol=
ved</div>


<div>| ----------</div><div>| ----------</div><div>| 5. WARNING in src/main=
/java/org/apache/log4j/lf5/viewer/LogFactor5InputDialog.java (at line 38)</=
div><div>| =A0 =A0 =A0 public class LogFactor5InputDialog extends LogFactor=
5Dialog {</div>


<div>| =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0^^^^^^^^^^^^^^^^^^^^^</div><d=
iv>| The serializable class LogFactor5InputDialog does not declare a static=
 final serialVersionUID field of type long</div><div>| ----------</div><div=
>| 6. WARNING in src/main/java/org/apache/log4j/lf5/viewer/LogFactor5InputD=
ialog.java (at line 88)</div>


<div>| =A0 =A0 =A0 hide();</div><div>| =A0 =A0 =A0 ^^^^^^</div><div>| The m=
ethod hide() from the type Dialog is deprecated</div><div>| ----------</div=
><div>| 7. WARNING in src/main/java/org/apache/log4j/lf5/viewer/LogFactor5I=
nputDialog.java (at line 96)</div>


<div>| =A0 =A0 =A0 hide();</div><div>| =A0 =A0 =A0 ^^^^^^</div><div>| The m=
ethod hide() from the type Dialog is deprecated</div><div>| ----------</div=
><div>| 8. WARNING in src/main/java/org/apache/log4j/lf5/viewer/LogFactor5I=
nputDialog.java (at line 103)</div>


<div>| =A0 =A0 =A0 hide();</div><div>| =A0 =A0 =A0 ^^^^^^</div><div>| The m=
ethod hide() from the type Dialog is deprecated</div><div>| ----------</div=
><div>| ----------</div><div>| 9. WARNING in src/main/java/org/apache/log4j=
/lf5/viewer/LogBrokerMonitor.java (at line 826)</div>


<div>| =A0 =A0 =A0 JMenuItem menuItem =3D result;</div><div>| =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 ^^^^^^^^</div><div>| The local variable menuItem is nev=
er read</div><div>| ----------</div><div>| 10. WARNING in src/main/java/org=
/apache/log4j/lf5/viewer/LogBrokerMonitor.java (at line 945)</div>


<div>| =A0 =A0 =A0 JMenuItem exitMI;</div><div>| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 ^^^^^^</div><div>| The local variable exitMI is never read</div><di=
v>| ----------</div><div>| 11. WARNING in src/main/java/org/apache/log4j/lf=
5/viewer/LogBrokerMonitor.java (at line 1097)</div>


<div>| =A0 =A0 =A0 LogFactor5ErrorDialog error =3D new LogFactor5ErrorDialo=
g(</div><div>| =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ^^^^=
^</div><div>| The local variable error is never read</div><div>| ----------=
</div><div>| 12. WARNING in src/main/java/org/apache/log4j/lf5/viewer/LogBr=
okerMonitor.java (at line 1277)</div>


<div>| =A0 =A0 =A0 fonts =3D tk.getFontList();</div><div>| =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0^^^^^^^^^^^^^</div><div>| The method getFontList() from =
the type Toolkit is deprecated</div><div>| ----------</div><div>| 13. WARNI=
NG in src/main/java/org/apache/log4j/lf5/viewer/LogBrokerMonitor.java (at l=
ine 1459)</div>


<div>| =A0 =A0 =A0 LogFactor5ErrorDialog error =3D new LogFactor5ErrorDialo=
g(</div><div>| =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ^^^^=
^</div><div>| The local variable error is never read</div><div>| ----------=
</div><div>| 14. WARNING in src/main/java/org/apache/log4j/lf5/viewer/LogBr=
okerMonitor.java (at line 1506)</div>


<div>| =A0 =A0 =A0 LogFactor5ErrorDialog error =3D new LogFactor5ErrorDialo=
g(</div><div>| =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ^^^^=
^</div><div>| The local variable error is never read</div><div>| ----------=
</div><div>| 15. WARNING in src/main/java/org/apache/log4j/lf5/viewer/LogBr=
okerMonitor.java (at line 1569)</div>


<div>| =A0 =A0 =A0 LogFactor5ErrorDialog error =3D new LogFactor5ErrorDialo=
g(</div><div>| =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ^^^^=
^</div><div>| The local variable error is never read</div><div>| ----------=
</div><div>| 16. WARNING in src/main/java/org/apache/log4j/lf5/viewer/LogBr=
okerMonitor.java (at line 1586)</div>


<div>| =A0 =A0 =A0 LogFactor5ErrorDialog error =3D new LogFactor5ErrorDialo=
g(</div><div>| =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ^^^^=
^</div><div>| The local variable error is never read</div><div>| ----------=
</div><div>| ----------</div><div>


| 17. WARNING in src/main/java/org/apache/log4j/lf5/viewer/FilteredLogTable=
Model.java (at line 39)</div><div>| =A0 =A0 =A0 public class FilteredLogTab=
leModel</div><div>| =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0^^^^^^^^^^^^^^^^=
^^^^^</div><div>| The serializable class FilteredLogTableModel does not dec=
lare a static final serialVersionUID field of type long</div>


<div>| ----------</div><div>| ----------</div><div>| 18. WARNING in src/mai=
n/java/org/apache/log4j/lf5/viewer/LogFactor5LoadingDialog.java (at line 35=
)</div><div>| =A0 =A0 =A0 public class LogFactor5LoadingDialog extends LogF=
actor5Dialog {</div>


<div>| =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0^^^^^^^^^^^^^^^^^^^^^^^</div>=
<div>| The serializable class LogFactor5LoadingDialog does not declare a st=
atic final serialVersionUID field of type long</div><div>| ----------</div>=
<div>| ----------</div>


<div>| 19. WARNING in src/main/java/org/apache/log4j/lf5/viewer/LogFactor5D=
ialog.java (at line 42)</div><div>| =A0 =A0 =A0 public abstract class LogFa=
ctor5Dialog extends JDialog {</div><div>| =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 ^^^^^^^^^^^^^^^^</div>


<div>| The serializable class LogFactor5Dialog does not declare a static fi=
nal serialVersionUID field of type long</div><div>| ----------</div><div>| =
20. WARNING in src/main/java/org/apache/log4j/lf5/viewer/LogFactor5Dialog.j=
ava (at line 69)</div>


<div>| =A0 =A0 =A0 super.show();</div><div>| =A0 =A0 =A0 =A0 =A0 =A0 ^^^^^^=
</div><div>| The method show() from the type Dialog is deprecated</div><div=
>| ----------</div><div>| ----------</div><div>| 21. WARNING in src/main/ja=
va/org/apache/log4j/lf5/viewer/LogFactor5ErrorDialog.java (at line 38)</div=
>


<div>| =A0 =A0 =A0 public class LogFactor5ErrorDialog extends LogFactor5Dia=
log {</div><div>| =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0^^^^^^^^^^^^^^^^^^=
^^^</div><div>| The serializable class LogFactor5ErrorDialog does not decla=
re a static final serialVersionUID field of type long</div>


<div>| ----------</div><div>| 22. WARNING in src/main/java/org/apache/log4j=
/lf5/viewer/LogFactor5ErrorDialog.java (at line 60)</div><div>| =A0 =A0 =A0=
 hide();</div><div>| =A0 =A0 =A0 ^^^^^^</div><div>| The method hide() from =
the type Dialog is deprecated</div>


<div>| ----------</div><div>| ----------</div><div>| 23. WARNING in src/mai=
n/java/org/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor=
.java (at line 93)</div><div>| =A0 =A0 =A0 CategoryNode node =3D (CategoryN=
ode) path.getLastPathComponent();</div>


<div>| =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0^^^^</div><div>| The local va=
riable node is never read</div><div>| ----------</div><div>| 24. WARNING in=
 src/main/java/org/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmedia=
teEditor.java (at line 94)</div>


<div>| =A0 =A0 =A0 boolean rv =3D false;</div><div>| =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 ^^</div><div>| The local variable rv is never read</div><div>| ----=
------</div><div>| ----------</div><div>| 25. WARNING in src/main/java/org/=
apache/log4j/lf5/LogLevelFormatException.java (at line 30)</div>


<div>| =A0 =A0 =A0 public class LogLevelFormatException extends Exception {=
</div><div>| =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0^^^^^^^^^^^^^^^^^^^^^^^=
</div><div>| The serializable class LogLevelFormatException does not declar=
e a static final serialVersionUID field of type long</div>


<div>| ----------</div><div>| ----------</div><div>| 26. WARNING in src/mai=
n/java/org/apache/log4j/lf5/util/LogFileParser.java (at line 162)</div><div=
>| =A0 =A0 =A0 LogFactor5ErrorDialog error =3D new LogFactor5ErrorDialog(</=
div>


<div>| =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ^^^^^</div><=
div>| The local variable error is never read</div><div>| ----------</div><d=
iv>| 27. WARNING in src/main/java/org/apache/log4j/lf5/util/LogFileParser.j=
ava (at line 171)</div>

<div>
| =A0 =A0 =A0 _loadDialog.hide();</div><div>| =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 ^^^^^^</div><div>| The method hide() from the type Dialog is deprec=
ated</div><div>| ----------</div><div>| ----------</div><div>| 28. WARNING =
in src/main/java/org/apache/log4j/lf5/util/AdapterLogRecord.java (at line 3=
3)</div>


<div>| =A0 =A0 =A0 public class AdapterLogRecord extends LogRecord {</div><=
div>| =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0^^^^^^^^^^^^^^^^</div><div>| T=
he serializable class AdapterLogRecord does not declare a static final seri=
alVersionUID field of type long</div>


<div>| ----------</div><div>| ----------</div><div>| 29. WARNING in src/mai=
n/java/org/apache/log4j/lf5/LogLevel.java (at line 42)</div><div>| =A0 =A0 =
=A0 public class LogLevel implements java.io.Serializable {</div><div>| =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0^^^^^^^^</div>


<div>| The serializable class LogLevel does not declare a static final seri=
alVersionUID field of type long</div><div>| ----------</div><div>| --------=
--</div><div>| 30. WARNING in src/main/java/org/apache/log4j/lf5/LogRecord.=
java (at line 33)</div>


<div>| =A0 =A0 =A0 public abstract class LogRecord implements java.io.Seria=
lizable {</div><div>| =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 ^^^^^^^^^</div><div>| The serializable class LogRecord does not declare=
 a static final serialVersionUID field of type long</div>


<div>| ----------</div><div>| ----------</div><div>| 31. WARNING in src/mai=
n/java/org/apache/log4j/lf5/Log4JLogRecord.java (at line 32)</div><div>| =
=A0 =A0 =A0 public class Log4JLogRecord extends LogRecord {</div><div>| =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0^^^^^^^^^^^^^^</div>


<div>| The serializable class Log4JLogRecord does not declare a static fina=
l serialVersionUID field of type long</div><div>| ----------</div><div>| --=
--------</div><div>| 32. WARNING in src/main/java/org/apache/log4j/chainsaw=
/DetailPanel.java (at line 37)</div>


<div>| =A0 =A0 =A0 class DetailPanel</div><div>| =A0 =A0 =A0 =A0 =A0 =A0 ^^=
^^^^^^^^^</div><div>| The serializable class DetailPanel does not declare a=
 static final serialVersionUID field of type long</div><div>| ----------</d=
iv><div>| 33. WARNING in src/main/java/org/apache/log4j/chainsaw/DetailPane=
l.java (at line 42)</div>


<div>| =A0 =A0 =A0 private static final Logger LOG =3D</div><div>| =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ^^^</div><div>|=
 The field DetailPanel.LOG is never read locally</div><div>| ----------</di=
v><div>| ----------</div><div>| 34. WARNING in src/main/java/org/apache/log=
4j/chainsaw/Main.java (at line 44)</div>


<div>| =A0 =A0 =A0 public class Main</div><div>| =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0^^^^</div><div>| The serializable class Main does not declar=
e a static final serialVersionUID field of type long</div><div>| ----------=
</div><div>| ----------</div>


<div>| 35. WARNING in src/main/java/org/apache/log4j/chainsaw/LoadXMLAction=
.java (at line 40)</div><div>| =A0 =A0 =A0 class LoadXMLAction</div><div>| =
=A0 =A0 =A0 =A0 =A0 =A0 ^^^^^^^^^^^^^</div><div>| The serializable class Lo=
adXMLAction does not declare a static final serialVersionUID field of type =
long</div>


<div>| ----------</div><div>| ----------</div><div>| 36. WARNING in src/mai=
n/java/org/apache/log4j/chainsaw/MyTableModel.java (at line 37)</div><div>|=
 =A0 =A0 =A0 class MyTableModel</div><div>| =A0 =A0 =A0 =A0 =A0 =A0 ^^^^^^^=
^^^^^</div><div>


| The serializable class MyTableModel does not declare a static final seria=
lVersionUID field of type long</div><div>| ----------</div><div>| 37. WARNI=
NG in src/main/java/org/apache/log4j/chainsaw/MyTableModel.java (at line 14=
2)</div>


<div>| =A0 =A0 =A0 private Priority mPriorityFilter =3D Priority.DEBUG;</di=
v><div>| =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ^^^^^</div><div>| The field Priority.DE=
BUG is deprecated</div><div>| ----------</div><div>| ----------</div>


<div>| 38. WARNING in src/main/java/org/apache/log4j/chainsaw/ExitAction.ja=
va (at line 29)</div><div>| =A0 =A0 =A0 class ExitAction</div><div>| =A0 =
=A0 =A0 =A0 =A0 =A0 ^^^^^^^^^^</div><div>| The serializable class ExitActio=
n does not declare a static final serialVersionUID field of type long</div>


<div>| ----------</div><div>| ----------</div><div>| 39. WARNING in src/mai=
n/java/org/apache/log4j/chainsaw/ControlPanel.java (at line 40)</div><div>|=
 =A0 =A0 =A0 class ControlPanel extends JPanel {</div><div>| =A0 =A0 =A0 =
=A0 =A0 =A0 ^^^^^^^^^^^^</div>


<div>| The serializable class ControlPanel does not declare a static final =
serialVersionUID field of type long</div><div>| ----------</div><div>| 40. =
WARNING in src/main/java/org/apache/log4j/chainsaw/ControlPanel.java (at li=
ne 42)</div>


<div>| =A0 =A0 =A0 private static final Logger LOG =3D</div><div>| =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ^^^</div><div>|=
 The field ControlPanel.LOG is never read locally</div><div>| ----------</d=
iv></div><div><br></div></div>
<br></div></div>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>
</blockquote></div><br></div>

--20cf300faa67bc79b804f244ba0c--
