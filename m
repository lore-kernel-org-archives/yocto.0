Return-Path: <raj.khem@gmail.com>
Received: from mail-pv0-f176.google.com (mail-pv0-f176.google.com
	[74.125.83.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id CD1E94C808B6
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2011 20:29:14 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pve37 with SMTP id 37so1179469pve.35
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2011 18:29:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=MDU23gGZVCB+crSlOHjgj6PwWmasKBgO1j0a6NycLUM=;
	b=h/fMBCWHlMaCcJW7L68SYWnTk5ahcXx3hOOQnYK5KtWRRRjNHIs/K1NJNThCLLvNMD
	4CtGQ6JbzgfiZvINesC9Cs9zJojwoBp3g3VlRIgTdm0+yMTmX0lSX2A4w3jTKbTygujC
	7a7IFvO66F/ppCm5o4Iu1PgHJUpTJhgRyZ75o=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	b=jwuUITqbxj1+SvtpuWdTHfJ3VFLQloHyVedJ+5kodL5/io743plOrYQ0BNoCYKroYR
	U/Y6n1PW3D5u1ejscXNg28/YLMGWnKBlU/gwhEDvYYwwDlsDM/4GMeHNU2ngMOHXGtrI
	ns5/NmrIkEeCdvitIpQnF7mr5YLngIAUMSowc=
Received: by 10.68.31.132 with SMTP id a4mr245836pbi.227.1308187754208; Wed,
	15 Jun 2011 18:29:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.68.55.195 with HTTP; Wed, 15 Jun 2011 18:28:44 -0700 (PDT)
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A52800155@shsmsx501.ccr.corp.intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A52800155@shsmsx501.ccr.corp.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 15 Jun 2011 18:28:44 -0700
Message-ID: <BANLkTik50B-LRcUB1U99HA0_1piHn0sD5w@mail.gmail.com>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: configure optimization feature update
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
X-List-Received-Date: Thu, 16 Jun 2011 01:29:15 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 15, 2011 at 5:57 PM, Xu, Dongxiao <dongxiao.xu@intel.com> wrote=
:
> Hi Richard,
>
> Recently I was doing the "configure optimization" feature and collecting =
data for it.
>
> The main logic of this feature is straight forward:
>
> 1. Use the diff file as autoreconf cache. (I use command: "diff -ruN SOUR=
CE-ORIG SOURCE", here "SOURCE-ORIG" is the source directory before running =
autoreconf, while "SOURCE" is the directory after running autoreconf).
> 2. Add SRC_URI checksum for all patches of the source code.
> 3. Tag each autoreconf cache file with ${PN} and the SRC_URI checksum of =
source code and all patches.
> 4. If the currently SRC_URI checksum matches the cached checksum, then we=
 can patch the cache instead of running "autoreconf" stage.
>

The autoconf'ing is sort of arbitrary at the moment. Depending on what
is staged the results may vary. So some way of creating a cache is
nice  since it can be used to verify if package
rebuild happens with same configure variables or not. Sometimes we
have seen some packages are build differently first time since many
packages are not staged.


> I did some testings for sato build, the result is not as good as we expec=
ted:
>
> On a server build machine (Genuine Intel(R) CPU @ 2.40GHz, 2 sockets with=
 6 core each and hyperthreading, thus 24 logical CPUs in all, 66G memory):
>
> w/o the optimization:
> real =C2=A0 =C2=A083m40.963s
> user =C2=A0 =C2=A0496m58.550s
> sys =C2=A0 =C2=A0 329m1.590s
>
> w/ the optimization:
> real =C2=A0 =C2=A079m1.062s
> user =C2=A0 =C2=A0460m58.600s
> sys =C2=A0 =C2=A0 347m42.120s
>
> It has about 5% performance gain.
>
> I also tested the patch on a desktop core-i7 machine (Intel(R) Core(TM) i=
7 CPU 870 @ 2.93GHz, 4 core 8 logical CPU, 4G memory):
>
> w/o the optimization:
> real =C2=A0 =C2=A0105m25.436s
> user =C2=A0 =C2=A0372m48.040s
> sys =C2=A0 =C2=A0 51m23.950s
>
> w/ the optimization:
> real =C2=A0 =C2=A0103m38.314s
> user =C2=A0 =C2=A0332m35.770s
> sys =C2=A0 =C2=A0 49m4.520s
>
> It only has about 2% performance gain.
>
> The result is not encouraging.
>
> There are also some other things we need to take into consideration for t=
his feature:
>
> 1. If add this feature, the first build time should be longer than curren=
t since it needs to build the autoreconf cache.
> 2. Maintainers needs to maintain the SRC_URI checksums not only for sourc=
e code, but also all its patches. For some recipes, it has more than 20 pat=
ches, which needs assignable maintenance effort.

Yeah thats definite pain.

> 3. How to distribute the caches will be a problem. The total size of such=
 cache is about 900M (before compression) and 200M (after compression). Sin=
ce the size is not small, distributing it with Poky source code doesn't mak=
e sense. On another aspect, we can use something like "sstate". But since w=
e already have caches of sstate, I think it is not necessary for us to enab=
le another similar cache mechanism with little improvement.
>

hmm this is a real problem and probably the perf killer. I wonder why
the sizes are so big.

> Therefore my opinion is we may give up this feature. What's your comments=
 and suggestions?
>
> Thanks,
> Dongxiao
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

