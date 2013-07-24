Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8627AE01363
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 07:30:34 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 4A964F811F5; Wed, 24 Jul 2013 08:30:34 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 01966F811E5;
	Wed, 24 Jul 2013 08:30:32 -0600 (MDT)
Message-ID: <51EFE508.8060004@mlbassoc.com>
Date: Wed, 24 Jul 2013 08:30:32 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <51EFDD09.3030909@mlbassoc.com>
	<CAJTo0LaHOJtt=RvofQEvuZ+K1fYL3u8acv5dUD3XNZvx+pH9wg@mail.gmail.com>
In-Reply-To: <CAJTo0LaHOJtt=RvofQEvuZ+K1fYL3u8acv5dUD3XNZvx+pH9wg@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Packaging questions
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
X-List-Received-Date: Wed, 24 Jul 2013 14:30:35 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-07-24 08:12, Burton, Ross wrote:
> On 24 July 2013 14:56, Gary Thomas <gary@mlbassoc.com> wrote:
>> I'm [still] trying to set up a package for Amanda.  I'd like
>> the end result to match how it's done on other systems, e.g.
>> my desktop Fedora box.  However, this layout is causing some
>> QA errors which I don't know how to fix, e.g.
>>
>> ERROR: QA Issue: non debug package contains .debug directory: amanda path
>> /work/armv7a-vfp-neon-amltd-linux-gnueabi/amanda/3.3.3-r0/packages-split/amanda/usr/lib/perl/5.14.2/auto/Amanda/MainLoop/.debug/libMainLoop.so
>
> This is resolved by fiddling with your FILES lines, the problem being
> that PN is packaging that entire tree when it should be split up.
> $PN-dbg collects files before $PN so you can add something like
> "$(libdir)/perl/*/auto/Amanda/*/.debug" to FILES_$PN-dbg and $PN will
> continue to take the rest.

Thanks, this worked a treat.

>
>> ERROR: QA Issue: non -dev/-dbg/-nativesdk package contains symlink .so:
>> amanda path
>> '/work/armv7a-vfp-neon-amltd-linux-gnueabi/amanda/3.3.3-r0/packages-split/amanda/usr/lib/amanda/libamar.so'
>
> I'm curious, what does the symlink point to?  It's possible that we
> can refine the check to reduce the number of false positives, because
> this is a fairly common one that needs to be skipped.

The .so symlink points to a fully qualified library, e.g.
-rwxr-xr-x 1 gthomas gthomas 1383729 Jul 24 06:35 libamanda-3.3.3.so
lrwxrwxrwx 1 gthomas gthomas      18 Jul 24 06:35 libamanda.so -> libamanda-3.3.3.so

The problem seems to be that this is the unqualified .so name and not a
version qualified name like 'libamanda.so.3'.  The package isn't building
the version qualified names, just the fully unqualified one.

>
> You can skip this QA test by setting INSANE_SKIP.  In this case,
> INSANE_SKIP_${PN} = "dev-so" (you can identify the tag to use by
> looking through classes/insane.bbclass for the error message).
>
> Ross
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

