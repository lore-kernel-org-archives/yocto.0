Return-Path: <winotu.email@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC591E00CC6; Fri, 25 Aug 2017 07:55:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (winotu.email[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f193.google.com (mail-ua0-f193.google.com
	[209.85.217.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56F5CE00B1B
	for <yocto@yoctoproject.org>; Fri, 25 Aug 2017 07:55:31 -0700 (PDT)
Received: by mail-ua0-f193.google.com with SMTP id x18so15425uah.5
	for <yocto@yoctoproject.org>; Fri, 25 Aug 2017 07:55:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=nCzHODzqdBCApLtpiNcpbiqtI57USxwqsaOAgsZ1dws=;
	b=AAmp3tPxZWOL/u5LrOtgu48pmHu4ivJRD+pB5Vc6wyVH6xuBzIDj3gjPp3PN1knHqb
	UQ6MwYj4iPP1+jl7ojRBQCq+TRJI6K1aatzhKC/yw2yYSei5TBI4A1G72XRlnr79iLSx
	57aezi0eXXkX9CarRDw5HRvpcOK69EXDbQMjlsbqm38E2qelvGS28EF3H7JLNiopgEYW
	fZhj5GePf5/SKjraB+LKAlWJcbrwH97xRJHrB9nnGqDJfzHHHheJS1fsDV0NsUwIEd9q
	dVti8qnE5bqeTwalngbcaYqyg+XFS9jsJXkxhnzPUqvWWg2scJ73HRcZk67Qp62iebXq
	5pbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=nCzHODzqdBCApLtpiNcpbiqtI57USxwqsaOAgsZ1dws=;
	b=AXsdNBjDUYdUYTcgg9GIBl3ROhYjeLbs/+zw+231lODPRSAX1us12MUbwlq9MxkXrC
	Bl8EKPs8PSGf5UCHec8IxMG5JgozpPFcHAS3ZM7CCJf763ZS6t4USb2PAF7AIYHJTI+8
	V1b/FQ0hpZq5Te0Er1DgQEc/y2XvBlwhuUgtE1lc9G1HT0wovHd5guHlMoNPj5MwSsEx
	s0rBa3X22yMTWGLHYPW/GHW6ObgsCMRb9mrI2+lPybHy2KCMM4XIZK7s6MYOvErlICy5
	aCtKU/u3Z6KPXI6IZpHpH2curYymi1PmNEe/EvdCrbFr7dUDSqPOxm0jIwjD07AcaAAE
	NIIw==
X-Gm-Message-State: AHYfb5hdWX6nOmGJasZVmjjuGnQp6GDe6MbTeSkPBXifpszY8c9SZ6+3
	7/vlDTAI1rWdqN9ThUXbgpWCdVSJXA==
X-Received: by 10.159.53.33 with SMTP id o30mr6671926uao.43.1503672931303;
	Fri, 25 Aug 2017 07:55:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.26.168 with HTTP; Fri, 25 Aug 2017 07:55:30 -0700 (PDT)
In-Reply-To: <871snzdd5s.fsf@rkubodac-desk.ger.corp.intel.com>
References: <871snzdd5s.fsf@rkubodac-desk.ger.corp.intel.com>
From: "Chris Z." <winotu.email@gmail.com>
Date: Fri, 25 Aug 2017 16:55:30 +0200
Message-ID: <CAEjjReJnXbU4se4q3qq67L1VKaTTHRXW=1UrJWSkiTRSvY_W3w@mail.gmail.com>
To: Raphael Kubo da Costa <raphael.kubo.da.costa@intel.com>
Cc: yoctoproject <yocto@yoctoproject.org>
Subject: Re: Pyro's uninative and libstdc++ symbols
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
X-List-Received-Date: Fri, 25 Aug 2017 14:55:32 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

You could try to build your own uninative:

bitbake uninative-tarball

and use your own uninative:

update: poky/meta/conf/distro/include/yocto-uninative.inc

Or stop using uninative.
But I'm also curios why native built with newer gcc is not using glibc
from uninative (older glibc than gcc 7 uses)

Br,
Chris Z


On Fri, Aug 25, 2017 at 2:50 PM, Raphael Kubo da Costa
<raphael.kubo.da.costa@intel.com> wrote:
> I've recently updated my host system to Fedora 26, which has GCC 7.
>
> This seems to be causing some issues on Pyro, where I have a -native
> recipe that is built with my system's g++ and ends up generating a
> binary with the following symbol:
>
>     0000000000000000      DF *UND*  0000000000000000  GLIBCXX_3.4.23 std::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(std::string const&, unsigned long, std::allocator<char> const&)
>
> GLIBCXX_3.4.23 is not part of Pyro's uninative's libstdc++, so when that
> binary is invoked in another (non-native) recipe as part of do_configure
> it fails to run:
>
>     gn: /data/src/yocto/poky/build/tmp/sysroots-uninative/x86_64-linux/usr/lib/libstdc++.so.6: version `GLIBCXX_3.4.23' not found (required by gn)
>
> Is there anything I should be doing differently here?
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

