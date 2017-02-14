Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2E6EE00953; Tue, 14 Feb 2017 03:21:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.42 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03211E0089D
	for <yocto@yoctoproject.org>; Tue, 14 Feb 2017 03:21:45 -0800 (PST)
Received: by mail-it0-f42.google.com with SMTP id c7so31476141itd.1
	for <yocto@yoctoproject.org>; Tue, 14 Feb 2017 03:21:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=kVOSpJf3sTWa/6X3CZ03d6KpUOlkUF8qmh9Tu6SfYaA=;
	b=XrjWPQwvEWwUpoxBQdxB0/bgwpac1WYOqtpLSjWV3b5ETP0Au9qe7lC/dgkMLGyja7
	XT0smfMzIUvyPiUJ8SgJUGXbkXKb6/t3gZQZwQh9TLGDgh/qFt4gSfIS75Z6zQ3akYzB
	doPENLqJOA5zoenW9KJuc+jnx3v5oToz8TgXbW6CnemtQKzl9LmDr9YoD9g7aWgVNsjW
	KlXJe2cZ65AfIjzh7jbmCc1YGZBUeHO6PLNEXw4Qk4yG1rNwCo4yOtleJaVQ+JgQ/Gx2
	B5EDgoZRwRXHc7e5d4O3gCrthShbomeSTxFH53abTZJ6eZPOEOL/P02nKu0NwKAq95EH
	ojug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=kVOSpJf3sTWa/6X3CZ03d6KpUOlkUF8qmh9Tu6SfYaA=;
	b=ixxKJ1C2VS2HsANdt5BmBIq9XiB/fMVKsqS26A0mm4BFhWtEO/eQPp8YQ6WC3zoWQz
	HJtGhpY8QvP/d2MnMKeHkRNCOxiIY5EfhJwFdiGfs7JbNZhphHgg2fnAqqLQwbFpntxw
	pq0ZQoqm3FZDCXozNYanEL8MdRmH6O/0Ixo7Uh9Jk6xOXxNRBPQdEm4oNt/DP6STcPrd
	6UxdqHcXMVnjTpE4RgtSMM5gVVO8PlhbzdDwZfNQA88Ry8n8TJOBXRaPzcYr2W7dxJEW
	moXUFvXVzo9CJUZrywZzFOju/uZoIiRikdDnwvq3rKJ69wzW0Mekd+2wLxWcfTWJH1GG
	MBcw==
X-Gm-Message-State: AMke39kMXpW9tHto/d3XxlH0CTWJ1r/I94ULkN9fPHipzaXWxtr1Kh0yLERtdG8Wdu8B1nwQ
X-Received: by 10.36.210.134 with SMTP id z128mr3065033itf.23.1487071305043;
	Tue, 14 Feb 2017 03:21:45 -0800 (PST)
Received: from pohly-mobl1 (p5DE8E015.dip0.t-ipconnect.de. [93.232.224.21])
	by smtp.gmail.com with ESMTPSA id
	m196sm211561iom.14.2017.02.14.03.21.42
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 14 Feb 2017 03:21:43 -0800 (PST)
Message-ID: <1487071301.13854.330.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: akuster808 <akuster808@gmail.com>
Date: Tue, 14 Feb 2017 12:21:41 +0100
In-Reply-To: <b85dd671-0c0b-73f8-0c99-ce1f40bf8892@gmail.com>
References: <cover.b42849c0e1d715c25364d4e1b5f3660bbe65c775.1486111542.git-series.patrick.ohly@intel.com>
	<b85dd671-0c0b-73f8-0c99-ce1f40bf8892@gmail.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH v2 0/9] tpm: virtual TPM for qemu
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
X-List-Received-Date: Tue, 14 Feb 2017 11:21:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2017-02-03 at 10:35 -0800, akuster808 wrote:
> On 2/3/17 12:46 AM, Patrick Ohly wrote:
> > I recently started using swtpm-native in combination with the qemu-tpm
> > patches to simulate a virtual TPM chip in qemu. The qemu-tpm patches
> > should go into OE-core, but currently usage is a bit cumbersome
> > (requires root privileges and manually starting swtpm before each
> > runqemu invocation), so at this time I only consider the meta-security
> > changes ready and useful enough for merging.
> >
> > Inside the virtual machine I used tpm-tools + trousers to set up
> > sealed keys for EVM, which required fixing a few things.
> >
> > These patches were based on Armin's swtpm+trousers version update
> > series which needs to be merged first to avoid merge conflicts.
> In staging

How often do you promote staging to master? Can this be done soon (like
this week)?

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




