Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f43.google.com (mail-pz0-f43.google.com
	[209.85.210.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 512ACE00771
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2011 08:06:35 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk1 with SMTP id 1so1589363pzk.16
	for <yocto@yoctoproject.org>; Thu, 04 Aug 2011 08:06:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=from:to:subject:date:message-id:organization:user-agent:in-reply-to
	:references:mime-version:content-transfer-encoding:content-type;
	bh=Txb6TS2lEFwQozVIKsuitCfayhj9gilTw5Le9S4Q4+s=;
	b=cMECfynKEQ+UsWYU0wXGC+ZeImUlNzYt8nzgAE2yFYXUIzMOL39IVjTVFHXOWmpqxi
	XXSCtXTjwxiJSa1ubxm8r2HDFqbdy+6wDkLOEbzrq/KGjVshJYheYNxHzcQSG1ar26rL
	L2adFeDoggnzpLUnr6vMlJ7eNMk3oODBOyMjg=
Received: by 10.142.149.4 with SMTP id w4mr899435wfd.150.1312470403697;
	Thu, 04 Aug 2011 08:06:43 -0700 (PDT)
Received: from perseus.localnet (natint3.juniper.net [66.129.224.36])
	by mx.google.com with ESMTPS id a4sm1273670wfm.4.2011.08.04.08.06.42
	(version=SSLv3 cipher=OTHER); Thu, 04 Aug 2011 08:06:42 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 04 Aug 2011 08:06:37 -0700
Message-ID: <2016626.y3nmSzkdEa@perseus>
Organization: Sakrah
User-Agent: KMail/4.7.0  (Linux/2.6.38-10-generic; KDE/4.7.0; i686; ; )
In-Reply-To: <4E3AB3B3.7050103@mlbassoc.com>
References: <B27EBC40D200ED48A3F4CC2EBEABAE0B260B53A4B7@orsmsx501.amr.corp.intel.com>
	<1312469410.14274.0.camel@rex> <4E3AB3B3.7050103@mlbassoc.com>
MIME-Version: 1.0
Subject: Re: examples / docs on utilizing an external toolchain
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 04 Aug 2011 15:06:35 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, August 04, 2011 08:58:59 AM Gary Thomas wrote:
> On 2011-08-04 08:49, Richard Purdie wrote:
> > On Wed, 2011-08-03 at 23:59 -0500, Kumar Gala wrote:
> >> On Aug 3, 2011, at 10:12 AM, Richard Purdie wrote:
> >>> On Wed, 2011-08-03 at 09:50 -0500, Kumar Gala wrote:
> >>>> On Aug 3, 2011, at 9:22 AM, Richard Purdie wrote:
> >>>>> On Wed, 2011-08-03 at 09:04 -0500, Kumar Gala wrote:
> >>>>>> Bug submitted:
> >>>>>> 
> >>>>>> http://bugzilla.pokylinux.org/show_bug.cgi?id=1323
> >>>>>> 
> >>>>>> My question still stands even w/o it being in formal docs.
> >>>>> 
> >>>>> FWIW, POKYMODE was replaced by TCMODE as part of the OE-Core
> >>>>> changes.
> >>>>> I'd be interested to know where we've missed the references to
> >>>>> it and
> >>>>> get to get those references fixed.
> >>>> 
> >>>> Ok, but how does one use TCMODE?  :)
> >>>> 
> >>>> is there an example around anywhere?
> >>> 
> >>> I'll explain on the condition that someone actually documents this
> >>> ;-).
> >>> 
> >>> TCMODE determines which of the files in
> >>> meta/conf/distro/include/tcmode-* is used. It defaults to "default"
> >>> and
> >>> our default toolchain definition is in tcmode-default.inc.
> >>> 
> >>> There is another example there which is "external-csl2008q3". As you
> >>> can see from the tcmode-external-csl2008q3 file, it sets up the
> >>> system to use an external toolchain instead.
> >>> 
> >>> So you can define one of these files in your layer and then the
> >>> system
> >>> can select alternative toolchain configurations.
> >>> 
> >>> Does that help? :)
> >>> 
> >>> There is a similar TCLIBC variable which controls which libc is used
> >>> (eglibc or uclibc).
> >> 
> >> Yes that helps.  So it looks as if today there is not a means to point
> >> to SDK prebuilt toolchain via this means.
> > 
> > We have supported this in the past but it got messy and I'd really
> > prefer people to use sstate for this.
> 
> That would be great, if only it worked for this purpose.  Sadly, I've not
> had much luck with sharing toolchains like this.
> 
> Here's my problem - I have a number of different target platforms (MACHINE),
> all of which are really the same ARM SoC (OMAP/3530==armv7a).  When I try
> to share the sstate between them, the toolchain always rebuilds from
> scratch. 

can you post bitbake -e of say gcc-cross gcc-runtime and eglibc
for both machines ? We somehow need to figure what changes the signatures

> A lot of other packages do seem to share state properly, e.g.
> busybox built for these platforms uses sstate well, but not so with
> toolchains.
> 
> Is there any way for this to work?  I'd love to be able to hand my customers
> a set of sstate files for the things they don't really need to rebuild and
> the toolchains are a giant part of it.  If this should work and the current
> failures a bug, I'll report it as such.
> 
> Thanks
-- 
Khem Raj

