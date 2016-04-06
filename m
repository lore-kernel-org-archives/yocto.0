Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14852E00C5D; Wed,  6 Apr 2016 04:20:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.1.141 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Wed, 06 Apr 2016 04:20:21 PDT
Received: from DUB004-OMC2S2.hotmail.com (dub004-omc2s2.hotmail.com
	[157.55.1.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC626E00C43
	for <yocto@yoctoproject.org>; Wed,  6 Apr 2016 04:20:21 -0700 (PDT)
Received: from DUB130-W49 ([157.55.1.137]) by DUB004-OMC2S2.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Wed, 6 Apr 2016 04:19:19 -0700
X-TMN: [fjdyxGMxDv7ffqPCXnyKO4/mgHt+XpUP]
X-Originating-Email: [christrobridge@hotmail.com]
Message-ID: <DUB130-W492E3B0F53AE2AA9EE0F0ADA9F0@phx.gbl>
From: Chris Trobridge <christrobridge@hotmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 6 Apr 2016 12:19:18 +0100
Importance: Normal
In-Reply-To: <CAJTo0LbdXCPtc7PF_25Yc00T0pt=Ptq12whkehT5LVnnwS7RtA@mail.gmail.com>
References: <DUB130-W48119310217EFF39E1E035DA9F0@phx.gbl>,
	<CAJTo0LbdXCPtc7PF_25Yc00T0pt=Ptq12whkehT5LVnnwS7RtA@mail.gmail.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 06 Apr 2016 11:19:19.0404 (UTC)
	FILETIME=[29A7BAC0:01D18FF6]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 06 Apr 2016 11:20:27 -0000
Content-Type: multipart/alternative;
	boundary="_6d9fee32-f52e-4d9d-9fce-60bffbe826c1_"

--_6d9fee32-f52e-4d9d-9fce-60bffbe826c1_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks Ross=2C
This did the trick for python 2.7=2C and "from gi.repository import GObject=
" works too.
It's still not installed for python 3.5.  I will see if I did anything spec=
ific to make that happen but it's odd that it worked before.
Regards=2CChris

From: ross.burton@intel.com
Date: Wed=2C 6 Apr 2016 11:57:10 +0100
Subject: Re: [yocto] Python GObject Errors on yocto-2.1_M3.rc2
To: christrobridge@hotmail.com
CC: yocto@yoctoproject.org


On 6 April 2016 at 11:53=2C Chris Trobridge <christrobridge@hotmail.com> wr=
ote:
ImportError: No module named importlib
Looks like python-gobject needs to depend on python-importlib.  Not sure wh=
y that isn't in -core to be honest.
Can you add python-importlib to your image and see if it then works=2C or i=
f other modules are missing?
Ross 		 	   		  =

--_6d9fee32-f52e-4d9d-9fce-60bffbe826c1_
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
<body class=3D'hmmessage'><div dir=3D'ltr'>Thanks Ross=2C<div><br></div><di=
v>This did the trick for python 2.7=2C and "from gi.repository import GObje=
ct" works too.</div><div><br></div><div>It's still not installed for python=
 3.5. &nbsp=3BI will see if I did anything specific to make that happen but=
 it's odd that it worked before.</div><div><br></div><div>Regards=2C</div><=
div>Chris<br><br><div><hr id=3D"stopSpelling">From: ross.burton@intel.com<b=
r>Date: Wed=2C 6 Apr 2016 11:57:10 +0100<br>Subject: Re: [yocto] Python GOb=
ject Errors on yocto-2.1_M3.rc2<br>To: christrobridge@hotmail.com<br>CC: yo=
cto@yoctoproject.org<br><br><div dir=3D"ltr"><div class=3D"ecxgmail_extra">=
<br><div class=3D"ecxgmail_quote">On 6 April 2016 at 11:53=2C Chris Trobrid=
ge <span dir=3D"ltr">&lt=3B<a href=3D"mailto:christrobridge@hotmail.com" ta=
rget=3D"_blank">christrobridge@hotmail.com</a>&gt=3B</span> wrote:<br><bloc=
kquote class=3D"ecxgmail_quote" style=3D"border-left:1px #ccc solid=3Bpaddi=
ng-left:1ex=3B"><div>ImportError: No module named importlib</div><div></div=
></blockquote></div><br>Looks like python-gobject needs to depend on python=
-importlib.&nbsp=3B Not sure why that isn't in -core to be honest.</div><di=
v class=3D"ecxgmail_extra"><br></div><div class=3D"ecxgmail_extra">Can you =
add python-importlib to your image and see if it then works=2C or if other =
modules are missing?</div><div class=3D"ecxgmail_extra"><br></div><div clas=
s=3D"ecxgmail_extra">Ross</div></div></div></div> 		 	   		  </div></body>
</html>=

--_6d9fee32-f52e-4d9d-9fce-60bffbe826c1_--
