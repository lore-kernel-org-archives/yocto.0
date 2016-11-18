Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 337B2E00924; Fri, 18 Nov 2016 13:31:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.45 listed in dnsbl.sorbs.net]
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC674E0080D
	for <yocto@yoctoproject.org>; Fri, 18 Nov 2016 13:30:58 -0800 (PST)
Received: by mail-it0-f45.google.com with SMTP id l8so7936966iti.1
	for <yocto@yoctoproject.org>; Fri, 18 Nov 2016 13:30:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:subject:message-id:mime-version:content-disposition
	:user-agent; bh=ms4J8UyJe0FBXceDPU8attRAKkuH2pFskJyzL0fiSR8=;
	b=zBsqTqYAoqjClUT5teZDEuiO5YgXXa36iZ3BW2D2XZfOzKKT64yxHK6Xx11f/MjKgS
	Wat7D8NhpCkkn+yc96miTrfIjn8ERFcsrC3BCBTSYHG3tCQtueMvtYEldLIN2lnhAD30
	7CpxS0EXIIzTFrFEdR7U64l5IxBtGdeMSqP8apS0LkTQNdhx4IJr6P9h8HR55lCmKx3G
	p05WM8FE0z+sKMqZl/ABGzX63/5bUAIW/R+r70wkMGULmSnpvcOgOY8dN06m4ia3JbWX
	sdTX8/S6Vqk1JWP5K+6BChsSBpV3zuok/UPfqZrJ4+0xUMB1BfuzVopqRLTSPGWVkfKF
	tT3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version
	:content-disposition:user-agent;
	bh=ms4J8UyJe0FBXceDPU8attRAKkuH2pFskJyzL0fiSR8=;
	b=bTDAIbvUy1VXnDPro8qQnKAs/JzgvA5I4HQAP+HZFBIbp7u0Uk+jY/vhxYktrbX4gt
	hnnWIbyP3L4jFarKqoJUB+lo3OgLE70yJNscah0q37TKgxfErOPl/HAMbbj7IoAxhIYD
	J7xnya1p+FbUGoaD+FmWUuTR2vbGHXoZ1wcVYMwDW6pNBASAf0lO44q0Qgt/v4zyx5yx
	2nUxNaCxKm56ewEIr8+SBxn0oA3txGZ2npGLOkS32rWynNb6oxNblEv4Ilxh4JkUW83V
	dCxfB1MAlRMW0t3TPgSOjcXVbhjgv0EbopZ7Z4zsozIVAAzdahLJIDh1ZrMUzdkb/he2
	HtEg==
X-Gm-Message-State: AKaTC004HS4lG+zms9JgX9FI68ivyQENtBU4OdFMeSY9S1Ffo7JuaSLjJt9NapTVWW6Wig==
X-Received: by 10.36.211.72 with SMTP id n69mr477452itg.61.1479504658241;
	Fri, 18 Nov 2016 13:30:58 -0800 (PST)
Received: from openSUSE-i7.site (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	n199sm1600839itb.1.2016.11.18.13.30.54 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 18 Nov 2016 13:30:56 -0800 (PST)
Date: Fri, 18 Nov 2016 16:30:46 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <20161118213046.GB26177@openSUSE-i7.site>
MIME-Version: 1.0
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: uninative workflow
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
X-List-Received-Date: Fri, 18 Nov 2016 21:31:00 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi,

To be honest, I'm not entirely sure what the uninative stuff is (explanations
or pointers to explanations appreciated!) but I'm trying to figure out how to
work with it.

Previously, generating an eSDK didn't require a uninative-tarball, but now,
apparently, it does? Any idea why?

So now, in addition to building the uninative-tarball before being able to
build an eSDK, it also appears that I have to edit my local.conf to tell the
build that I'm using it, where to find it, and its md5sum. The weird thing is,
I could do "bitbake uninative-tarball" all day long, and every invocation of
that command will generate a tarball with a different md5sum even though the
configuration for each build is exactly the same!

This is getting hard to automate.

In order to create an image and an eSDK I have to start with a local.conf that
doesn't have uninative stuff in it and "bitbake uninative-tarball". Then I can
build my image, then I have to enable the uninative stuff in local.conf,
calculate, and insert the latest md5sum into local.conf, then I can generate
my eSDK. This is getting tricky to automate in, say, a Jenkins job :-(

Am I doing something wrong? It'd be great to go back to the days when the
uninative-tarball wouldn't be required for the eSDK, but maybe that's not
possible?

Best regards,
	Trevor

