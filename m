Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7AC8FE00851; Wed, 28 Mar 2018 04:09:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.170 listed in list.dnswl.org]
Received: from mail-ot0-f170.google.com (mail-ot0-f170.google.com
	[74.125.82.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 182DCE007F2
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 04:09:48 -0700 (PDT)
Received: by mail-ot0-f170.google.com with SMTP id i28-v6so2178921otf.8
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 04:09:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=6EFoWANIuxtN5ePSmAv+C5SnLNtQxxHc7aUBAXS6zFc=;
	b=HOiqdve6hRqFDx7ZOslW27t8H5hGpCnv6FkGnI58v8p0NSMqVx09XGJgEpFEKLOowI
	Be0jtZ5DE/rykrFElVCSautvB2hMy6t5J8u2VWUVW9ipuf2nBrc6WYWdCIhSEc1r8amj
	T9K5effybF65wxLbbPD7W48gfDvjc+dDe2FetA/sTrH7L5dyx/FM/oCTWEg+0jof9EXJ
	fGbBrHeGeyARo8+KKzKBSUEEUDj+FIEWIvMYz2uiM62RoNZalV+cMcZANANZVfUSy/XZ
	4i0PRRFRkMMLGF1xH4VfLQGKD/FFP60wIhbCo4uHQ5Im2QbeMjeD0DO6mDAjnake9mCV
	Ssxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=6EFoWANIuxtN5ePSmAv+C5SnLNtQxxHc7aUBAXS6zFc=;
	b=KiFZowGWcrfFUPisoYi/es88qP2xcdj4NjvZeJrUZrpBG3MTAzrBQt9penwwhL4u/R
	b8TLzsoKWpAi1goJJTNX4dE8yFWaPd1+G20kOq3GmaCvFNoPvEiMy+CFf59x/9LiIpsL
	CGRG+HzuXgytOqSJwUaoBT86cQuCpdDKb+4XpCycY8J1LNJisiZZuwVs5Oqcd6zdCHPK
	uKtMBtSkI30pw/GyWTD3v5loSp70UCEn7UaRIP+Z2GQmz6U1iGFzyyursIYKqkFmr0oR
	wTUQkJET9yiPdRISN4douu1Mr3GaZIHw9jmDrXlVu1rGvn02128wNpSIvi93ZQB8Sesy
	7oAQ==
X-Gm-Message-State: ALQs6tBl6E+owrCYCQDQEiAqOuFTcA0NKRARWYOxy8SYH8C/Qolp4/jj
	dQtq3eJtojmhr7gWCwjtV+Op3+Rn2iMiVYh9HaNUgw==
X-Google-Smtp-Source: AIpwx48RyEFHga8SZFn3cAObKVhaXDxmTQ62z969PIPePBiDSD9KgOnGYNwSFS7Ci0nNs0walhiizc/OE87wuCtvU6g=
X-Received: by 2002:a9d:2ce2:: with SMTP id
	e31-v6mr1775059otd.135.1522235388102; 
	Wed, 28 Mar 2018 04:09:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.138.17.198 with HTTP; Wed, 28 Mar 2018 04:09:27 -0700 (PDT)
In-Reply-To: <41794666.168957.1522234608843@mail.yahoo.com>
References: <41794666.168957.1522234608843.ref@mail.yahoo.com>
	<41794666.168957.1522234608843@mail.yahoo.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 28 Mar 2018 12:09:27 +0100
Message-ID: <CAJTo0LYAuqqW9rveuzsHpwGuEYxCRhhHG05eeihD1wy1Jf=OEQ@mail.gmail.com>
To: Mostafa Farzane <farzanemostafa@yahoo.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: how to add libsrtp and libsrtp-staticdev to sdk
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
X-List-Received-Date: Wed, 28 Mar 2018 11:09:49 -0000
Content-Type: text/plain; charset="UTF-8"

On 28 March 2018 at 11:56, Mostafa Farzane <farzanemostafa@yahoo.com> wrote:
> -- ERROR: jrtplib-3.11.1-r0 do_populate_sysroot: QA Issue: jrtplib.pc failed
> sanity test (tmpdir) in path
> /opt/yocto/toradex-morty/build-intercom/tmp-glibc/work/armv7at2hf-neon-angstrom-linux----
> gnueabi/jrtplib/3.11.1-r0/sysroot-destdir/usr/lib/pkgconfig [pkgconfig]
> -- ERROR: jrtplib-3.11.1-r0 do_populate_sysroot: QA staging was broken by
> the package built above

The problem is that the jrtplib.pc file contains the build path, which
is broken.  You'll have to look at the build system and understand how
that happens, and fix it.

Ross

