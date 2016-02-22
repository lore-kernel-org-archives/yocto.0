Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 500D8E00948; Sun, 21 Feb 2016 17:38:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudolf.streif[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.41 listed in list.dnswl.org]
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E010E00852
	for <yocto@yoctoproject.org>; Sun, 21 Feb 2016 17:38:16 -0800 (PST)
Received: by mail-pa0-f41.google.com with SMTP id fy10so81916545pac.1
	for <yocto@yoctoproject.org>; Sun, 21 Feb 2016 17:38:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:user-agent:in-reply-to
	:references:mime-version:content-transfer-encoding:content-type;
	bh=cGWFVugzseaflfGfEaG/znJigNLnV7yyvNm0rMrBHV0=;
	b=hbDBXS2v+jas6A4D7zlyTFXkPeE4BtmB/TkSaQk3w+G+cLtvSveGffG7p/8RwVBDPZ
	7D8MAqaeA6ppjwVF3VMLj27CDkhYUz/2F2U9y6zDst6WePuvxNk8ig9MyQMVyYObIN3+
	CrYpOk0hMZXieo8hYpdPrM9zlGM9Qs0WVuRgXPf2UcevLvtz5KBoRwZf6vrkoFp928Mp
	t9S4boKBDDsumrXF9OD7xwXNi5ABijsGcVRI7Mpr+HxsLf+9wAQv6vYzh5BeNW+YnOkB
	mLnPM558QKCIRSnfC7T68ao3R25rsvvNvtAgdNFlENWwCaxs//ebt3iuoSNcm4lzsc9p
	VirA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:user-agent
	:in-reply-to:references:mime-version:content-transfer-encoding
	:content-type;
	bh=cGWFVugzseaflfGfEaG/znJigNLnV7yyvNm0rMrBHV0=;
	b=Pyq7/+6012uj2+1EDA8u9FI4qIyTRxPjaetyWyBFdgVgp89sSeOscSsay3nVfR46Uu
	pnhBgwc0GswtzRs+VfxTnJEsdmuAIAKEvNREeV2xwEmTWUxQEAemsdDFyjBwAjwf3vHE
	s2U/xmrQJObAP2ai+rtE7vMjC8xa18k0GXYa/bDyvikKB+LXwBTM9yn/CjFH6se02InQ
	uHXE3NPxf4q9H3RutuoM8Mxt+p1uASYbm5l7fWH3LbmcF8DVVKWer7Xf5TGOBWuFNbmT
	nCSDYR5naaUHoutNnTbn0M3fSPwnd7BhnoEqAvLxx7dDFiSKC/U8zxBfYv6fqFcsjZ8p
	T/NQ==
X-Gm-Message-State: AG10YORVdu3O7AUKDvWBzfEuQ2y8cTT7aZiuIWJhpjb2mg4Zd3qEAjho0l/F2qxxY05mGA==
X-Received: by 10.66.228.201 with SMTP id sk9mr34600103pac.1.1456105096465;
	Sun, 21 Feb 2016 17:38:16 -0800 (PST)
Received: from rjs-zotac.streifs.net (ip68-7-48-20.sd.sd.cox.net. [68.7.48.20])
	by smtp.gmail.com with ESMTPSA id
	tb10sm32479502pab.22.2016.02.21.17.38.15
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 21 Feb 2016 17:38:15 -0800 (PST)
From: Rudolf J Streif <rudolf.streif@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 21 Feb 2016 17:38:14 -0800
Message-ID: <1989092.7OVe9rXmCs@rjs-zotac.streifs.net>
User-Agent: KMail/4.14.10 (Linux/4.2.8-200.fc22.x86_64+debug; KDE/4.14.14;
	x86_64; ; )
In-Reply-To: <829E1DFECFCA904FBE9BB9228564C2B301412FAA3F@ex2010mbx1.tu-dortmund.de>
References: <829E1DFECFCA904FBE9BB9228564C2B301412FAA3F@ex2010mbx1.tu-dortmund.de>
MIME-Version: 1.0
Cc: "sebastian.rohde@tu-dortmund.de" <sebastian.rohde@tu-dortmund.de>
Subject: Re: Package Level Dependencies
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
X-List-Received-Date: Mon, 22 Feb 2016 01:38:20 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Sebastian,

> I have a recipe (say: "test123") that provides a complex piece of software
> (cmake-based). The software needs some configuration file (say
> "test123.conf"). There are multiple variants of the configuration file,
> sharing the same name, i.e. "test123.conf" exists in different variants for
> multiple hardware configurations.
>
> My aim would be to have multiple packages like "test123-config-XXX" and
> "test123-config-YYY", that cannot be installed at the same time, while
> having one of the packages is a dependency for the main package "test123".

These are two conflicting packages.

> 
> Is there a way to achieve this? From my current understanding, dependencies
> are "per-recipe" and not "per-package". Is there any way to achieve package
> level dependencies? I would like to avoid having multiple recipes as there
> are many configuration file options which are currently located in the same
> large source repository as the main software.

Look at it from the perspective of conflicting packages.

My approach to this would be the following:

1. Write an include file test123.inc that includes all of the guts of your 
recipe.

2. Write the two recipes test123-config-XXX_1.0.bb and test123-config-
YYY_1.0.bb:

test123-config-XXX_1.0.bb

require test123.inc

SRC_URI += "test123-XXX.conf"

do_install_append() {
   # install config file here
   install 544 test123-XXX.conf ${D}/<location>
}

RCONFLICTS_${PN} = "test123-config-YYY"

Analog for test123-config-YYY_1.0.bb


You are essentially sharing all of the recipe through the test123.inc and only 
add the config file to the respective target recipe. The RCONFLICTS_${PN} 
directive will flag an error if both conflicting packages are attempted to be 
installed.

BR,
Rudi


