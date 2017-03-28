Return-Path: <maxpowel@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4A3EE00524; Tue, 28 Mar 2017 16:20:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (maxpowel[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.173 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f173.google.com (mail-qt0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A8E8E004E5
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 16:20:51 -0700 (PDT)
Received: by mail-qt0-f173.google.com with SMTP id n21so77718444qta.1
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 16:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=rkImlYbS5SZGEIB6LuXdd59oK1okEOTqGM68ZFyFSJU=;
	b=H4DIybrCwwKm483XPfND4U6n9e3WqZBafleD9sVf8iah86OvDnW6eyNGbxFnUlktUk
	fUKhLa/KCtsAGCEQJovlobsEISuDnugL2xAZQkPk2mWr6Wa2ydiedweC5w9pUnWGqSTd
	96IFgpGJBZfAMXCEFaRL+cxPFNoYoaAgTb3YuJxBD2Q+VLEBza8rlli+c2CTsCO5Z18v
	pP66XncGxV+GNksMR1l94/aT4BhCFd8ltM6i6hRtPG019vC2UU60C8KnRycpeSuo8/Jl
	WozdnU69B9eHh4G/sPBMOLZ+PJOC7mYWb7+ekppJbP2BlC7bRBUdmM1anfOrmciG6iPj
	Xbuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=rkImlYbS5SZGEIB6LuXdd59oK1okEOTqGM68ZFyFSJU=;
	b=qt+LKcyFpBRJb50eNSi0l0yCIt8q52AhBfQUgkBefgK7trmTAXmrevQaLbI1KgC0fs
	koji8KPOsvWdxUdjG2qrRwUsDaf+bv2Y+m7uqLFBfTsSgsf763PiTIadTPLMjz6DBvas
	0Xk2LnABwPouzmONuLJgMzFQgG9d67LqXc6IWqpASljd3eMEAClJ+R86JdkkyJffcNT+
	7LkHSTf8nVHb6b5cJSKDy8plFkyWu5d5fTT4Pdz0TmWu8EKtEb1VoDu9cIXvcWH0kLIR
	Mkc2bpzm5+eZ7Tc9ayB/wV/iTvY11+ACjM9ttIrc2Ri5Kk5HIxLz45NKDmflUQjG7Wz5
	MuqA==
X-Gm-Message-State: AFeK/H2sx0+JfXVknUTD6HdbdBKCnOAfyy00FpXZ6VYp9k+Ubzc0PddqBxtNYV4uW+i59F2JfQzWztYrxjE5jw==
X-Received: by 10.200.48.59 with SMTP id f56mr31633646qte.7.1490743250462;
	Tue, 28 Mar 2017 16:20:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.37.5 with HTTP; Tue, 28 Mar 2017 16:20:50 -0700 (PDT)
In-Reply-To: <CAJTo0LZyXuVLLpeEQsgqn0pswfFO0m9HBLfg81MLH24+0oFxJw@mail.gmail.com>
References: <CAOsmwBR47gfDH-mQ5ej7vzn9xJSeB=OM=pv9X06-smxgKkKX6A@mail.gmail.com>
	<CAJTo0LZFhn+df6_x+AnMaU7CT3s38cPfweV2K+M18AiLjy0z9Q@mail.gmail.com>
	<CAOsmwBQnbywO8SNhtHviL5=DxkCKHr4MoANx7JPR0abPaMHYKQ@mail.gmail.com>
	<CAJTo0LZyXuVLLpeEQsgqn0pswfFO0m9HBLfg81MLH24+0oFxJw@mail.gmail.com>
From: Alvaro Garcia <maxpowel@gmail.com>
Date: Wed, 29 Mar 2017 01:20:50 +0200
Message-ID: <CAOsmwBS46rZ4qKLJuBHbY5jWpLiA-+SF=vE74wED-WgGykq4yQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: NVIDIA Drivers
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
X-List-Received-Date: Tue, 28 Mar 2017 23:20:56 -0000
Content-Type: multipart/alternative; boundary=001a1145ac70e5328b054bd2b5b6

--001a1145ac70e5328b054bd2b5b6
Content-Type: text/plain; charset=UTF-8

I used rpm and deb, you mean dpkg (for deb) when you say package manager?

2017-03-29 0:43 GMT+02:00 Burton, Ross <ross.burton@intel.com>:

>
> On 28 March 2017 at 23:41, Alvaro Garcia <maxpowel@gmail.com> wrote:
>
>> Then I installed the image into my device. Everything worked as expected
>> but the nouveau driver. Is this correct or I forgot some step?
>>
>
> I'd check that the package actually exists in your rootfs - use the
> package manager to verify this.  It should be there but I've never used
> nouveux.  Beyond that the driver is installed so maybe you need to adjust
> xorg.conf.
>
> Ross
>
>

--001a1145ac70e5328b054bd2b5b6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I used rpm and deb, you mean dpkg (for deb) when you say p=
ackage manager?<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail=
_quote">2017-03-29 0:43 GMT+02:00 Burton, Ross <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com<=
/a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div cla=
ss=3D"gmail_extra"><br><div class=3D"gmail_quote"><span class=3D"">On 28 Ma=
rch 2017 at 23:41, Alvaro Garcia <span dir=3D"ltr">&lt;<a href=3D"mailto:ma=
xpowel@gmail.com" target=3D"_blank">maxpowel@gmail.com</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">Then I installed the image into my devi=
ce. Everything worked as expected but the nouveau driver. Is this correct o=
r I forgot some step?<br></blockquote><div><br></div></span><div>I&#39;d ch=
eck that the package actually exists in your rootfs - use the package manag=
er to verify this.=C2=A0 It should be there but I&#39;ve never used nouveux=
.=C2=A0 Beyond that the driver is installed so maybe you need to adjust xor=
g.conf.</div><span class=3D"HOEnZb"><font color=3D"#888888"><div><br></div>=
<div>Ross=C2=A0</div></font></span></div><br></div></div>
</blockquote></div><br></div>

--001a1145ac70e5328b054bd2b5b6--
