Return-Path: <winotu.email@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA4D0E007AA; Tue, 23 May 2017 03:42:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (winotu.email[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.172 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.172 listed in list.dnswl.org]
Received: from mail-ua0-f172.google.com (mail-ua0-f172.google.com
	[209.85.217.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0E1AE00524
	for <yocto@yoctoproject.org>; Tue, 23 May 2017 03:42:01 -0700 (PDT)
Received: by mail-ua0-f172.google.com with SMTP id y4so69013552uay.2
	for <yocto@yoctoproject.org>; Tue, 23 May 2017 03:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=MICHbyKAnEsqWATmAG4whARFbwbTl3ju/T9TRBEGZyA=;
	b=aZOaLbg0vNz0XzH+bLLcms+HB0iSiJkf7TTKAU9JIPcxQwrJkNR3RDXyfepAaPU1/C
	3h5PrIdD5pFZx7w/NHiuiXxNW2gWKLyjoBwY5AmrgkBZXMA4sXptnPGWk9X3VluKvddW
	+ZfZLOSiV5ORwaYT50d5CaNK9RwP+YMZhhiBe8rG1ioiBAPhl+1mPKbVgEjNXSCtH8qG
	G8A89cbhes9Ew+Mzrbk7rxtWQyepR7uSfd1uOCGQ+FfueLWyzWwehnwC+o7RvP463kSK
	vU38rcX6tKpk8yb0gNlaXJcB0m77u/GSbWFBZAxNLGK0hxKR68ORqza64iTFvXEmtsO+
	dDXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=MICHbyKAnEsqWATmAG4whARFbwbTl3ju/T9TRBEGZyA=;
	b=KkxxOgF0XKpOpmJO12+vxbzSTEI20KOVoi9z1OnUG7a8O2xj+mVEB6IgrEnSWmeX3e
	qjP16GpmfY4ap3yqCS0xxefcG96GULy34uI7Cw10ULcRaPipKYbAKvYTYRKfCYqen7pV
	TlRoxs+0GPkqcSP2Om4VD9a24pEtcLLu/rUAzssnoprsjwZ+U0BvbQ5f3nfB9k0XaOje
	aWtXfl/kQx78SL9OJYOvwvAkf2nyeG/Y1wrQ8+BdeXL7R+BUVKXUXYQndLe3hkaydozf
	1q8zT4KGAW2xS9q1ITdkPQJap/09SuQxYIVNRgegqlOjBxdqPharRy1oVBJPmTHEgiRZ
	9Gew==
X-Gm-Message-State: AODbwcC927cYT5iqKZ3pltZAgEN7XdLnd9nKjiHanjRPVpFFbMlWYrMe
	bOUT+v1TjLneY0eEZ7Rq37T2ArwL3mdN
X-Received: by 10.176.4.80 with SMTP id 74mr4644097uav.115.1495536120379; Tue,
	23 May 2017 03:42:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.26.13 with HTTP; Tue, 23 May 2017 03:42:00 -0700 (PDT)
In-Reply-To: <df279cbb-6dae-ba57-927f-94fe139693f0@mlbassoc.com>
References: <31a2d863-b928-df06-8e86-78b939469614@mlbassoc.com>
	<1752127.E0fXlp9gfm@peggleto-mobl.ger.corp.intel.com>
	<df279cbb-6dae-ba57-927f-94fe139693f0@mlbassoc.com>
From: "Chris Z." <winotu.email@gmail.com>
Date: Tue, 23 May 2017 12:42:00 +0200
Message-ID: <CAEjjReLKg=yCjG83H3UvNy2dEhY-1GwOR+Kn7D6L+5RHpHGTeg@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	yoctoproject <yocto@yoctoproject.org>
Subject: Re: sstate-cache question
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
X-List-Received-Date: Tue, 23 May 2017 10:42:03 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

@Gary
I guess the sstate-cache info alone is not sufficient to use 'bitbake diffsigs'?
Usage:
  bitbake-diffsigs -t recipename taskname
  bitbake-diffsigs sigdatafile1 sigdatafile2
  bitbake-diffsigs sigdatafile1

Compares siginfo/sigdata files written out by BitBake

Options:
  -h, --help            show this help message and exit
  -t recipename taskname, --task=recipename taskname
                        find the signature data files for last two runs of the
                        specified task and compare them

If I remember correctly sigdata is stored also in tmp/stamps/  when
you will use bitbake -S

More on debugging:
https://wiki.yoctoproject.org/wiki/TipsAndTricks/Understanding_what_changed_(diffsigs_etc)

Br,
Chris Z

On Tue, May 23, 2017 at 7:27 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2017-05-22 22:35, Paul Eggleton wrote:
>>
>> Hi Gary,
>>
>> On Tuesday, 23 May 2017 2:53:45 AM NZST Gary Thomas wrote:
>>>
>>> I have a build where I've never manually removed anything from
>>> the sstate-cache and this same build has been used for hundreds
>>> of builds over the last 18 months.  I just tried to find out why
>>> gcc-cross-arm had to be rebuilt (it seems to happen almost every
>>> time I update my Poky/Yocto tree (master)).  Here's what I got:
>>>
>>> $ bitbake-diffsigs -t gcc-cross-arm compile
>>> Hash for dependent task gcc/gcc-cross_6.3.bb.do_configure changed from
>>
>> 208373dd9ae01101a26a9412eb50b110 to
>>>
>>> d65095d4b9aff89f6990bd17c0ab210b
>>> Unable to find matching sigdata for
>>> /local/poky-cutting-edge/meta/recipes-
>>
>> devtools/gcc/gcc-cross_6.3.bb.do_configure
>>>
>>> with hashes 208373dd9ae01101a26a9412eb50b110 or
>>
>> d65095d4b9aff89f6990bd17c0ab210b
>>>
>>>
>>> So if I didn't remove those files, where did they go?  Am I doing
>>> something wrong running this tool?  (running the same command for
>>> qemu-native seemed to work correctly)
>>
>>
>> Is this with master, pyro, morty or some other version?
>
>
> Poky master: 2568e18701fb20d7105eb6e4929f3aff4b9f9c06
>
>>
>> If you search for files with those hashes in their name do they show up?
>
>
> Only .siginfo files:
> $ find sstate-cache/ -name "*d65095d4b9aff89f6990bd17c0ab210b*"
> sstate-cache/universal/d6/sstate:gcc-cross-arm:x86_64-amltd-linux-gnueabi:6.3.0:r0:x86_64_arm:3:d65095d4b9aff89f6990bd17c0ab210b_configure.tgz.siginfo
> $ find sstate-cache -name "*208373dd9ae01101a26a9412eb50b110*"
> sstate-cache/universal/20/sstate:gcc-cross-arm:x86_64-amltd-linux-gnueabi:6.3.0:r0:x86_64_arm:3:208373dd9ae01101a26a9412eb50b110_configure.tgz.siginfo
>
> However, I do find some in tmp/stamps:
> $ ls tmp/stamps/x86_64-linux/gcc-cross-arm
> 6.3.0-r0.do_build.41aca0d85971087f4675d2f504642ce4
> 6.3.0-r0.do_compile.b0eae7e91833efd5e7eceaedbc59983e
> 6.3.0-r0.do_compile.sigdata.9a06aa40225be30babaceb7673cef0a6
> 6.3.0-r0.do_compile.sigdata.b0eae7e91833efd5e7eceaedbc59983e
> 6.3.0-r0.do_configure.d65095d4b9aff89f6990bd17c0ab210b
> 6.3.0-r0.do_configure.sigdata.208373dd9ae01101a26a9412eb50b110
> 6.3.0-r0.do_configure.sigdata.d65095d4b9aff89f6990bd17c0ab210b
> 6.3.0-r0.do_fetch.1dd3c87b3e509c20fa4ffe61d6dc3b41
> 6.3.0-r0.do_gcc_stash_builddir.063822f91220bb40cef0696eb604a568
> 6.3.0-r0.do_gcc_stash_builddir.sigdata.063822f91220bb40cef0696eb604a568
> 6.3.0-r0.do_gcc_stash_builddir.sigdata.28144d3c18c0a09f23f3b0c5e80f049d
> 6.3.0-r0.do_install.0f96c5448dc9360ca3a24d551ad3da89
> 6.3.0-r0.do_install.sigdata.0f96c5448dc9360ca3a24d551ad3da89
> 6.3.0-r0.do_install.sigdata.f2e4d12289c5039854081a832dc8bc0e
> 6.3.0-r0.do_populate_lic_setscene.d2c9226ddb0de5277e2347b69ef84664
> 6.3.0-r0.do_populate_sysroot.15afc3bb019a6c0c1285cbda46cb32b0
> 6.3.0-r0.do_populate_sysroot.sigdata.15afc3bb019a6c0c1285cbda46cb32b0
> 6.3.0-r0.do_populate_sysroot.sigdata.a0c5b715ae9217f02318beff6987d169
> 6.3.0-r0.do_prepare_recipe_sysroot.150112323551011e0e87f99f47ad79c4
> 6.3.0-r0.do_prepare_recipe_sysroot.sigdata.150112323551011e0e87f99f47ad79c4
> 6.3.0-r0.do_prepare_recipe_sysroot.sigdata.4a528becf11832cc3b8f6fa479e98210
>
> I guess the sstate-cache info alone is not sufficient to use 'bitbake
> diffsigs'?
> I do occasionally wipe tmp & downloads, so that may explain these errors.
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

