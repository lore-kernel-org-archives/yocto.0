Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFFD5E00782; Mon,  9 Jan 2017 02:34:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.170 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f170.google.com (mail-qk0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F327E0050B
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2017 02:34:09 -0800 (PST)
Received: by mail-qk0-f170.google.com with SMTP id 11so37336261qkl.3
	for <yocto@yoctoproject.org>; Mon, 09 Jan 2017 02:34:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=dMurFnynDKdl0g5vSE72EOPeSPksSAGjOF6G85TaPQ0=;
	b=BpJbOd0XGqRWbXnkOAwg8flMk5lJsvGH4Qjj+pAMRfq900qQBBc/Dg4tnJhhKfhPwr
	0UaS15vfp9drmtiq4GdTnYcA3qQUp8lRSnSqLwCEJh5/pdl7wj75iIJmaTfPOoK/lknz
	fHZmfxd0sngwuuwZado6bMnyVzdNFTvHfvFElnfjnL5lx/WtgLy98i1J6NAFQoj8adMP
	UEfMbMzCa9nN4sMNfQhA5hCf41RV7FKJLWeSh6GdZppP5Q2ADMX5J3sQWmBD1RNNENom
	IYeVIM5rGXZ8c74yrv+xgsJF0PcM0cMhXSbubi+83cgDQox8cJ+N7Ov2POxLd9cWLecE
	ArSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=dMurFnynDKdl0g5vSE72EOPeSPksSAGjOF6G85TaPQ0=;
	b=NOSMtyqxh0x6S+sTrwvElDHN80LiU41ybyoLrBbTvKAyLC01UFVMV/SRiGZFyfXLbi
	h69HhN/6QPYG/uE6oB2lNafs5tgQqu8O7092ZoRns8uaDoKTLhHoTtqbq1vSl9W94F6S
	JX6sO4VGiTj2Ng5+3uwdWJSBi+4/h7pyVk411XZr49AFJlne5ReKzJMiJiM/ncC4csXG
	ROkX9gg+594I20RCRZGjxguRRjuO24kkL64cuRwqP5eiA3SYc+UedWWkUzC6nogmcPrC
	65GCFtBENwDXqDK4ODJg9mdLH0wVgsh2EA7JGZ7ZYb3IPIrxu49NYthhDDnGrOgYMJPM
	kWbw==
X-Gm-Message-State: AIkVDXJZhyJgOkcrUojKZN2E3J6b7vgTCULeqXee/QvKPKgFiDJzscBGdXQg8g8PoGLfHjWReCfx3DtEEKzQi4q7
X-Received: by 10.55.15.231 with SMTP id 100mr79999650qkp.244.1483958049338;
	Mon, 09 Jan 2017 02:34:09 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.106.99 with HTTP; Mon, 9 Jan 2017 02:33:48 -0800 (PST)
In-Reply-To: <3768029.mGSIKBvTM1@weatherwax>
References: <9212079.t3pUQfekqL@weatherwax> <3768029.mGSIKBvTM1@weatherwax>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 9 Jan 2017 10:33:48 +0000
Message-ID: <CAJTo0Lbb_+iUpVHj9aXJedUvsonoo4jzMKOqrZvXPRYmRt=6xQ@mail.gmail.com>
To: Andreas Cord-Landwehr <cordlandwehr@kde.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] Provide additional OECORE_EXTRA_SYSROOT variable for CMake Toolchain
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
X-List-Received-Date: Mon, 09 Jan 2017 10:34:12 -0000
Content-Type: multipart/alternative; boundary=001a1147603264911e0545a6e857

--001a1147603264911e0545a6e857
Content-Type: text/plain; charset=UTF-8

On 7 January 2017 at 10:49, Andreas Cord-Landwehr <cordlandwehr@kde.org>
wrote:

> Hi, since it's roughly two weeks, I just wanted to bump this patch again
> (yes,
> I know many people were on vacations).
> But actually, I would already be glad to hear whether I sent the patch to
> the
> right list.
>

The correct list would be openembedded-core@lists.openembedded.org, and if
possible please send the patch with git-send-email (or similar) for easier
reviewing.

Ross

--001a1147603264911e0545a6e857
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 7 January 2017 at 10:49, Andreas Cord-Landwehr <span dir=3D"ltr">&lt;<a =
href=3D"mailto:cordlandwehr@kde.org" target=3D"_blank">cordlandwehr@kde.org=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":hn" cl=
ass=3D"a3s aXjCH m15978c7112e1b743">Hi, since it&#39;s roughly two weeks, I=
 just wanted to bump this patch again (yes,<br>
I know many people were on vacations).<br>
But actually, I would already be glad to hear whether I sent the patch to t=
he<br>
right list.<br></div></blockquote></div><br>The correct list would be <a hr=
ef=3D"mailto:openembedded-core@lists.openembedded.org">openembedded-core@li=
sts.openembedded.org</a>, and if possible please send the patch with git-se=
nd-email (or similar) for easier reviewing.</div><div class=3D"gmail_extra"=
><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1147603264911e0545a6e857--
