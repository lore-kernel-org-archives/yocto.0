Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6FFA8E00C4C; Thu,  7 Apr 2016 09:58:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.2.17 listed in list.dnswl.org]
Received: from DUB004-OMC3S8.hotmail.com (dub004-omc3s8.hotmail.com
	[157.55.2.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BF15E00C28
	for <yocto@yoctoproject.org>; Thu,  7 Apr 2016 09:58:26 -0700 (PDT)
Received: from DUB130-W18 ([157.55.2.9]) by DUB004-OMC3S8.hotmail.com over TLS
	secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Thu, 7 Apr 2016 09:58:25 -0700
X-TMN: [t2m6DARlGRFjJicZm7abxuXkC4GKcwGz]
X-Originating-Email: [christrobridge@hotmail.com]
Message-ID: <DUB130-W181AE532D0FF79446FCC38DA900@phx.gbl>
From: Chris Trobridge <christrobridge@hotmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 7 Apr 2016 17:58:24 +0100
Importance: Normal
In-Reply-To: <5706634E.9040106@linux.intel.com>
References: <DUB130-W48119310217EFF39E1E035DA9F0@phx.gbl>,
	<CAJTo0LbdXCPtc7PF_25Yc00T0pt=Ptq12whkehT5LVnnwS7RtA@mail.gmail.com>,
	<DUB130-W492E3B0F53AE2AA9EE0F0ADA9F0@phx.gbl>,
	<CAJTo0Lbg10pM7VT0ZiaqC7r5YwvdX9_c3X9P=vrPdFX3C6maLQ@mail.gmail.com>,
	<DUB130-W30F71C6509C95E9FA2606EDA9F0@phx.gbl>,
	<CAJTo0LYa+BZxy47950p8g7HqgRFQiHCeS3ZThtetopm-1ZDScg@mail.gmail.com>,
	<57066063.1010008@linux.intel.com>,
	<CAJTo0LbNeUEY-K2LW9Fw3Nh64yh65aQPXC4jS4-1JAmLM7c3PQ@mail.gmail.com>,
	<5706634E.9040106@linux.intel.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 07 Apr 2016 16:58:25.0712 (UTC)
	FILETIME=[B369B300:01D190EE]
Subject: Re: Python GObject Errors on yocto-2.1_M3.rc2
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
X-List-Received-Date: Thu, 07 Apr 2016 16:58:30 -0000
Content-Type: multipart/alternative;
	boundary="_30d88e18-4c00-4613-831f-e912105d9026_"

--_30d88e18-4c00-4613-831f-e912105d9026_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

> To: yocto@yoctoproject.org
> From: alexander.kanavin@linux.intel.com
> Date: Thu=2C 7 Apr 2016 16:40:30 +0300
> Subject: Re: [yocto] Python GObject Errors on yocto-2.1_M3.rc2
>=20
> On 04/07/2016 04:35 PM=2C Burton=2C Ross wrote:
>=20
> > Yeah=2C that. :)  Annoyingly it's not just a PACKAGECONFIG due to how
> > python-native works.
>=20
> Yeah=2C the annoying side effect is that every python thingy needs to be=
=20
> packaged twice - not so visible in oe-core=2C but very visible in=20
> meta-oe's meta-python:
>=20
> http://cgit.openembedded.org/meta-openembedded/tree/meta-python/recipes-d=
evtools/python
>=20
> Will be fixed by deprecating python 2=2C of course.
>=20
> Alex

Is there a  shorter term solution that's generally applicable=2C like a sep=
arate python3-gobject recipe?
I've done something similar before but it had issues (produces duplicate ou=
tput) that are hard to deal with satisfactorily.
At least this explains why my code stopped working.
Chris
 		 	   		  =

--_30d88e18-4c00-4613-831f-e912105d9026_
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
<body class=3D'hmmessage'><div dir=3D'ltr'><div>&gt=3B To: yocto@yoctoproje=
ct.org<br>&gt=3B From: alexander.kanavin@linux.intel.com<br>&gt=3B Date: Th=
u=2C 7 Apr 2016 16:40:30 +0300<br>&gt=3B Subject: Re: [yocto] Python GObjec=
t Errors on yocto-2.1_M3.rc2<br>&gt=3B <br>&gt=3B On 04/07/2016 04:35 PM=2C=
 Burton=2C Ross wrote:<br>&gt=3B <br>&gt=3B &gt=3B Yeah=2C that. :)  Annoyi=
ngly it's not just a PACKAGECONFIG due to how<br>&gt=3B &gt=3B python-nativ=
e works.<br>&gt=3B <br>&gt=3B Yeah=2C the annoying side effect is that ever=
y python thingy needs to be <br>&gt=3B packaged twice - not so visible in o=
e-core=2C but very visible in <br>&gt=3B meta-oe's meta-python:<br>&gt=3B <=
br>&gt=3B http://cgit.openembedded.org/meta-openembedded/tree/meta-python/r=
ecipes-devtools/python<br>&gt=3B <br>&gt=3B Will be fixed by deprecating py=
thon 2=2C of course.<br>&gt=3B <br>&gt=3B Alex<br><br></div><div>Is there a=
 &nbsp=3Bshorter term solution that's generally applicable=2C like a separa=
te python3-gobject recipe?</div><div><br></div><div>I've done something sim=
ilar before but it had issues (produces duplicate output) that are hard to =
deal with satisfactorily.</div><div><br></div><div>At least this explains w=
hy my code stopped working.</div><div><br></div><div>Chris</div><div><br></=
div> 		 	   		  </div></body>
</html>=

--_30d88e18-4c00-4613-831f-e912105d9026_--
