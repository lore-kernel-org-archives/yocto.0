Return-Path: <raj.khem@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B44BE013BF
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 12:49:40 -0700 (PDT)
Received: by bkcji17 with SMTP id ji17so3470438bkc.35
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 12:49:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=SCPJFuEERfyR8+LWwQ2+DJabaHImyprfmokKAXh39+E=;
	b=f08wC+aOfBFqz/pOq0Nra0x120uCDkrIjqcfnxE0o0KLRNys3ZzqgmKoG0wO8chNl2
	JYXd0X5gOahEOMWvZQwe3F4O+XJxCw5RtKdPVcuXKpfmGVMQOZPCCBftbBqjD2S/EhU3
	ZNMBiXRsEYKaTmBHDUoc1pIaNh+3tjDrOJU4K4UOes17WV7sU6LB7Rg/YeTu6SWOa9lM
	QMh44lCsGIowpZPcSs+voIdQkfDSjMcCbF7icMGAzAySeKf+AI0QbIK709l7HD5Pmc2B
	rs7DevMgGhyKt4YHmexRdB2fPI6buHwiRfGhT8SRHEnwWqdANZHrN1Lm4qVarzeZ06lE
	nhoA==
Received: by 10.152.131.66 with SMTP id ok2mr29293935lab.10.1333050579094;
	Thu, 29 Mar 2012 12:49:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.152.3.161 with HTTP; Thu, 29 Mar 2012 12:49:07 -0700 (PDT)
In-Reply-To: <2917058.nSOBk0kvaU@helios>
References: <4F68A6F6.8080900@linux.intel.com>
	<CAMKF1spVh7VR12eaUdbLQ5rCzT0ifziTWtFBgsLW7Or2+92XTw@mail.gmail.com>
	<4F7461AC.7050202@linux.intel.com> <2917058.nSOBk0kvaU@helios>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 29 Mar 2012 12:49:07 -0700
Message-ID: <CAMKF1sotGuDMJfb1xtxjVug6zL7Pr4MRwNpOVuEFMw-hdxQfRA@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: issue building iputils with uclibc.
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
X-List-Received-Date: Thu, 29 Mar 2012 19:49:40 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 29, 2012 at 12:05 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Thursday 29 March 2012 14:20:44 John Toomey wrote:
>> On 20/03/2012 16:56, Khem Raj wrote:
>> > go into the uclibc build tree and like kernel or busybox it will have
>> > a .config and grok that. If this is disabled then enable it in
>> > uClibc.distro file under uclibc recipes dir and rebuild uclibc.
>> > ideally these are distro knobs but for tests you can try it
>> > file ( uclibc uses kconfig )
>>
>> I am unable to find a .config file in the uclibc build tree, can you be
>> more specific about the path i might find it at?
>>
>> UCLIBC_HAS_RESOLVER_SUPPORT=3Dy doesnt seem to be present in the
>> uClibc.distro file, i added it and tried running the build again with no
>> success. Is there anything else I can try?
>
> OK, so I just gave this build a try. You can find the configuration actua=
lly
> used in the build in TMPDIR/work/i586-poky-linux-uclibc/uclibc-0.9.32-
> r4.3/git/.config =C2=A0(directory names may vary slightly depending on yo=
ur build
> configuration).
>
> With master, when I checked my version of that file,
> UCLIBC_HAS_RESOLVER_SUPPORT=3Dy is set, so apparently this feature is get=
ting
> enabled by default. However, when I did the same on edison (which uses uc=
libc
> 0.9.32 as opposed to 0.9.33) that setting is not present. Digging around =
I'm
> beginning to wonder if this option was perhaps added in uclibc 0.9.33, wh=
ich
> if true would explain why it is not present when building uclibc in ediso=
n;
> but does that mean the underlying functionality was added in that version=
 or
> just the option?

thats makes it clear. Its 0.9.33 feature. I was assuming thats what
you were using.

>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

