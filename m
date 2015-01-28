Return-Path: <jfabernathy@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E034EE02777; Wed, 28 Jan 2015 03:22:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jfabernathy[at]outlook.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.54.190.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from BAY004-OMC2S18.hotmail.com (bay004-omc2s18.hotmail.com
	[65.54.190.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4038BE025FD
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 03:21:52 -0800 (PST)
Received: from BAY169-W6 ([65.54.190.125]) by BAY004-OMC2S18.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.22751); 
	Wed, 28 Jan 2015 03:21:52 -0800
X-TMN: [e78dDBx+zmPNb9IOxYRylZBEsxBZYPiz]
X-Originating-Email: [jfabernathy@outlook.com]
Message-ID: <BAY169-W68A99F2815567D9CCB628AE330@phx.gbl>
From: Jim Abernathy <jfabernathy@outlook.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Wed, 28 Jan 2015 06:21:52 -0500
Importance: Normal
In-Reply-To: <3859281.CPjbAClMcV@peggleto-mobl5.ger.corp.intel.com>
References: <BLU436-SMTP194E8A8B18DB6A3ADDA00AFAE320@phx.gbl>
	<CAFicg85waXXFmZsr4+fbAByoB-a_xUN23EHJD0scqisNunP2vQ@mail.gmail.com>
	<BAY169-W55C7EBD601DFB42F2CA8ADAE330@phx.gbl>,
	<3859281.CPjbAClMcV@peggleto-mobl5.ger.corp.intel.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 28 Jan 2015 11:21:52.0206 (UTC)
	FILETIME=[9D73F6E0:01D03AEC]
Cc: yocto <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 28 Jan 2015 11:22:00 -0000
Content-Type: multipart/alternative;
	boundary="_8e639291-afc3-445b-98e7-414556b9f61c_"

--_8e639291-afc3-445b-98e7-414556b9f61c_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable



> From: paul.eggleton@linux.intel.com
> To: jfabernathy@outlook.com
> CC: maxin@maxinbjohn.info=3B yocto@yoctoproject.org
> Subject: Re: [yocto] adding meta-oracle-java
> Date: Wed=2C 28 Jan 2015 10:55:23 +0000
>=20
> On Wednesday 28 January 2015 05:44:47 Jim Abernathy wrote:
> > Thanks=2C  I guess the problem for me stems from not knowing the differ=
ence
> > between=2C IMAGE_INSTALL_append and CORE_IMAGE_EXTRA_INSTALL=2C which I=
 was
> > using.
>=20
> Basically=2C the only difference is that CORE_IMAGE_EXTRA_INSTALL will on=
ly work=20
> with image recipes that inherit core-image. If the recipe inherits image=
=2C its=20
> value won't be used.
>=20
> Cheers=2C
> Paul
>=20
> --=20
>=20
> Paul Eggleton
> Intel Open Source Technology Centre

thank=2C well I got the java included in my build=2C but I can't execute it=
.  very strange!

I see java is at /usr/share/java/bin and there's a link to java in the /usr=
/bin=2C but at the command line I can't run=2C java -version.  I get java n=
ot found.  It's like it a shell problem.  I had the same issue when I just =
installed the tarball for JRE on a standard core-image-base before.

I'm running as the only user on the system=2C root.

Jim A

 		 	   		  =

--_8e639291-afc3-445b-98e7-414556b9f61c_
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
<body class=3D'hmmessage'><div dir=3D'ltr'><br><br><div>&gt=3B From: paul.e=
ggleton@linux.intel.com<br>&gt=3B To: jfabernathy@outlook.com<br>&gt=3B CC:=
 maxin@maxinbjohn.info=3B yocto@yoctoproject.org<br>&gt=3B Subject: Re: [yo=
cto] adding meta-oracle-java<br>&gt=3B Date: Wed=2C 28 Jan 2015 10:55:23 +0=
000<br>&gt=3B <br>&gt=3B On Wednesday 28 January 2015 05:44:47 Jim Abernath=
y wrote:<br>&gt=3B &gt=3B Thanks=2C  I guess the problem for me stems from =
not knowing the difference<br>&gt=3B &gt=3B between=2C IMAGE_INSTALL_append=
 and CORE_IMAGE_EXTRA_INSTALL=2C which I was<br>&gt=3B &gt=3B using.<br>&gt=
=3B <br>&gt=3B Basically=2C the only difference is that CORE_IMAGE_EXTRA_IN=
STALL will only work <br>&gt=3B with image recipes that inherit core-image.=
 If the recipe inherits image=2C its <br>&gt=3B value won't be used.<br>&gt=
=3B <br>&gt=3B Cheers=2C<br>&gt=3B Paul<br>&gt=3B <br>&gt=3B -- <br>&gt=3B =
<br>&gt=3B Paul Eggleton<br>&gt=3B Intel Open Source Technology Centre<br><=
br>thank=2C well I got the java included in my build=2C but I can't execute=
 it.&nbsp=3B very strange!<br><br>I see java is at /usr/share/java/bin and =
there's a link to java in the /usr/bin=2C but at the command line I can't r=
un=2C java -version.&nbsp=3B I get java not found.&nbsp=3B It's like it a s=
hell problem.&nbsp=3B I had the same issue when I just installed the tarbal=
l for JRE on a standard core-image-base before.<br><br>I'm running as the o=
nly user on the system=2C root.<br><br>Jim A<br><br></div> 		 	   		  </div=
></body>
</html>=

--_8e639291-afc3-445b-98e7-414556b9f61c_--
