Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1F91E00D3E; Thu, 19 Oct 2017 00:18:54 -0700 (PDT)
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
	*      [209.85.128.169 listed in list.dnswl.org]
Received: from mail-wr0-f169.google.com (mail-wr0-f169.google.com
	[209.85.128.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4D56E00D36
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 00:18:53 -0700 (PDT)
Received: by mail-wr0-f169.google.com with SMTP id y39so7255353wrd.4
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 00:18:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:date:in-reply-to:references:organization
	:mime-version:content-transfer-encoding;
	bh=p7vIUiv2kPFCbFv4SLEnPqi8ZXizuXRelCjmYVa5O0g=;
	b=G10duvYU3Geh8/WdjA32c7nl3idiE5RahSZQzWWjUOqOVDKFS+FpW6uoNo5mm277c+
	Nvr2/36MOy6avm3P2OWHS4KO4dRY5hAf/aZoPsVgm9nyXTwIYHjSl16h7sCeCAE/aG/M
	uzuomQdo2cdIcDTDy/lf8m1GDDwJqEwLPTkOkI/elXFx4dpsdvoGKfglVL35R3pNl2T3
	bXR+upDEk3/ACRBxsa+yHFTiob1DHYRHi53FgvR0mTBiBk+dTvAaNK9mmEOrUdoF4Ujz
	frM1YvRuvwWHmJf1WzQKB0WgxYCyJ43+VAx0WUo754D+4PWgxOZCblysUjNPAzNbg+gD
	ZOSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=p7vIUiv2kPFCbFv4SLEnPqi8ZXizuXRelCjmYVa5O0g=;
	b=dSqzWvcLSru1MNQQTIKGyo56KwqAx/1GaUetGtFWapbb+vOh2dvpwOAKw2gvLb6H4K
	itA1QNlvvzZ7MrUPtig0/FmxmrMeM3aXe8XpV9uXDOqjuwIdRctlFfT6c1P8gjiSp1nw
	M3iH8L9qN1tE4rct8tL8B+l91C4oums2BDfOVx2pL+JGmCki/CZQEKBmYT/Xp5ehI2MR
	Ec02t/0t4qcR5sz98TIZ5Kw0osVcGebzoZmaw6GVOT4v/fWkgx1OP+FTI+0TyIFyx0ax
	jf5KAcohkNaa/uJgcw0BmW0X0SQkYg/JbgIZu4sXEWexdT4CLu4tcyyZradZ1jOJysJt
	4P9A==
X-Gm-Message-State: AMCzsaUtI+5YVB9vFGuMuA95LoiQ9guKMl+vdEqyigzDkyV6F+tb202x
	6F5aZgqINcyL81dAxRbgx15k5s7x5A==
X-Google-Smtp-Source: ABhQp+SaJhP5noccyieGzavWsnKLS3t8H6EMIpI4SOoZmb7QsQ/q0z6ptdCQDTfJs6U5cMD3AaoAkA==
X-Received: by 10.223.148.71 with SMTP id 65mr546949wrq.263.1508397532808;
	Thu, 19 Oct 2017 00:18:52 -0700 (PDT)
Received: from pohly-mobl1 (p54BD539E.dip0.t-ipconnect.de. [84.189.83.158])
	by smtp.gmail.com with ESMTPSA id
	c37sm26610547wra.73.2017.10.19.00.18.51
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 19 Oct 2017 00:18:52 -0700 (PDT)
Message-ID: <1508397531.25153.72.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Robert Berger <yocto.user.mailinglist@gmail.com>, yocto@yoctoproject.org
Date: Thu, 19 Oct 2017 09:18:51 +0200
In-Reply-To: <8653269a-f4c0-e7f4-1393-7c77ad18502d@gmail.com>
References: <1508218121.34337.17342@fedora25.yocto.io>
	<8653269a-f4c0-e7f4-1393-7c77ad18502d@gmail.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.22.6-1 
Mime-Version: 1.0
Subject: Re: minimize size of SW update bundle
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
X-List-Received-Date: Thu, 19 Oct 2017 07:18:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2017-10-17 at 16:12 +0300, Robert Berger wrote:
> Hi,
> 
> Imagine you have only a limited bandwidth to your devices available
> for 
> SW update. So you would like to minimize what's uploaded (over the
> air) 
> to your devices.
> 
> How would you do this with yocto?
> 
> [1] and [2] might be able to do incremental updates,

Both can indeed do it.

> Like how would you get a diff between two release builds...
> 
> [1] https://wiki.yoctoproject.org/wiki/Meta-swupd

With meta-swupd, set SWUPD_DELTAPACK_VERSIONS to generate binary diffs
against certain older releases. In addition, a single archive gets
created with just the right content for updating from the older
releases to the current one (= better compression, less GET requests).

> [2] https://github.com/advancedtelematic/meta-updater

That's basically OSTree. See https://ostree.readthedocs.io/en/latest/ma
nual/repository-management/#derived-data-static-deltas-and-the-summary-
file for instructions on generating deltas.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.



