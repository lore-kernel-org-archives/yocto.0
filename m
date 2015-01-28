Return-Path: <jfabernathy@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42DD6E008BC; Wed, 28 Jan 2015 04:10:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jfabernathy[at]outlook.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.54.190.146 listed in list.dnswl.org]
Received: from BAY004-OMC3S8.hotmail.com (bay004-omc3s8.hotmail.com
	[65.54.190.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C94A2E00757
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 04:10:01 -0800 (PST)
Received: from BAY169-W132 ([65.54.190.188]) by BAY004-OMC3S8.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.22751); 
	Wed, 28 Jan 2015 04:10:00 -0800
X-TMN: [fyLssrIklnOx15kgq4HB24hlEDMT2yDG]
X-Originating-Email: [jfabernathy@outlook.com]
Message-ID: <BAY169-W1323FBA1846821F1C7654FDAE330@phx.gbl>
From: Jim Abernathy <jfabernathy@outlook.com>
To: Maxin John <maxin@maxinbjohn.info>
Date: Wed, 28 Jan 2015 07:10:00 -0500
Importance: Normal
In-Reply-To: <CAFicg857GKOgixieHfk36wXBmdnaLFhcaQzFLZGeMuTWZnkR0g@mail.gmail.com>
References: <BLU436-SMTP194E8A8B18DB6A3ADDA00AFAE320@phx.gbl>,
	<CAFicg85waXXFmZsr4+fbAByoB-a_xUN23EHJD0scqisNunP2vQ@mail.gmail.com>,
	<BAY169-W55C7EBD601DFB42F2CA8ADAE330@phx.gbl>,
	<3859281.CPjbAClMcV@peggleto-mobl5.ger.corp.intel.com>,
	<BAY169-W68A99F2815567D9CCB628AE330@phx.gbl>,
	<CAFicg857GKOgixieHfk36wXBmdnaLFhcaQzFLZGeMuTWZnkR0g@mail.gmail.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 28 Jan 2015 12:10:00.0497 (UTC)
	FILETIME=[57023210:01D03AF3]
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
X-List-Received-Date: Wed, 28 Jan 2015 12:10:03 -0000
Content-Type: multipart/alternative;
	boundary="_e7f2f5b0-7246-4025-8307-99ba864308c9_"

--_e7f2f5b0-7246-4025-8307-99ba864308c9_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable



> Date: Wed=2C 28 Jan 2015 13:01:02 +0100
> Subject: Re: [yocto] adding meta-oracle-java
> From: maxin@maxinbjohn.info
> To: jfabernathy@outlook.com
> CC: paul.eggleton@linux.intel.com=3B yocto@yoctoproject.org
>=20
> Hi Jim=2C
>=20
> On Wed=2C Jan 28=2C 2015 at 12:21 PM=2C Jim Abernathy <jfabernathy@outloo=
k.com> wrote:
> >
> >
> >> From: paul.eggleton@linux.intel.com
> >> To: jfabernathy@outlook.com
> >> CC: maxin@maxinbjohn.info=3B yocto@yoctoproject.org
> >> Subject: Re: [yocto] adding meta-oracle-java
> >> Date: Wed=2C 28 Jan 2015 10:55:23 +0000
> >
> >>
> >> On Wednesday 28 January 2015 05:44:47 Jim Abernathy wrote:
> >> > Thanks=2C I guess the problem for me stems from not knowing the diff=
erence
> >> > between=2C IMAGE_INSTALL_append and CORE_IMAGE_EXTRA_INSTALL=2C whic=
h I was
> >> > using.
> >>
> >> Basically=2C the only difference is that CORE_IMAGE_EXTRA_INSTALL will=
 only
> >> work
> >> with image recipes that inherit core-image. If the recipe inherits ima=
ge=2C
> >> its
> >> value won't be used.
> >>
> >> Cheers=2C
> >> Paul
> > thank=2C well I got the java included in my build=2C but I can't execut=
e it.
> > very strange!
> >
> > I see java is at /usr/share/java/bin and there's a link to java in the
> > /usr/bin=2C but at the command line I can't run=2C java -version.  I ge=
t java
> > not found.  It's like it a shell problem.  I had the same issue when I =
just
> > installed the tarball for JRE on a standard core-image-base before.
>=20
> This can also be related to the architecture difference of java binary. C=
an you
> share the output of "file" command on java binary  along with "MACHINE"
> and other related details in local.conf file?
>=20
> > I'm running as the only user on the system=2C root.
> >
> > Jim A
>=20
> Warm Regards=2C
> Maxin

well the file command does not run on the target machine same as java=2C no=
t found error.  as to the local.conf file.  The only changes are as follows=
:

MACHINE ?=3D "nuc"
IMAGE_INSTALL_append =3D " oracle-jse-jre dropbear"
LICENSE_FLAGS_WHITELIST +=3D "oracle_java"
#
DL_DIR ?=3D "/work/downloads"
#PACKAGE_CLASSES ?=3D "package_rpm"
PACKAGE_CLASSES =3D "package_deb"

I build with bitbake core-image-base.


 		 	   		  =

--_e7f2f5b0-7246-4025-8307-99ba864308c9_
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
 28 Jan 2015 13:01:02 +0100<br>&gt=3B Subject: Re: [yocto] adding meta-orac=
le-java<br>&gt=3B From: maxin@maxinbjohn.info<br>&gt=3B To: jfabernathy@out=
look.com<br>&gt=3B CC: paul.eggleton@linux.intel.com=3B yocto@yoctoproject.=
org<br>&gt=3B <br>&gt=3B Hi Jim=2C<br>&gt=3B <br>&gt=3B On Wed=2C Jan 28=2C=
 2015 at 12:21 PM=2C Jim Abernathy &lt=3Bjfabernathy@outlook.com&gt=3B wrot=
e:<br>&gt=3B &gt=3B<br>&gt=3B &gt=3B<br>&gt=3B &gt=3B&gt=3B From: paul.eggl=
eton@linux.intel.com<br>&gt=3B &gt=3B&gt=3B To: jfabernathy@outlook.com<br>=
&gt=3B &gt=3B&gt=3B CC: maxin@maxinbjohn.info=3B yocto@yoctoproject.org<br>=
&gt=3B &gt=3B&gt=3B Subject: Re: [yocto] adding meta-oracle-java<br>&gt=3B =
&gt=3B&gt=3B Date: Wed=2C 28 Jan 2015 10:55:23 +0000<br>&gt=3B &gt=3B<br>&g=
t=3B &gt=3B&gt=3B<br>&gt=3B &gt=3B&gt=3B On Wednesday 28 January 2015 05:44=
:47 Jim Abernathy wrote:<br>&gt=3B &gt=3B&gt=3B &gt=3B Thanks=2C I guess th=
e problem for me stems from not knowing the difference<br>&gt=3B &gt=3B&gt=
=3B &gt=3B between=2C IMAGE_INSTALL_append and CORE_IMAGE_EXTRA_INSTALL=2C =
which I was<br>&gt=3B &gt=3B&gt=3B &gt=3B using.<br>&gt=3B &gt=3B&gt=3B<br>=
&gt=3B &gt=3B&gt=3B Basically=2C the only difference is that CORE_IMAGE_EXT=
RA_INSTALL will only<br>&gt=3B &gt=3B&gt=3B work<br>&gt=3B &gt=3B&gt=3B wit=
h image recipes that inherit core-image. If the recipe inherits image=2C<br=
>&gt=3B &gt=3B&gt=3B its<br>&gt=3B &gt=3B&gt=3B value won't be used.<br>&gt=
=3B &gt=3B&gt=3B<br>&gt=3B &gt=3B&gt=3B Cheers=2C<br>&gt=3B &gt=3B&gt=3B Pa=
ul<br>&gt=3B &gt=3B thank=2C well I got the java included in my build=2C bu=
t I can't execute it.<br>&gt=3B &gt=3B very strange!<br>&gt=3B &gt=3B<br>&g=
t=3B &gt=3B I see java is at /usr/share/java/bin and there's a link to java=
 in the<br>&gt=3B &gt=3B /usr/bin=2C but at the command line I can't run=2C=
 java -version.  I get java<br>&gt=3B &gt=3B not found.  It's like it a she=
ll problem.  I had the same issue when I just<br>&gt=3B &gt=3B installed th=
e tarball for JRE on a standard core-image-base before.<br>&gt=3B <br>&gt=
=3B This can also be related to the architecture difference of java binary.=
 Can you<br>&gt=3B share the output of "file" command on java binary  along=
 with "MACHINE"<br>&gt=3B and other related details in local.conf file?<br>=
&gt=3B <br>&gt=3B &gt=3B I'm running as the only user on the system=2C root=
.<br>&gt=3B &gt=3B<br>&gt=3B &gt=3B Jim A<br>&gt=3B <br>&gt=3B Warm Regards=
=2C<br>&gt=3B Maxin<br><br>well the file command does not run on the target=
 machine same as java=2C not found error.&nbsp=3B as to the local.conf file=
.&nbsp=3B The only changes are as follows:<br><br>MACHINE ?=3D "nuc"<br>IMA=
GE_INSTALL_append =3D " oracle-jse-jre dropbear"<br>LICENSE_FLAGS_WHITELIST=
 +=3D "oracle_java"<br>#<br>DL_DIR ?=3D "/work/downloads"<br>#PACKAGE_CLASS=
ES ?=3D "package_rpm"<br>PACKAGE_CLASSES =3D "package_deb"<br><br>I build w=
ith bitbake core-image-base.<br><br><br></div> 		 	   		  </div></body>
</html>=

--_e7f2f5b0-7246-4025-8307-99ba864308c9_--
