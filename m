Return-Path: <jfabernathy@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 519D8E00827; Wed, 28 Jan 2015 06:58:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jfabernathy[at]outlook.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.54.190.152 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from BAY004-OMC3S14.hotmail.com (bay004-omc3s14.hotmail.com
	[65.54.190.152])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18D2FE00753
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 06:58:15 -0800 (PST)
Received: from BAY169-W54 ([65.54.190.188]) by BAY004-OMC3S14.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.22751); 
	Wed, 28 Jan 2015 06:58:14 -0800
X-TMN: [r0b3iNAnNjeEvlDuJs9lRy08pZwnb4Jx]
X-Originating-Email: [jfabernathy@outlook.com]
Message-ID: <BAY169-W545814E4CA44C6EAC0EC20AE330@phx.gbl>
From: Jim Abernathy <jfabernathy@outlook.com>
To: Maxin John <maxin@maxinbjohn.info>
Date: Wed, 28 Jan 2015 09:58:14 -0500
Importance: Normal
In-Reply-To: <CAFicg87v1F5LZ-a9N8=VtO=tt5ZyR+h98nxt8hLc+X1V2VJS7A@mail.gmail.com>
References: <BLU436-SMTP194E8A8B18DB6A3ADDA00AFAE320@phx.gbl>,
	<CAFicg85waXXFmZsr4+fbAByoB-a_xUN23EHJD0scqisNunP2vQ@mail.gmail.com>,
	<BAY169-W55C7EBD601DFB42F2CA8ADAE330@phx.gbl>,
	<3859281.CPjbAClMcV@peggleto-mobl5.ger.corp.intel.com>,
	<BAY169-W68A99F2815567D9CCB628AE330@phx.gbl>,
	<CAFicg857GKOgixieHfk36wXBmdnaLFhcaQzFLZGeMuTWZnkR0g@mail.gmail.com>,
	<BAY169-W1323FBA1846821F1C7654FDAE330@phx.gbl>,
	<CAFicg87v1F5LZ-a9N8=VtO=tt5ZyR+h98nxt8hLc+X1V2VJS7A@mail.gmail.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 28 Jan 2015 14:58:14.0818 (UTC)
	FILETIME=[D7B15820:01D03B0A]
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	yocto <yocto@yoctoproject.org>
Subject: Re: adding meta-oracle-java
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
X-List-Received-Date: Wed, 28 Jan 2015 14:58:19 -0000
Content-Type: multipart/alternative;
	boundary="_d309e6a5-0a9d-422b-9c20-ecbab01f6de9_"

--_d309e6a5-0a9d-422b-9c20-ecbab01f6de9_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable



> Date: Wed=2C 28 Jan 2015 15:26:24 +0100
> Subject: Re: [yocto] adding meta-oracle-java
> From: maxin@maxinbjohn.info
> To: jfabernathy@outlook.com
> CC: paul.eggleton@linux.intel.com=3B yocto@yoctoproject.org
>=20
> Hi=2C
>=20
> On Wed=2C Jan 28=2C 2015 at 1:10 PM=2C Jim Abernathy <jfabernathy@outlook=
.com> wrote:
> >
> <snip>
>=20
> > well the file command does not run on the target machine same as java=
=2C not
> > found error.  as to the local.conf file.  The only changes are as follo=
ws:
> >
> > MACHINE ?=3D "nuc"
> > IMAGE_INSTALL_append =3D " oracle-jse-jre dropbear"
> > LICENSE_FLAGS_WHITELIST +=3D "oracle_java"
> > #
> > DL_DIR ?=3D "/work/downloads"
> > #PACKAGE_CLASSES ?=3D "package_rpm"
> > PACKAGE_CLASSES =3D "package_deb"
> >
> > I build with bitbake core-image-base.
>=20
> From the "nuc" image on qemu=2C I get this output for file command:
>=20
> # file bin/busybox.nosuid
> bin/busybox.nosuid: ELF 64-bit LSB executable=2C x86-64=2C version 1
> (SYSV)=2C dynamically linked=2C interpreter /lib/ld-linux-x86-64.so.2=2C =
for
> GNU/Linux 2.6.32=2C
> BuildID[sha1]=3Dd87821503ef9cc2a5bed4a284cac138211a649ff=2C stripped
>=20
> # file /usr/share/jre1.7.0_67/bin/java
> /usr/share/jre1.7.0_67/bin/java: ELF 64-bit LSB executable=2C x86-64=2C
> version 1 (SYSV)=2C dynamically linked=2C interpreter
> /lib64/ld-linux-x86-64.so.2=2C for GNU/Linux 2.6.9=2C
> BuildID[sha1]=3Db82a586842f6da3df8a61093daadf0
>=20
> / #  java
> /bin/sh: java: not found
>=20
> Could be related to the library path. Continuing with investigation.
>=20
> Best Regards=2C
> Maxin

I just created a qemux86 image for core-image-base with meta-java in it and=
 after booting in the emulator=2C it=2C of course=2C gives the proper respo=
nse to java -version.  I'm going to try building a qemux86-64 to see if the=
re's any difference.  On real NUC hardware it will not=2C as mentioned=2C w=
ork correctly.

Jim A

 		 	   		  =

--_d309e6a5-0a9d-422b-9c20-ecbab01f6de9_
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
<body class=3D'hmmessage'><div dir=3D'ltr'><br><br><div>&gt=3B Date: Wed=2C=
 28 Jan 2015 15:26:24 +0100<br>&gt=3B Subject: Re: [yocto] adding meta-orac=
le-java<br>&gt=3B From: maxin@maxinbjohn.info<br>&gt=3B To: jfabernathy@out=
look.com<br>&gt=3B CC: paul.eggleton@linux.intel.com=3B yocto@yoctoproject.=
org<br>&gt=3B <br>&gt=3B Hi=2C<br>&gt=3B <br>&gt=3B On Wed=2C Jan 28=2C 201=
5 at 1:10 PM=2C Jim Abernathy &lt=3Bjfabernathy@outlook.com&gt=3B wrote:<br=
>&gt=3B &gt=3B<br>&gt=3B &lt=3Bsnip&gt=3B<br>&gt=3B <br>&gt=3B &gt=3B well =
the file command does not run on the target machine same as java=2C not<br>=
&gt=3B &gt=3B found error.  as to the local.conf file.  The only changes ar=
e as follows:<br>&gt=3B &gt=3B<br>&gt=3B &gt=3B MACHINE ?=3D "nuc"<br>&gt=
=3B &gt=3B IMAGE_INSTALL_append =3D " oracle-jse-jre dropbear"<br>&gt=3B &g=
t=3B LICENSE_FLAGS_WHITELIST +=3D "oracle_java"<br>&gt=3B &gt=3B #<br>&gt=
=3B &gt=3B DL_DIR ?=3D "/work/downloads"<br>&gt=3B &gt=3B #PACKAGE_CLASSES =
?=3D "package_rpm"<br>&gt=3B &gt=3B PACKAGE_CLASSES =3D "package_deb"<br>&g=
t=3B &gt=3B<br>&gt=3B &gt=3B I build with bitbake core-image-base.<br>&gt=
=3B <br>&gt=3B From the "nuc" image on qemu=2C I get this output for file c=
ommand:<br>&gt=3B <br>&gt=3B # file bin/busybox.nosuid<br>&gt=3B bin/busybo=
x.nosuid: ELF 64-bit LSB executable=2C x86-64=2C version 1<br>&gt=3B (SYSV)=
=2C dynamically linked=2C interpreter /lib/ld-linux-x86-64.so.2=2C for<br>&=
gt=3B GNU/Linux 2.6.32=2C<br>&gt=3B BuildID[sha1]=3Dd87821503ef9cc2a5bed4a2=
84cac138211a649ff=2C stripped<br>&gt=3B <br>&gt=3B # file /usr/share/jre1.7=
.0_67/bin/java<br>&gt=3B /usr/share/jre1.7.0_67/bin/java: ELF 64-bit LSB ex=
ecutable=2C x86-64=2C<br>&gt=3B version 1 (SYSV)=2C dynamically linked=2C i=
nterpreter<br>&gt=3B /lib64/ld-linux-x86-64.so.2=2C for GNU/Linux 2.6.9=2C<=
br>&gt=3B BuildID[sha1]=3Db82a586842f6da3df8a61093daadf0<br>&gt=3B <br>&gt=
=3B / #  java<br>&gt=3B /bin/sh: java: not found<br>&gt=3B <br>&gt=3B Could=
 be related to the library path. Continuing with investigation.<br>&gt=3B <=
br>&gt=3B Best Regards=2C<br>&gt=3B Maxin<br><br>I just created a qemux86 i=
mage for core-image-base with meta-java in it and after booting in the emul=
ator=2C it=2C of course=2C gives the proper response to java -version.&nbsp=
=3B I'm going to try building a qemux86-64 to see if there's any difference=
.&nbsp=3B On real NUC hardware it will not=2C as mentioned=2C work correctl=
y.<br><br>Jim A<br><br></div> 		 	   		  </div></body>
</html>=

--_d309e6a5-0a9d-422b-9c20-ecbab01f6de9_--
