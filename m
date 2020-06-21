Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
 by mx.groups.io with SMTP id smtpd.web12.15598.1592747203103397896
 for <yocto@lists.yoctoproject.org>;
 Sun, 21 Jun 2020 06:46:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@stusta.de header.s=default header.b=cI5YwkcH;
 spf=pass (domain: stusta.mhn.de, ip: 141.84.69.5, mailfrom: srs0=tnjz=ac=stusta.de=bunk@stusta.mhn.de)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 49qYjq1QX2z40;
	Sun, 21 Jun 2020 15:46:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1592747200;
	bh=1KODGGT8JOAG4eXAj+yTwKmTluYpDJBoXp0cPXqp0wU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cI5YwkcH8ha2oqVfnim/jgv0btLmO28Wzh0CEtBOQpjVczeu2DEVQm+zi+8Q1ntpp
	 dX1K4WHYGpE4BEzfSkvj0VlD0tqWOUR7hcsXTYY1WY+hMvs3sOThUP1BNsRGvxRIQP
	 CQP5oL5sWwofBe2NfsVl26zKpgp++dPjfneb1mXO0df9vcQwUZHGpQIKFLO5sHdtOn
	 Ad/1K7xsSqg/ZevYXH9f2ttG2xuRC8qDHTcc0T3w8I88qsjHn9A+REGG4KXrdDcICQ
	 fy5J8vbqn3xU4Iw34F2NT361nI4cW7vpmfwb47HpzLqp+YtYaiE9SYuPNPL9xEETCt
	 wCCOGgVT7KB76M+rPoLcj6wju9wMuk5rDw0Agw9/Gshvxq7ukUs14y3NiN99C2vhkc
	 B6UVoEWS/xxn9a1cbWFcugcMMKqTBDf3Src2RRxM4CYe/dW9xRcnpwttA+d3Bwv/Nh
	 NTIxvSxUD6TOpwQU3WmmA3wZWrbIt70XLFfBbyl9A9PlKjoChiIYODbx8IARbPhXUO
	 n0ffnNU4SDvakK/1ucQvG5wac0P6uc7SnCiw6HXNXXGoLNkpM/3NM8qf+Gzy368vHp
	 atT+0AlBfcjWt6Zc6BNuEA9zkbmwChPl9M4gxP/RxfW1InANjQjlZWssGXwE5W3O2U
	 s59U+ssYLdCJUfb37KQVHkhE=
Date: Sun, 21 Jun 2020 16:46:37 +0300
From: "Adrian Bunk" <bunk@stusta.de>
To: Stefano Babic <sbabic@denx.de>
Cc: csimmonds <chris@2net.co.uk>, yocto@lists.yoctoproject.org
Subject: Re: [yocto] Distro upgrade strategies
Message-ID: <20200621134637.GD6921@localhost>
References: <BL0PR11MB3268E2BB9A442B0890DA3C9DAE980@BL0PR11MB3268.namprd11.prod.outlook.com>
 <CANNYZj_0BYuNgmO3MHm0vEgu6qQut2vk984fRFPQGuRCy+=W1Q@mail.gmail.com>
 <4f66cf05-c142-188c-0661-8e446c81c67f@2net.co.uk>
 <20200621071150.GC6921@localhost>
 <28338870-464a-0f9b-71f2-5802cb4a7330@denx.de>
MIME-Version: 1.0
In-Reply-To: <28338870-464a-0f9b-71f2-5802cb4a7330@denx.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Sun, Jun 21, 2020 at 02:09:44PM +0200, Stefano Babic wrote:
> Hi Adrian,

Hi Stefano,

>...
> If it can work in many case, it won't in many other cases. Hash issues with
> packages ? System does not boot and a grub-rescue shell is started ? Not a
> very big problem (in many cases) on server / pc. We check what happens, we
> rework maybe the grub menu, or if nothing works we start a live distro. But
> if this is ok on server / pc for a linux developer, how can it work on
> unattended (embedded) systems, without shell access (due to security
> reasons), and with end users ? It is not enough if it works in most cases,
> it must always work.
>...

one major difference between Yocto and most Linux distributions is that
most Linux distributions enable automatic security updates by default.

A normal Ubuntu system gets security updates installed several times
every week.

I know many nontechnical people working on an Ubuntu laptop or desktop,
and I have seen many embedded systems running Ubuntu.

>...
> I think you mean that dpkg has improved to make the update of a single
> package more atomic, but what about if you upgrade a lot of packages at once
> and you have a power-cut in between ?
>...

What I mean is that what Steve claimed to be "usually" is something 
I do not remember seeing in over 20 years with Debian and Ubuntu.

Not just "improved", this is something dpkg gets right since the 1990s.

As long as any highlevel tool calls "dpkg --configure -a" on unclean
dpkg state, chances are the upgrade can just continue after the power-cut.

With "atomic where they have to be" I meant the normal fsync+rename
that ensures that you can never end up with a half-written file
after a power-cut.

> Best regards,
> Stefano

cu
Adrian
