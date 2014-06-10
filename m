Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65FC7E00BAE; Tue, 10 Jun 2014 07:44:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.177 listed in list.dnswl.org]
Received: from mail-qc0-f177.google.com (mail-qc0-f177.google.com
	[209.85.216.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29C00E00B78
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 07:44:28 -0700 (PDT)
Received: by mail-qc0-f177.google.com with SMTP id i17so2257310qcy.22
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 07:44:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=8qgJtt3ODT+6d+y9j5ulDeGhQcYU/b78EM953GuWQCc=;
	b=VHXNPDoXjEEt6yJd0+YkayuHyp+peFEypVLSPsK29CigR+sGfD4k4ZC+8F8oQxmc2K
	Wp+9ZVz6zA6yn9LlyDMae4KkgPtK6X5RisTMBSKZHGvAba6+aCka9YGelu7djMeOiPhW
	dJ4JlIJOpLGaEqgj6od5DaJcjYtxPiurzXvXmz+HIu7WhivJRag+trXtkFBN3OlzdJo9
	D7UWnfbUAxc6vl0ZSV1y2eGcARlRCpRFmSVdvXHsO97zN2az0fqrZ9f2gSwHTk7MJx6C
	IziiCWAkAzn4YCc2UTji7sLTZMVSKw/atn3WI+rH2mY32h3NtLn84rFIXcE0KG9Nckk+
	TKiQ==
X-Gm-Message-State: ALoCoQlGZgInaF0toY4npmSxFG4e7xZ6jOV6opdpID9IDA+AYLTjjgyEv4rFKrxjZlR8A5e6sN8t
X-Received: by 10.140.48.161 with SMTP id o30mr40599611qga.68.1402411468158;
	Tue, 10 Jun 2014 07:44:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Tue, 10 Jun 2014 07:44:08 -0700 (PDT)
In-Reply-To: <3311327.j4RKns8jMV@peggleto-mobl5.ger.corp.intel.com>
References: <CAF_dkJCPkO1vRb9d8S=C-rP=TS+GBphJGGt_srmbA4L5kRokMA@mail.gmail.com>
	<3311327.j4RKns8jMV@peggleto-mobl5.ger.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 10 Jun 2014 15:44:08 +0100
Message-ID: <CAJTo0Lb4_Th8+_MPCkOt_z4_4-2sby5uqqCZXAEOvZ6skCtqsA@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: QA Issue: non -dev/-dbg/-nativesdk package contains symlink .so
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
X-List-Received-Date: Tue, 10 Jun 2014 14:44:33 -0000
Content-Type: text/plain; charset=UTF-8

On 10 June 2014 15:30, Paul Eggleton <paul.eggleton@linux.intel.com> wrote:
> Hi Patrick,
>
> On Tuesday 10 June 2014 10:23:04 Patrick Doyle wrote:
>> I started getting the warning mentioned above when I updated to a
>> newer release of an open source package (Aravis).  I asked the google
>> how I should address that issue, and it was no help, so now I'll ask
>> the list :-)
>>
>> Any suggestions as to what I should do about this?  The (autotools
>> generated) Makefiles do, in fact, generate symlinks.  Do I care?
>
> FYI there's a new section in the work-in-progress manual for 1.7 which
> documents QA warnings including this one:

One situation that happens disappointingly often and causes problems
is when people build runtime loadable modules but don't use the right
libtool flags.  These look like libraries and have a .so extension,
but without the right flags they'll be installed with versions and .so
symlinks, all of which are pointless and the .so symlinks are required
in the main package.

If this is the situation you can either package the symlinks in the
right place and silence the warning with INSANE_SKIP, or fix the build
system (http://www.gnu.org/software/libtool/manual/html_node/Building-modules.html
should help).

Ross

