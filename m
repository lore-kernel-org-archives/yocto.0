Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5FF2E003C1; Thu, 16 Mar 2017 12:41:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.47 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.47 listed in dnsbl.sorbs.net]
Received: from mail-it0-f47.google.com (mail-it0-f47.google.com
	[209.85.214.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBA65E0030B
	for <yocto@yoctoproject.org>; Thu, 16 Mar 2017 12:41:41 -0700 (PDT)
Received: by mail-it0-f47.google.com with SMTP id m27so534801iti.1
	for <yocto@yoctoproject.org>; Thu, 16 Mar 2017 12:41:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=vqqbAsl/LGS+ReGCdt/FhbWDU6oGUzi7t1K4X2CisbY=;
	b=aUbixCl2YXvr0DnjHozFHfRvir9hq6sFSrC6Bjt6qQBz5E84x/bHduF593UtrttFTe
	KERW5RjqBTwEj6hh3fdVsyFoWkJOsuXQe8HKAwgIvqwb3iGVRNH078W7vIMrrncf8+5M
	zDNqQPyOO+XJ2xdIAbFYEoAPns45JncW+SiBL+ajG58HBiCLkAOYHYwsEQwKIljlVo2j
	W63a4YKcYMmQAwZ+ieJEcW7zbsB9bm51gwm9wk/Cb7qjx25vz5uPOB4leZSyUlZMobKC
	vrw0c9ogZao/L3055zuTVsZwf9CAKvCfTBiIuvZx7kbPM4kpKLSgozTiDSzRlVMcP2wm
	6XKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=vqqbAsl/LGS+ReGCdt/FhbWDU6oGUzi7t1K4X2CisbY=;
	b=gt52qQTCvyqf29bwlvGSlXBKoiapeoYbk21UAeB5NTzJOm+x9xsUrtr7QRajfDhjuc
	UdAtu6bGK9CutBzRx94qAUjNbHLQqZZ4lXo+jg1qIhl8wUdFRm0I1uzV5QGxXjQQh0W8
	BAVTiYW1/DZuLAyZJXkWVIqUJOZb3C9OzfEAaxc/99YM8gQFyLGbIzus7WNysQJIEdsd
	yPYXCsb/O99wIj1nIHTqQkcSv0XqYEoM7AeTIUIHnXNeWPolg5HXBhXfktIeUdCBhJmx
	cGmarVfBaTQYudUgYFhdk2rO34T0oo7kIDwgwCbhj5TPGfprXMHsR4N/o8u9LRAOPpJN
	xDEg==
X-Gm-Message-State: AFeK/H3qP3dSFqdstUVgDu7ihyzzZHETC9hLiNzFgQrE59IKG6pP2lFvmfWxFAATtHQxMikK
X-Received: by 10.36.50.138 with SMTP id j132mr28356195ita.102.1489693301330; 
	Thu, 16 Mar 2017 12:41:41 -0700 (PDT)
Received: from pohly-mobl1 (p5DE8DCA9.dip0.t-ipconnect.de. [93.232.220.169])
	by smtp.gmail.com with ESMTPSA id a128sm2305itg.22.2017.03.16.12.41.38
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Mar 2017 12:41:39 -0700 (PDT)
Message-ID: <1489693296.6396.130.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Jack Mitchell <ml@embed.me.uk>
Date: Thu, 16 Mar 2017 20:41:36 +0100
In-Reply-To: <aa65d1ce-1709-cb64-55f5-4bfe6f8ce9bf@embed.me.uk>
References: <37d4f98c-9102-f4bf-c6cc-f64e1ffbce40@linux.intel.com>
	<83c550f8-9f33-3179-3092-19fad4a37aec@rsi-elektrotechnik.de>
	<20170316093021.4901da8c@host0.betafive.co.uk>
	<e75b196f-0ee2-97e0-1ed4-8e52fe7695ae@linux.intel.com>
	<aa65d1ce-1709-cb64-55f5-4bfe6f8ce9bf@embed.me.uk>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, openembedded-architecture@lists.openembedded.org
Subject: Re: [Openembedded-architecture] Sum up - Proposal: dealing with language-specific build tools/dependency management tools
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
X-List-Received-Date: Thu, 16 Mar 2017 19:41:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2017-03-16 at 10:48 +0000, Jack Mitchell wrote:
> An issue with not having separate recipes is going to cause problems 
> with OTA package updates. I currently have a node package that I 
> maintain for a client and it's so big (excess of 30,000 files with all 
> deps) that we have to have a special update procedure of uninstalling 
> the package, re-installing the new version and then performing a system 
> update. A package update with 30,000 files on a quad core fast arm64 
> chip takes upwards of 40 minutes. It would be fantastic, if only the 
> core node application and changed dependencies could be updated.

If only some files changed, then going from a package-based update
mechanism (where a package gets reinstalled when any file gets changed)
to a file-based one (like swupd or OSTree) should also address the
problem, because then the update detects exactly the modified files and
only needs to replace those.

Just a thought, in case that auto-packaging turns out to be too hard.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




