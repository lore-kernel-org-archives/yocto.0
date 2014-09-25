Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D794E00790; Thu, 25 Sep 2014 16:15:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.43 listed in list.dnswl.org]
Received: from mail-qg0-f43.google.com (mail-qg0-f43.google.com
	[209.85.192.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88CF9E0074B
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 16:15:39 -0700 (PDT)
Received: by mail-qg0-f43.google.com with SMTP id f51so8391757qge.16
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 16:15:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=xjEzfZkg6bySekOs0fSZTwtn3VZO41HaI1xN++iNWnQ=;
	b=SX+dam3L+f8Ec6Kpy6M78iU9JihV3PwweGzR/v/hHXbt2jKP+Mu5DskG3ADIG0BWz6
	7ylu+yGfB5F0KtqFgZ0V1ZbJkWJj+d6Vt9fbrSSg7leLVTjMKf7iaR92fbvOp7OryMZ7
	Qj/1fSX+wh9UUblp9AqyI5LHtbXUDvLWhOEW3EhsSbUiEZKbiei3tretpUAP5/iTusSu
	L4MJ92DoFE6B94EuJs9DBzPV/35NuNLPErsmxE5n6v4ysJXIzBEdf2MGLDeh1fix63zz
	W5GWwt3QDhXGOqFIxpdur21xVLB2F4c41E7yHylBqOjcYhsEOl2HjY/ed9pIIhLj5QS5
	dl5g==
X-Gm-Message-State: ALoCoQm4ZtenhojpKqe/Dj+tCA5nbTtK1oIKkfW/26lrS9jQjyKMzEGO/jgpxtt/EmqUI1t/lgJM
X-Received: by 10.140.27.139 with SMTP id 11mr20624044qgx.59.1411686938315;
	Thu, 25 Sep 2014 16:15:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.180 with HTTP; Thu, 25 Sep 2014 16:15:18 -0700 (PDT)
In-Reply-To: <54249BD8.1030702@windriver.com>
References: <1411641352-19058-1-git-send-email-f.deldegan@endian.com>
	<CAJTo0LYf-qWXia8EuKSnck5=yYLGspckqm27y3kxMDESSdL5Og@mail.gmail.com>
	<54249BD8.1030702@windriver.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 26 Sep 2014 00:15:18 +0100
Message-ID: <CAJTo0LZGT0ogEA-PDfZOYVznJew0BP069d=_UU75qX-z2pPSyg@mail.gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [PATCH] bash: update to latest (025) patchset (fixes CVE-2014-6271)
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
X-List-Received-Date: Thu, 25 Sep 2014 23:15:42 -0000
Content-Type: text/plain; charset=UTF-8

On 25 September 2014 23:48, Mark Hatle <mark.hatle@windriver.com> wrote:
> So I would recommend that someone get the 025 patch (don't forget to patch
> bash 3.2 as well) in.. and we should wait until their is an official one for
> 7169.

Agreed, and patches sent.

Ross

