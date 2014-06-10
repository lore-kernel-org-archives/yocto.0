Return-Path: <kapare@rogue-research.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87B18E00BF8; Tue, 10 Jun 2014 10:32:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from mail.rogue-research.com (mail.rogue-research.com [68.67.54.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA17FE00BF6
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 10:32:31 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.rogue-research.com (Postfix) with ESMTP id BD6DD3997043
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 13:32:30 -0400 (EDT)
X-Virus-Scanned: amavisd-new at rogue-research.com
Received: from mail.rogue-research.com ([127.0.0.1])
	by localhost (kingu.rogue-research.com [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id S97Mh+nLYIr0 for <yocto@yoctoproject.org>;
	Tue, 10 Jun 2014 13:32:22 -0400 (EDT)
Received: from mail-vc0-f182.google.com (mail-vc0-f182.google.com
	[209.85.220.182])
	by mail.rogue-research.com (Postfix) with ESMTPSA id 6EB61399702D
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 13:32:22 -0400 (EDT)
Received: by mail-vc0-f182.google.com with SMTP id il7so8272902vcb.13
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 10:32:21 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.58.186.207 with SMTP id fm15mr34632315vec.4.1402421541712;
	Tue, 10 Jun 2014 10:32:21 -0700 (PDT)
Received: by 10.58.46.129 with HTTP; Tue, 10 Jun 2014 10:32:21 -0700 (PDT)
In-Reply-To: <1948853.WUEUBQNsJX@peggleto-mobl5.ger.corp.intel.com>
References: <CACgAsMdmdZO6-jePAyHJVSFJg6ntXDzSr2xmx6OqHh5qvVcB-g@mail.gmail.com>
	<1948853.WUEUBQNsJX@peggleto-mobl5.ger.corp.intel.com>
Date: Tue, 10 Jun 2014 13:32:21 -0400
Message-ID: <CACgAsMeVmQe6iG0qD1KVatZYsvQCuO21Ymj=0oZCVVbyHFwVzQ@mail.gmail.com>
From: =?UTF-8?Q?Kevyn=2DAlexandre_Par=C3=A9?= <kapare@rogue-research.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [oe] How to add the same recipe twice?
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
X-List-Received-Date: Tue, 10 Jun 2014 17:32:34 -0000
Content-Type: text/plain; charset=UTF-8

Hi Paul,

>
> FYI, our psplash recipe has built-in handling for multiple splash images, so
> you don't need to add multiple recipes to use this. You just need a
> psplash_git.bbappend in your own layer which does something like this:
>

Notice after sending my email....

> FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> SPLASH_IMAGES = "file://splash-file-one.h;outsuffix=one \
>                           file://splash-file-two.h;outsuffix=two"
>
> This will automatically create psplash-<outsuffix> packages for each splash
> image entry (i.e. psplash-one and psplash-two in this case), and set up
> update-alternatives alternatives for each one.
>
> (I realise we don't have this documented anywhere, I've added a todo list item
> for me to document it.)

AAAA thank you very much for the detail explanation! I didn't
understand properly the outsuffix option and change/remove it without
success. You should simply add in the main recipe something like
that?:

# To have multiple psplash append with:
# FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
# SPLASH_IMAGES = "file://splash-file-one.h;outsuffix=one \
#                           file://splash-file-two.h;outsuffix=two"

Will try your solution

thx,

-KA

