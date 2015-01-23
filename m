Return-Path: <jfabernathy@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D0F1E008DD; Fri, 23 Jan 2015 09:25:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jfabernathy[at]outlook.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.54.190.162 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 60 seconds by postgrey-1.32 at yocto-www;
	Fri, 23 Jan 2015 09:25:45 PST
Received: from BAY004-OMC3S24.hotmail.com (bay004-omc3s24.hotmail.com
	[65.54.190.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2BC8E005A9
	for <yocto@yoctoproject.org>; Fri, 23 Jan 2015 09:25:45 -0800 (PST)
Received: from BAY169-W3 ([65.54.190.187]) by BAY004-OMC3S24.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.22751); 
	Fri, 23 Jan 2015 09:24:44 -0800
X-TMN: [14PcNpKFZqiH63AXqlbwnXXykD4POKwW]
X-Originating-Email: [jfabernathy@outlook.com]
Message-ID: <BAY169-W3CF94A018FE9CEDCFDA90AE360@phx.gbl>
From: Jim Abernathy <jfabernathy@outlook.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 23 Jan 2015 12:24:44 -0500
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 23 Jan 2015 17:24:44.0998 (UTC)
	FILETIME=[7AFB9E60:01D03731]
Subject: adding all the pieces of WiFi to core-image-minimal
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
X-List-Received-Date: Fri, 23 Jan 2015 17:25:50 -0000
Content-Type: multipart/alternative;
	boundary="_cea7cf7d-3e0a-4676-b532-097ec5f554f7_"

--_cea7cf7d-3e0a-4676-b532-097ec5f554f7_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm starting a project mostly for self-education.  I have already done the =
project using Ubuntu Server 14.04 using a Intel NUC and a Pandaboard as tar=
gets.  Now I want to see how easy it is to move it to Yocto.

Starting with the NUC=2C I can boot Dizzy 1.7.1 core-image-minimal and core=
-image-sato=2C both built with bitbake and not the prebuilt images. However=
=2C core-image-minimal doesn't have WiFi and core-image-sato does=2C but I =
don't need all the GUI stuff.  It's a headless application.

So what is recommended=3B eliminating the GUI from sato or adding wifi and =
wpa-supplicant=2C etc to minimal??  Also any pointers to how to do the addi=
ng/subtracting would be most helpful.

Once this is working all I have to do is put apache-tomcat=2C and openjdk-7=
-jre=2C then my application.

thanks=2C JimA
 		 	   		  =

--_cea7cf7d-3e0a-4676-b532-097ec5f554f7_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px=3B
padding:0px
}
body.hmmessage
{
font-size: 12pt=3B
font-family:Calibri
}
--></style></head>
<body class=3D'hmmessage'><div dir=3D'ltr'>I'm starting a project mostly fo=
r self-education.&nbsp=3B I have already done the project using Ubuntu Serv=
er 14.04 using a Intel NUC and a Pandaboard as targets.&nbsp=3B Now I want =
to see how easy it is to move it to Yocto.<br><br>Starting with the NUC=2C =
I can boot Dizzy 1.7.1 core-image-minimal and core-image-sato=2C both built=
 with bitbake and not the prebuilt images. However=2C core-image-minimal do=
esn't have WiFi and core-image-sato does=2C but I don't need all the GUI st=
uff.&nbsp=3B It's a headless application.<br><br>So what is recommended=3B =
eliminating the GUI from sato or adding wifi and wpa-supplicant=2C etc to m=
inimal??&nbsp=3B Also any pointers to how to do the adding/subtracting woul=
d be most helpful.<br><br>Once this is working all I have to do is put apac=
he-tomcat=2C and openjdk-7-jre=2C then my application.<br><br>thanks=2C Jim=
A<br> 		 	   		  </div></body>
</html>=

--_cea7cf7d-3e0a-4676-b532-097ec5f554f7_--
