Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EFDDE00C92; Wed,  2 Nov 2016 07:28:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.180 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f180.google.com (mail-qk0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A36EE00C82
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2016 07:28:05 -0700 (PDT)
Received: by mail-qk0-f180.google.com with SMTP id o68so19786100qkf.3
	for <yocto@yoctoproject.org>; Wed, 02 Nov 2016 07:28:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=mtFb4Dpxgkty3RtB5ZV+2DGYEUVgMl0ScccdOpJjXAo=;
	b=jBN5w+GPhsaCWD0GODgktfeQ7qKwDE7UPWbdJxSG4BRO2oDVxu6jx8RaZ8eMG80Dsc
	ULfmHK2kNEVu+rxqhHUNbrgqyJS/qFbScFzQjlf1SpMip1MGYGfiubpK+UETLfEb3uau
	lLfhd2xNuRJQYVI3vCD16k3AX+GLWFM5Ih9z/LH3RPJYo4Mm6jLDNdm1/lJmnJ164EKM
	s1B1rP0ndbi+Qbxg/loei/rUfjr+E2TWpgw+bjg8ODsiN4mc9ppz+Ps461sPV1tYFZmW
	T/gaoApeJEL/Iii0xzP8gPCjVelDwBb0/hICbzplt4aeWV7DhazPe8BNAsPf8Ty/MFOx
	IEKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=mtFb4Dpxgkty3RtB5ZV+2DGYEUVgMl0ScccdOpJjXAo=;
	b=P0hYLt7eJMc+/MuHspBaMBtoRIzkde1tt4IzAjKYFmEJEBWe7JIJY3HmT6IsefDRFA
	JX9KZwHGEFiFYASIne3oErlOjKL9Flr2exmgYDpyBlAloK3luJuphK3cqGFFC811UW3+
	EfKqxB3v5khfQG3+GWuAmEqDYhJHNxUvw0uoScqdaci+AVN4quxgqf68G/XAZMYc4As0
	eA0G+ylJq8LXb6khrCRr4BcLFYT2vvQFcF9p/MwMSEl4GhZJs3aeKPxxJqRWPsbJnhz0
	f2XTt3PjOBLNl/gB5+p/626Y8IJLg7bFB/XH/M0tGg21G7oyP7gVlvKgDdXI+2pTsndn
	Senw==
X-Gm-Message-State: ABUngvek92lc1FkIyMyKHE3YJ+rAOSrakAq5n/wdKM/5hLb+KBBWlWRk7iLBDf02f/41icVoh7WePLF9QQMNU0IF
X-Received: by 10.55.31.157 with SMTP id n29mr3235767qkh.221.1478096884588;
	Wed, 02 Nov 2016 07:28:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.208 with HTTP; Wed, 2 Nov 2016 07:27:44 -0700 (PDT)
In-Reply-To: <CAF3SDA4mWT=_46pMi+_aTfDU0HNAX-3j+VhovkfAeWHFVv6gzw@mail.gmail.com>
References: <30C2D590D16A5C46ADFE6521910377987FF67BEA@AZ-US1EXMB02.global.avaya.com>
	<CAJTo0LaVygRC3Z5eVtgGVkCU0mgYv7SGx07+1_om0GKkf6fHvw@mail.gmail.com>
	<21973d42-dc69-ee7b-031d-ac5544823c8f@basmevissen.nl>
	<CAJTo0Lat2oz3dpRXC6tSve3drTMB+=93mfR=0-UjxYtfgqLrxw@mail.gmail.com>
	<307cf616-d7a0-be5b-1aa9-4b12f3c9abb0@basmevissen.nl>
	<CAF3SDA50-YUatuxZiq3DGP3nH2-Eq9YY-jqBVJ6yJb4yAdxh0A@mail.gmail.com>
	<CAJTo0LaPzszzTCuTaPC-KC+bNnFobKsMwAaq6e9bYpHOvHS02Q@mail.gmail.com>
	<43D47051-BE64-4A56-B81C-55199BB744FB@gmail.com>
	<CAF3SDA4mWT=_46pMi+_aTfDU0HNAX-3j+VhovkfAeWHFVv6gzw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 2 Nov 2016 14:27:44 +0000
Message-ID: <CAJTo0LasspOys0bbgkJGXkO52DMrw7a3Ety80=962kCd4CmUGA@mail.gmail.com>
To: "Daniel." <danielhilst@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto 2.2 Morty supported Linux Distros
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
X-List-Received-Date: Wed, 02 Nov 2016 14:28:10 -0000
Content-Type: multipart/alternative; boundary=001a1147f228c0060b0540523f8d

--001a1147f228c0060b0540523f8d
Content-Type: text/plain; charset=UTF-8

On 2 November 2016 at 14:21, Daniel. <danielhilst@gmail.com> wrote:

> I'm planning to move to ubuntu 16.04 as I have in home, since I'm
> something like tired of reading the words "not supported" .. but I have a
> lot of work to do before I can format my machine there... So, it will be
> arch :)
>

Ubuntu 16.04 is supported, the documentation is wrong and will be fixed.
Arch is not, and never will be.

Ross

--001a1147f228c0060b0540523f8d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 2 November 2016 at 14:21, Daniel. <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:danielhilst@gmail.com" target=3D"_blank">danielhilst@gmail.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"gmail_extra">I&=
#39;m planning to move to ubuntu 16.04 as I have in home, since I&#39;m som=
ething like tired of reading the words &quot;not supported&quot; .. but I h=
ave a lot of work to do before I can format my machine there... So, it will=
 be arch :)<br></div></blockquote></div><br></div><div class=3D"gmail_extra=
">Ubuntu 16.04 is supported, the documentation is wrong and will be fixed.=
=C2=A0 Arch is not, and never will be.</div><div class=3D"gmail_extra"><br>=
</div><div class=3D"gmail_extra">Ross</div></div>

--001a1147f228c0060b0540523f8d--
