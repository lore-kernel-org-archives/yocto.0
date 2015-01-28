Return-Path: <jfabernathy@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93C02E0086E; Wed, 28 Jan 2015 02:44:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jfabernathy[at]outlook.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.54.190.156 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from BAY004-OMC3S18.hotmail.com (bay004-omc3s18.hotmail.com
	[65.54.190.156])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 577E7E00757
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 02:44:48 -0800 (PST)
Received: from BAY169-W55 ([65.54.190.188]) by BAY004-OMC3S18.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.22751); 
	Wed, 28 Jan 2015 02:44:47 -0800
X-TMN: [qO42aI34SDZjM5npvcBNqRI6TNeMQdE3]
X-Originating-Email: [jfabernathy@outlook.com]
Message-ID: <BAY169-W55C7EBD601DFB42F2CA8ADAE330@phx.gbl>
From: Jim Abernathy <jfabernathy@outlook.com>
To: Maxin John <maxin@maxinbjohn.info>, Paul Eggleton
	<paul.eggleton@linux.intel.com>
Date: Wed, 28 Jan 2015 05:44:47 -0500
Importance: Normal
In-Reply-To: <CAFicg85waXXFmZsr4+fbAByoB-a_xUN23EHJD0scqisNunP2vQ@mail.gmail.com>
References: <BLU436-SMTP194E8A8B18DB6A3ADDA00AFAE320@phx.gbl>,
	<1422441531.Lu0tPXzC8A@peggleto-mobl5.ger.corp.intel.com>,
	<CAFicg85waXXFmZsr4+fbAByoB-a_xUN23EHJD0scqisNunP2vQ@mail.gmail.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 28 Jan 2015 10:44:47.0614 (UTC)
	FILETIME=[6F7E29E0:01D03AE7]
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
X-List-Received-Date: Wed, 28 Jan 2015 10:44:59 -0000
Content-Type: multipart/alternative;
	boundary="_ec6b6e23-aa41-4ae8-8685-ebf80497f805_"

--_ec6b6e23-aa41-4ae8-8685-ebf80497f805_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable



> Date: Wed=2C 28 Jan 2015 11:20:21 +0100
> Subject: Re: [yocto] adding meta-oracle-java
> From: maxin@maxinbjohn.info
> To: paul.eggleton@linux.intel.com
> CC: jfabernathy@outlook.com=3B yocto@yoctoproject.org
>=20
> Hi Jim=2C
>=20
> On Wed=2C Jan 28=2C 2015 at 10:25 AM=2C Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
> > Hi Jim=2C
> >
> > On Tuesday 27 January 2015 15:24:09 James Abernathy wrote:
> >> In looking at the meta-oracle-java README=2C I see the notes about add=
ing the
> >> License statement and switching to .deb packaging.  With that done=2C =
I get a
> >> clean build=2C but my image boots and I can=92t see any evidence that =
java was
> >> included.
> >>
> >> What am I missing.
> >
> >> I have a web app server that in all inclusive and can be setup just by
> >> running =93java -jar xxxx.jar=94.  But can=92t run it without java ins=
talled.
> >
> > I assume you've just added the layer to your bblayers.conf - if so you'=
ve
> > missed the next step of actually adding additional packages produced by
> > recipes in the layer to your image. I haven't tried it but I assume the
> > package to add would be "oracle-jse-jre".
>=20
> As mentioned here=2C if you include "oracle-jse-jre" in the image=2C thin=
gs
> should work as expected (IMAGE_INSTALL_append =3D " oracle-jse-jre")
>=20
> root@qemux86:~# ls -la /usr/bin/java
> lrwxrwxrwx    1 root     root            31 Jan 28 10:11 /usr/bin/java
> -> /usr/share/jre1.7.0_67/bin/java
>=20
> root@qemux86:~# java -version
> java version "1.7.0_67"
> Java(TM) SE Runtime Environment (build 1.7.0_67-b01)
> Java HotSpot(TM) Client VM (build 24.65-b04=2C mixed mode)
>=20
>=20
> > Cheers=2C
> > Paul
>=20
> Best Regards=2C
> Maxin
Thanks=2C  I guess the problem for me stems from not knowing the difference=
 between=2C IMAGE_INSTALL_append and CORE_IMAGE_EXTRA_INSTALL=2C which I wa=
s using.

Can you explain?

Jim A

 		 	   		  =

--_ec6b6e23-aa41-4ae8-8685-ebf80497f805_
Content-Type: text/html; charset="Windows-1252"
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
 28 Jan 2015 11:20:21 +0100<br>&gt=3B Subject: Re: [yocto] adding meta-orac=
le-java<br>&gt=3B From: maxin@maxinbjohn.info<br>&gt=3B To: paul.eggleton@l=
inux.intel.com<br>&gt=3B CC: jfabernathy@outlook.com=3B yocto@yoctoproject.=
org<br>&gt=3B <br>&gt=3B Hi Jim=2C<br>&gt=3B <br>&gt=3B On Wed=2C Jan 28=2C=
 2015 at 10:25 AM=2C Paul Eggleton<br>&gt=3B &lt=3Bpaul.eggleton@linux.inte=
l.com&gt=3B wrote:<br>&gt=3B &gt=3B Hi Jim=2C<br>&gt=3B &gt=3B<br>&gt=3B &g=
t=3B On Tuesday 27 January 2015 15:24:09 James Abernathy wrote:<br>&gt=3B &=
gt=3B&gt=3B In looking at the meta-oracle-java README=2C I see the notes ab=
out adding the<br>&gt=3B &gt=3B&gt=3B License statement and switching to .d=
eb packaging.  With that done=2C I get a<br>&gt=3B &gt=3B&gt=3B clean build=
=2C but my image boots and I can=92t see any evidence that java was<br>&gt=
=3B &gt=3B&gt=3B included.<br>&gt=3B &gt=3B&gt=3B<br>&gt=3B &gt=3B&gt=3B Wh=
at am I missing.<br>&gt=3B &gt=3B<br>&gt=3B &gt=3B&gt=3B I have a web app s=
erver that in all inclusive and can be setup just by<br>&gt=3B &gt=3B&gt=3B=
 running =93java -jar xxxx.jar=94.  But can=92t run it without java install=
ed.<br>&gt=3B &gt=3B<br>&gt=3B &gt=3B I assume you've just added the layer =
to your bblayers.conf - if so you've<br>&gt=3B &gt=3B missed the next step =
of actually adding additional packages produced by<br>&gt=3B &gt=3B recipes=
 in the layer to your image. I haven't tried it but I assume the<br>&gt=3B =
&gt=3B package to add would be "oracle-jse-jre".<br>&gt=3B <br>&gt=3B As me=
ntioned here=2C if you include "oracle-jse-jre" in the image=2C things<br>&=
gt=3B should work as expected (IMAGE_INSTALL_append =3D " oracle-jse-jre")<=
br>&gt=3B <br>&gt=3B root@qemux86:~# ls -la /usr/bin/java<br>&gt=3B lrwxrwx=
rwx    1 root     root            31 Jan 28 10:11 /usr/bin/java<br>&gt=3B -=
&gt=3B /usr/share/jre1.7.0_67/bin/java<br>&gt=3B <br>&gt=3B root@qemux86:~#=
 java -version<br>&gt=3B java version "1.7.0_67"<br>&gt=3B Java(TM) SE Runt=
ime Environment (build 1.7.0_67-b01)<br>&gt=3B Java HotSpot(TM) Client VM (=
build 24.65-b04=2C mixed mode)<br>&gt=3B <br>&gt=3B <br>&gt=3B &gt=3B Cheer=
s=2C<br>&gt=3B &gt=3B Paul<br>&gt=3B <br>&gt=3B Best Regards=2C<br>&gt=3B M=
axin<br>Thanks=2C&nbsp=3B I guess the problem for me stems from not knowing=
 the difference between=2C IMAGE_INSTALL_append and CORE_IMAGE_EXTRA_INSTAL=
L=2C which I was using.<br><br>Can you explain?<br><br>Jim A<br><br></div> =
		 	   		  </div></body>
</html>=

--_ec6b6e23-aa41-4ae8-8685-ebf80497f805_--
