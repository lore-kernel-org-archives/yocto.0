Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0DF0E008D0; Wed, 15 Feb 2017 06:58:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.175 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86CD4E00874
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 06:58:02 -0800 (PST)
Received: by mail-io0-f175.google.com with SMTP id j18so89968192ioe.2
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 06:58:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=gtVm/HrfLwya3A/tBtooo5mgnbquT65LTao4lBV+UgI=;
	b=cogfvmw/zOtfJ3rLj/2z96Nefubo9WzOMUvfmkW1Qb1KmRGUNcO5VSvVuxlUMqm4io
	uZnNVWD42uPnTZT+RTp3w7ymnxQDsAknE2TTWlQk2IUQR9nA3TB2TETLCMtAZY3m0nK+
	BVMO4M1xD6nzkKdjfvpZeG+oejjlT4lPfcYo6Ktt5DeugLYEiCq7DHt1BfaxO2UYuGRk
	w3aDwOc5SJwGL2BwISrfwhfsi+Yjnbm2Juyczy8LW87vM8RtK+7dcGtGv+wzibaieiLA
	SmVaF4C5sAMuViDszdB3U026xmvtB2NFEtay68HhFzE0LEP3gzmCG/NqjOkiArbhQfGc
	/41A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=gtVm/HrfLwya3A/tBtooo5mgnbquT65LTao4lBV+UgI=;
	b=Xr+EgciCZF8jPGERWOw2MYErA96HvdJmvLfQS+r5oAM/KuOBPG1ffLaKvrLl4pF1tX
	C9hI/9NJOmR+HDFfgcuWe+Pv7Ps4eK3+OqJFgrvEA4nt8ekgiya/UlZjKOhNUveEd+hN
	qYwUpl8/a2AVRpPIDfYiLvMUn2Yjv2jcN+H95J5GXkz2vXh3c4aELI+xzXGvh6GAcQQR
	G727Dbz81VDueaHnWn8Ct0tmMmQ94oFCPbQ9RhGd+2mQavs/zmlp+q2u/21VED32z5HO
	CEWHxACSbQXxV3fhxQb3xMs06PypquErEfjA8MoH0dNIEzQA8zMg/5i9Mvf1W7dWbFle
	XAyg==
X-Gm-Message-State: AMke39lR8kmYB/993WNOn3v2JiRPempd3fOv5ND5xBDw34zIQZCY99kqlReqbmeA+An+yVfC
X-Received: by 10.107.27.82 with SMTP id b79mr31260456iob.218.1487170681508;
	Wed, 15 Feb 2017 06:58:01 -0800 (PST)
Received: from pohly-mobl1 (p5DE8E563.dip0.t-ipconnect.de. [93.232.229.99])
	by smtp.gmail.com with ESMTPSA id 9sm1836382itm.18.2017.02.15.06.57.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 15 Feb 2017 06:58:00 -0800 (PST)
Message-ID: <1487170678.13854.411.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: "Dominig ar Foll (Intel Open Source)" <dominig.arfoll@fridu.net>
Date: Wed, 15 Feb 2017 15:57:58 +0100
In-Reply-To: <c5a4c802-163e-6e4b-e7c2-fc2f598c11ec@fridu.net>
References: <c5a4c802-163e-6e4b-e7c2-fc2f598c11ec@fridu.net>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Changing UID GID
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
X-List-Received-Date: Wed, 15 Feb 2017 14:58:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2017-02-15 at 15:43 +0100, Dominig ar Foll (Intel Open Source)
wrote:
> Hello,
> 
> in AGL project we are facing an issue as when we create new images the
> UID,GID of given packages can (and does) change depending of the
> build.
> This induces issues when we create partial update file using image
> diffs.

Is that for partial updates with OSTree or something else?

> Could you let us know if we need to create our own solution, or if
> yocto already has a model to enforce a known UID-GID on packages
> coming from internal or external repo such as Open-Embedded  without
> patching (or creating a bbappend) for each imported package ?

There's useradd-staticids.bbclass in OE-core, see
https://github.com/ostroproject/ostro-os/blob/master/meta-ostro/conf/distro/ostro.conf#L179 for an example how that was used.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




