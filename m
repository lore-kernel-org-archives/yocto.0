Return-Path: <maillinglists18@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56197E00C72; Thu, 22 Nov 2018 23:50:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (maillinglists18[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.41 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
	[209.85.167.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4333E00C28
	for <yocto@yoctoproject.org>; Thu, 22 Nov 2018 23:49:58 -0800 (PST)
Received: by mail-lf1-f41.google.com with SMTP id p17so8067489lfh.4
	for <yocto@yoctoproject.org>; Thu, 22 Nov 2018 23:49:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=SIHT5QbNS1ZjhnpcUtXTFE62Pj/UMa1XLVS+A+vPShs=;
	b=fqKBz3dig7Zgz795tHVu62MWygEsx3F/3SMGnYfS4P+sDd+r3qNaF6j48ldRJCoSGY
	z4n1qEsYbNQkOyd2Y0Ce7cBmLHuXsoq/ly7k/+fKjawHijMj7n1r6CzsiZvfLzYTwyHU
	6mZMtoPchcN6pOny6VEKohDJHKx1zBEu5Qvxlm8+MwMFhjXOS7L0iIRVCGZBMqRMYZgx
	PILb++2iv7e0ffW9DqTZT/UPcO4SBRuRw619PDVrlqYvnkDG6xPIVg52J8Do1ZfkznXG
	1Bqfc2SSF/l8Y8HAn+gG/u+NxM+jf9ikH7hPMZICyjClmfKZ/Z1hisDA4z44atxoJ2wU
	IHrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=SIHT5QbNS1ZjhnpcUtXTFE62Pj/UMa1XLVS+A+vPShs=;
	b=VkMbxWjEb4uIgIX7/vPUPnxOD6ug7rkgUCX6Un4JPhTOe6hK19WYsEZ65KlYh4IVji
	9P+BpzrG3OQt362m4496YsDgAptDuXK/LWjPU6kP4PgA2tA7oxOTnsZQA1NuYKgMAAlp
	sta9wSQ6aRoiXJSyAZXp6EKXx5z7z0EED1UD/PhwzfJyRRAGpv/bl/bVXAyZBs8qYTD1
	soepo7aYagdTfj9X4iPbrQdZBFCZI90LehxE7VB9FQOk0aaoVaXPKR/vTiQMsGN7/sBL
	aXtmpvwv8BigdJ+qn4dI3Iep/DzRYWmjPvpfH/MasCjCExjxRDGM8e3cUbftyIa9FESL
	KQOw==
X-Gm-Message-State: AGRZ1gJKncWuPCPC3W9repC416L439aELa8Ph5AEJK7mtNJkmHAkv7A0
	MZzN13UlYqQbrQVnOoBZCSK0gcKJTXRSRUnOz3U=
X-Google-Smtp-Source: AJdET5e6mWYXaOt0a3LcdcVLYMwjxEB4SVDisZL0O0DdfXiqAT6PD0ylj+wFcceGa/yjC6VDyymyO0Nqoy6YoRcQmkg=
X-Received: by 2002:a19:6806:: with SMTP id d6mr8181449lfc.48.1542959397357;
	Thu, 22 Nov 2018 23:49:57 -0800 (PST)
MIME-Version: 1.0
References: <CAAmVmrpp8-JULPYsGhz6xVpm7SQ2sUWXDxo5+oLjjvrhSMpQJQ@mail.gmail.com>
	<CAJTo0LYL8sypWbxXnoQCnmM7UvEsSnr09nh1GHjQpez09fNf_g@mail.gmail.com>
In-Reply-To: <CAJTo0LYL8sypWbxXnoQCnmM7UvEsSnr09nh1GHjQpez09fNf_g@mail.gmail.com>
From: Teemu K <maillinglists18@gmail.com>
Date: Fri, 23 Nov 2018 09:49:42 +0200
Message-ID: <CAAmVmrpRc+3v3hQqyQ3rcCd0hLuOEDvJS3FKw-R+b25CfNSuqQ@mail.gmail.com>
To: ross.burton@intel.com
Cc: yocto@yoctoproject.org
Subject: Re: Forcing GCC version for native compilation
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
X-List-Received-Date: Fri, 23 Nov 2018 07:50:00 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Nov 22, 2018 at 12:32 PM Burton, Ross <ross.burton@intel.com> wrote:
>
> On Thu, 22 Nov 2018 at 07:33, Teemu K <maillinglists18@gmail.com> wrote:
> > I have project made for Yocto 1.7, but I'd like to compile it on newer
> > Linux distribution that default GCC version is 5.x. GCC version itself
> > causes some problems, because some things have changed.
> >
> > There is also GCC 4.8 available, but it's not called 'gcc', but 'gcc-4.8'.
> >
> > The question is that is there way to force yocto use 'gcc-4.8' instead
> > of 'gcc'? I did some searching and couldn't find any options how to do
> > it. I tried to making link to ~/bin/gcc pointing gcc-4.8 and having
> > that first in PATH, but that didn't quite work. I'm guessing path got
> > re-set at some point.
> >
> > And before someone says. Updating Yocto to solve problem is not
> > solution. System is being updated, but current system still needs to
> > be able to compile.
>
> The modern solution is to set BUILD_CC and so on, see bitbake.conf.
>
> Note that in such an old release this might not work as well as you'd
> hope because I don't think it was fully tested.  In which case your
> options in preferred order:
> 1) Some distributions let you change what the default compiler, for
> example /usr/bin/gcc might be a symbolic link you can just change.
> 2) PATH fiddling as you did.  You'll most likely need to replace more
> than just gcc, for example cpp.
> 3) Just mv /usr/bin/gcc to /usr/bin/gcc-5 (and cpp, and anything
> else), and symlink gcc -> gcc-4.8
>
> Ross
1) There is BUILD_CC also in this version of Yocto. Doesn't seem to do
anything. I modified poky/meta/conf/bitbake.conf for testing purposes
to have BUILD_CC pointing those 4.8 versions yet the sources are
compiled with 'gcc' not 'gcc-4.8' so either something else overrides
those settings and/or source packages ignore that setting.

2) I also tried making links go gcc/g++/cpp and adding them to PATH
first. This seemed to work, bit better, but now compilation failed to
this:
 /usr/bin/ld: skipping incompatible
/usr/lib/gcc/x86_64-linux-gnu/4.8/libgcc.a when searching for -lgcc

Which is interesting since I can use the gcc-4.8 just fine manually
and it creates working binary.

3) /usr/bin/gcc is actually link to gcc-5, but I don't want to change
that because then it would be system wide change and I want to avoid
that.

I'll dig bit deeper why the second option didn't work. Any other
suggestions are welcome as well.

-Teemu

