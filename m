Return-Path: <aaron@assonance.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 327BCE00718; Tue, 25 Sep 2018 19:03:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-it1-f175.google.com (mail-it1-f175.google.com
	[209.85.166.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79D8EE006AF
	for <yocto@yoctoproject.org>; Tue, 25 Sep 2018 19:03:35 -0700 (PDT)
Received: by mail-it1-f175.google.com with SMTP id h3-v6so886276ita.2
	for <yocto@yoctoproject.org>; Tue, 25 Sep 2018 19:03:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=assonance-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=RdYVHklMnCHhKBnu142rk93mit6+C0S5ygRkdWZG98I=;
	b=q1xdYfbG5Z225ivWiwIeVEu2htp33nF5wxPFajSYPRmZUSDFz4zyV8J1C30sQKnAys
	GcgOogwGNnZLbPb6c9lw03Ag3XTOlzkRxVIy8ff1bK3EjA2NZaCVM5A70Jy9nWXYeWnP
	6PjYBfvY0jdTAYWpY4wHnPUxxq7C2rC9/oZYnAsapgNGK/q4l1KwtHbHHmMqEmU0m9Uc
	RqErZrBZDeR6zSub/kxbMXGwUq1W4NufGyfWVgLOEqBQNMGWX4FVJkh2zBAO/IXj7lBt
	e/9VsI9/gZ7w4iMQaSium64juFachOGPm76EIaGvzQW7dHtkYePXjaBMDUbrwTMx68zj
	eqXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=RdYVHklMnCHhKBnu142rk93mit6+C0S5ygRkdWZG98I=;
	b=jVH+7vEN2m87/xFBs3PMwbHsvc+XnY5BOSy+Cg0TYk2EHUphi5TwuJSMxddPuW5dkM
	gh0QcbW9RyBJ2DjnMyAHXbLXsk4gpxubVcCMMW2/gcEEPkKgnC2GywpYEhFhiKuJb+mV
	bWtYeiwtAQB4MtoA9amKrPXcAIE08ApXdp+3JByg5hy7h85K9NHAbHSWq7LEP2ECzdpz
	lcXWiEbTWawN7azmVBcotE6eZDxAQeNNAnqE0ob5DNBPiLakAx8dVldPR3i2W9HH66ay
	UdGY6TKy776+Kmp3Hs7TckytHKLYPDQfnPvWzcES017t7CYiBqp+Ty4/HgPK9O74tRQt
	c2vQ==
X-Gm-Message-State: ABuFfojg48LAjrKtDFjXSQVVuVOvPXVNi5E3dfZauab8AxzgvUWLp31u
	hfWMnuD1rh2wabZnn+z/E645GDV/2vm2csdxm9by8CsUduI=
X-Google-Smtp-Source: ACcGV63zHbu7GRudYoBvY19oO/YHPcFYxwL2M9ouK5acMC92OvB9ukynFOAvj/Usd8r7peZq1kR+wPh93kcxlk6choQ=
X-Received: by 2002:a24:620f:: with SMTP id
	d15-v6mr3293307itc.135.1537927414427; 
	Tue, 25 Sep 2018 19:03:34 -0700 (PDT)
MIME-Version: 1.0
From: Aaron Cohen <aaron@assonance.org>
Date: Tue, 25 Sep 2018 22:03:32 -0400
Message-ID: <CAFSZm+i0xsg+teZ8+cTWkH_HdBr5nvE2s4WyKe=QZJn5ojh8uQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Is KCONFIG_MODE test backwards in kernel-yocto.bbclass?
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
X-List-Received-Date: Wed, 26 Sep 2018 02:03:36 -0000
Content-Type: multipart/alternative; boundary="0000000000003a50240576bca1fc"

--0000000000003a50240576bca1fc
Content-Type: text/plain; charset="UTF-8"

http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/kernel-yocto.bbclass#n297

With no KCONFIG_MODE specified, we check if the user has copied a defconfig
to workdir, and then use allnoconfig if so. Shouldn't we be using
alldefconfig in this case?

The result currently is that if you use a defconfig file that you add to
SRC_URI, much of it won't work, because it's been set to no by allnoconfig,
and it's not super-obvious, to me at least, why.

--0000000000003a50240576bca1fc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><a href=3D"http://git.yoctoproject.org/cg=
it/cgit.cgi/poky/tree/meta/classes/kernel-yocto.bbclass#n297">http://git.yo=
ctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/kernel-yocto.bbclass#n2=
97</a><br></div><div dir=3D"ltr"><br></div><div>With no KCONFIG_MODE specif=
ied, we check if the user has copied a defconfig to workdir, and then use a=
llnoconfig if so. Shouldn&#39;t we be using alldefconfig in this case?</div=
><div><br></div><div>The result currently is that if you use a defconfig fi=
le that you add to SRC_URI, much of it won&#39;t work, because it&#39;s bee=
n set to no by allnoconfig, and it&#39;s not super-obvious, to me at least,=
 why.</div></div>

--0000000000003a50240576bca1fc--
