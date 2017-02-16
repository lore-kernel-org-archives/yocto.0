Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1DE6E00510; Thu, 16 Feb 2017 07:41:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.51 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.51 listed in list.dnswl.org]
Received: from mail-it0-f51.google.com (mail-it0-f51.google.com
	[209.85.214.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75AAEE004A0
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 07:41:44 -0800 (PST)
Received: by mail-it0-f51.google.com with SMTP id 203so104133344ith.0
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 07:41:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=bSkrhwhq8McNK4iJH8+DX1EtYkyvb9QxOv1tNpIeWgY=;
	b=ZLLNspDwjeSXt8dAarqgF8o6W3l+sE6mIUH50wjOmpmDT7VM2jrp1Kn12gCV6okoLX
	5jH/ubCHL43LuQOgw/ULNYcLEtotcPr7lraJl9SiJ68MtxH3Az+eOxGVe/Ke54ZKl2/F
	4ZcuCPW+OSnHWEqnI+kurgIUQaK0kgOGCnLkaMwWuSurwGuJBnXpAbbRkeX2u1EsxTgh
	Gyg52mDXAKrZEz9WslMXRGaRyhFS/AgZUKJBKS/54hDPLTzeJ1pDApwzrJJEAVlrjjrC
	ozPxVT4jW+TkG2lc2/jCN2klL8rRDFZVfiG7ZE90gWukcW23M6So8iJ/5l6wfC8vJ3mN
	v5EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=bSkrhwhq8McNK4iJH8+DX1EtYkyvb9QxOv1tNpIeWgY=;
	b=MfvGIbP4yLEv5oRjHJ7wRcstWzh2WvBLmpu7cFC6M6XfxGibocnXkQx6uprkj/TKSU
	amzlOc/tql9hjJM9WaBRJ0NvZxnlWuxiqa5eZpKk1MKTIKdJ3Qz3BBExZW5mkz25JkGF
	/qoUoXrRuPuIBxp3+GvYgVHoFnWoeaVulT3PlavSQ1RLToZIG9PBul2cD5oskQRVyaxj
	hv1Wr58njl38jSjdahN+J5OoNYwsSs2Y8m2hK9VGmSG0tSAeZkkxRt514nU8zvUShTiw
	O03gSxmwg/pzRkodEIbIzv5EDon6kjApqSfbZaqy8OPYs9QRGAUV7NaZXmy7f1s3wgZD
	SrJQ==
X-Gm-Message-State: AMke39lspvNNcBO8Dmxo+IRCHYdTYmiTSHWCce8k7OEw/O0nWT8brc0HmF3ld01TTNtvJrrx
X-Received: by 10.107.150.10 with SMTP id y10mr2668652iod.221.1487259704437;
	Thu, 16 Feb 2017 07:41:44 -0800 (PST)
Received: from pohly-mobl1 (p5DE8C6B9.dip0.t-ipconnect.de. [93.232.198.185])
	by smtp.gmail.com with ESMTPSA id
	p19sm1729615iod.48.2017.02.16.07.41.42
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Feb 2017 07:41:43 -0800 (PST)
Message-ID: <1487259700.13854.467.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
Date: Thu, 16 Feb 2017 16:41:40 +0100
In-Reply-To: <20170216145830.21766-4-git@andred.net>
References: <20170216145830.21766-1-git@andred.net>
	<20170216145830.21766-4-git@andred.net>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-swupd][PATCH 3/3] bundles.py: fix copying of full image to full bundle when no SWUPD_BUNDLES
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
X-List-Received-Date: Thu, 16 Feb 2017 15:41:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2017-02-16 at 14:58 +0000, André Draszik wrote:
> When SWUPD_BUNDLES is not set, exceptions are thrown, stopping the
> build - there are two issues in here:
> - the debug statement references a non-existent variable, 'bundle' was
>   renamed to fulltar
> - copyxattrfiles() needs a list of files as 2nd argument, not a filename
>   of a file which contains this list
> 
> This got broken in commit 6c097131ad39
> ("meta-swupd: support rm_work.bbclass") while support for rm_work
> was being added.

I should have fixed that already in commit 
531a8e636 "bundles.py: fix "no bundles" special case". Can you rebase
onto current master and retest.

The other patches look fine, I'm just wondering why I hadn't run into
that. Perhaps I was working with an empty SWUPD_BUNDLES instead of an
unset one.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




