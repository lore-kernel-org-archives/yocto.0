Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DBC3E00C31; Mon, 22 Feb 2016 08:31:40 -0800 (PST)
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
	*      [209.85.220.42 listed in list.dnswl.org]
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2412AE00B70
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2016 08:31:38 -0800 (PST)
Received: by mail-pa0-f42.google.com with SMTP id ho8so96056496pac.2
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2016 08:31:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:user-agent:in-reply-to
	:references:mime-version:content-transfer-encoding:content-type;
	bh=6pZsYPFhQGSXwq1Fb15EbIPLkadNqYudQoweUs9bvDY=;
	b=G0R9mcX2CJL3DYr8xtJTLLKG+Qu7Q/MbJvoVKyryizegAiylxFpbfqkk7sysU4QdnX
	phdiM56LeGTW17p/aQTHZT95yV0kKV7rJfq19yZnN1YFo2drKMy7FVfgYvl444HkAU+V
	LC9WixrgBsxktDBkAqYCqfQlZlScRrFJcxIrc0zJLVaduw6TdLuJ5xrNdF19Y1a06pko
	YEbTYqKot8QQziIZEKC9tYIb3quO92qxv/EArfVd/z6G/EpPCvggYx26BR6Bp8SChbRh
	Hr14zEFXypwovIR/kM6sY7HkPh1hnlwcWCM9o/tLUtE1/qd/qN/gS1zh01/jZkMJBLpt
	pCqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:user-agent
	:in-reply-to:references:mime-version:content-transfer-encoding
	:content-type;
	bh=6pZsYPFhQGSXwq1Fb15EbIPLkadNqYudQoweUs9bvDY=;
	b=PZh6ygKzvu1PtmMxmqtchFpvxHvVjhEtKk0AXKNHQ1E0hP3VBj/6X71v1FxYDGQYRX
	KxkxXBT2D3t/PUrACHwF0ct8Y+1UBZkvISb2SUcgFSFHlq31EwWzGt0NRRxZSnS8j/9o
	zaoI7kgQUbGjZ2tRyHkC0sD63K2o9tTIpCFRgG6oNyzkg+Rwp+HjSxDcFcQF3iL5kzuB
	oSvZSGldPCK/ZsRr+oC3B2JOk679A18+Vfx0BqRl6oGs1V90J1GnjKK6aw/Bhax8/Iko
	/jL2zm06uOUcjhzzrnc6T/zNq0TQvutMAl9zGCvYPv4deM4J0hqnb5AYWPox4kyZ430k
	nYGA==
X-Gm-Message-State: AG10YORKuTlJC0gmAe4nnVeR1OCI20KwmMwz0hHou0/K23GoLV9Wvk4/oNLyREBB9dnugw==
X-Received: by 10.66.151.177 with SMTP id ur17mr38985210pab.68.1456158698057; 
	Mon, 22 Feb 2016 08:31:38 -0800 (PST)
Received: from rjs-zotac.streifs.net (ip68-7-48-20.sd.sd.cox.net. [68.7.48.20])
	by smtp.gmail.com with ESMTPSA id e1sm38300176pas.1.2016.02.22.08.31.37
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 22 Feb 2016 08:31:37 -0800 (PST)
From: Rudolf J Streif <rudolf.streif@gmail.com>
To: "sebastian.rohde@tu-dortmund.de" <sebastian.rohde@tu-dortmund.de>
Date: Mon, 22 Feb 2016 08:31:36 -0800
Message-ID: <1570748.fdEeUGpXrj@rjs-zotac.streifs.net>
User-Agent: KMail/4.14.10 (Linux/4.2.8-200.fc22.x86_64+debug; KDE/4.14.14;
	x86_64; ; )
In-Reply-To: <829E1DFECFCA904FBE9BB9228564C2B301412FADD9@ex2010mbx1.tu-dortmund.de>
References: <829E1DFECFCA904FBE9BB9228564C2B301412FAA3F@ex2010mbx1.tu-dortmund.de>
	<1989092.7OVe9rXmCs@rjs-zotac.streifs.net>
	<829E1DFECFCA904FBE9BB9228564C2B301412FADD9@ex2010mbx1.tu-dortmund.de>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 22 Feb 2016 16:31:40 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Sebastian,

> 
> Thnx for your input! I guess I can see your point. In particular I wasn't
> thinking so much on using ".inc" files. Due to the fact that I will be
> having like 10-20 different test123-config-xxx packages managing this using
> "RCONFLICTS" might be tedious. I guess this is what virtual packages (say
> test123-config-xxx has something like PROVIDES=virtual/test123-config and
> test123 has a RDEPENDS on virtual/test123-config) are for and I will try to
> follow this path for now.
> 
Well, that wouldn't solve the problem of having 10 to 20 different recipes 
either, since you would have to write a recipe for each config file with a 
specific PROVIDES in it.


> For a couple of reasons, the configuration files are in the same git
> repository as the source code of "test123". Is there a way of sharing
> working directories between (at least all config-package recipes, such as I
> don't net to checkout the whole git repository for each of my 10-20 config
> packages?
>
I suppose you are talking about a remote Git repository. The do_fetch task 
will first check it out locally to DL_DIR. If all of your config recipes use the 
same URL for the source BitBake would only check it out once locally to 
DL_DIR. That automatically saves the download step. However, for each recipe 
the do_unpack task would copy the config sources from DL_DIR to ${S}. You could 
skip do_unpack and point ${S} to a different directory, but that is getting 
rather messy. I would not recommend it.

Essentially, what approach to take comes actually down to what the criteria 
are to select one configuration file over the other. What is it dependent on 
that you select test123-config-XXX rather than test123-config-YYY?

If it is a build-time dependency such as the MACHINE then you can do a 
conditional override, as Philipp Ballister suggested.

If it is a build configuration dependency you could resolve it in the install 
task. Maybe you could define your own configuration variable that you set in 
local.conf (or in a disto configuration file):

TEST123_CONFIG = "XXX"

Recipe:

do_install_append () {
    # install config file here
    install 544 test123-${TEST123_CONFIG}.conf ${D}/<location>
}

Cheers,
Rudi


