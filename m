Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7FE2E00A1C; Tue, 17 Jan 2017 08:49:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56EEEE00938
	for <yocto@yoctoproject.org>; Tue, 17 Jan 2017 08:49:32 -0800 (PST)
Received: by mail-wm0-f66.google.com with SMTP id d140so23406247wmd.2
	for <yocto@yoctoproject.org>; Tue, 17 Jan 2017 08:49:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=FZSKFm9AC+a6wMDh5EMwsxKpmKyScyqqn4xSiww6BW4=;
	b=d6QSX0xLZvgY/68+Q533pfTGbQOF3xD16LEpK61QyZpC9t+ZnjBQf17sdZVxmVYIje
	iGrqbClTAGVSd9/o6Wa83XqMQ8ElIL6sYL7ydhlRaRf9ngA+1kAjIBzvZloM0YZ53vC+
	tlQYqV7FJ+gEx9dL9wugvMlFgOeo0hNyhGqHAOMjhw+ueIz7lzvdtTLZIjUEg+l/VJiW
	8+Aj8rtP+0E4/fl111N3g4gWXMkAyQYfaGpT9oNHNhsuOIyo9/m487INS+M0/RmkpXUu
	dKKOz1JcEuYRWIp6pP6E1GUWzJ2rOKGDx9w4FuJQRgjkcoNYdA+2oWvJM2eAOXhtM3mg
	6GHg==
X-Gm-Message-State: AIkVDXIkpOVJr79r50wV0VddCUDFOj2lmoKYSEXgGsOBai3JdnwTWUOQTR246D/G59y9hA==
X-Received: by 10.28.14.65 with SMTP id 62mr17666436wmo.46.1484671770961;
	Tue, 17 Jan 2017 08:49:30 -0800 (PST)
Received: from tfsielt31850 ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	k11sm38174101wmb.18.2017.01.17.08.49.29 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 17 Jan 2017 08:49:30 -0800 (PST)
Message-ID: <1484671769.3257.8.camel@andred.net>
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
To: yocto@yoctoproject.org
Date: Tue, 17 Jan 2017 16:49:29 +0000
In-Reply-To: <1484671376.19478.75.camel@intel.com>
References: <20170117155910.23792-1-git@andred.net>
	<1484671376.19478.75.camel@intel.com>
X-Mailer: Evolution 3.22.3-1 
Mime-Version: 1.0
Subject: Re: [meta-swupd][PATCH] swupd-image.bbclass: do_swupd_update() depends on time-native
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
X-List-Received-Date: Tue, 17 Jan 2017 16:49:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2017-01-17 at 17:42 +0100, Patrick Ohly wrote:
> On Tue, 2017-01-17 at 15:59 +0000, André Draszik wrote:
> > The shell script uses time, which is either a bash built-in, or
> > a GNU utility. Not all build machines will have either bash or
> > GNU time available out of the box. Make sure it is available.
> 
> Good catch. I'm just wondering whether it wouldn't be simpler to remove
> the usage of "time" instead, or make it optional?
> 
> The "time" utility was useful while working on performance of the code,

I thought the same, and was contemplating removing its use...

> but now that this is done, it's merely nice to have when one can get it

...but I was curious as well, so I left it in and added the dependency.

> for free, which isn't the case when time-native has to be compiled
> first.

It's a one-time host-depend, which should also be satisfied from sstate
after that, so I thought it'd be OK to keep it.

I have no preference either way.


Cheers,
Andre'


