Return-Path: <luke.leighton@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE5A5E006AB
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2011 04:00:44 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywb26 with SMTP id 26so995353ywb.35
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2011 04:00:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=W7uC0Yrd/ImCWC28DhmCzBc+wxTG8XAvpML2A4YJo5c=;
	b=g72ewH6mvCqOuoaxK8ry2rzuH5L3oAK8ickwLyXkYDoeEsCKdsXgNOLn2GjXGEe/xr
	UD3atKivtiTQlPqEu8L1zinaqruPkV4X+hkaRYRB2Ec49h24I6uv4HALzvPj27gZG1/J
	QuMxfolZali8GSozckVYLiKRVLNZrPx+tR+Q0=
MIME-Version: 1.0
Received: by 10.101.73.2 with SMTP id a2mr4671320anl.18.1314183643662; Wed, 24
	Aug 2011 04:00:43 -0700 (PDT)
Sender: luke.leighton@gmail.com
Received: by 10.101.109.10 with HTTP; Wed, 24 Aug 2011 04:00:43 -0700 (PDT)
In-Reply-To: <20110823140143.11573jx2b3qwm51j@mail.msu.edu>
References: <20110809181534.GR10171@einval.com>
	<20110823161134.GV3053@linaro.org>
	<efc47c3039402c1507d76f381a790115@mail.shatteredsilicon.net>
	<20110823140143.11573jx2b3qwm51j@mail.msu.edu>
Date: Wed, 24 Aug 2011 12:00:43 +0100
X-Google-Sender-Auth: oYUJNmuPiCh_EpmGvV5iT1f5yJg
Message-ID: <CAPweEDwNRDjZYUbTegNpvyjv+x-N76iqubUAzw5SsV4s7-yCGQ@mail.gmail.com>
From: Luke Kenneth Casson Leighton <lkcl@lkcl.net>
To: omalleys@msu.edu
X-Mailman-Approved-At: Wed, 24 Aug 2011 09:32:19 -0700
Cc: cross-distro@lists.linaro.org, Ubuntu Devel <ubuntu-devel@lists.ubuntu.com>,
	yocto@yoctoproject.org, Gentoo Embedded <gentoo-embedded@lists.gentoo.org>,
	Fedora ARM <arm@lists.fedoraproject.org>,
	Debian ARM <debian-arm@lists.debian.org>, Gordan Bobic <gordan@bobich.net>,
	OLPC Devel <devel@lists.laptop.org>,
	OpenEmbedded Devel <openembedded-devel@lists.openembedded.org>,
	cooker@mandrivalinux.org, MeeGo Dev <meego-dev@meego.com>,
	LSB discuss <lsb-discuss@lists.freestandards.org>,
	Mageia Dev <mageia-dev@mageia.org>
Subject: Re: ARM 3D support was Re: [fedora-arm] ARM summit at Plumbers 2011
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 24 Aug 2011 11:00:45 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

[ok i'm going to do another cross-post in a bit which will give some
background and also perhaps some other topics for discussion, but i
wanted to cover this first.  apologies for people for whom this is
just noise]

On Tue, Aug 23, 2011 at 7:01 PM,  <omalleys@msu.edu> wrote:

>> =C2=A0the xilinx zynq-7000 or similar (dual core Cortex A9 + FPGA). The =
idea
>> =C2=A0is to have an OGP GPU in firmware in FPGA. In terms of the power b=
udget,
>> =C2=A0it seems to work relatively sanely considering what it is, and it =
is as
>> =C2=A0ideal as it gets as far as openness and flexibility goes.
>>
>> =C2=A0I just thought it's worthy of a mention.
>
> It does seem outlandish, but it is kind of cool. Is it going to give enou=
gh
> 3d speed? The next gen tegra is supposed to have a 24 core GPU.

 if nvidia have a published announcement of their plans to release a
fully free-software-compliant 3D driver to match the proprietary
hardware, then that would be brilliant news [about their next gen
GPU].

 about the zynq idea: it actually doesn't matter if it's "enough".
the very fact that free software developers - and people who want to
be free software developers - around the world could even _remotely_
consider buying one of these for an affordable price instead of $750
for the present OGP card means that more people can at least begin to
try to address the unbelievably wide and very discouraging gap between
us and proprietary 3D hardware.

 the NREs on producing a set of masks are _only_ $250,000 if you are a
taiwanese company asking TSMC, but for everyone else they're at least
$2 million.  the development costs if you use off-the-shelf tools
before you even _get_ to the point where you can ask a fab to produce
those masks spiral out of control (Mentor Graphics charges something
like $250,000 per month or maybe per week per user; NREs for
peripheral hard macros can be $50k to $100k each etc. etc.), taking
the total development costs in many cases to well above $USD 30
million.

 and that's excluding all that "proprietary software" which of course
is utterly useless without the corresponding hardware but, because of
USA Accountancy Rules, where "IP" can be added to the books to
increase the value of a company, there's a strong financial
disincentive to consider just "givvin it aww away 4 fwee".

 and here we are with a CPU which could well be around the $25 - $30
mark in large enough volumes, presented with the possibility to say
"**** u all, you proprietary GPU companies and your greed, fear,
patent warfare and lack of willingness to collaborate and cooperate".

ok maybe not those exact words but you know what i mean :)

l.

