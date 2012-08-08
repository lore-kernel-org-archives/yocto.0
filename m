Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47B7DE002A5
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 11:53:00 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so2221535pbb.35
	for <yocto@yoctoproject.org>; Wed, 08 Aug 2012 11:53:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=IdV1GeqF1jFiR7ABgaHo6c/hxNc/v0afGvyIJkgp/PI=;
	b=n8hTIcE3BGWP2dhbEpr9StI9LrjO1DrJKams1Kcis5A3kBb8tcu2FdmOkCeAKRx4xp
	Lf4sbwtr6yZbRXbrG/2O9wWmJeNvvU3hTYWMHs5CRgJA/DZZbLybOkzXej/gfegIB9w3
	OrGqcjibIJ3EBw2uSYAQt8/G/BCfMcjYcPKsJSkA+b/m4aJxAdhxeXNuupEzOB27Fr93
	dahd9aD0grHAtS+nZY4OCcf0yd0oBv14ww0VsdelFTEy+G+c+Cm9TFkYjjA/AJ2TTizS
	MzRgA541/kSFpFUEGWp8oIPgVP3y6R1AatDrh7v+qdT8sxOX0RlUxkByw6u9Di/CnZOP
	MW6A==
Received: by 10.68.221.41 with SMTP id qb9mr1409813pbc.147.1344451980000;
	Wed, 08 Aug 2012 11:53:00 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id pn4sm2561361pbb.50.2012.08.08.11.52.58
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 08 Aug 2012 11:52:59 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <5022B276.7000104@intel.com>
Date: Wed, 8 Aug 2012 22:52:53 +0400
Message-Id: <8EEBCE78-0BFA-454A-AA54-53AB09570EB5@gmail.com>
References: <22F5AB9F-5063-4443-97B6-B88EA9DAE877@gmail.com>
	<5022B276.7000104@intel.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1278)
Subject: Re: Maintenance on older branches, e.g. bernard
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
X-List-Received-Date: Wed, 08 Aug 2012 18:53:00 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Scott,

On Aug 8, 2012, at 10:39 PM, Scott Garman wrote:

>=20
> When you say "build successfully", how do you define that? Building =
core-image-minimal? -sato? -lsb? For which machines? On how many host =
distros?
>=20
> We have a problem of scale here which is why bernard (now three stable =
releases old) is no longer undergoing active maintenance or regression =
testing by the core team.
>=20
> This is where the community or a partner organization with a financial =
interest in supporting that release for their customers needs to step =
in. As time goes on, we're seeing more commercial adoption our releases =
and I think we'll see more of this for the recent releases (edison and =
denzil in particular, but bernard came out when the Yocto Project was =
still fairly new).

At the moment, I'm focussing on PowerPC440 CPU support. I usually build =
two targets core-image-minimal and meta-toolchain, using Ubuntu 12.04 =
LTS.

I've temporarily switched to the older bernard release, because it was =
known to have worked for the Xilinx Virtex-5 FPGA PowerPC440 cpu.=20

I've spent over 5 weeks, incrementally trying to isolate where the =
problem was with the latest yocto master builds for the PowerPC440 cpu, =
and thanks to some timely help from Khem, have narrowed it down to a =
dynamic linker issue (gcc-4.7.2 & kernel-3.3.0).

I'm just going to switch temporarily to gcc-4.5.1, and check to see if =
the dynamic linker issue goes away, then decide from there what to do =
next.

Best regards,

Elvis Dowson=

