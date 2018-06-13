Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1060E02487; Wed, 13 Jun 2018 06:20:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f46.google.com (mail-lf0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7FF4E018C9
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2018 06:20:13 -0700 (PDT)
Received: by mail-lf0-f46.google.com with SMTP id o9-v6so3932021lfk.1
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2018 06:20:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=chargestorm-se.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:organization:user-agent;
	bh=+DAIatxY/Oaqsexq0EBCHwDEK74REwlmwulRBWoamX4=;
	b=DM+uxr/Jfs0HsLRo8bRiYd/6m81ILSJB9vgFXSZ0Vv+gqjw/q6grxGhphMTb2GaUL3
	T9O3dkfLu5nI89kmYwV7P6Sv21WOgFRUumKIXnMjtjtw7hq237sJkr+GnQG7BMcQ2qIu
	PXKzoJziewsqrnogDziD+14JgxZQLtzHShLvNyQ4wAseqotOqoYhawB0xn8O40mi6VPF
	nAFIqiz85/E72PKpmdpr4JfpSl2dS/E35e/cPcDewU4rikVeUfrl5p4QNuYcJ4PFiQo0
	JJJAaJwwwtSr1LAl8a1MJdQnw7AyGB3ZddgwbP9Lym6Aacoa3Z9ZvpUMMMLLHs0Guhn9
	7FZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-disposition
	:content-transfer-encoding:in-reply-to:organization:user-agent;
	bh=+DAIatxY/Oaqsexq0EBCHwDEK74REwlmwulRBWoamX4=;
	b=dx33wY1VslVksgW4c9+0k1CgKgYE2RzgGX6Xixp74SB0wRlrEJxVSIr7D0rhcBg4C3
	q/kAUNytio0T7EAo8JYoBTgEh4BdLVyCEEjbGnjbtbwSTO3mqcGdhKW1PVcVfSgH+/KX
	1lpv71pzfXX5yi1YE+ecnenExwweruoCFHbIz75C9KuezYsZEom4XKB13RWNd1dKTBYl
	hASThfsi4QlT/89y8JLCxf4Y7R0Rx0iKsCa5+y8EKWdOrI+/HA100LS62RAaZ/XaAg1p
	tE2hroDQJ9QW6k3XIXG+YbG6WuYjus9EZqHxclQxlCmWKmqx0xSEzvMeaI1HtqCr0DSD
	dkhg==
X-Gm-Message-State: APt69E3YvbzVODubGf+uZTBO4Imj6RRC5gFnWODtIUF4Dva0YBdx3ufo
	McGsup8B2qoiyBHLmv9i7EoedA==
X-Google-Smtp-Source: ADUXVKLW9ptZzdooyhCGB7PZ9KnlLO+VylqpQvIdoGkFLJNWTxR+m2ED9d5c9ldnSLxlyFvdvOvH4A==
X-Received: by 2002:a2e:2948:: with SMTP id
	u69-v6mr3105432lje.130.1528896012335; 
	Wed, 13 Jun 2018 06:20:12 -0700 (PDT)
Received: from ad.chargestorm.se (h83-209-191-235.cust.se.alltele.net.
	[83.209.191.235]) by smtp.gmail.com with ESMTPSA id
	74-v6sm582237lfw.46.2018.06.13.06.20.10
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 13 Jun 2018 06:20:11 -0700 (PDT)
Date: Wed, 13 Jun 2018 15:20:09 +0200
From: Anders Darander <anders@chargestorm.se>
To: Ulf Samuelsson <yocto@emagii.com>
Message-ID: <20180613132009.GA11193@ad.chargestorm.se>
Mail-Followup-To: Ulf Samuelsson <yocto@emagii.com>,
	Peter Kjellerstedt <peter.kjellerstedt@axis.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <3cf3fb0e-02c4-8867-7650-8764bfb67a3b@emagii.com>
	<b02028a72c604aa1bce0e40bc0089f43@XBOX02.axis.com>
	<9EEEF203-2371-4CCE-8E70-947330CDB462@emagii.com>
MIME-Version: 1.0
In-Reply-To: <9EEEF203-2371-4CCE-8E70-947330CDB462@emagii.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.10.0 (2018-05-17)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How handle files needing updates in read-only filesystem
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
X-List-Received-Date: Wed, 13 Jun 2018 13:20:16 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Ulf Samuelsson <yocto@emagii.com> [180612 22:01]:

> We want most of /etc to be read-only for security reasons,
> and the overlayfs will make the whole of /etc writeable.

> I tried mount =E2=80=94bind /etc/timezone /persistent/etc/timezone, and it
> complained that they were not directories. Bind mounting /etc again
> will make all of /etc writeable.

Try to use: mount =E2=80=94o bind /etc/timezone /persistent/etc/timezone

I'm using that heavily, either manually or by the volatile-binds recipe.
It works perfectly fine with files.

> Symlinking to /persistent is fine, so the question is what an
> acceptable method is to have a simple way of ensuring that a certain
> file is converted to that symlink.

This is normally done by a manual inspection / addition of bbappend
file.

Cheers,
Anders
--=20
Anders Darander, Senior System Architect
ChargeStorm AB / eStorm AB

