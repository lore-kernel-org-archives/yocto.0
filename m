Return-Path: <sm0ketst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DA76E0088A; Wed,  8 Apr 2015 06:28:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sm0ketst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f171.google.com (mail-ob0-f171.google.com
	[209.85.214.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8D79E0086D
	for <yocto@yoctoproject.org>; Wed,  8 Apr 2015 06:28:15 -0700 (PDT)
Received: by oblw8 with SMTP id w8so86817136obl.0
	for <yocto@yoctoproject.org>; Wed, 08 Apr 2015 06:28:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=e1q7jB0PeHeWAmkMineUanOC9H2NNKXL0j1+O0fNdzI=;
	b=y7JDV6Qk19mZ58mLVM+irhmosMQDb4ssr/JOm3vpElWXqBzAoM2aQ62GKKc7/+HsF5
	+HHwZ9vnwai/G4jvW0RPIOc4F2T3UDKa+zm8B5KaZMirJD5vKlceY1cI/6u0GPhidOdt
	LA/pTI1Xtcdz6kl4llp7COTkd2Cyw/t1JUpWyj0uwWGegpHCtoCEj+y4WwwwtwZYie6i
	Ygnnb9zVCJ62qBJg8w+2qabEu/iWnJrmJZQGyw806a1NqXDZbuCAHlJQn+0jHov09uIH
	NxDJCdktT3UEBFq81wWbYdRTNo42aJl8oujNUzNJBdVSBsE7ItSnAmNNqFEK4LaQifXP
	JdjA==
MIME-Version: 1.0
X-Received: by 10.60.51.6 with SMTP id g6mr31933637oeo.45.1428499693158; Wed,
	08 Apr 2015 06:28:13 -0700 (PDT)
Received: by 10.60.4.71 with HTTP; Wed, 8 Apr 2015 06:28:13 -0700 (PDT)
Date: Wed, 8 Apr 2015 15:28:13 +0200
Message-ID: <CABMtxuwPi_2Z700qF3ESMZRoqRnFYfbXO1Hb=p3X2oEw+DFniw@mail.gmail.com>
From: "J.J. Garcia" <sm0ketst@gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-intel]
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
X-List-Received-Date: Wed, 08 Apr 2015 13:28:17 -0000
Content-Type: multipart/alternative; boundary=001a11c306f0c5ca1f051336801d

--001a11c306f0c5ca1f051336801d
Content-Type: text/plain; charset=UTF-8

Hi all

I'm trying to use the meta-intel/DIZZY branch (MACHINE defined as
intel-core2-32) for an Atom D2550 unit.

AFAIK the 2550 supports the 64 bits so, which is the best way to build the
image for the unit?

Is it recommended to go for DEFAULTTUNE="core2-64" in local.conf while
using the intel-core2-32 MACHINE?

Thanks in advance

JJ

--001a11c306f0c5ca1f051336801d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hi all<br><br></div>I&#39;m tryin=
g to use the meta-intel/DIZZY branch (MACHINE defined as intel-core2-32) fo=
r an Atom D2550 unit.<br></div><br>AFAIK the 2550 supports the 64 bits so, =
which is the best way to build the image for the unit?<br></div><br>Is it r=
ecommended to go for DEFAULTTUNE=3D&quot;core2-64&quot; in local.conf while=
 using the intel-core2-32 MACHINE?<br><br></div>Thanks in advance<br><br></=
div>JJ<br></div>

--001a11c306f0c5ca1f051336801d--
