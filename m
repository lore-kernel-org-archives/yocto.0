Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9192CE013A2
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 07:39:01 -0700 (PDT)
Received: by mail-vb0-f48.google.com with SMTP id w15so6479045vbf.35
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 07:39:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=pKgz9sgAJ5fjaCzaoMwH+798gG3N5oCC50d7Rgyvpnc=;
	b=bvgHB6U2i2fVfWUyx5HAWEFr9qteNgoSG6gKqO7sew/q5+QYKl7FW9f0lexPWiSRqT
	bgWcr4GpXb2Xsiq7mIiw/byyR3ATNQ6Rv9sRZ9oJCYy1fehuyvYG95b7kScLQ/xRP1xz
	M6LK8cwNvzbWK0u174/c4uOuSi598d5XFLHuSIjL3x7ffokA/NQS25UuMKDynpTBgdmn
	DCj9OZX0+AMtNSXeB3veVoFJFN9sj2Pg9KdyBsqjfFKmwEuhIF0VnFx6VYI89N6huo+c
	6h9bAV1iEiyZZq+dH+8gGsOC2g6jvHqpo3wuEzi92ASw1Y50EPdXDPLZC+0TuHSuifQK
	WU9A==
X-Received: by 10.58.224.102 with SMTP id rb6mr14265613vec.43.1374676741048;
	Wed, 24 Jul 2013 07:39:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.30.15 with HTTP; Wed, 24 Jul 2013 07:38:41 -0700 (PDT)
In-Reply-To: <51EFE508.8060004@mlbassoc.com>
References: <51EFDD09.3030909@mlbassoc.com>
	<CAJTo0LaHOJtt=RvofQEvuZ+K1fYL3u8acv5dUD3XNZvx+pH9wg@mail.gmail.com>
	<51EFE508.8060004@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 24 Jul 2013 15:38:41 +0100
Message-ID: <CAJTo0LbYYzeG0-kti7sj_cH7ji_b8xXJxYxSu6T=Snq++wJeUQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Gm-Message-State: ALoCoQlxt8yxVv6eXO/Yfr9Z1TmHoyGbbjQF4aq8yqokFI22a4hJqIVkjZBi0YwAViksl/chPCgo
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
X-List-Received-Date: Wed, 24 Jul 2013 14:39:04 -0000
Content-Type: text/plain; charset=UTF-8

On 24 July 2013 15:30, Gary Thomas <gary@mlbassoc.com> wrote:
>>> ERROR: QA Issue: non -dev/-dbg/-nativesdk package contains symlink .so:
>>> amanda path
>>>
>>> '/work/armv7a-vfp-neon-amltd-linux-gnueabi/amanda/3.3.3-r0/packages-split/amanda/usr/lib/amanda/libamar.so'
>>
>>
>> I'm curious, what does the symlink point to?  It's possible that we
>> can refine the check to reduce the number of false positives, because
>> this is a fairly common one that needs to be skipped.
>
>
> The .so symlink points to a fully qualified library, e.g.
> -rwxr-xr-x 1 gthomas gthomas 1383729 Jul 24 06:35 libamanda-3.3.3.so
> lrwxrwxrwx 1 gthomas gthomas      18 Jul 24 06:35 libamanda.so ->
> libamanda-3.3.3.so
>
> The problem seems to be that this is the unqualified .so name and not a
> version qualified name like 'libamanda.so.3'.  The package isn't building
> the version qualified names, just the fully unqualified one.
>
>
>>
>> You can skip this QA test by setting INSANE_SKIP.  In this case,
>> INSANE_SKIP_${PN} = "dev-so" (you can identify the tag to use by
>> looking through classes/insane.bbclass for the error message).

So that's not the pattern that the test was designed for (not that
it's actually implementing that design).  I'm sure Amanda developers
have a reason for this, but the presence of a .so symlink in a non-dev
package is enough to trip this test, so INSANE_SKIP is the best thing
to do.

Ross

