Return-Path: <mgloff@emacinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FBB6E00510; Sat, 28 Jun 2014 12:52:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
Received: from mail-wg0-f51.google.com (mail-wg0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38608E003D6
	for <yocto@yoctoproject.org>; Sat, 28 Jun 2014 12:52:21 -0700 (PDT)
Received: by mail-wg0-f51.google.com with SMTP id x12so6576425wgg.10
	for <yocto@yoctoproject.org>; Sat, 28 Jun 2014 12:52:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=4Qlx5v0zzOUnVnQcCnIBk81TAS/YFBrtYSoI6aubJmg=;
	b=FWm3eEnCXpX4bgxVEQoZT9l8JJZqPnyJq06DYTB0UXe1owI8/8pgPjl8k+OKuQ/DFx
	lMvr8XYVmlWEvFB4q6stA2R4AyMdVcNsd8PnGfu0Vbo1yTmVYA3QrdiwpaV72i3hvlvj
	65B2wQgK4cPITiDx2QGZSsi40r9qwNwBeNDpw8lqWeSofBHXu5eUvDGXB3Vf12oNLAKN
	dAnydDOlGKJrCZfC4YSu0O1fBydpsdXIrtB2nX/NJQooEX9nnt5ifKQFCKQPkZ9Lv3Un
	AYO8XpoJPzog65LOESlDiRFVwQtP6S7GB4SwpZL0y46NX2yA4RI2f7vlmrXgkU5ZDT6C
	HK9Q==
X-Gm-Message-State: ALoCoQlb0ExTorcU24zwtaAxQCyuivV6pNAAwZ2kk10tD0Stg9XS/pRYvMf/3qUv7Rj/dOjtfhyP
MIME-Version: 1.0
X-Received: by 10.180.90.113 with SMTP id bv17mr19817970wib.31.1403985140929; 
	Sat, 28 Jun 2014 12:52:20 -0700 (PDT)
Received: by 10.216.196.66 with HTTP; Sat, 28 Jun 2014 12:52:20 -0700 (PDT)
Date: Sat, 28 Jun 2014 14:52:20 -0500
Message-ID: <CALXw4G4sWVH+ZegiAfvF4g0CSWhUz_db87hNtOLVX8DnZAUDUw@mail.gmail.com>
From: Michael Gloff <mgloff@emacinc.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Pulseadudio depends
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
X-List-Received-Date: Sat, 28 Jun 2014 19:52:33 -0000
Content-Type: multipart/alternative; boundary=f46d04389015986dd004fceac30f

--f46d04389015986dd004fceac30f
Content-Type: text/plain; charset=UTF-8

All,
I'm having some build errors when pulseaudio tries to configure. It looks
like there is a dependency on libcap. If the image already has libcap
pulled in or I manually make it so, everything is fine. Just wondering if
anyone else has experienced this and/or can duplicate on a clean build.

Thanks,

Michael Gloff

--f46d04389015986dd004fceac30f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>All,<br></div>I&#39;m having some build err=
ors when pulseaudio tries to configure. It looks like there is a dependency=
 on libcap. If the image already has libcap pulled in or I manually make it=
 so, everything is fine. Just wondering if anyone else has experienced this=
 and/or can duplicate on a clean build.<br>
<br></div>Thanks,<br><br></div>Michael Gloff<br><br></div>

--f46d04389015986dd004fceac30f--
