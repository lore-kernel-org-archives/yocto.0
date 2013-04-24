Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15BCFE01515
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2013 05:53:37 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r3OCrXOB029155
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 24 Apr 2013 05:53:33 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Wed, 24 Apr 2013 05:53:33 -0700
Message-ID: <5177D5CB.8060706@windriver.com>
Date: Wed, 24 Apr 2013 08:53:31 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130404 Thunderbird/17.0.5
MIME-Version: 1.0
To: Diego Santa Cruz <Diego.SantaCruz@spinetix.com>
References: <364D31930BDB974AB40E22C5C2E584ED011E6155@asterix.SPINETIX.local>
In-Reply-To: <364D31930BDB974AB40E22C5C2E584ED011E6155@asterix.SPINETIX.local>
Cc: yocto@yoctoproject.org
Subject: Re: About running old kernels with Yoctoo 1.2 or 1.3
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
X-List-Received-Date: Wed, 24 Apr 2013 12:53:37 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-04-24 06:46 AM, Diego Santa Cruz wrote:
> Hi there,
>
> We are starting the development of a product based on TI DM814x SoC and
> considering using Yocto to base our development on.
>
> Unfortunately, TI does has only included support for this SoC on a derivative
> of the 2.6.37 kernel and has not pushed the SoC specifics upstream to
> mainline, so we are stuck to use that kernel as we cannot engage in porting
> all the support to a newer kernel at this time.
>
> I am new to Yocto, but as far as I got from the documentation versions 1.2
> and 1.3 use a 3.4 kernel as the supported kernel. Would Yocto work with a
> 2.6.37 kernel or are new features that have been introduced in newer kernel
> version required to run Yocto 1.2 or 1.3?

Each Yocto release uses a sliding set of kernel's that have had at least
some level of testing with the associated userspace of the release.

  1.4 is: 3.2, 3.4 and 3.8
  1.3 was: 3.4, 3.2 and 3.0
  1.2 was: 3.2, 3.0 and 2.6.37

But obviously, the linux kernel has a very stable userspace ABI, so there
shouldn't be any big compatibility issues with other kernel versions.
It's just that we don't know for sure.

It is true that each of these releases with have a linux-libc-headers
that is newer than the 2.6.x kernel you are talking about, which could
expose syscalls or other interfaces to userspace that aren't supported
in your kernel, but this typically degrades gracefully and the issue
detected when you try your applications.

Cheers,

Bruce



>
> Sincerely,
>
> Diego
>
> --
> Diego Santa Cruz, PhD
> Technology Architect
> _________________________________
> SpinetiX S.A.
> Rue des Terreaux 17
> 1003, Lausanne, Switzerland
> T +41 21 341 15 50
> F +41 21 311 19 56
> diego.santacruz@spinetix.com
> http://www.spinetix.com
> http://www.youtube.com/SpinetiXTeam
> _________________________________
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


