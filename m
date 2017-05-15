Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B793E00B02; Mon, 15 May 2017 08:20:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.65 listed in dnsbl.sorbs.net]
Received: from mail-it0-f65.google.com (mail-it0-f65.google.com
	[209.85.214.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB7ADE00901
	for <yocto@yoctoproject.org>; Mon, 15 May 2017 08:20:57 -0700 (PDT)
Received: by mail-it0-f65.google.com with SMTP id z15so10726035ite.3
	for <yocto@yoctoproject.org>; Mon, 15 May 2017 08:20:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=zfXZyOoFKz6KpoqEBHtVqcSLuC02snEqK5OfVOOqW28=;
	b=gMlKn4FU95p4JNRM7QAD335UcgvbxERj5NizChOJQIvuqUT57nawTBu/vD0rK+iwfi
	ORGQMZJqBQwl6DRSaS4177S3GHDnaRRlFPdwdac/9++CAdvkE1/mvA6fuZsq+rl2Qv3y
	CHbIIqz0Dc7E08meRiVRRzWxcSzKFGMPxtE+QhjrdpWOI00oEb8qs9WQYXWLyFs2fZ4P
	Ef9RDazUWjQjiAYQFMkFm1hh0P5frzSJduSNg1NnOqUqxAXIouU1N7cNE+J5gkdBubSX
	EY3pcw5RLXydXVfGEH5aXxhKonKeiQcl7sAlpgRo1uB6k19nGs3v8qQwth8sh8R9tMk8
	karA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=zfXZyOoFKz6KpoqEBHtVqcSLuC02snEqK5OfVOOqW28=;
	b=nhoYbZgAOw0s7s5GdJrv+q1w1B547HVom8gAtn2pkIofIlamS7+bG3TZmKCZmdmOPA
	riaufOHZKNgvgMaqoNiBrL20tqxDEtbf/BLLEEbDeteOxouiL3UbU/2V7n73VioOBdX1
	0Ppb0RBQOBIMnJeKMw1x9p7tLTOOaD599RQGxz96cvNZ+gvZDq5nM6B1th9wLELvIb4c
	pB0RgsjK0jYyFVs9jkL9CaG65WGMePRJD9RNRG0KCCUO7jITyVn+mNRKP4pqnRCCWjnm
	Vu+SpmSVWdUX/vjhUMGQe2QP8rIqSyrHbea4TRd0+Z3Khv2veNET8EdAjWkvOCXMo/V7
	UDRg==
X-Gm-Message-State: AODbwcC4ODSuUbTF99DNlOWE9HXj+aDq08xoIxA7LtHVjdulWz1wqjht
	+46EHQo9S7ECCQ==
X-Received: by 10.36.0.23 with SMTP id 23mr5897983ita.108.1494861656748;
	Mon, 15 May 2017 08:20:56 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95])
	by smtp.gmail.com with ESMTPSA id z85sm6955069ita.3.2017.05.15.08.20.55
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 15 May 2017 08:20:56 -0700 (PDT)
Date: Mon, 15 May 2017 11:20:54 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Romain Perier <romain.perier@collabora.com>
Message-ID: <20170515152054.GA14342@linux-uys3>
References: <20170513153305.27132-1-romain.perier@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20170513153305.27132-1-romain.perier@collabora.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-rockchip][PATCH v2 0/5] u-boot-rockchip: various improvements
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
X-List-Received-Date: Mon, 15 May 2017 15:20:59 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Sat 2017-05-13 @ 05:33:00 PM, Romain Perier wrote:
> This set of patches adds various improvements to the u-boot-rockchip
> recipe. It fix a build issue due to spl binary being copied from the
> wrong task, it removes various variables, that are already defined in
> a common include file, defines a version and adds support for the rock2
> board.

Thanks! Tested on firefly-rk3288 and applied.

