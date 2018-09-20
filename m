Return-Path: <andrea.adami@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2523E00720; Thu, 20 Sep 2018 16:04:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (andrea.adami[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
	[209.85.215.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48761E00474
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2018 16:04:54 -0700 (PDT)
Received: by mail-pg1-f196.google.com with SMTP id 205-v6so4170111pgd.2
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2018 16:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=/mBqBnYvyNgpqls43N7EgRPpkEMSpw1v8nZAQm1PGXU=;
	b=X5O96yVrmKd7PYkhW0yzQY1TNsQqfV3odY4+8rRoTld2ptsvOltF95s7C+d43eJ1dk
	yW/hMN33B9kcnCGz8MIRWptZq2MbMZ5TK9AjNsseWXIxin7hr4vanzkHfvvEPw8aQDv7
	rpGoQflbiXVzfPucbu3TM4LlfrNsQ21Sp8Vh/Wts1Jrf5SCgMpKphm+Q8+BcfZGQ8Kpu
	9AzTgHM0CJTKglzyYJ4xXEZJ4p7oqAStc8GRktkXAwEUKeTYx713sQiXzwmXPVXptXf/
	pEVQc10VtWjw2OwTrDG2IQUorO7P0LZpM3KMIWrH6f/ZrA1tyrovwla/lUHhCigrch1o
	L8Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=/mBqBnYvyNgpqls43N7EgRPpkEMSpw1v8nZAQm1PGXU=;
	b=e1KsnO+Fy4pYhL6oVXrWbcTwrXRVzuzUSF5lzLMk+YSbOj3epRm+PfGxSozANmdvmC
	Wa/4dDLTxsus/VnQD6k6Q7fnd94pfgqnpcJopIqaatcWvXVXWyozduuZrk3j23kz5n9w
	WTCEXwUKdJrRc2KWkqHc4h6AbQaU5wm2qSqGgwVTzREdJVP3AoAR7ECDAbmtypHQX840
	ADZ4FKIOXnf+6x36wryp0FvUUGlCsvUvcQ7sYEE9wR4cXZRM6eAeldz/6uUj4N0b19w3
	Dv9yK75hS76a0rXEot9B69ivYo9qGr3MPkAPXcag3OgqO08oQTqK1l/m3BEZMBTU42sw
	a16g==
X-Gm-Message-State: APzg51AIgjTL/w+m337Z1ivRSAGSMSZulyhg3QvRxo9bcAxNqg1JUYKT
	k/7/IG0PDsD3j5nl3IsydbKiU0XhgP5nYfRXACeNPXfC
X-Google-Smtp-Source: ANB0VdaGFzvEC/rQI6zBkT4PVYF0R5MBUUBnvobwSt+3fRJPYUyOsOxf/sX8vpG767JxyDctbk3BAH9Kz1PtCMXJiWY=
X-Received: by 2002:a62:6711:: with SMTP id
	b17-v6mr43621006pfc.243.1537484693622; 
	Thu, 20 Sep 2018 16:04:53 -0700 (PDT)
MIME-Version: 1.0
References: <f9f3b3b3-237b-55c2-531b-fa03a8e62f73@berginkonsult.se>
	<d75c6307-7071-bbbc-5ace-4e1db0f15cea@windriver.com>
	<c9071e74-5a04-408e-6a5b-87490fc9b167@berginkonsult.se>
	<CAJTo0LbjCN31UUNUP9WX_NxMhoAr0xCt45WrQaWDvqovDeNhYw@mail.gmail.com>
	<570c7242-e0a8-a65c-aa8f-93b4c331da08@berginkonsult.se>
In-Reply-To: <570c7242-e0a8-a65c-aa8f-93b4c331da08@berginkonsult.se>
From: Andrea Adami <andrea.adami@gmail.com>
Date: Fri, 21 Sep 2018 01:04:41 +0200
Message-ID: <CAAQYJAvccEtSj1VpXJ-KdaB8Q=s+rQ2SQ8oRn2Bo2ojo5+U3xg@mail.gmail.com>
To: peter@berginkonsult.se
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: liblzma: memory allocation failed
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
X-List-Received-Date: Thu, 20 Sep 2018 23:04:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 20, 2018 at 1:03 PM Peter Bergin <peter@berginkonsult.se> wrote=
:
>
> On 2018-09-17 10:27, Burton, Ross wrote:
>
> On Mon, 17 Sep 2018 at 08:13, Peter Bergin <peter@berginkonsult.se> wrote=
:
>
> I'm pretty sure I have narrowed down the root cause to the restriction
> of virtual memory and that liblzma base its memory calculations on
> physical RAM.
>
> To prove this I added a printout in rpm-native/rpmio/rpmio.c and the
> function lzopen_internal.
>
>          uint64_t memory_usage =3D lzma_stream_encoder_mt_memusage(&mt_op=
tions);
>         rpmlog(RPMLOG_NOTICE, "DBG: memory_usage %lu\n", memory_usage);
>
>
> The value of memory_usage is the same regardless of which 'ulimit -v'
> value I set. On the host with 256GB of physical RAM and 32GB of virtual
> memory, memory_usage is ~5.1GB. On another host with 16GB of physical
> RAM I get memory_usage of ~660MB.
>
> I guess you have not seen this kind of failure if you not have
> restricted virutal memory on your host. If you want to try to reproduce
> this set 'ulimit -v 8388608' (8GB) in your shell and then 'bitbake
> glibc-locale -c package_write_rpm -f'.
>
> Wouldn't a solution be to change lzma to look at free memory, not
> total physical memory?
>
> Ross
>
> I have been in contact with the maintainer of liblzma. There is currently=
 no way to restrict the memory usage in liblzma during multi threaded compr=
ession. He recommended to adjust the number of threads used during compress=
ion. This kind of check is done for 32-bits but not when running 64-bits (i=
n rpmio/rpmio.c lzopen_internal). To rewrite liblzma is another option but =
I took an easier way out.
>
> I have come up with a patch (https://patchwork.openembedded.org/patch/155=
017/) that solves my problem and do a restriction of memory usage when the =
'ulimit -v' is set. The calculation is based on the assumption that lzopen_=
internal is run in parallel with as many instances as cpu threads as '#prag=
ma omp parallel' is used in build/pack.c.
>
> When running test on my machine with 4 cores 16GB of physical RAM and 'ul=
imit -v 2097152' (2GB). It works good and the log shows:
>
> XZ: virtual memory restricted to 2147483648 and per CPU thread 536870912
> XZ: Adjusted the number of threads from 4 to 3 to not exceed the memory u=
sage limit of 2147483648 bytes
>
> Didn't get a clear answer if this is something Yocto/OE should support bu=
t I hope my patch solves the issue and it will not affect the normal enviro=
nments where 'ulimit -v' is not set.
>
> /Peter
> --

Peter,
first of all sorry for butting-in again. My bad I misunderstood the point,

Looking properly at it, I see the sources do restrict only #if __WORDSIZE =
=3D=3D 32.

Again, there is the other way to reduce total memory footprint just
using lower preset in mt_options.
As far as I see default is  #define LZMA_PRESET_DEFAULT     UINT32_C(6)
so you could tr to modify   mt_options.preset to your needs.
I think more threads is normally  better.

Cheers
Andrea

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

