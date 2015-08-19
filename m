Return-Path: <apgb88@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD88FE00816; Wed, 19 Aug 2015 10:55:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (apgb88[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.194 listed in list.dnswl.org]
Received: from mail-ig0-f194.google.com (mail-ig0-f194.google.com
	[209.85.213.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A776E00767
	for <yocto@yoctoproject.org>; Wed, 19 Aug 2015 10:55:27 -0700 (PDT)
Received: by igdx6 with SMTP id x6so1311362igd.1
	for <yocto@yoctoproject.org>; Wed, 19 Aug 2015 10:55:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=oxsHxZd6w+UlP9AXYn1x97B3fVHVvXLFlwFg+3jf5vY=;
	b=CTbsWp33rjyqoib9USEAUcmBbZ0jxSdXzVHos9yISXAmXiXYxFC5yE9HybgyUsGhTL
	Dqs3vQNjtFE9IFIMkQjpw6CZGA09381hTM9yxqGQSUMRZ7ISgYypq5rphQGA8GGmXhaE
	4V1Iz3s11DshKLldnSdiFa6WSc15kuVZv78D7F4DuwE8x/9ltwWcxRr3QQyKGSGP7WpC
	zQU1f6tavXAT6yOdToiTD6gPNJULOmhDqRQDmboJjU/rlyGEEf1RgYaaJr9KiFUHsi1R
	l+ImD/KnfTDw6S7Hm9+Vs5DzAvUtuLNVQO8Bqehaxeocz/jH9uoHWCph6IowzKJOQI7Y
	7Olg==
MIME-Version: 1.0
X-Received: by 10.50.62.81 with SMTP id w17mr3490808igr.0.1440006927239; Wed,
	19 Aug 2015 10:55:27 -0700 (PDT)
Received: by 10.36.208.2 with HTTP; Wed, 19 Aug 2015 10:55:27 -0700 (PDT)
Date: Wed, 19 Aug 2015 10:55:27 -0700
Message-ID: <CAAFWK6h7-0iqQw_B13AacGs3ch1UkbNhsNwBQ3JNP3Ha+SObxw@mail.gmail.com>
From: apgb <apgb88@gmail.com>
To: yocto@yoctoproject.org
Subject: bitbake core-image-sato failed (atmel sama5d3 board)
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
X-List-Received-Date: Wed, 19 Aug 2015 17:55:30 -0000
Content-Type: multipart/alternative; boundary=047d7bdc08565f4f1e051dadbdc5

--047d7bdc08565f4f1e051dadbdc5
Content-Type: text/plain; charset=UTF-8

Hi Expert,

I tried to build core-image-sato image for atmel sama5d3 board and I got
the following error message. I am beginner and really appreciate your
advice.

Thank you!


cd poky/
source oe-init-build-env build-atmel
bitbake core-image-sato

----------------------------------------------------
WARNING: Host distribution "Ubuntu-12.04" has not been validated with this
version of the build system; you may possibly experience unexpected
failures. It is recommended that you use a tested distribution.
Loading cache: 100% |###########################################| ETA:
00:00:00
Loaded 2243 entries from dependency cache.
Parsing recipes: 100% |#########################################| Time:
00:00:00
Parsing of 1754 .bb files complete (1748 cached, 6 parsed). 2248 targets,
290 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
ERROR: Nothing RPROVIDES 'packagegroup-core-x11-sato-games' (but
/home/user1/poky/meta/recipes-sato/images/core-image-sato.bb RDEPENDS on or
otherwise requires it)
NOTE: Runtime target 'packagegroup-core-x11-sato-games' is unbuildable,
removing...
Missing or unbuildable dependency chain was:
['packagegroup-core-x11-sato-games']
ERROR: Required build target 'core-image-sato' has no buildable providers.
Missing or unbuildable dependency chain was: ['core-image-sato',
'packagegroup-core-x11-sato-games']

Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

-----------------------------------------------

--047d7bdc08565f4f1e051dadbdc5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Expert,<br><br></div>I tried to build core-image-s=
ato image for atmel sama5d3 board and I got the following error message. I =
am beginner and really appreciate your advice.<br><br>Thank you!<br><br><br=
>cd poky/<br>source oe-init-build-env build-atmel<br>bitbake core-image-sat=
o<br><br>----------------------------------------------------<br>WARNING: H=
ost distribution &quot;Ubuntu-12.04&quot; has not been validated with this =
version of the build system; you may possibly experience unexpected failure=
s. It is recommended that you use a tested distribution.<br>Loading cache: =
100% |###########################################| ETA:=C2=A0 00:00:00<br>L=
oaded 2243 entries from dependency cache.<br>Parsing recipes: 100% |#######=
##################################| Time: 00:00:00<br>Parsing of 1754 .bb f=
iles complete (1748 cached, 6 parsed). 2248 targets, 290 skipped, 0 masked,=
 0 errors.<br>NOTE: Resolving any missing task queue dependencies<br>ERROR:=
 Nothing RPROVIDES &#39;packagegroup-core-x11-sato-games&#39; (but /home/us=
er1/poky/meta/recipes-sato/images/<a href=3D"http://core-image-sato.bb">cor=
e-image-sato.bb</a> RDEPENDS on or otherwise requires it)<br>NOTE: Runtime =
target &#39;packagegroup-core-x11-sato-games&#39; is unbuildable, removing.=
..<br>Missing or unbuildable dependency chain was: [&#39;packagegroup-core-=
x11-sato-games&#39;]<br>ERROR: Required build target &#39;core-image-sato&#=
39; has no buildable providers.<br>Missing or unbuildable dependency chain =
was: [&#39;core-image-sato&#39;, &#39;packagegroup-core-x11-sato-games&#39;=
]<br><br>Summary: There was 1 WARNING message shown.<br>Summary: There were=
 2 ERROR messages shown, returning a non-zero exit code.<br><br>-----------=
------------------------------------<br></div>

--047d7bdc08565f4f1e051dadbdc5--
