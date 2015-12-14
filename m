Return-Path: <valentin.lebescond@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E90EE00AB7; Mon, 14 Dec 2015 13:41:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (valentin.lebescond[at]gmail.com)
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
	*      [209.85.217.172 listed in list.dnswl.org]
Received: from mail-lb0-f172.google.com (mail-lb0-f172.google.com
	[209.85.217.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0882E00404
	for <yocto@yoctoproject.org>; Mon, 14 Dec 2015 13:41:24 -0800 (PST)
Received: by lbbkw15 with SMTP id kw15so115289018lbb.0
	for <yocto@yoctoproject.org>; Mon, 14 Dec 2015 13:41:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=AIzmop0/8hRIXG9OWEbl38FT9yiFlLfgCDzUPtBf8mo=;
	b=oJRTDFo3UIpc9SAT1yQFOAqb79z+tibcRHBD4vFzcDJfIEfTKMYCHT8/bse0HNL2Ju
	9ZDJ4Ys40e5LvJPQ9rnQQiruIeTkUv13GUwLZWIxnJIFqfA2YA5NugVnIPc9Ispbmg4o
	qqk3Lx3xVftDci6vtdYB6GHaFmRfb2Huxggo8zKlhXatlk1N3KoYai7M4fjBXoMOVmbB
	q1RrBiCKzsPSdAQ2GRW9m4rDP/jzlGLA2vnLEcK2wiAdUDItvdc/UZqtzU0JQz5M9ZF4
	JgF2U4qhyK0ouAA2bIyqR2SuNo+KPAAtLQk7ULrJgpBQttxohfPwOSUjiwy0RCXT3YOr
	Nalw==
X-Received: by 10.112.137.132 with SMTP id qi4mr14876735lbb.120.1450129283074; 
	Mon, 14 Dec 2015 13:41:23 -0800 (PST)
MIME-Version: 1.0
From: Valentin Le bescond <valentin.lebescond@gmail.com>
Date: Mon, 14 Dec 2015 21:41:13 +0000
Message-ID: <CAP2S6e4+LrBUaDD=d4cwYeq_YfeES_uKKJVd+TMGSn5qa4CnXA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [meta-qt5] meta-toolchain-qt5 internal compiler error
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
X-List-Received-Date: Mon, 14 Dec 2015 21:41:33 -0000
Content-Type: multipart/alternative; boundary=089e01182954cbd1bf0526e288fe

--089e01182954cbd1bf0526e288fe
Content-Type: text/plain; charset=UTF-8

Have you ever had this issue ?

I tried to 'bitbake meta-toolchain-qt5' 4 times.
The first time it threw me 2 "internal compiler error :segmentation faults"
:
one on qt3d, and the other one on qtwebkit.

the 2nd time it built the qt3d ok but threw the qtwebkit error.
it threw the same error the third time, and the fourth time ...
"all task succeeded"...

I didn't modify anything between those bitbake commands... run ran them
again...

Is there any reason why it would fail multiple times before succeeding ?

If you want to know it's a custom distro based on poky 1.8.1 and a custom
image based on "rpi-hwup-image" for raspberrypi2.

Cheers !

-- 
Valentin LE BESCOND

--089e01182954cbd1bf0526e288fe
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Have you ever had this issue ? <b=
r><br></div>I tried to &#39;bitbake meta-toolchain-qt5&#39; 4 times.<br></d=
iv>The first time it threw me 2 &quot;internal compiler error :segmentation=
 faults&quot; :<br></div>one on qt3d, and the other one on qtwebkit.<br><br=
></div>the 2nd time it built the qt3d ok but threw the qtwebkit error.<br><=
/div><div>it threw the same error the third time, and the fourth time ...<b=
r></div><div>&quot;all task succeeded&quot;...<br><br></div><div>I didn&#39=
;t modify anything between those bitbake commands... run ran them again...<=
br></div><div><br></div><div>Is there any reason why it would fail multiple=
 times before succeeding ?<br></div><div><br></div><div>If you want to know=
 it&#39;s a custom distro based on poky 1.8.1 and a custom image based on &=
quot;rpi-hwup-image&quot; for raspberrypi2.<br></div><div><br></div><div>Ch=
eers !<br></div><div><br></div></div><div dir=3D"ltr">-- <br></div><div dir=
=3D"ltr"><div>Valentin LE BESCOND<br></div></div>

--089e01182954cbd1bf0526e288fe--
