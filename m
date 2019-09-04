Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5D6FE00DFB; Wed,  4 Sep 2019 05:49:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
	[209.85.128.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78ACAE00DF3
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2019 05:49:09 -0700 (PDT)
Received: by mail-wm1-f54.google.com with SMTP id n10so3605749wmj.0
	for <yocto@yoctoproject.org>; Wed, 04 Sep 2019 05:49:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=3LzI4SccUbm9ngobL3tRxSukwWIkwqKdLP4srvrrwA4=;
	b=cvvGXai3Z3IYdYi2uL9foscZYp5uV+GhWELolCmov2q//8MzOUpMt9uaX8/eNbvInh
	bcvv+vfGboDQqvoxTK16Ivg85ey7SbArtvL61ZQeyZy9H7wMw1uka4LSIUI0OWjysNtw
	vEPG6HacZyHdHWeCgl9k6p4pjhyEsjS6XEl2/sS1WfBjGyqqSiRSnxWcXoAT/QerikYF
	Z8BK9PxzUgQy80OGpOlgf3gDGC2fd5KOIBdHZj9JuEng5QtohpfF1V8GsMiKDH6Koilw
	YR4X6++X1K/PErMemLojwr75VbRSqc6R8b/00kGP0Og+lKasbaqciUJcSnypAg/rc9ZM
	b69A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=3LzI4SccUbm9ngobL3tRxSukwWIkwqKdLP4srvrrwA4=;
	b=L3ga3M7b2sA3uukobqrLZEJ/Jo2ANz22IoLLxVE94YXUnBVVwvzVnG3fFtGLn6xLth
	HSfIK0aPn0Fed4G5rc6wz44A/KrUs41x6/R6geIjF101shcAbUaN3fstG7nMH3irIJiW
	/0NbGT8OJ9jwJc63y+YUdgJBYdrUSEOzJ7BD6HSpu9F36QW/gkst5sI9Xw3e6SawGVwA
	DH9DezIAXvdmQDuqWzTbOmz7G8ORsipxyexszXkAllZj2ykBK5ZNCnhfKsgMrANHvVTW
	8UTetKxQv7bVXLyC391gQf7UjmUawzNhx8tUcSFFTm0qLXVXcjTNGiEgS+ZnTntYm7G8
	+JLg==
X-Gm-Message-State: APjAAAVGC3VIvOCzsra0znKp20tJdcAx7HmQi2s7Vx4lKBrgp8twKLCT
	NC0oGOGKBBTrbrGUcmoDLN31h76uNgrCK/mw2BA=
X-Google-Smtp-Source: APXvYqxcPUk4NVaFJmNmaCdQHnzIoX9PskACnU4a1ntDlg9wIy18b1vsrgP9wbqdGSaD5azqukDax0btziQRNtGlTuI=
X-Received: by 2002:a05:600c:25a:: with SMTP id
	26mr3896463wmj.60.1567601348309; 
	Wed, 04 Sep 2019 05:49:08 -0700 (PDT)
MIME-Version: 1.0
References: <FccdzQfHvG4ZvcaMVpyN8tzbQBVkjLqPwkEVc0rvnUUOU4LL_9R5rzs6Ap_SXPo8N4orBveg5fX-ploC3XwWtvadKbUVOKMnTY6xshfOEos=@protonmail.ch>
In-Reply-To: <FccdzQfHvG4ZvcaMVpyN8tzbQBVkjLqPwkEVc0rvnUUOU4LL_9R5rzs6Ap_SXPo8N4orBveg5fX-ploC3XwWtvadKbUVOKMnTY6xshfOEos=@protonmail.ch>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 4 Sep 2019 08:48:57 -0400
Message-ID: <CADkTA4Pjm1P3MhJh5iogYGoo8tTm_YH8qSHo_oN6+qAuaeAoLw@mail.gmail.com>
To: vygu <vygu@protonmail.ch>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: perf.bb on poky master branch
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
X-List-Received-Date: Wed, 04 Sep 2019 12:49:11 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Sep 4, 2019 at 4:53 AM vygu <vygu@protonmail.ch> wrote:
>
> Hello,
>
> Just to signal there are several mistakes with the recipe "perf.bb" from poky on master (currently: e2bde009b325b40641407ecf50f54ed8c41726d6)
>
> - If "Python 3 is not yet supported" by "perf" sources, it causes an issue during the do_compile task

In master the decision was that If you still have a kernel that
doesn't support python3, you'll need to create your own python2 based
perf recipe. Or create a patch that makes the version of python
configurable (I'm doing something for 4.19 at the moment). But in
master, we need to support the release for a period that is longer
than the python2 EOL, so the python2 dependencies need to go.

> - The last "install" in the do_configure_prepend task about "tools/include/linux/bits.h" does not work with a linux kernel 4.5 to 4.18 because this file does not exist

Again, those are older kernels that we support in master. Which are
the only ones we can test. So the copying of that file was tested
against the versions I could see/support. We can definitely protect
those copies with conditionals, but someone that is actively using a
kernel of that vintage, would be better to send the patches.

> [- The usage of _prepend or _append in this bb file does not help to create a bbappend]

We don't have a lot of choices for this. The perf recipe is unique in
that it used to work directly in the kernel source and it has to
support some undefined set of kernels (hence it can't patch the
source). We could move some of that work to new tasks and have them
run before configure, etc, there just hasn't been a need until now.

As usual, patches are welcome (and/or bugzilla entries), since I'm not
currently the issues it isn't as easy to spin patches.

Cheers,

Bruce

>
>
> Vygu
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

