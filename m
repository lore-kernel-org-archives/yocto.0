Return-Path: <raj.khem@gmail.com>
Received: from mail-pa0-f50.google.com (mail-pa0-f50.google.com
	[209.85.220.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AD4CE007C0
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2014 07:17:07 -0800 (PST)
Received: by mail-pa0-f50.google.com with SMTP id kp14so10870913pab.23
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2014 07:17:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=YPl0jTgD5rq6ErcSMq160h40/Wi12tVyNf32PJu5TeU=;
	b=es6YT+XzI76WrP2PchlysJkUhuAzzDBMnyiv5Scl0h+KlZhuIFs7r0OwsgJq1RNzqx
	qZIfmXmksuORZKBG1Obo4+IQ1Bpqlvc5ottyddC0Qn+VYVBrdBSGlc2UG/6lf5XGH7ma
	x0agWtOsy6QmAExAsXX2eM+qF569gua7fuV9YHMa0pKXM4vb6fk6rbcsjkEGdguYqH7y
	93qkyE/91HKXvjC+HuMtsbC740eAsuxPqUvocnhdMPNMGo2qkaMa307h15bKsrw34Tv1
	VAQJ7CeBSftiUFo1tk14ostES3L7mGOWYrEQc0i99qWOR3ylcH9B90vypBxrdEWbDe5S
	Q7OQ==
X-Received: by 10.68.189.198 with SMTP id gk6mr2398490pbc.146.1392304627384;
	Thu, 13 Feb 2014 07:17:07 -0800 (PST)
Received: from [192.168.0.33] (99-57-140-30.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.30])
	by mx.google.com with ESMTPSA id ja8sm7530952pbd.3.2014.02.13.07.17.05
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 13 Feb 2014 07:17:06 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 7.1 \(1827\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CABhkJRdrR2EeadeZHQBhmLei1Yb-T454F1bE7xZTyMK4n_zGzQ@mail.gmail.com>
Date: Thu, 13 Feb 2014 07:17:04 -0800
Message-Id: <5D91AAAA-D703-484D-943A-6E8D1FF6644A@gmail.com>
References: <CABhkJRdZ9zR+Pn8dWtNe2Xeob5QhcXTZPkNoNGgd_yHmbDzJKg@mail.gmail.com>
	<CAE_REAvKGCm4k=UZvG7UDe6updeBs-TYNGVa+BtoF4jUPFbwhQ@mail.gmail.com>
	<CABhkJRdrR2EeadeZHQBhmLei1Yb-T454F1bE7xZTyMK4n_zGzQ@mail.gmail.com>
To: Ashish Dalela <ashish.dalela@gmail.com>
X-Mailer: Apple Mail (2.1827)
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
X-List-Received-Date: Thu, 13 Feb 2014 15:17:10 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_7F7A1E92-8FA6-4DCF-9F26-FD932C8AD9ED"

--Apple-Mail=_7F7A1E92-8FA6-4DCF-9F26-FD932C8AD9ED
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


On Feb 12, 2014, at 11:35 PM, Ashish Dalela <ashish.dalela@gmail.com> =
wrote:

> I see these in my tree:
>=20
> build/tmp/sysroots/x86_64-linux/usr/share/java/gnumail-1.1.2.jar
> ./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/source/javax/mail
> =
./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/javamail.providers.in
> ./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/javamail.providers
> =
./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/javamail.address.map.in
> ./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/javamail.address.map
> ./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/classes/javax/mail
> ./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/javamail.charset.map
> =
./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/META-INF/javamail.defaul=
t.address.map
> =
./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/META-INF/javamail.defaul=
t.providers
> =
./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/META-INF/javamail.charse=
t.map
>=20
> Since I'm building java, I should not have to import an external JAR =
right?

Its due to weird race condition.=20

bitbake -cclean log4j-native gnumail-native

and then bitbake log4j-native see if that works

>=20
> Thanks
> -Ashish
>=20
>=20
>=20
> On Thu, Feb 13, 2014 at 12:59 PM, Gaurang Shastri =
<gmshastri@gmail.com> wrote:
> Hi,
>=20
> The main error is=20
>  DEBUG: Executing shell function do_compile
> | ----------
> | 1. WARNING in src/main/java/org/apache/log4j/spi/NOPLogger.java (at =
line 59)
> |       void closeNestedAppenders() {
> |            ^^^^^^^^^^^^^^^^^^^^^^
> | The method NOPLogger.closeNestedAppenders() does not override the =
inherited method from Category since it is private to a different =
package
> | ----------
> | ----------
> | 2. ERROR in src/main/java/org/apache/log4j/net/SMTPAppender.java (at =
line 1)
> |       /*
> |       ^
> | The type javax.mail.Transport cannot be resolved. It is indirectly =
referenced from required .class files
> | ----------
> | 3. ERROR in src/main/java/org/apache/log4j/net/SMTPAppender.java (at =
line 39)
> |       import javax.mail.Transport;
> |              ^^^^^^^^^^^^^^^^^^^^
> | The import javax.mail.Transport cannot be resolved
> | ----------
> | 4. ERROR in src/main/java/org/apache/log4j/net/SMTPAppender.java (at =
line 416)
> |       Transport.send(msg);
> |       ^^^^^^^^^
> | Transport cannot be resolved
>=20
> Do your java contain mail.jar ??
>=20
> //Gaurang
>=20
>=20
>=20
> On Thu, Feb 13, 2014 at 6:46 AM, Ashish Dalela =
<ashish.dalela@gmail.com> wrote:
>=20
> Hi
>=20
> I'm facing the below compilation failure while doing "bitbake =
openjdk-7-jre". Any suggestions on how to fix this?
>=20
> Thanks!
>=20
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | ----------
> | 1. WARNING in src/main/java/org/apache/log4j/spi/NOPLogger.java (at =
line 59)
> |       void closeNestedAppenders() {
> |            ^^^^^^^^^^^^^^^^^^^^^^
> | The method NOPLogger.closeNestedAppenders() does not override the =
inherited method from Category since it is private to a different =
package
> | ----------
> | ----------
> | 2. ERROR in src/main/java/org/apache/log4j/net/SMTPAppender.java (at =
line 1)
> |       /*
> |       ^
> | The type javax.mail.Transport cannot be resolved. It is indirectly =
referenced from required .class files
> | ----------
> | 3. ERROR in src/main/java/org/apache/log4j/net/SMTPAppender.java (at =
line 39)
> |       import javax.mail.Transport;
> |              ^^^^^^^^^^^^^^^^^^^^
> | The import javax.mail.Transport cannot be resolved
> | ----------
> | 4. ERROR in src/main/java/org/apache/log4j/net/SMTPAppender.java (at =
line 416)
> |       Transport.send(msg);
> |       ^^^^^^^^^
> | Transport cannot be resolved
> | ----------
> | ----------
> | 5. WARNING in =
src/main/java/org/apache/log4j/lf5/viewer/LogFactor5InputDialog.java (at =
line 38)
> |       public class LogFactor5InputDialog extends LogFactor5Dialog {
> |                    ^^^^^^^^^^^^^^^^^^^^^
> | The serializable class LogFactor5InputDialog does not declare a =
static final serialVersionUID field of type long
> | ----------
> | 6. WARNING in =
src/main/java/org/apache/log4j/lf5/viewer/LogFactor5InputDialog.java (at =
line 88)
> |       hide();
> |       ^^^^^^
> | The method hide() from the type Dialog is deprecated
> | ----------
> | 7. WARNING in =
src/main/java/org/apache/log4j/lf5/viewer/LogFactor5InputDialog.java (at =
line 96)
> |       hide();
> |       ^^^^^^
> | The method hide() from the type Dialog is deprecated
> | ----------
> | 8. WARNING in =
src/main/java/org/apache/log4j/lf5/viewer/LogFactor5InputDialog.java (at =
line 103)
> |       hide();
> |       ^^^^^^
> | The method hide() from the type Dialog is deprecated
> | ----------
> | ----------
> | 9. WARNING in =
src/main/java/org/apache/log4j/lf5/viewer/LogBrokerMonitor.java (at line =
826)
> |       JMenuItem menuItem =3D result;
> |                 ^^^^^^^^
> | The local variable menuItem is never read
> | ----------
> | 10. WARNING in =
src/main/java/org/apache/log4j/lf5/viewer/LogBrokerMonitor.java (at line =
945)
> |       JMenuItem exitMI;
> |                 ^^^^^^
> | The local variable exitMI is never read
> | ----------
> | 11. WARNING in =
src/main/java/org/apache/log4j/lf5/viewer/LogBrokerMonitor.java (at line =
1097)
> |       LogFactor5ErrorDialog error =3D new LogFactor5ErrorDialog(
> |                             ^^^^^
> | The local variable error is never read
> | ----------
> | 12. WARNING in =
src/main/java/org/apache/log4j/lf5/viewer/LogBrokerMonitor.java (at line =
1277)
> |       fonts =3D tk.getFontList();
> |                  ^^^^^^^^^^^^^
> | The method getFontList() from the type Toolkit is deprecated
> | ----------
> | 13. WARNING in =
src/main/java/org/apache/log4j/lf5/viewer/LogBrokerMonitor.java (at line =
1459)
> |       LogFactor5ErrorDialog error =3D new LogFactor5ErrorDialog(
> |                             ^^^^^
> | The local variable error is never read
> | ----------
> | 14. WARNING in =
src/main/java/org/apache/log4j/lf5/viewer/LogBrokerMonitor.java (at line =
1506)
> |       LogFactor5ErrorDialog error =3D new LogFactor5ErrorDialog(
> |                             ^^^^^
> | The local variable error is never read
> | ----------
> | 15. WARNING in =
src/main/java/org/apache/log4j/lf5/viewer/LogBrokerMonitor.java (at line =
1569)
> |       LogFactor5ErrorDialog error =3D new LogFactor5ErrorDialog(
> |                             ^^^^^
> | The local variable error is never read
> | ----------
> | 16. WARNING in =
src/main/java/org/apache/log4j/lf5/viewer/LogBrokerMonitor.java (at line =
1586)
> |       LogFactor5ErrorDialog error =3D new LogFactor5ErrorDialog(
> |                             ^^^^^
> | The local variable error is never read
> | ----------
> | ----------
> | 17. WARNING in =
src/main/java/org/apache/log4j/lf5/viewer/FilteredLogTableModel.java (at =
line 39)
> |       public class FilteredLogTableModel
> |                    ^^^^^^^^^^^^^^^^^^^^^
> | The serializable class FilteredLogTableModel does not declare a =
static final serialVersionUID field of type long
> | ----------
> | ----------
> | 18. WARNING in =
src/main/java/org/apache/log4j/lf5/viewer/LogFactor5LoadingDialog.java =
(at line 35)
> |       public class LogFactor5LoadingDialog extends LogFactor5Dialog =
{
> |                    ^^^^^^^^^^^^^^^^^^^^^^^
> | The serializable class LogFactor5LoadingDialog does not declare a =
static final serialVersionUID field of type long
> | ----------
> | ----------
> | 19. WARNING in =
src/main/java/org/apache/log4j/lf5/viewer/LogFactor5Dialog.java (at line =
42)
> |       public abstract class LogFactor5Dialog extends JDialog {
> |                             ^^^^^^^^^^^^^^^^
> | The serializable class LogFactor5Dialog does not declare a static =
final serialVersionUID field of type long
> | ----------
> | 20. WARNING in =
src/main/java/org/apache/log4j/lf5/viewer/LogFactor5Dialog.java (at line =
69)
> |       super.show();
> |             ^^^^^^
> | The method show() from the type Dialog is deprecated
> | ----------
> | ----------
> | 21. WARNING in =
src/main/java/org/apache/log4j/lf5/viewer/LogFactor5ErrorDialog.java (at =
line 38)
> |       public class LogFactor5ErrorDialog extends LogFactor5Dialog {
> |                    ^^^^^^^^^^^^^^^^^^^^^
> | The serializable class LogFactor5ErrorDialog does not declare a =
static final serialVersionUID field of type long
> | ----------
> | 22. WARNING in =
src/main/java/org/apache/log4j/lf5/viewer/LogFactor5ErrorDialog.java (at =
line 60)
> |       hide();
> |       ^^^^^^
> | The method hide() from the type Dialog is deprecated
> | ----------
> | ----------
> | 23. WARNING in =
src/main/java/org/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmedia=
teEditor.java (at line 93)
> |       CategoryNode node =3D (CategoryNode) =
path.getLastPathComponent();
> |                    ^^^^
> | The local variable node is never read
> | ----------
> | 24. WARNING in =
src/main/java/org/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmedia=
teEditor.java (at line 94)
> |       boolean rv =3D false;
> |               ^^
> | The local variable rv is never read
> | ----------
> | ----------
> | 25. WARNING in =
src/main/java/org/apache/log4j/lf5/LogLevelFormatException.java (at line =
30)
> |       public class LogLevelFormatException extends Exception {
> |                    ^^^^^^^^^^^^^^^^^^^^^^^
> | The serializable class LogLevelFormatException does not declare a =
static final serialVersionUID field of type long
> | ----------
> | ----------
> | 26. WARNING in =
src/main/java/org/apache/log4j/lf5/util/LogFileParser.java (at line 162)
> |       LogFactor5ErrorDialog error =3D new LogFactor5ErrorDialog(
> |                             ^^^^^
> | The local variable error is never read
> | ----------
> | 27. WARNING in =
src/main/java/org/apache/log4j/lf5/util/LogFileParser.java (at line 171)
> |       _loadDialog.hide();
> |                   ^^^^^^
> | The method hide() from the type Dialog is deprecated
> | ----------
> | ----------
> | 28. WARNING in =
src/main/java/org/apache/log4j/lf5/util/AdapterLogRecord.java (at line =
33)
> |       public class AdapterLogRecord extends LogRecord {
> |                    ^^^^^^^^^^^^^^^^
> | The serializable class AdapterLogRecord does not declare a static =
final serialVersionUID field of type long
> | ----------
> | ----------
> | 29. WARNING in src/main/java/org/apache/log4j/lf5/LogLevel.java (at =
line 42)
> |       public class LogLevel implements java.io.Serializable {
> |                    ^^^^^^^^
> | The serializable class LogLevel does not declare a static final =
serialVersionUID field of type long
> | ----------
> | ----------
> | 30. WARNING in src/main/java/org/apache/log4j/lf5/LogRecord.java (at =
line 33)
> |       public abstract class LogRecord implements =
java.io.Serializable {
> |                             ^^^^^^^^^
> | The serializable class LogRecord does not declare a static final =
serialVersionUID field of type long
> | ----------
> | ----------
> | 31. WARNING in =
src/main/java/org/apache/log4j/lf5/Log4JLogRecord.java (at line 32)
> |       public class Log4JLogRecord extends LogRecord {
> |                    ^^^^^^^^^^^^^^
> | The serializable class Log4JLogRecord does not declare a static =
final serialVersionUID field of type long
> | ----------
> | ----------
> | 32. WARNING in =
src/main/java/org/apache/log4j/chainsaw/DetailPanel.java (at line 37)
> |       class DetailPanel
> |             ^^^^^^^^^^^
> | The serializable class DetailPanel does not declare a static final =
serialVersionUID field of type long
> | ----------
> | 33. WARNING in =
src/main/java/org/apache/log4j/chainsaw/DetailPanel.java (at line 42)
> |       private static final Logger LOG =3D
> |                                   ^^^
> | The field DetailPanel.LOG is never read locally
> | ----------
> | ----------
> | 34. WARNING in src/main/java/org/apache/log4j/chainsaw/Main.java (at =
line 44)
> |       public class Main
> |                    ^^^^
> | The serializable class Main does not declare a static final =
serialVersionUID field of type long
> | ----------
> | ----------
> | 35. WARNING in =
src/main/java/org/apache/log4j/chainsaw/LoadXMLAction.java (at line 40)
> |       class LoadXMLAction
> |             ^^^^^^^^^^^^^
> | The serializable class LoadXMLAction does not declare a static final =
serialVersionUID field of type long
> | ----------
> | ----------
> | 36. WARNING in =
src/main/java/org/apache/log4j/chainsaw/MyTableModel.java (at line 37)
> |       class MyTableModel
> |             ^^^^^^^^^^^^
> | The serializable class MyTableModel does not declare a static final =
serialVersionUID field of type long
> | ----------
> | 37. WARNING in =
src/main/java/org/apache/log4j/chainsaw/MyTableModel.java (at line 142)
> |       private Priority mPriorityFilter =3D Priority.DEBUG;
> |                                                   ^^^^^
> | The field Priority.DEBUG is deprecated
> | ----------
> | ----------
> | 38. WARNING in =
src/main/java/org/apache/log4j/chainsaw/ExitAction.java (at line 29)
> |       class ExitAction
> |             ^^^^^^^^^^
> | The serializable class ExitAction does not declare a static final =
serialVersionUID field of type long
> | ----------
> | ----------
> | 39. WARNING in =
src/main/java/org/apache/log4j/chainsaw/ControlPanel.java (at line 40)
> |       class ControlPanel extends JPanel {
> |             ^^^^^^^^^^^^
> | The serializable class ControlPanel does not declare a static final =
serialVersionUID field of type long
> | ----------
> | 40. WARNING in =
src/main/java/org/apache/log4j/chainsaw/ControlPanel.java (at line 42)
> |       private static final Logger LOG =3D
> |                                   ^^^
> | The field ControlPanel.LOG is never read locally
> | ----------
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_7F7A1E92-8FA6-4DCF-9F26-FD932C8AD9ED
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv="Content-Type" content="text/html charset=iso-8859-1"></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;"><br><div><div>On Feb 12, 2014, at 11:35 PM, Ashish Dalela &lt;<a href="mailto:ashish.dalela@gmail.com">ashish.dalela@gmail.com</a>&gt; wrote:</div><br class="Apple-interchange-newline"><blockquote type="cite"><div dir="ltr"><span style="font-family:arial,sans-serif;font-size:13.333333969116211px">I see these in my tree:</span><div style="font-family:arial,sans-serif;font-size:13.333333969116211px"><br><div>build/tmp/sysroots/x86_64-linux/usr/share/java/gnumail-1.1.2.jar</div>
<div><div>./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/source/javax/mail</div><div>./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/<a href="http://javamail.providers.in/" target="_blank">javamail.providers.in</a></div>
<div>./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/javamail.providers</div><div>./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/<a href="http://javamail.address.map.in/" target="_blank">javamail.address.map.in</a></div>
<div>./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/javamail.address.map</div><div>./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/classes/javax/mail</div><div>./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/javamail.charset.map</div>
<div>./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/META-INF/javamail.default.address.map</div><div>./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/META-INF/javamail.default.providers</div><div>./x86_64-linux/gnumail-native/1.1.2-r1/mail-1.1.2/META-INF/javamail.charset.map</div>
</div><div><br></div><div>Since I'm building java, I should not have to import an external JAR right?</div></div></div></blockquote><div><br></div><div>Its due to weird race condition.&nbsp;</div><div><br></div><div>bitbake -cclean log4j-native gnumail-native</div><div><br></div><div>and then bitbake log4j-native see if that works</div><br><blockquote type="cite"><div dir="ltr"><div style="font-family:arial,sans-serif;font-size:13.333333969116211px"><div><br></div><div>Thanks</div><div>-Ashish</div><div><br></div></div></div><div class="gmail_extra"><br><br>
<div class="gmail_quote">On Thu, Feb 13, 2014 at 12:59 PM, Gaurang Shastri <span dir="ltr">&lt;<a href="mailto:gmshastri@gmail.com" target="_blank">gmshastri@gmail.com</a>&gt;</span> wrote:<br><blockquote class="gmail_quote" style="margin: 0px 0px 0px 0.8ex; border-left-width: 1px; border-left-color: rgb(204, 204, 204); border-left-style: solid; padding-left: 1ex; position: static; z-index: auto;">
<div dir="ltr">Hi,<div><br></div><div>The main error is&nbsp;</div><div class=""><div><div style="font-family:arial,sans-serif;font-size:13px">&nbsp;DEBUG: Executing shell function do_compile</div><div style="font-family:arial,sans-serif;font-size:13px">

| ----------</div><div style="font-family:arial,sans-serif;font-size:13px">| 1. WARNING in src/main/java/org/apache/log4j/spi/NOPLogger.java (at line 59)</div><div style="font-family:arial,sans-serif;font-size:13px">| &nbsp; &nbsp; &nbsp; void closeNestedAppenders() {</div>

<div style="font-family:arial,sans-serif;font-size:13px">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^^^^^^^^^^^^^^^^^^^^^^</div><div style="font-family:arial,sans-serif;font-size:13px">| The method NOPLogger.closeNestedAppenders() does not override the inherited method from Category since it is private to a different package</div>

<div style="font-family:arial,sans-serif;font-size:13px">| ----------</div><div style="font-family:arial,sans-serif;font-size:13px">| ----------</div><div style="font-family:arial,sans-serif;font-size:13px">| 2. ERROR in src/main/java/org/apache/log4j/net/SMTPAppender.java (at line 1)</div>

<div style="font-family:arial,sans-serif;font-size:13px">| &nbsp; &nbsp; &nbsp; /*</div><div style="font-family:arial,sans-serif;font-size:13px">| &nbsp; &nbsp; &nbsp; ^</div><div style="font-family:arial,sans-serif;font-size:13px">| The type javax.mail.Transport cannot be resolved. It is indirectly referenced from required .class files</div>

<div style="font-family:arial,sans-serif;font-size:13px">| ----------</div><div style="font-family:arial,sans-serif;font-size:13px">| 3. ERROR in src/main/java/org/apache/log4j/net/SMTPAppender.java (at line 39)</div><div style="font-family:arial,sans-serif;font-size:13px">

| &nbsp; &nbsp; &nbsp; import javax.mail.Transport;</div><div style="font-family:arial,sans-serif;font-size:13px">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^^^^^^^^^^^^^^^^^^^^</div><div style="font-family:arial,sans-serif;font-size:13px">| The import javax.mail.Transport cannot be resolved</div>

<div style="font-family:arial,sans-serif;font-size:13px">| ----------</div><div style="font-family:arial,sans-serif;font-size:13px">| 4. ERROR in src/main/java/org/apache/log4j/net/SMTPAppender.java (at line 416)</div><div style="font-family:arial,sans-serif;font-size:13px">

| &nbsp; &nbsp; &nbsp; Transport.send(msg);</div><div style="font-family:arial,sans-serif;font-size:13px">| &nbsp; &nbsp; &nbsp; ^^^^^^^^^</div><div style="font-family:arial,sans-serif;font-size:13px">| Transport cannot be resolved</div></div><div style="font-family:arial,sans-serif;font-size:13px">

<br></div></div><div style="font-family:arial,sans-serif;font-size:13px">Do your java contain mail.jar ??</div><div style="font-family:arial,sans-serif;font-size:13px"><br></div><div style="font-family:arial,sans-serif;font-size:13px">

//Gaurang</div><div><br></div></div><div class="gmail_extra"><br><br><div class="gmail_quote"><div><div class="h5">On Thu, Feb 13, 2014 at 6:46 AM, Ashish Dalela <span dir="ltr">&lt;<a href="mailto:ashish.dalela@gmail.com" target="_blank">ashish.dalela@gmail.com</a>&gt;</span> wrote:<br>

</div></div><blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><div class="h5"><div dir="ltr"><br><div>Hi</div><div><br></div><div>I'm facing the below compilation failure while doing "bitbake openjdk-7-jre". Any suggestions on how to fix this?</div>

<div><br></div><div>Thanks!</div><div>
<br></div><div><div>Log data follows:</div><div>| DEBUG: Executing shell function do_compile</div><div>| ----------</div><div>| 1. WARNING in src/main/java/org/apache/log4j/spi/NOPLogger.java (at line 59)</div><div>| &nbsp; &nbsp; &nbsp; void closeNestedAppenders() {</div>


<div>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^^^^^^^^^^^^^^^^^^^^^^</div><div>| The method NOPLogger.closeNestedAppenders() does not override the inherited method from Category since it is private to a different package</div><div>| ----------</div>


<div>| ----------</div><div>| 2. ERROR in src/main/java/org/apache/log4j/net/SMTPAppender.java (at line 1)</div><div>| &nbsp; &nbsp; &nbsp; /*</div><div>| &nbsp; &nbsp; &nbsp; ^</div><div>| The type javax.mail.Transport cannot be resolved. It is indirectly referenced from required .class files</div>


<div>| ----------</div><div>| 3. ERROR in src/main/java/org/apache/log4j/net/SMTPAppender.java (at line 39)</div><div>| &nbsp; &nbsp; &nbsp; import javax.mail.Transport;</div><div>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^^^^^^^^^^^^^^^^^^^^</div><div>| The import javax.mail.Transport cannot be resolved</div>


<div>| ----------</div><div>| 4. ERROR in src/main/java/org/apache/log4j/net/SMTPAppender.java (at line 416)</div><div>| &nbsp; &nbsp; &nbsp; Transport.send(msg);</div><div>| &nbsp; &nbsp; &nbsp; ^^^^^^^^^</div><div>| Transport cannot be resolved</div>


<div>| ----------</div><div>| ----------</div><div>| 5. WARNING in src/main/java/org/apache/log4j/lf5/viewer/LogFactor5InputDialog.java (at line 38)</div><div>| &nbsp; &nbsp; &nbsp; public class LogFactor5InputDialog extends LogFactor5Dialog {</div>


<div>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^^^^^^^^^^^^^^^^^^^^^</div><div>| The serializable class LogFactor5InputDialog does not declare a static final serialVersionUID field of type long</div><div>| ----------</div><div>| 6. WARNING in src/main/java/org/apache/log4j/lf5/viewer/LogFactor5InputDialog.java (at line 88)</div>


<div>| &nbsp; &nbsp; &nbsp; hide();</div><div>| &nbsp; &nbsp; &nbsp; ^^^^^^</div><div>| The method hide() from the type Dialog is deprecated</div><div>| ----------</div><div>| 7. WARNING in src/main/java/org/apache/log4j/lf5/viewer/LogFactor5InputDialog.java (at line 96)</div>


<div>| &nbsp; &nbsp; &nbsp; hide();</div><div>| &nbsp; &nbsp; &nbsp; ^^^^^^</div><div>| The method hide() from the type Dialog is deprecated</div><div>| ----------</div><div>| 8. WARNING in src/main/java/org/apache/log4j/lf5/viewer/LogFactor5InputDialog.java (at line 103)</div>


<div>| &nbsp; &nbsp; &nbsp; hide();</div><div>| &nbsp; &nbsp; &nbsp; ^^^^^^</div><div>| The method hide() from the type Dialog is deprecated</div><div>| ----------</div><div>| ----------</div><div>| 9. WARNING in src/main/java/org/apache/log4j/lf5/viewer/LogBrokerMonitor.java (at line 826)</div>


<div>| &nbsp; &nbsp; &nbsp; JMenuItem menuItem = result;</div><div>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^^^^^^^^</div><div>| The local variable menuItem is never read</div><div>| ----------</div><div>| 10. WARNING in src/main/java/org/apache/log4j/lf5/viewer/LogBrokerMonitor.java (at line 945)</div>


<div>| &nbsp; &nbsp; &nbsp; JMenuItem exitMI;</div><div>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^^^^^^</div><div>| The local variable exitMI is never read</div><div>| ----------</div><div>| 11. WARNING in src/main/java/org/apache/log4j/lf5/viewer/LogBrokerMonitor.java (at line 1097)</div>


<div>| &nbsp; &nbsp; &nbsp; LogFactor5ErrorDialog error = new LogFactor5ErrorDialog(</div><div>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^^^^^</div><div>| The local variable error is never read</div><div>| ----------</div><div>| 12. WARNING in src/main/java/org/apache/log4j/lf5/viewer/LogBrokerMonitor.java (at line 1277)</div>


<div>| &nbsp; &nbsp; &nbsp; fonts = tk.getFontList();</div><div>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^^^^^^^^^^^^^</div><div>| The method getFontList() from the type Toolkit is deprecated</div><div>| ----------</div><div>| 13. WARNING in src/main/java/org/apache/log4j/lf5/viewer/LogBrokerMonitor.java (at line 1459)</div>


<div>| &nbsp; &nbsp; &nbsp; LogFactor5ErrorDialog error = new LogFactor5ErrorDialog(</div><div>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^^^^^</div><div>| The local variable error is never read</div><div>| ----------</div><div>| 14. WARNING in src/main/java/org/apache/log4j/lf5/viewer/LogBrokerMonitor.java (at line 1506)</div>


<div>| &nbsp; &nbsp; &nbsp; LogFactor5ErrorDialog error = new LogFactor5ErrorDialog(</div><div>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^^^^^</div><div>| The local variable error is never read</div><div>| ----------</div><div>| 15. WARNING in src/main/java/org/apache/log4j/lf5/viewer/LogBrokerMonitor.java (at line 1569)</div>


<div>| &nbsp; &nbsp; &nbsp; LogFactor5ErrorDialog error = new LogFactor5ErrorDialog(</div><div>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^^^^^</div><div>| The local variable error is never read</div><div>| ----------</div><div>| 16. WARNING in src/main/java/org/apache/log4j/lf5/viewer/LogBrokerMonitor.java (at line 1586)</div>


<div>| &nbsp; &nbsp; &nbsp; LogFactor5ErrorDialog error = new LogFactor5ErrorDialog(</div><div>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^^^^^</div><div>| The local variable error is never read</div><div>| ----------</div><div>| ----------</div><div>


| 17. WARNING in src/main/java/org/apache/log4j/lf5/viewer/FilteredLogTableModel.java (at line 39)</div><div>| &nbsp; &nbsp; &nbsp; public class FilteredLogTableModel</div><div>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^^^^^^^^^^^^^^^^^^^^^</div><div>| The serializable class FilteredLogTableModel does not declare a static final serialVersionUID field of type long</div>


<div>| ----------</div><div>| ----------</div><div>| 18. WARNING in src/main/java/org/apache/log4j/lf5/viewer/LogFactor5LoadingDialog.java (at line 35)</div><div>| &nbsp; &nbsp; &nbsp; public class LogFactor5LoadingDialog extends LogFactor5Dialog {</div>


<div>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^^^^^^^^^^^^^^^^^^^^^^^</div><div>| The serializable class LogFactor5LoadingDialog does not declare a static final serialVersionUID field of type long</div><div>| ----------</div><div>| ----------</div>


<div>| 19. WARNING in src/main/java/org/apache/log4j/lf5/viewer/LogFactor5Dialog.java (at line 42)</div><div>| &nbsp; &nbsp; &nbsp; public abstract class LogFactor5Dialog extends JDialog {</div><div>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^^^^^^^^^^^^^^^^</div>


<div>| The serializable class LogFactor5Dialog does not declare a static final serialVersionUID field of type long</div><div>| ----------</div><div>| 20. WARNING in src/main/java/org/apache/log4j/lf5/viewer/LogFactor5Dialog.java (at line 69)</div>


<div>| &nbsp; &nbsp; &nbsp; super.show();</div><div>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^^^^^^</div><div>| The method show() from the type Dialog is deprecated</div><div>| ----------</div><div>| ----------</div><div>| 21. WARNING in src/main/java/org/apache/log4j/lf5/viewer/LogFactor5ErrorDialog.java (at line 38)</div>


<div>| &nbsp; &nbsp; &nbsp; public class LogFactor5ErrorDialog extends LogFactor5Dialog {</div><div>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^^^^^^^^^^^^^^^^^^^^^</div><div>| The serializable class LogFactor5ErrorDialog does not declare a static final serialVersionUID field of type long</div>


<div>| ----------</div><div>| 22. WARNING in src/main/java/org/apache/log4j/lf5/viewer/LogFactor5ErrorDialog.java (at line 60)</div><div>| &nbsp; &nbsp; &nbsp; hide();</div><div>| &nbsp; &nbsp; &nbsp; ^^^^^^</div><div>| The method hide() from the type Dialog is deprecated</div>


<div>| ----------</div><div>| ----------</div><div>| 23. WARNING in src/main/java/org/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor.java (at line 93)</div><div>| &nbsp; &nbsp; &nbsp; CategoryNode node = (CategoryNode) path.getLastPathComponent();</div>


<div>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^^^^</div><div>| The local variable node is never read</div><div>| ----------</div><div>| 24. WARNING in src/main/java/org/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor.java (at line 94)</div>


<div>| &nbsp; &nbsp; &nbsp; boolean rv = false;</div><div>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^^</div><div>| The local variable rv is never read</div><div>| ----------</div><div>| ----------</div><div>| 25. WARNING in src/main/java/org/apache/log4j/lf5/LogLevelFormatException.java (at line 30)</div>


<div>| &nbsp; &nbsp; &nbsp; public class LogLevelFormatException extends Exception {</div><div>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^^^^^^^^^^^^^^^^^^^^^^^</div><div>| The serializable class LogLevelFormatException does not declare a static final serialVersionUID field of type long</div>


<div>| ----------</div><div>| ----------</div><div>| 26. WARNING in src/main/java/org/apache/log4j/lf5/util/LogFileParser.java (at line 162)</div><div>| &nbsp; &nbsp; &nbsp; LogFactor5ErrorDialog error = new LogFactor5ErrorDialog(</div>


<div>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^^^^^</div><div>| The local variable error is never read</div><div>| ----------</div><div>| 27. WARNING in src/main/java/org/apache/log4j/lf5/util/LogFileParser.java (at line 171)</div>

<div>
| &nbsp; &nbsp; &nbsp; _loadDialog.hide();</div><div>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^^^^^^</div><div>| The method hide() from the type Dialog is deprecated</div><div>| ----------</div><div>| ----------</div><div>| 28. WARNING in src/main/java/org/apache/log4j/lf5/util/AdapterLogRecord.java (at line 33)</div>


<div>| &nbsp; &nbsp; &nbsp; public class AdapterLogRecord extends LogRecord {</div><div>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^^^^^^^^^^^^^^^^</div><div>| The serializable class AdapterLogRecord does not declare a static final serialVersionUID field of type long</div>


<div>| ----------</div><div>| ----------</div><div>| 29. WARNING in src/main/java/org/apache/log4j/lf5/LogLevel.java (at line 42)</div><div>| &nbsp; &nbsp; &nbsp; public class LogLevel implements java.io.Serializable {</div><div>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^^^^^^^^</div>


<div>| The serializable class LogLevel does not declare a static final serialVersionUID field of type long</div><div>| ----------</div><div>| ----------</div><div>| 30. WARNING in src/main/java/org/apache/log4j/lf5/LogRecord.java (at line 33)</div>


<div>| &nbsp; &nbsp; &nbsp; public abstract class LogRecord implements java.io.Serializable {</div><div>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^^^^^^^^^</div><div>| The serializable class LogRecord does not declare a static final serialVersionUID field of type long</div>


<div>| ----------</div><div>| ----------</div><div>| 31. WARNING in src/main/java/org/apache/log4j/lf5/Log4JLogRecord.java (at line 32)</div><div>| &nbsp; &nbsp; &nbsp; public class Log4JLogRecord extends LogRecord {</div><div>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^^^^^^^^^^^^^^</div>


<div>| The serializable class Log4JLogRecord does not declare a static final serialVersionUID field of type long</div><div>| ----------</div><div>| ----------</div><div>| 32. WARNING in src/main/java/org/apache/log4j/chainsaw/DetailPanel.java (at line 37)</div>


<div>| &nbsp; &nbsp; &nbsp; class DetailPanel</div><div>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^^^^^^^^^^^</div><div>| The serializable class DetailPanel does not declare a static final serialVersionUID field of type long</div><div>| ----------</div><div>| 33. WARNING in src/main/java/org/apache/log4j/chainsaw/DetailPanel.java (at line 42)</div>


<div>| &nbsp; &nbsp; &nbsp; private static final Logger LOG =</div><div>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^^^</div><div>| The field DetailPanel.LOG is never read locally</div><div>| ----------</div><div>| ----------</div><div>| 34. WARNING in src/main/java/org/apache/log4j/chainsaw/Main.java (at line 44)</div>


<div>| &nbsp; &nbsp; &nbsp; public class Main</div><div>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^^^^</div><div>| The serializable class Main does not declare a static final serialVersionUID field of type long</div><div>| ----------</div><div>| ----------</div>


<div>| 35. WARNING in src/main/java/org/apache/log4j/chainsaw/LoadXMLAction.java (at line 40)</div><div>| &nbsp; &nbsp; &nbsp; class LoadXMLAction</div><div>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^^^^^^^^^^^^^</div><div>| The serializable class LoadXMLAction does not declare a static final serialVersionUID field of type long</div>


<div>| ----------</div><div>| ----------</div><div>| 36. WARNING in src/main/java/org/apache/log4j/chainsaw/MyTableModel.java (at line 37)</div><div>| &nbsp; &nbsp; &nbsp; class MyTableModel</div><div>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^^^^^^^^^^^^</div><div>


| The serializable class MyTableModel does not declare a static final serialVersionUID field of type long</div><div>| ----------</div><div>| 37. WARNING in src/main/java/org/apache/log4j/chainsaw/MyTableModel.java (at line 142)</div>


<div>| &nbsp; &nbsp; &nbsp; private Priority mPriorityFilter = Priority.DEBUG;</div><div>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^^^^^</div><div>| The field Priority.DEBUG is deprecated</div><div>| ----------</div><div>| ----------</div>


<div>| 38. WARNING in src/main/java/org/apache/log4j/chainsaw/ExitAction.java (at line 29)</div><div>| &nbsp; &nbsp; &nbsp; class ExitAction</div><div>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^^^^^^^^^^</div><div>| The serializable class ExitAction does not declare a static final serialVersionUID field of type long</div>


<div>| ----------</div><div>| ----------</div><div>| 39. WARNING in src/main/java/org/apache/log4j/chainsaw/ControlPanel.java (at line 40)</div><div>| &nbsp; &nbsp; &nbsp; class ControlPanel extends JPanel {</div><div>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^^^^^^^^^^^^</div>


<div>| The serializable class ControlPanel does not declare a static final serialVersionUID field of type long</div><div>| ----------</div><div>| 40. WARNING in src/main/java/org/apache/log4j/chainsaw/ControlPanel.java (at line 42)</div>


<div>| &nbsp; &nbsp; &nbsp; private static final Logger LOG =</div><div>| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^^^</div><div>| The field ControlPanel.LOG is never read locally</div><div>| ----------</div></div><div><br></div></div>
<br></div></div>_______________________________________________<br>
yocto mailing list<br>
<a href="mailto:yocto@yoctoproject.org" target="_blank">yocto@yoctoproject.org</a><br>
<a href="https://lists.yoctoproject.org/listinfo/yocto" target="_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>
</blockquote></div><br></div>
_______________________________________________<br>yocto mailing list<br><a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>https://lists.yoctoproject.org/listinfo/yocto<br></blockquote></div><br></body></html>

--Apple-Mail=_7F7A1E92-8FA6-4DCF-9F26-FD932C8AD9ED--
