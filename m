Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C86ECE00B18; Thu, 29 Jun 2017 11:25:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.47 listed in dnsbl.sorbs.net]
Received: from mail-vk0-f47.google.com (mail-vk0-f47.google.com
	[209.85.213.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 135F2E0084A
	for <yocto@yoctoproject.org>; Thu, 29 Jun 2017 11:25:18 -0700 (PDT)
Received: by mail-vk0-f47.google.com with SMTP id y70so54358216vky.3
	for <yocto@yoctoproject.org>; Thu, 29 Jun 2017 11:25:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZYaHdBEYexCaQYFqWsvaK9DN3XehfkayHmUM6V3KG2k=;
	b=CE2eF5xdSzW6FoJUsMQ9hAK+J4Zklk9OBKQyO3ou913Fz8Kq/9XF9mKngvP26+RZ+r
	ZS+BPd7veSZ9DYKzqGNZDRso13AfyLBD1CsN6VeW2zcl4Z7XNXkvmYhnF2AiijlcScG6
	d8ICNjOJOzS8c9iJcJmuRe6MkrojeO2Gu9d8mZvoF7U7D6JTv/HIWJBtYXJ0lDDOgLN0
	03XK8EcptGfCPruS0t5nhxs35VooM7YNqpPI/m6myEQQytbuAroLwfN4SmBr6b0nXNch
	k9d+pTqe8B7FJj04xEjF6T85nfkXNvmVZHuAb8w/ei3Wz1rpZYYjYQq2IHCJAlb++04m
	81ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZYaHdBEYexCaQYFqWsvaK9DN3XehfkayHmUM6V3KG2k=;
	b=fY8v6+Aw6RBEFtXOw2aJx9vzST/NsQRGjNK7RqImZl0UEdWeJmFNh2sQoOhmMufpez
	MAsBfg4fDdf4FouRkEFGb633fyYTS2xA/6/06d6gZVrCuBvFeCzp8xE1FpVgUI91QSOx
	1K4BPYD/D5mDnCSXEOAL7A8/kKEAGe5R8JLcfY64kY00jVw6CExK6I1YjyEqwViYNLOw
	527+LUmJGAzIDu1a51nIPX1iXQdyzcpxvbyFKcxYIrM3l31VfiNcVwTO6pcgX/I3hWWw
	kNR8yzI62uyrg1aMJCuDENFwwHAMHQ+xdwLcmyprNNE/6nDf7okahbBmf5mW+lH9mD1Q
	IyeA==
X-Gm-Message-State: AKS2vOzlgl9uIlvSZD+Pe/WhRH829cVA2W3ZjZw32e1xtdHtNSVueROm
	me4O2XWwdYsrlj/bCbOnpUEOCOTbPA==
X-Received: by 10.31.224.4 with SMTP id x4mr9547365vkg.49.1498760716640; Thu,
	29 Jun 2017 11:25:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.84.198 with HTTP; Thu, 29 Jun 2017 11:25:15 -0700 (PDT)
In-Reply-To: <9ADD3FDE8B189B4AA2F8A3C711F8155E981FB478@fmsmsx111.amr.corp.intel.com>
References: <9ADD3FDE8B189B4AA2F8A3C711F8155E981FB478@fmsmsx111.amr.corp.intel.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Thu, 29 Jun 2017 14:25:15 -0400
Message-ID: <CAHUNapTNR=iWHwhx8R-DPEWmCRFu9KBDwv3r5eUwH_Wb8Pyt4g@mail.gmail.com>
To: "Jolley, Stephen K" <stephen.k.jolley@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Project Technical Team Meeting
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
X-List-Received-Date: Thu, 29 Jun 2017 18:25:19 -0000
Content-Type: text/plain; charset="UTF-8"

In other words it's being pushed back a week for the US holiday?

