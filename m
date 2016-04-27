Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0CD8E00D7F; Wed, 27 Apr 2016 03:01:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.2.37 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from DUB004-OMC3S28.hotmail.com (dub004-omc3s28.hotmail.com
	[157.55.2.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36BA3E00D7D
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 03:01:55 -0700 (PDT)
Received: from DUB130-W22 ([157.55.2.8]) by DUB004-OMC3S28.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Wed, 27 Apr 2016 03:01:54 -0700
X-TMN: [yk+pllrAitXISCPduOCxG32DPen49Phu]
X-Originating-Email: [christrobridge@hotmail.com]
Message-ID: <DUB130-W22A970398EE713D402DB8ADA640@phx.gbl>
From: Chris Trobridge <christrobridge@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 27 Apr 2016 11:01:54 +0100
Importance: Normal
In-Reply-To: <DUB130-W353EF079A973F4C0B275BFDA640@phx.gbl>
References: <DUB130-W103C61E8567B18DDA564BADA630@phx.gbl>,
	<DUB130-W61B8E41D400E4ACF8EF600DA640@phx.gbl>, ,
	<CAJTo0LZGEfN68QJog53DSjsyQ7p-1FBa6MJot6nZCwt=C8ZG3w@mail.gmail.com>,
	<DUB130-W353EF079A973F4C0B275BFDA640@phx.gbl>
MIME-Version: 1.0
X-OriginalArrivalTime: 27 Apr 2016 10:01:54.0966 (UTC)
	FILETIME=[D4077B60:01D1A06B]
Subject: Re: Build Errors with new recipe for pjproject (autotools/pkgconfig)
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
X-List-Received-Date: Wed, 27 Apr 2016 10:02:00 -0000
Content-Type: multipart/alternative;
	boundary="_955e6fd7-5141-4eec-8f7d-165d810d3024_"

--_955e6fd7-5141-4eec-8f7d-165d810d3024_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Regarding:
"Can you shine any light on the "-fdebug-prefix-map" related fatal QA error=
s?  (leaking host paths) I've found some discussion in openembedded that su=
ggests this should be fixed in the compiler but again I am curious why this=
 (very simple) recipe has this issue but others don't."
So DEBUG_FLAGS was changed recently but setting back to  "-g -feliminate-un=
used-debug-types" avoids this issue.
Regards=2CChris
 		 	   		  =

--_955e6fd7-5141-4eec-8f7d-165d810d3024_
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
<body class=3D'hmmessage'><div dir=3D'ltr'><div><div dir=3D"ltr"><div><span=
 style=3D"font-size:12pt=3B">Regarding:</span></div><div><span style=3D"fon=
t-size:12pt=3B"><br></span></div><div><span style=3D"font-size:12pt=3B">"Ca=
n you shine any light on the "</span>-fdebug-prefix-map" related fatal QA e=
rrors? &nbsp=3B(leaking host paths) I've found some discussion in openembed=
ded that suggests this should be fixed in the compiler but again I am curio=
us why this (very simple) recipe has this issue but others don't."</div><di=
v><br></div><div>So&nbsp=3BDEBUG_FLAGS was changed recently but setting bac=
k to &nbsp=3B"-g -feliminate-unused-debug-types" avoids this issue.</div><d=
iv><br></div><div>Regards=2C</div><div>Chris</div><div><span style=3D"font-=
size: 12pt=3B"><br></span></div></div></div><style><!--=0A=
.ExternalClass .ecxhmmessage P {=0A=
padding:0px=3B=0A=
}=0A=
=0A=
.ExternalClass body.ecxhmmessage {=0A=
font-size:12pt=3B=0A=
font-family:Calibri=3B=0A=
}=0A=
=0A=
--></style> 		 	   		  </div></body>
</html>=

--_955e6fd7-5141-4eec-8f7d-165d810d3024_--
