Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12E55E00E06; Fri, 28 Oct 2016 04:20:35 -0700 (PDT)
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
	*      [209.85.218.45 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.45 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f45.google.com (mail-oi0-f45.google.com
	[209.85.218.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8F01E00E02
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2016 04:20:31 -0700 (PDT)
Received: by mail-oi0-f45.google.com with SMTP id p136so62284725oic.1
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2016 04:20:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=Z87ucgbTD9p2M7cYRqHTBF8Wf+ptoTXuIBL73PLZyyE=;
	b=fAWNjJ5zk5kp1VZ4TNwOd7rzXC7V2bwRIarSZtS3gt3J20L7SOVyAifxJijiquARuu
	+mnW80tJSUwOTujpW1dcuRpA9AYGojfT4MTWW/0Fm0Jz+zBrQzgqZ32+b8yxCnmdHsYp
	KB2p9RcXFcWeMdgGzF+1ELw9pxIyTGEiF20PsNcBs7fppYjxbSLQS5syCj+aFr7u5mN2
	xDTiFtAjFb5NNq0KSw32LGOjL83WCyinC6UHCkkZIpU6akxCt/yBxlcdJEMOy1HJAQfw
	/2ogWapBaYWrRlPHibHqiB1Owh4uI8TUEPU7lyO+KQla4Fb1VNTo4bnitgoauqd8/3tu
	PSQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=Z87ucgbTD9p2M7cYRqHTBF8Wf+ptoTXuIBL73PLZyyE=;
	b=kA0pgIKwBGVe6/2Jxjj0OCPanqmoCU5aokzHhP7fDk5CFVJVdHEh8u/PXK1kd165Yo
	tb09czWJoPbgJf67pNh8aKRzT7Vum00jHHYK6wEKU/0dBxdoYlOOttGgeLQx9cKIfS3R
	G0GtlWkCqMTd9xvVyzMS9LlN1uGqbXwmBHZHBZVyes48FfUpFB7gYtQdylb50lcNZfJk
	qD++EekXUtXpCNS6oP5CkMOH61VKyTqz32q5mmWs8VHHMTIlj//bkmeX4NBSvori/szD
	kO7al71FtOE5wAiFzKYXc6WkKECEagVQIO5w6IVmIeCJ1tFBmAlvpYJ5dyEqZbaA/+ZX
	DfqA==
X-Gm-Message-State: ABUngveCXk00YMp6MzqXWvgsUrv4BZ8v76RPuAyyS020VzSz7H+2rabs7NoIxzbMkeXbas4a
X-Received: by 10.36.44.14 with SMTP id i14mr1291879iti.105.1477653630795;
	Fri, 28 Oct 2016 04:20:30 -0700 (PDT)
Received: from pohly-mobl1 (p5DE8F6C0.dip0.t-ipconnect.de. [93.232.246.192])
	by smtp.gmail.com with ESMTPSA id e33sm1299497itd.4.2016.10.28.04.20.28
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 28 Oct 2016 04:20:29 -0700 (PDT)
Message-ID: <1477653625.13356.24.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Fri, 28 Oct 2016 13:20:25 +0200
In-Reply-To: <92CF3B90-4DED-4513-BDD0-9BB116E476B8@gmail.com>
References: <1477494038-2895-1-git-send-email-akuster808@gmail.com>
	<1477494038-2895-2-git-send-email-akuster808@gmail.com>
	<1477552947.2887.63.camel@intel.com>
	<92CF3B90-4DED-4513-BDD0-9BB116E476B8@gmail.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH 2/2] smack kernel: add smack kernel config fragments
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
X-List-Received-Date: Fri, 28 Oct 2016 11:20:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2016-10-27 at 19:32 -0700, Khem Raj wrote:
> > On Oct 27, 2016, at 12:22 AM, Patrick Ohly <patrick.ohly@intel.com> wrote:
> > Can you say a bit more about your plans regarding Smack support in
> > meta-security? A recipe for the userspace tool and the kernel config is
> > a start, but for a fully functional Smack-enabled image, the rootfs also
> > needs to be set up a bit differently.
> 
> FWIW meta-security seems to be right place for smack related infra.

I don't disagree :-) But it would be good to know more about the rest of
the infrastructure before adding (or reviewing) bits and pieces that by
themselves don't do much.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




