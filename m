Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3665E00D30; Wed,  7 Dec 2016 05:02:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f173.google.com (mail-qk0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C095E00D26
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2016 05:02:18 -0800 (PST)
Received: by mail-qk0-f173.google.com with SMTP id n21so412533863qka.3
	for <yocto@yoctoproject.org>; Wed, 07 Dec 2016 05:02:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=wy1U3gH0HWI/3RpXnrACE9UYZr3h6Aj4J+8sjMgaQGQ=;
	b=NuCUuVIyW7/RKljwO5znRhHpxxxUc2/08SVYvruYthUHgbb2cSsqapq3P6/6qsNDcf
	CAAN7WCmMkS24CWuyFVOh6/opyGLeve0YCUu2ENKxgD6dJV9d7osuEe57AnpKMLQWRr7
	gDREbMAs0V2IVXdcpseTxtwN/jndMMjvUKvo0Qm/M//48a8lt1M3SAqGGPv8X9Aosf/4
	hxvoN/aX3MTXDusbqIJKOH1QLuerAm3NI4yRVeKqYZljy6I+jcZEL4ZCn4uzCQEwiZrk
	mt+2MR5i84eTJ+vMDd4iID3ZMHbxqv/UgOgJFGnaIcDb0M+jKxs/VTYPXIacfuZQhB4T
	LsiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=wy1U3gH0HWI/3RpXnrACE9UYZr3h6Aj4J+8sjMgaQGQ=;
	b=a7oJiol2Kp9Bb0bRQSgMM9HfchvnESpUsMKbjSHBsIsMTB3xQ4i9mTO69JgWzS2ymb
	d/seFyjYtB8Xtc76Iv6u5FjIlFVwOshnzkGXNYm8ieBCRrEUNxC0mJ/0bTjIgm7yQddK
	92Wh4iiLB3IOz8+LCH8JOzLuClG692PKIyecS6EkJlsdCDaew03Xkwd1TxnnmSufUiQs
	5W4JqCHzbVnfu6vElBV0tr/krKphs544rPWze24eU0oulUvbmEZP32scRy/zwfFwDORu
	Kq9iefP++Xs5spb7GQOS9lZqvi1hrmGDk7PPVOqZD+ycZa9Zs9g3ORjg5XveTtJhh4um
	rMZQ==
X-Gm-Message-State: AKaTC01JT50E61KNMLW/YlsxfM6zWSlf6seWaZcqfcaOP9hmwmo/sWKfeHKaHtJT2F8QqQFtx4VHSbgHp9CLTlyS
X-Received: by 10.55.31.157 with SMTP id n29mr56748536qkh.221.1481115738286;
	Wed, 07 Dec 2016 05:02:18 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.106.99 with HTTP; Wed, 7 Dec 2016 05:01:57 -0800 (PST)
In-Reply-To: <CALxi_JGOFMsiLLavJHF1uNDdu10zA_6YhgXXqEOf5Qw8Mw_C1g@mail.gmail.com>
References: <CALxi_JGOFMsiLLavJHF1uNDdu10zA_6YhgXXqEOf5Qw8Mw_C1g@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 7 Dec 2016 13:01:57 +0000
Message-ID: <CAJTo0LatFuGHQu+s1VV9Q3wirbC7EUkyjgXCrMa9TDenxso4Hw@mail.gmail.com>
To: david bensoussan <minipada@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Package depending on ATLAS, BLAS, libmetis, liblapack
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
X-List-Received-Date: Wed, 07 Dec 2016 13:02:20 -0000
Content-Type: multipart/alternative; boundary=001a1147f22873c14505431121c1

--001a1147f22873c14505431121c1
Content-Type: text/plain; charset=UTF-8

On 7 December 2016 at 11:57, david bensoussan <minipada@gmail.com> wrote:

> Those are tuning libraries which cannot be cross compiled
> <http://www.vesperix.com/arm/atlas-arm/faq/index.html>.
>

One solution that really isn't too difficult is to replace the places where
it runs tests with simple scripts that generate the relevant output, and
provide that output in the recipe.  So if  you were building for ARM you'd
build once on arm, determine what the results of the tests are, and then
put those values in the recipe.

Ross

--001a1147f22873c14505431121c1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 7 December 2016 at 11:57, david bensoussan <span dir=3D"ltr">&lt;<a href=
=3D"mailto:minipada@gmail.com" target=3D"_blank">minipada@gmail.com</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><div>Those are tuning libr=
aries which <a href=3D"http://www.vesperix.com/arm/atlas-arm/faq/index.html=
" target=3D"_blank">cannot be cross compiled</a>.</div><div></div></blockqu=
ote></div><br>One solution that really isn&#39;t too difficult is to replac=
e the places where it runs tests with simple scripts that generate the rele=
vant output, and provide that output in the recipe.=C2=A0 So if =C2=A0you w=
ere building for ARM you&#39;d build once on arm, determine what the result=
s of the tests are, and then put those values in the recipe.</div><div clas=
s=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1147f22873c14505431121c1--
