Return-Path: <jfabernathy@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D06E5E0087C; Wed, 28 Jan 2015 08:50:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jfabernathy[at]outlook.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.54.190.139 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from BAY004-OMC3S1.hotmail.com (bay004-omc3s1.hotmail.com
	[65.54.190.139])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18D74E00858
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 08:50:50 -0800 (PST)
Received: from BAY169-W85 ([65.54.190.188]) by BAY004-OMC3S1.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.22751); 
	Wed, 28 Jan 2015 08:50:49 -0800
X-TMN: [gbxNyO55MkGan53HMqZDAOfeBRNt2Z5u]
X-Originating-Email: [jfabernathy@outlook.com]
Message-ID: <BAY169-W8550E7060D659E708255D4AE330@phx.gbl>
From: Jim Abernathy <jfabernathy@outlook.com>
To: Maxin John <maxin@maxinbjohn.info>
Date: Wed, 28 Jan 2015 11:50:49 -0500
Importance: Normal
In-Reply-To: <CAFicg87D6g6Qyh7Zy+qsSxbk8gQmFCTcvE86DgyE1_J5oX_5ow@mail.gmail.com>
References: <BLU436-SMTP194E8A8B18DB6A3ADDA00AFAE320@phx.gbl>,
	<CAFicg85waXXFmZsr4+fbAByoB-a_xUN23EHJD0scqisNunP2vQ@mail.gmail.com>,
	<BAY169-W55C7EBD601DFB42F2CA8ADAE330@phx.gbl>,
	<3859281.CPjbAClMcV@peggleto-mobl5.ger.corp.intel.com>,
	<BAY169-W68A99F2815567D9CCB628AE330@phx.gbl>,
	<CAFicg857GKOgixieHfk36wXBmdnaLFhcaQzFLZGeMuTWZnkR0g@mail.gmail.com>,
	<BAY169-W1323FBA1846821F1C7654FDAE330@phx.gbl>,
	<CAFicg87v1F5LZ-a9N8=VtO=tt5ZyR+h98nxt8hLc+X1V2VJS7A@mail.gmail.com>,
	<BAY169-W545814E4CA44C6EAC0EC20AE330@phx.gbl>,
	<CAFicg87D6g6Qyh7Zy+qsSxbk8gQmFCTcvE86DgyE1_J5oX_5ow@mail.gmail.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 28 Jan 2015 16:50:49.0697 (UTC)
	FILETIME=[91EA1510:01D03B1A]
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
X-List-Received-Date: Wed, 28 Jan 2015 16:50:53 -0000
Content-Type: multipart/alternative;
	boundary="_d180a1d1-3322-430a-bf44-4b8ba5bc452e_"

--_d180a1d1-3322-430a-bf44-4b8ba5bc452e_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable



> Date: Wed=2C 28 Jan 2015 17:36:14 +0100
> Subject: Re: [yocto] adding meta-oracle-java
> From: maxin@maxinbjohn.info
> To: jfabernathy@outlook.com
> CC: paul.eggleton@linux.intel.com=3B yocto@yoctoproject.org
>=20
> Hi Jim=2C
>=20
> On Wed=2C Jan 28=2C 2015 at 3:58 PM=2C Jim Abernathy <jfabernathy@outlook=
.com> wrote:
> >
> <snip>
>=20
> >
> > I just created a qemux86 image for core-image-base with meta-java in it=
 and
> > after booting in the emulator=2C it=2C of course=2C gives the proper re=
sponse to
> > java -version.  I'm going to try building a qemux86-64 to see if there'=
s any
> > difference.  On real NUC hardware it will not=2C as mentioned=2C work c=
orrectly.
>=20
> In  NUC=2C please execute these commands:
>=20
> # ln -s /lib /lib64
> # export PATH=3D/usr/share/jre1.7.0_67/bin:$PATH
> # java
>=20
> > Jim A
>=20
> Best Regards=2C
> Maxin

Good=2C that fixes it.  BTW=2C I found it also fails on qemux86-64=2C so th=
is makes sense. =20

Is this something that can be made part of the meta-java recipe??

Jim A

 		 	   		  =

--_d180a1d1-3322-430a-bf44-4b8ba5bc452e_
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
 28 Jan 2015 17:36:14 +0100<br>&gt=3B Subject: Re: [yocto] adding meta-orac=
le-java<br>&gt=3B From: maxin@maxinbjohn.info<br>&gt=3B To: jfabernathy@out=
look.com<br>&gt=3B CC: paul.eggleton@linux.intel.com=3B yocto@yoctoproject.=
org<br>&gt=3B <br>&gt=3B Hi Jim=2C<br>&gt=3B <br>&gt=3B On Wed=2C Jan 28=2C=
 2015 at 3:58 PM=2C Jim Abernathy &lt=3Bjfabernathy@outlook.com&gt=3B wrote=
:<br>&gt=3B &gt=3B<br>&gt=3B &lt=3Bsnip&gt=3B<br>&gt=3B <br>&gt=3B &gt=3B<b=
r>&gt=3B &gt=3B I just created a qemux86 image for core-image-base with met=
a-java in it and<br>&gt=3B &gt=3B after booting in the emulator=2C it=2C of=
 course=2C gives the proper response to<br>&gt=3B &gt=3B java -version.  I'=
m going to try building a qemux86-64 to see if there's any<br>&gt=3B &gt=3B=
 difference.  On real NUC hardware it will not=2C as mentioned=2C work corr=
ectly.<br>&gt=3B <br>&gt=3B In  NUC=2C please execute these commands:<br>&g=
t=3B <br>&gt=3B # ln -s /lib /lib64<br>&gt=3B # export PATH=3D/usr/share/jr=
e1.7.0_67/bin:$PATH<br>&gt=3B # java<br>&gt=3B <br>&gt=3B &gt=3B Jim A<br>&=
gt=3B <br>&gt=3B Best Regards=2C<br>&gt=3B Maxin<br><br>Good=2C that fixes =
it.&nbsp=3B BTW=2C I found it also fails on qemux86-64=2C so this makes sen=
se.&nbsp=3B <br><br>Is this something that can be made part of the meta-jav=
a recipe??<br><br>Jim A<br><br></div> 		 	   		  </div></body>
</html>=

--_d180a1d1-3322-430a-bf44-4b8ba5bc452e_--
