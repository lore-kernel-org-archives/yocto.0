Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.4327.1582199993283145754
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Feb 2020 03:59:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=qqKDI1BE;
 spf=softfail (domain: konsulko.com, ip: 140.211.169.56, mailfrom: paul.barker@konsulko.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF399E015FF; Thu, 20 Feb 2020 03:59:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com [209.85.210.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62C8CE0144C
	for <yocto@yoctoproject.org>; Thu, 20 Feb 2020 03:59:52 -0800 (PST)
Received: by mail-ot1-f68.google.com with SMTP id 66so3374197otd.9
        for <yocto@yoctoproject.org>; Thu, 20 Feb 2020 03:59:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cyCL2+PYxFpLodZFn3VOsKFjMBIwDVkUTRTgHbqgZP8=;
        b=qqKDI1BEMjmYQkJKjVl8aP4limYBZsYRM4BTzFSMVESizjv6Oe/14rL2RDXAx6hn9w
         eo/kaOsTh1mqXCfu+2/SZ4Qe/47i5yxdfNiFxDUJSycpjaTq4dZGLasltUutbUU0lOak
         DgLfdWowTrYIvKV6L1ppfBa1Y5SA8HuirWEWQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cyCL2+PYxFpLodZFn3VOsKFjMBIwDVkUTRTgHbqgZP8=;
        b=ZaTcDFVNdtfyT1/akuktLvpXNuEUD9G8KWRnQR/hyYsmQE04VoKCoSa5IoLq0j6gUv
         lwt4KktaO0pW2sYSDKqJSFu9zSeS4nC0ivT3NV4IENohnvKbHvkfnXTEnWFaJT9+cZVB
         ZDjYQnxffG4F8lvbEGFHp6h5RFdtE7SOmzX6EpfTCM9rx7Ox2EZjeazIL6mdAqJt0yKX
         5lkHFFKNUO06vNqdGkyrISIjK+iH/VGYYBxALJIyksBt/xrBfmbwkwKOYnpPIOLfvvHC
         ebpNjpPmxRo6bU6uqZbmwlEz0f4GsVa6lyiiAzpuKVi5lvazpingyjUzRGrKhRiTuA/X
         QCRQ==
X-Gm-Message-State: APjAAAXXnugo9f9o+GAy5qmNCCj+4tXJa1dWUYDE25pwjXLwL3lcx+q7
	jISjBXKQJIWxHA2bhN1MIWtGniLIwo2dV6cJz0c5nYfybw1JGw==
X-Google-Smtp-Source: APXvYqxQpagbp29KhBPgCaBQBEnobVSlsIgT9MVpyUIBVKRueh/XCXq7i44nimPdMDRPJZD5xOG8/Am4yOUhLFKv+34=
X-Received: by 2002:a9d:6a06:: with SMTP id g6mr21369247otn.305.1582199991701;
 Thu, 20 Feb 2020 03:59:51 -0800 (PST)
MIME-Version: 1.0
References: <CAM9ZRVvDHTvvKr1Tdc+C1ZdTv2DSX8JJ9bYhHc0c-wre4qg5LA@mail.gmail.com>
 <bfe6eb79ff352439c3ed5d53757421dce5e0b17d.camel@linuxfoundation.org>
In-Reply-To: <bfe6eb79ff352439c3ed5d53757421dce5e0b17d.camel@linuxfoundation.org>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Thu, 20 Feb 2020 11:59:40 +0000
Message-ID: <CAM9ZRVv2Xoq=GBjQOXT+VBunhYG3n_dCw7Bv6XECTdRhdvzg9w@mail.gmail.com>
Subject: Re: [yocto] Bitbake returning non-zero due to sstate errors
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, 20 Feb 2020 at 11:36, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Thu, 2020-02-20 at 11:26 +0000, Paul Barker wrote:
> > In my new CI setup I'm using an sstate mirror which seems to have
> > some
> > occasional download issues. This results in the setscene task
> > failing.
> > For example:
> >
> > ERROR: qt3d-5.13.2+gitAUTOINC+93361f1a59-r0
> > do_package_write_ipk_setscene: Fetcher failure: Unable to find file
> > file://fd/sstate:qt3d:armv7at2hf-neon-linux-
> > gnueabi:5.13.2+gitAUTOINC+93361f1a59:r0:armv7at2hf-
> > neon:3:fda6c3edff0205b07ff176cf16771247117fa310bc65a6a1df6befc4230e0a
> > 74_package_write_ipk.tgz;downloadfilename=fd/sstate:qt3d:armv7at2hf-
> > neon-linux-gnueabi:5.13.2+gitAUTOINC+93361f1a59:r0:armv7at2hf-
> > neon:3:fda6c3edff0205b07ff176cf16771247117fa310bc65a6a1df6befc4230e0a
> > 74_package_write_ipk.tgz
> > anywhere. The paths that were searched were:
> >     /builds/SanCloudLtd/sancloud-arago/build/sstate-cache
> >     /builds/SanCloudLtd/sancloud-arago/build/sstate-cache
> > ERROR: qt3d-5.13.2+gitAUTOINC+93361f1a59-r0
> > do_package_write_ipk_setscene: No suitable staging package found
> > ERROR: Logfile of failure stored in:
> > /builds/SanCloudLtd/sancloud-arago/build/tmp/work/armv7at2hf-neon-
> > linux-gnueabi/qt3d/5.13.2+gitAUTOINC+93361f1a59-
> > r0/temp/log.do_package_write_ipk_setscene.10524
> > NOTE: recipe qt3d-5.13.2+gitAUTOINC+93361f1a59-r0: task
> > do_package_write_ipk_setscene: Failed
> > WARNING: Setscene task
> > (/builds/SanCloudLtd/sancloud-arago/sources/meta-qt5/recipes-
> > qt/qt5/qt3d_git.bb:do_package_write_ipk_setscene)
> > failed with exit code '1' - real task will be run instead
> >
> > As indicated in the final warning message there the real tasks run
> > since no sstate artifact is available. These tasks succeed:
> >
> > NOTE: recipe qt3d-5.13.2+gitAUTOINC+93361f1a59-r0: task
> > do_package_write_ipk: Succeeded
> >
> > The result is a successful build of the desired images. However, the
> > build is marked as a failure due to those sstate errors:
> >
> > Summary: There were 11 ERROR messages shown, returning a non-zero
> > exit code.
> >
> > Is this the expected behaviour? The final images are built correctly.
> > I can't see any simple way to mask those setscene errors but I might
> > be missing something.
> >
> > The full log can be seen at
> > https://gitlab.com/SanCloudLtd/sancloud-arago/-/jobs/443901140/raw.
> > I'm on the zeus branch here, I'll try to re-test on master later if I
> > can.
>
> We've discussed this before and it can be argued either way.
>
> Personally, I worry about why artefacts "disappear" and this is why its
> an error, files should not be disappearing part way through a build.
>
> From a bitbake perspective, a task really did fail and task failures
> are errors. The fact it was able to recover is a bonus.
>
> Perhaps it should be a warning now we have levels of warnings that are
> meaningful. Previously we threw so many, this would have been one more
> lost amongst many. I know many people don't like the behaviour.

I'm now looking into this...

In sstate_checkhashes() we mark sstate as available if
fetcher.checkstatus() succeeds. Then at a later point
sstate_setscene() calls sstate_installpkg() calls pstaging_fetch()
calls fetcher.download() to actually get the sstate artifact. If the
artifact is removed from the mirror between these two accesses (due to
an sstate mirror clean up running in parallel to a build), or if there
is an intermittent download failure we could see checkstatus() succeed
then download() fail.

I don't think we should ignore all setscene errors but in the specific
case where it's the download step that fails I think that should be a
warning. Or it could be an error by default with a variable we can set
to turn it into a warning. Does that sound reasonable? If so I'll work
up a patch.

Thanks,
Paul
