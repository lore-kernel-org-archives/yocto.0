Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1217BE00C2A; Wed,  3 Feb 2016 02:28:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABC5BE00B3D
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 02:28:47 -0800 (PST)
Received: by mail-io0-f176.google.com with SMTP id 9so50400447iom.1
	for <yocto@yoctoproject.org>; Wed, 03 Feb 2016 02:28:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=EpQk70daPRlI0oIWDSdg9orP2NQedEuM7jhlJTYfAb8=;
	b=EdsCxDhh3+/QYYzcU2HNHIe7Q/64hfVhplSHmPEqBVo7gsXBT6FItLvyaIwVuCtUSI
	nnEnbvn6UFW1mVHB4Rg1JHcWvMvlLTCmWY32gkpyTeeOwWgzElKr+rOnW0Q1dxvi0+tc
	cRVGuIQ6T48JdJ6Yk07fUsYhJ6NmzGNImYEjQRYJG/KsCAgL3StMaKgrWIM95YHUq71+
	zx06NVuN5Pqbv732RIUch1SdD9bO8qi96gi26wvcQfMVPuiT/1adI6/igFtoFtRVOZSa
	tnaU3FYXliATEVmIZC16WWwtTGpJeiZNQeNvL0eJgMhLL+KV4I5tEu7QGzWH3k683Rmk
	U4Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=EpQk70daPRlI0oIWDSdg9orP2NQedEuM7jhlJTYfAb8=;
	b=WvRq01SivEm6lhX+TjlZOAZJtetB4Ix0t3sx6HJj5QgaCr+H/gi3V5jBKR/iimqpbe
	qK96wOE65Zq6QVNdq97iIELKmTC1r6aMjpoTEO7E+gJwXu/vSuU4nTjgznnYqBFBSD94
	mdaev3KeV4vcs8eCdCALpsHZXXrHZRwJny/ZtmLltqnD5ZAcz4D4ATR7M6G7pcxq6m2N
	5OCHCuDeKHzsID/oB6k2LYbVkmzLZwQe1273FsjuNo318SmyoLD3/FvdpGJapufBKwcZ
	wCWJoYGzeU9ws4g6i5ttfoJXYKaLXbjhSCCxdO4pRWOG4UB8CyCsyG0l+KJdjubWU4Dl
	ZIBw==
X-Gm-Message-State: AG10YORHRFD4jzMc8X2HtFidjZrXrKc16jT8/Pp1zzr1Og/Dz8NmC5AMpPIBd92dbBlmDXa5Sw6wMxkWvVoJuyY5
X-Received: by 10.107.10.157 with SMTP id 29mr3006819iok.133.1454495326504;
	Wed, 03 Feb 2016 02:28:46 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Wed, 3 Feb 2016 02:28:26 -0800 (PST)
In-Reply-To: <56B1D2D1.5010508@nokia.com>
References: <56B1D2D1.5010508@nokia.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 3 Feb 2016 10:28:26 +0000
Message-ID: <CAJTo0LayhHP7wbcbLf7TOu8e=6-ERg90VdJu_Av9EfmBBFEmAg@mail.gmail.com>
To: "Woronicz, Bartosz ( NSN - PL/Wroclaw)" <bartosz.woronicz@nokia.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Where should I append Yocto bitbake task to create work folder symlink ?
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
X-List-Received-Date: Wed, 03 Feb 2016 10:28:51 -0000
Content-Type: multipart/alternative; boundary=001a113f8df843a1e7052adb156b

--001a113f8df843a1e7052adb156b
Content-Type: text/plain; charset=UTF-8

On 3 February 2016 at 10:13, Woronicz, Bartosz ( NSN - PL/Wroclaw) <
bartosz.woronicz@nokia.com> wrote:

> Let's say I have my package at
>
>     host-64/tmp/work/x86_64-poky-linux/mypackage/1.2.3-r4/
>
> I would like to have symlink created
>
>     host-64/tmp/work/x86_64-poky-linux/mypackage/latest -> 1.2.3-r4/
>
> each time the new version is fetched and unpacked. How can I achieve that
> ? Which class, task should I append, extend ?
>

One way would be to create a new task that comes after unpack and creates
the symlink.

You may be interested in the rm_old_work class that can remove old work
trees so there's only ever one work tree, and I believe due to how master
does sysroot cleanup there's only ever one version in work/ now.

Ross

--001a113f8df843a1e7052adb156b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 3 February 2016 at 10:13, Woronicz, Bartosz ( NSN - PL/Wroclaw) <span di=
r=3D"ltr">&lt;<a href=3D"mailto:bartosz.woronicz@nokia.com" target=3D"_blan=
k">bartosz.woronicz@nokia.com</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><div id=3D":5qy" class=3D"a3s" style=3D"overflow:hidden">Let&#39=
;s say I have my package at<br>
<br>
=C2=A0 =C2=A0 host-64/tmp/work/x86_64-poky-linux/mypackage/1.2.3-r4/<br>
<br>
I would like to have symlink created<br>
<br>
=C2=A0 =C2=A0 host-64/tmp/work/x86_64-poky-linux/mypackage/latest -&gt; 1.2=
.3-r4/<br>
<br>
each time the new version is fetched and unpacked. How can I achieve that ?=
 Which class, task should I append, extend ?</div></blockquote></div><br>On=
e way would be to create a new task that comes after unpack and creates the=
 symlink.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_ext=
ra">You may be interested in the rm_old_work class that can remove old work=
 trees so there&#39;s only ever one work tree, and I believe due to how mas=
ter does sysroot cleanup there&#39;s only ever one version in work/ now.</d=
iv><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</di=
v></div>

--001a113f8df843a1e7052adb156b--
