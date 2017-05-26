Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4589E00A48; Fri, 26 May 2017 08:55:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.181 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f181.google.com (mail-qk0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97209E00826
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 08:55:30 -0700 (PDT)
Received: by mail-qk0-f181.google.com with SMTP id a72so10547338qkj.2
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 08:55:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=uLlcIrNne5J2M0TLmYKY24AyIN9gkJxx6lk0dEd2168=;
	b=aheG0cqRtBL4XQFmnuON9RjDGiUzd/2Og+gyZXdt78uA+1gcqidMOWLrhqCVf1VLp4
	LxNRiZWlIJQi1biX/AF5Z26RskfrK/2zHZ6oHSKORIc/l+0kbYxKjBiGDOXG2ghy9ExI
	nZLD9k00xZleVOqz6MOsNxitMQzQCY/4k4YHF9FC9yK7eC9VtcU8lTgEXM3FwjnpY1Qb
	4R0AxJWBr3h3HkxYcLYgiiTmIdYuXowi/8+2kQASFTpkej0Lz6aFWCLwxNV7DnaSz8W0
	mIz1y5vvBXAKKpYLQ7D3VPgLW0bjewQjO7L7N/DpSb+guvf0Jp1UagujuF+ofjJqeJL/
	xSdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=uLlcIrNne5J2M0TLmYKY24AyIN9gkJxx6lk0dEd2168=;
	b=Tl180v4I+p3ah+ALYUt9AP5KKEab57+RW9CcMRiseUE7a98PsYu7uwTVFA1JC8+xwK
	ZQAMuxIlRXqn5iHbS7EgDrQANnb0xDGQ2CD1oTMqjwlD6+2OI3iJna1aHWDBNO2dkl17
	UPJ36rulBhs1Rt4mRgBPM+RlIfflmhFPFlfNjjQ9CcJwA9cTfpCzkIDNvbiE7/u5tlob
	adLAoz5X5AAUuViKiRYwAWruqvwyAQOctVAgNfihlIHek+dHD6+2ErYDHUYEZlcVh/ir
	1Admea/Kg6RqpWkabPdAX3c5RJXxgpVVMV2yQZdt5GWz+iuq/YKK8xAnkaBfHlv1sbJz
	/WOA==
X-Gm-Message-State: AODbwcBJSzf1uBW99sJ5LlmO/NdTYW6PXj4Z7/nYQKIXL2kf6B+Hwg5m
	7407/4gpr1g04kfVGseejX7FnMPvvzMO
X-Received: by 10.55.116.133 with SMTP id p127mr2769116qkc.154.1495814129513; 
	Fri, 26 May 2017 08:55:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.41.115 with HTTP; Fri, 26 May 2017 08:55:09 -0700 (PDT)
In-Reply-To: <5500469A22567C4BAF673A6E86AFA3A40295F0633E68@IR-CENTRAL.corp.innerrange.com>
References: <43debf33-b22d-2838-fcc3-286bc837e015@tantosonline.com>
	<CAJTo0Laxnjdzn4pGz9JsvesUHuUeRO3nPymfYFaDDTsTjVj2Hg@mail.gmail.com>
	<5500469A22567C4BAF673A6E86AFA3A40295F0633E68@IR-CENTRAL.corp.innerrange.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 26 May 2017 16:55:09 +0100
Message-ID: <CAJTo0LY2wxnyE1V=f0PG5zTFdPGEZD2HhXwcNcQD_=4fptHsYQ@mail.gmail.com>
To: Craig McQueen <craig.mcqueen@innerrange.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem building glibc-locale
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
X-List-Received-Date: Fri, 26 May 2017 15:55:33 -0000
Content-Type: multipart/alternative; boundary="001a114fde72d7354105506f5dcf"

--001a114fde72d7354105506f5dcf
Content-Type: text/plain; charset="UTF-8"

On 26 May 2017 at 04:16, Craig McQueen <craig.mcqueen@innerrange.com> wrote:

> I'm having this issue, when trying to use a modification of the poky-tiny
> distro (currently using morty). Does the poky-tiny distro do the right
> thing?
>

Yes, we autobuild poky-tiny quite frequently so it should work.  It's
probably not the same problem - or if it is then it's your local.conf which
is causing the breakage.

Ross

--001a114fde72d7354105506f5dcf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 26 May 2017 at 04:16, Craig McQueen <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:craig.mcqueen@innerrange.com" target=3D"_blank">craig.mcqueen@innerrang=
e.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":2=
wf" class=3D"a3s aXjCH m15c42c19e8846899">I&#39;m having this issue, when t=
rying to use a modification of the poky-tiny distro (currently using morty)=
. Does the poky-tiny distro do the right thing?<br></div></blockquote><div>=
<br></div><div>Yes, we autobuild poky-tiny quite frequently so it should wo=
rk.=C2=A0 It&#39;s probably not the same problem - or if it is then it&#39;=
s your local.conf which is causing the breakage.</div><div><br></div><div>R=
oss</div></div></div></div>

--001a114fde72d7354105506f5dcf--
