Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FB96E0098A; Mon, 12 Dec 2016 16:00:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f172.google.com (mail-qk0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE6B9E00955
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2016 16:00:30 -0800 (PST)
Received: by mail-qk0-f172.google.com with SMTP id n21so100582967qka.3
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2016 16:00:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=9Fl0SAJ9JajzuuVdoVMtnw+6yZAZmmvu32kT+6olSdw=;
	b=jMr9c/A155Yr3nsXYr7HOCGZGzk5NKzPIkJ5yquACgbtfZV6OHz9p1lmbeL5hnwPuK
	4OqqiHlm4fJI5ItU/Vdw/Fn7GwsxXGyINbI2rilC2vfdeJ1rSXTYJBSOg3RNPK2ONBK5
	OxZkWEcNHn4Bmj3xRB6AXjJLkCIwKhDnGbvWnjGBf/886FMmm3ofVmOwYoCq/4i5wfWH
	SX663hN7W+14r4NMpUyXp8XvbND3llE2WZu5/jMDOJMep8u5q2/Vf78ANEZrDYVyO6Xn
	jd7VtZ/cxv8mzomFlo9wV1KAOXw/UZNHeuesrmIHPQJ7toeUl9cW/H3826dHG0BkL8K1
	lBCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=9Fl0SAJ9JajzuuVdoVMtnw+6yZAZmmvu32kT+6olSdw=;
	b=dR/RF0QxyO3YjE1boqT1H1SPeEKw2DDzBpUzrpY2nb1Jhoi/YL90aT/8Uvht7pZe4D
	5sCBmdZdYZUxCTCW0atysYY54hsKytT0H4//lZ98XFAlY6bwnFqGXeAqsRMAS+utBpHi
	+1WxuMhsf+4uJ7cMtbN+3x+RmCd+xoRM1El9GpBddVyWTGX4YIWILMoivMAkEIer9O/m
	EGaFeEKs3X9gfxCwyPwjaMQraLwtzHuMEQYiiK640mzBHWd+b0JKQqvKb6ybSqZuX5gr
	JTrz0bl4oaPZ0IzSiFvY27gO59oKgFEYHs1USinfLZzM30s8+FeaRjHpTdfTnPHQhXVc
	YFsg==
X-Gm-Message-State: AKaTC02GACXrmm/01bNgUM0fe1mFy1YRcQwVrp1Qasd3gZAbHLHNTF2nb+3FQEcFtjFVsig3JOk5LpuWJOmyV2Tm
X-Received: by 10.55.39.88 with SMTP id n85mr79275378qkn.244.1481587229877;
	Mon, 12 Dec 2016 16:00:29 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.106.99 with HTTP; Mon, 12 Dec 2016 16:00:09 -0800 (PST)
In-Reply-To: <6E51916E4A1F32428260031F4C7CD2B6118C686A@ORSMSX112.amr.corp.intel.com>
References: <6E51916E4A1F32428260031F4C7CD2B6118C682A@ORSMSX112.amr.corp.intel.com>
	<a278001c-6944-42c4-0762-30d4931a2016@balister.org>
	<6E51916E4A1F32428260031F4C7CD2B6118C686A@ORSMSX112.amr.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 13 Dec 2016 00:00:09 +0000
Message-ID: <CAJTo0LYHAUiA1uirCKho1mOVOHWf_Yxsgh1-kKNV2xTHDeEPfQ@mail.gmail.com>
To: "Bystricky, Juro" <juro.bystricky@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-zephyr layer
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
X-List-Received-Date: Tue, 13 Dec 2016 00:00:32 -0000
Content-Type: multipart/alternative; boundary=94eb2c094b168a7c1805437ee8e6

--94eb2c094b168a7c1805437ee8e6
Content-Type: text/plain; charset=UTF-8

On 12 December 2016 at 22:52, Bystricky, Juro <juro.bystricky@intel.com>
wrote:

> you need poky to build QEMUs and toolchains
>

You should just need *OpenEmbedded* to build the qemus and toolchains.  Why
does zephyr.conf include poky.conf?  I'd say that any variables that are
useful - such as using the Yocto source mirrors - should just be copied
into zephyr.conf (or even better, moved into oe-core).

Ross

Ross

--94eb2c094b168a7c1805437ee8e6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 12 December 2016 at 22:52, Bystricky, Juro <span dir=3D"ltr">&lt;<a href=
=3D"mailto:juro.bystricky@intel.com" target=3D"_blank">juro.bystricky@intel=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":2p=
b" class=3D"a3s aXjCH m158f54696b673b8c">you need poky to build QEMUs and t=
oolchains<br></div></blockquote><div><br></div><div>You should just need *O=
penEmbedded* to build the qemus and toolchains.=C2=A0 Why does zephyr.conf =
include poky.conf?=C2=A0 I&#39;d say that any variables that are useful - s=
uch as using the Yocto source mirrors - should just be copied into zephyr.c=
onf (or even better, moved into oe-core).</div><div><br></div><div>Ross</di=
v><div><br></div><div>Ross</div></div></div></div>

--94eb2c094b168a7c1805437ee8e6--
