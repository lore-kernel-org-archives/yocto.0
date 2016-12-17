Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97607E00E36; Fri, 16 Dec 2016 19:19:40 -0800 (PST)
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
	*      [209.85.216.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.178 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f178.google.com (mail-qt0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6781E00E27
	for <yocto@yoctoproject.org>; Fri, 16 Dec 2016 19:19:37 -0800 (PST)
Received: by mail-qt0-f178.google.com with SMTP id w33so103767909qtc.3
	for <yocto@yoctoproject.org>; Fri, 16 Dec 2016 19:19:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=GnsG7MB3NVPqunXW6HYibQMq6t0uLADfyDUXbKVoqYE=;
	b=vMCMFJPyAPAaDbGgQ1JfHBMxw9EQ8p9PhpzFTuUiwZUUNQVEVGcWunl3OUtAYf95be
	xIw4KOPbMnq2x05rFTXJEbE5ay1hxK75EePmxE92EuUgBq4nRSBT5JDz65hQdGLSDEc4
	esvNw6whH7KjjDW/HskNZTl0Pb++sxlwcgUstshxYXDl5SYgH2BgJmy0F9iuWDP5IR12
	0vPSKL6evy/F36YBIUHCTloWko2XhRfyTEVQYKgTE9N01Am+/sjBA6iDwy0I/NrHUbmh
	4DW858s9EhTvT+7WRo5mSpJ5K39byhNoc9LiM3UemLdGxL3w7SiL+/0dZTuz9iYxxPkX
	5w4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=GnsG7MB3NVPqunXW6HYibQMq6t0uLADfyDUXbKVoqYE=;
	b=jCNHIKn+tty48cv0LPlE6z7wV1mmxxs2w10Ztz5zBxVnRr269Xs8XH3bvz5Vm+ffDt
	pXWYWMTIqsZ6m+5LJdpjPpHJm+gU+WYx/+KkgShAucwY2c6Eq9snKg53wVdX4GhCdrRM
	oHPsvKCpRiAtAxPbPFLYjrXMjFEwvgH0A3LatnsPk8gNSQuK2plfS7/meMcCdQdE14FC
	c3W1J1YAt4yU6YUsq7G/dWryF6/eJsGtWvgMfEAcLhQ+NIZwX+pq4NGFSOlfeRthzy8r
	U3BUnEAUfGANq+tUeBJXV2okST80uGOxaiTdvTln8yGr+R9eveWS4rsHqslSaQAmtYkg
	iMAQ==
X-Gm-Message-State: AIkVDXLs7XOkL/IlKdP9xJzrfBvQmQo7JaZ8FTP6vnnowF+HvQbNa7zrOFeQT3Jt8E7KZWGetYgtaVS0efYi8A==
X-Received: by 10.237.50.129 with SMTP id z1mr6469040qtd.158.1481944776619;
	Fri, 16 Dec 2016 19:19:36 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.46.162 with HTTP; Fri, 16 Dec 2016 19:19:36 -0800 (PST)
In-Reply-To: <691e2e48-7c53-99e3-4b5e-bf0afce9f48d@linux.intel.com>
References: <20161216150617.GA21846@openSUSE-i7.site>
	<ba7b7f02-aaff-cd8d-20ee-8619b6201ede@linux.intel.com>
	<691e2e48-7c53-99e3-4b5e-bf0afce9f48d@linux.intel.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Fri, 16 Dec 2016 22:19:36 -0500
Message-ID: <CAHUNapSoFcwTX9043gJpHeK40=O1dk3Xm4GwLbywd=zG=pK-nA@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: PSA for anyone using openSUSE 42.2 (or similar)
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
X-List-Received-Date: Sat, 17 Dec 2016 03:19:40 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Dec 16, 2016 at 12:31 PM, Alexander Kanavin
<alexander.kanavin@linux.intel.com> wrote:
> Actually, scratch that; if bitbake can detect that the limit is not optimal
> at runtime, then it probably should. Direct the bug accordingly.


Bitbake can't possibly know how many builds you're going to spin up at
any one time, and it can't take into consideration whether of not you
set "parallel build" or "number of threads" settings on any of those
builds. So when each bitbake starts it might look at the variable and
say "that looks reasonable" but after starting the 3rd bitbake you end
up with resource issues that fail a build that might otherwise muddle
through.

