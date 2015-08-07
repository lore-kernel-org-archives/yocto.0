Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8CF9E00A38; Fri,  7 Aug 2015 00:17:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28DBDE009FD
	for <yocto@yoctoproject.org>; Fri,  7 Aug 2015 00:17:26 -0700 (PDT)
Received: by pabyb7 with SMTP id yb7so49502312pab.0
	for <yocto@yoctoproject.org>; Fri, 07 Aug 2015 00:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=kddXpN+NVEHNc5CDLy2Tt6NEBQ2uwe3jHa9aJtP1cr4=;
	b=FdevOYW8ZOdZ5Z/Co9BPd3hud4lIrbsM3WBvtFv1bTaAq54FexeiPUDi4Ezi5bo+yr
	6wseCceXfaB113RAm2GvQbL71SzhVnQW8oI4qXttPVTj0TrFCVkLBox0PmSQBwb3Mxes
	19HbIgvPFnxgFvY5IOyjYf1u1KhfAk2H6BB+DxOTGLtEFNNIUSKN0Odqp0i883SpgkGL
	nIDOZ0s3wr02vKmew+05B3rUmp6gC0dRAIYeJeL8K/gQdCcPZwKheOk6iaT5ZSg1S14/
	uQraBvdgqavoaBSz7YBZX7FJovXsUVMtRbbFgkYVDUcq1q6kwZoa7VzhTtuMi8JURTue
	nKwA==
X-Received: by 10.68.230.33 with SMTP id sv1mr11876857pbc.160.1438931846030;
	Fri, 07 Aug 2015 00:17:26 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:4ec:fbce:7a8:43c9?
	([2601:646:8601:4580:4ec:fbce:7a8:43c9])
	by smtp.gmail.com with ESMTPSA id y2sm8886456pdc.91.2015.08.07.00.17.25
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 07 Aug 2015 00:17:25 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Pgp-Agent: GPGMail 2.5
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <3BFD0DC7A2789942BE64183CD25D1340D2846B@POCITMSEXMB03.LntUniverse.com>
Date: Fri, 7 Aug 2015 00:17:20 -0700
Message-Id: <B37018B0-C299-4AC7-B8E1-A8765E109A0C@gmail.com>
References: <3BFD0DC7A2789942BE64183CD25D1340D2559F@POCITMSEXMB03.LntUniverse.com>
	<3BFD0DC7A2789942BE64183CD25D1340D2846B@POCITMSEXMB03.LntUniverse.com>
To: Anil Kumar TS <ANIL.SHETTY@LNTTECHSERVICES.COM>
X-Mailer: Apple Mail (2.2104)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Apache Tomcat7 on Yocto 1.8
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
X-List-Received-Date: Fri, 07 Aug 2015 07:17:29 -0000
X-Groupsio-MsgNum: 25921
Content-Type: multipart/signed;
	boundary="Apple-Mail=_2D653E0F-088B-44F6-AE8A-F02FB86E9C4E";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_2D653E0F-088B-44F6-AE8A-F02FB86E9C4E
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_5E7F572F-A90A-4AF5-8A4B-2336D46D7592"

--Apple-Mail=_5E7F572F-A90A-4AF5-8A4B-2336D46D7592
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


> On Jul 30, 2015, at 10:07 AM, Anil Kumar TS =
<ANIL.SHETTY@LNTTECHSERVICES.COM> wrote:
>=20
> Hi,
>=20
> I added Servlet api file and Java Sserver Page for Apache Tomcat 7, =
and compiled it. Before that I  added openjdk-7-jre too.
> While creating core-image-base image, I am seeing errors during rootfs =
 image creation with the following error:
>=20
> ERROR: servlet3.0 not found in the base feeds (qemux86 i586 x86 noarch =
any all).


how is this recipe written, It seems its ending up with empty packages =
and which are then deleted and dependency resolver then finds nothing to =
depend on
looks inside the build of servlet3.0 and especially packages-split =
directory and see where are all files siphoned to

>=20
> I have attached the complete log file.
>=20
> Below is the local.conf file, that I am using
>=20
>     MACHINE ??=3D "qemux86"
>=20
>     PREFERRED_PROVIDER_virtual/java-initial-native =3D =
"cacao-initial-native"
>=20
>     PREFERRED_PROVIDER_virtual/java-native =3D "jamvm-native"
>     PREFERRED_PROVIDER_virtual/javac-native =3D "ecj-bootstrap-native"
>     PREFERRED_VERSION_openjdk-7-jre =3D "75b13-2.5.4"
>     PREFERRED_VERSION_icedtea7-native =3D "2.1.3"
>     PREFERRED_VERSION_servlet3.0 =3D "7.0.63"
>     PREFERRED_VERSION_jsp2.2 =3D "7.0.63"
>     PREFERRED_PROVIDER_openjdk-7-jre =3D "openjdk-7-jre"
>     PREFERRED_PROVIDER_servlet3.0 =3D "servlet3.0"
>     IMAGE_INSTALL_append =3D " openjdk-7-jre"
>     IMAGE_INSTALL_append =3D " servlet3.0"
>=20
> Could anyone please help me regarding  this?
>=20
> Thanks and  Regards,
> Anil
>=20
>=20
> From: yocto-bounces@yoctoproject.org =
<mailto:yocto-bounces@yoctoproject.org> [yocto-bounces@yoctoproject.org =
<mailto:yocto-bounces@yoctoproject.org>] on behalf of Anil Kumar TS =
[ANIL.SHETTY@LNTTECHSERVICES.COM =
<mailto:ANIL.SHETTY@LNTTECHSERVICES.COM>]
> Sent: Wednesday, July 22, 2015 10:07 AM
> To: yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> Subject: [yocto] Apache Tomcat7 on Yocto 1.8
>=20
> Hi,
>=20
> I am trying to build and run Apache Tomcat 7 on Yocto 1.8. I have =
already added meta-java pulled from yocto project source repo and built =
openjdk7.
> The recipes-core in meta-java contains servlet-api recipe file for =
tomcat 5.5 but not for tomcat7. I tried adding a new servlet-api recipe =
file. But the manifest file is not being used from tomcat 6 version. And =
I am facing errors in do_unpackpost().
> Since I am new to this could some one please point me in the right =
direction as to how to go forward in adding tomcat 7?
>=20
> Thanks and Regards,
> Anil
> L&T Technology Services Ltd
> www.LntTechservices.com <http://www.lnttechservices.com/>
> This Email may contain confidential or privileged information for the =
intended recipient (s). If you are not the intended recipient, please do =
not use or disseminate the information, notify the sender and delete it =
from your system.
> L&T Technology Services Ltd
> www.LntTechservices.com <http://www.lnttechservices.com/>
> This Email may contain confidential or privileged information for the =
intended recipient (s). If you are not the intended recipient, please do =
not use or disseminate the information, notify the sender and delete it =
from your system.
> L&T Technology Services Ltd
> www.LntTechservices.com <http://www.lnttechservices.com/>
> This Email may contain confidential or privileged information for the =
intended recipient (s). If you are not the intended recipient, please do =
not use or disseminate the information, notify the sender and delete it =
from your system.
> <log.do_rootfs.15022>--
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_5E7F572F-A90A-4AF5-8A4B-2336D46D7592
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Diso-8859-1"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jul 30, 2015, at 10:07 AM, Anil Kumar TS &lt;<a =
href=3D"mailto:ANIL.SHETTY@LNTTECHSERVICES.COM" =
class=3D"">ANIL.SHETTY@LNTTECHSERVICES.COM</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
style=3D"font-size: 10pt; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; direction: ltr; font-family: Tahoma;" =
class=3D"">Hi,<br class=3D""><br class=3D"">I added Servlet api file and =
Java Sserver Page for Apache Tomcat 7, and compiled it. Before that =
I&nbsp; added openjdk-7-jre too.<br class=3D"">While creating =
core-image-base image, I am seeing errors during rootfs&nbsp; image =
creation with the following error:<br class=3D""><br class=3D"">ERROR: =
servlet3.0 not found in the base feeds (qemux86 i586 x86 noarch any =
all).<br class=3D""></div></div></blockquote><div><br =
class=3D""></div><div><br class=3D""></div><div>how is this recipe =
written, It seems its ending up with empty packages and which are then =
deleted and dependency resolver then finds nothing to depend =
on</div><div>looks inside the build of servlet3.0 and especially =
packages-split directory and see where are all files siphoned =
to</div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D""><div style=3D"font-size: 10pt; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; direction: ltr; font-family: =
Tahoma;" class=3D""><br class=3D"">I have attached the complete log =
file.<br class=3D""><br class=3D"">Below is the local.conf file, that I =
am using<br class=3D""><br class=3D"">&nbsp;&nbsp;&nbsp; MACHINE ??=3D =
"qemux86"<br class=3D""><br class=3D"">&nbsp;&nbsp;&nbsp; =
PREFERRED_PROVIDER_virtual/java-initial-native =3D =
"cacao-initial-native"<br class=3D""><br class=3D"">&nbsp;&nbsp;&nbsp; =
PREFERRED_PROVIDER_virtual/java-native =3D "jamvm-native"<br =
class=3D"">&nbsp;&nbsp;&nbsp; PREFERRED_PROVIDER_virtual/javac-native =3D =
"ecj-bootstrap-native"<br class=3D"">&nbsp;&nbsp;&nbsp; =
PREFERRED_VERSION_openjdk-7-jre =3D "75b13-2.5.4"<br =
class=3D"">&nbsp;&nbsp;&nbsp; PREFERRED_VERSION_icedtea7-native =3D =
"2.1.3"<br class=3D"">&nbsp;&nbsp;&nbsp; PREFERRED_VERSION_servlet3.0 =3D =
"7.0.63"<br class=3D"">&nbsp;&nbsp;&nbsp; PREFERRED_VERSION_jsp2.2 =3D =
"7.0.63"<br class=3D"">&nbsp;&nbsp;&nbsp; =
PREFERRED_PROVIDER_openjdk-7-jre =3D "openjdk-7-jre"<br =
class=3D"">&nbsp;&nbsp;&nbsp; PREFERRED_PROVIDER_servlet3.0 =3D =
"servlet3.0"<br class=3D"">&nbsp;&nbsp;&nbsp; IMAGE_INSTALL_append =3D " =
openjdk-7-jre"<br class=3D"">&nbsp;&nbsp;&nbsp; IMAGE_INSTALL_append =3D =
" servlet3.0"<br class=3D""><br class=3D"">Could anyone please help me =
regarding&nbsp; this?<br class=3D""><br class=3D"">Thanks and&nbsp; =
Regards,<br class=3D"">Anil<br class=3D""><br class=3D""><br =
class=3D""><div style=3D"font-family: 'Times New Roman'; font-size: =
16px;" class=3D""><div id=3D"divRpF676868" style=3D"direction: ltr;" =
class=3D""><font face=3D"Tahoma" size=3D"2" class=3D""><b =
class=3D"">From:</b><span class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"mailto:yocto-bounces@yoctoproject.org" =
class=3D"">yocto-bounces@yoctoproject.org</a><span =
class=3D"Apple-converted-space">&nbsp;</span>[<a =
href=3D"mailto:yocto-bounces@yoctoproject.org" =
class=3D"">yocto-bounces@yoctoproject.org</a>] on behalf of Anil Kumar =
TS [<a href=3D"mailto:ANIL.SHETTY@LNTTECHSERVICES.COM" =
class=3D"">ANIL.SHETTY@LNTTECHSERVICES.COM</a>]<br class=3D""><b =
class=3D"">Sent:</b><span =
class=3D"Apple-converted-space">&nbsp;</span>Wednesday, July 22, 2015 =
10:07 AM<br class=3D""><b class=3D"">To:</b><span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br class=3D""><b =
class=3D"">Subject:</b><span =
class=3D"Apple-converted-space">&nbsp;</span>[yocto] Apache Tomcat7 on =
Yocto 1.8<br class=3D""></font><br class=3D""></div><div =
class=3D""></div><div class=3D""><div style=3D"direction: ltr; =
font-family: Tahoma; font-size: 10pt;" class=3D"">Hi,<br class=3D""><br =
class=3D"">I am trying to build and run Apache Tomcat 7 on Yocto 1.8. I =
have already added meta-java pulled from yocto project source repo and =
built openjdk7.<br class=3D"">The recipes-core in meta-java contains =
servlet-api recipe file for tomcat 5.5 but not for tomcat7. I tried =
adding a new servlet-api recipe file. But the manifest file is not being =
used from tomcat 6 version. And I am facing errors in =
do_unpackpost().<br class=3D"">Since I am new to this could some one =
please point me in the right direction as to how to go forward in adding =
tomcat 7?<span class=3D"Apple-converted-space">&nbsp;</span><br =
class=3D""><br class=3D"">Thanks and Regards,<br class=3D"">Anil<br =
class=3D""></div><div style=3D"margin-top: 0px; margin-bottom: 0px;" =
class=3D""><strong class=3D"">L&amp;T Technology Services =
Ltd</strong></div><div style=3D"margin-top: 0px; margin-bottom: 0px;" =
class=3D""><a href=3D"http://www.lnttechservices.com/" target=3D"_blank" =
class=3D"">www.LntTechservices.com</a></div><div style=3D"margin-top: =
0px; margin-bottom: 0px;" class=3D"">This Email may contain confidential =
or privileged information for the intended recipient (s). If you are not =
the intended recipient, please do not use or disseminate the =
information, notify the sender and delete it from your system.</div><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D""><strong =
class=3D"">L&amp;T Technology Services Ltd</strong></div><div =
style=3D"margin-top: 0px; margin-bottom: 0px;" class=3D""><a =
href=3D"http://www.lnttechservices.com/" target=3D"_blank" =
class=3D"">www.LntTechservices.com</a></div><div style=3D"margin-top: =
0px; margin-bottom: 0px;" class=3D"">This Email may contain confidential =
or privileged information for the intended recipient (s). If you are not =
the intended recipient, please do not use or disseminate the =
information, notify the sender and delete it from your =
system.</div></div></div></div><div style=3D"margin-top: 0px; =
margin-bottom: 0px; font-family: Helvetica; font-size: 13px; font-style: =
normal; font-variant: normal; font-weight: normal; letter-spacing: =
normal; line-height: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D""><strong class=3D"">L&amp;T Technology Services =
Ltd</strong></div><div style=3D"margin-top: 0px; margin-bottom: 0px; =
font-family: Helvetica; font-size: 13px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"http://www.lnttechservices.com/" target=3D"_blank" =
class=3D"">www.LntTechservices.com</a></div><div style=3D"margin-top: =
0px; margin-bottom: 0px; font-family: Helvetica; font-size: 13px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">This Email may contain confidential or privileged information =
for the intended recipient (s). If you are not the intended recipient, =
please do not use or disseminate the information, notify the sender and =
delete it from your system.</div><span =
id=3D"cid:B8EC90ED-6F84-4CB3-80F4-2903321C2863@hsd1.ca.comcast.net">&lt;lo=
g.do_rootfs.15022&gt;</span><span style=3D"font-family: Helvetica; =
font-size: 13px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
float: none; display: inline !important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Helvetica; font-size: 13px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D""><span =
style=3D"font-family: Helvetica; font-size: 13px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" =
class=3D"">_______________________________________________</span><br =
style=3D"font-family: Helvetica; font-size: 13px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D""><span =
style=3D"font-family: Helvetica; font-size: 13px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">yocto mailing list</span><br style=3D"font-family:=
 Helvetica; font-size: 13px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"font-family: Helvetica; =
font-size: 13px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D"">yocto@yoctoproject.org</a><br style=3D"font-family: =
Helvetica; font-size: 13px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
style=3D"font-family: Helvetica; font-size: 13px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></body></html>=

--Apple-Mail=_5E7F572F-A90A-4AF5-8A4B-2336D46D7592--

--Apple-Mail=_2D653E0F-088B-44F6-AE8A-F02FB86E9C4E
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlXEW4MACgkQuwUzVZGdMxQSiwCfVflPdcWLh9jVmbr6m+SJGkNB
/hcAnjhRhIevb6Z6swfYtZiyIq6CdMQh
=YWoW
-----END PGP SIGNATURE-----

--Apple-Mail=_2D653E0F-088B-44F6-AE8A-F02FB86E9C4E--
