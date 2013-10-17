Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17179E016C4
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 05:50:31 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r9HCoQYi004902
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 17 Oct 2013 05:50:26 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Thu, 17 Oct 2013 05:50:25 -0700
Message-ID: <525FDD08.90400@windriver.com>
Date: Thu, 17 Oct 2013 08:50:16 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: Diego Sueiro <diego.sueiro@gmail.com>, Bruce Ashfield
	<bruce.ashfield@gmail.com>
References: <CAMCfZKFBvSiRSMk5wrEpSEiNNiZeHJw18fbHgHzepo__U=UWNA@mail.gmail.com>	<CA+gsK-o6n24Aqp2dtpOwnmrCBjWE=HDSJvfqyYy2pvJYrHqXmQ@mail.gmail.com>	<CAAQYJAu+wU0ODvVoTrRBFhVOUVh+CdMg3mimfgGkj-pwJh3A1g@mail.gmail.com>	<CAMCfZKF_Rp=uds8tnDPSD9k3GO5dEiHSx9WfYjZ0yPkmh_9YPg@mail.gmail.com>	<CAMCfZKFh8iJH4655mzFveFYfz8ebLXkGftSa-MR5mEcMEFV8Vw@mail.gmail.com>	<CADkTA4MgxmiOofDLynbOLR=hV-KQ1ic+Eagjm0yetYOtB6FJzw@mail.gmail.com>
	<CAMCfZKF3aHG4wFMRx2XcdroJJ6ga5v6KHF5DbBTWV7jXOGNX-g@mail.gmail.com>
In-Reply-To: <CAMCfZKF3aHG4wFMRx2XcdroJJ6ga5v6KHF5DbBTWV7jXOGNX-g@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rudolf Streif <rstreif@linuxfoundation.org>
Subject: Re: Custom defconfig is not used
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
X-List-Received-Date: Thu, 17 Oct 2013 12:50:32 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-10-17 06:39 AM, Diego Sueiro wrote:
>
>
>
> 2013/10/17 Bruce Ashfield <bruce.ashfield@gmail.com
> <mailto:bruce.ashfield@gmail.com>>
>
>     On Wed, Oct 16, 2013 at 2:19 PM, Diego Sueiro
>     <diego.sueiro@gmail.com <mailto:diego.sueiro@gmail.com>> wrote:
>      > Folks,
>      >
>      > Looking at log.do_unpack it shows:
>      >
>      > ...
>      > NOTE: Unpacking
>      >
>     <...>/meta-beagleboard/common-bsp/recipes-kernel/linux/linux-mainline-3.8/beaglebone/defconfig
>      > to
>      >
>     <...>/build/tmp-angstrom_v2013_06-eglibc/work/beaglebone-angstrom-linux-gnueabi/linux-mainline/3.8.13-r23a/
>      > ...
>      >
>      > NOTE: Unpacking
>      > <...>/meta-mine/recipes-kernel/linux/linux-mainline-3.8/mine.patch to
>      >
>     <...>/build/tmp-angstrom_v2013_06-eglibc/work/beaglebone-angstrom-linux-gnueabi/linux-mainline/3.8.13-r23a/
>      > NOTE: Unpacking
>      >
>     <...>/meta-beagleboard/common-bsp/recipes-kernel/linux/linux-mainline-3.8/beaglebone/defconfig
>      > to
>      >
>     <...>/build/tmp-angstrom_v2013_06-eglibc/work/beaglebone-angstrom-linux-gnueabi/linux-mainline/3.8.13-r23a/
>      >
>      >
>      > Note that it copies defconfig from meta-beagleboard and in the
>     end, instead
>      > copying mine, it is copying from meta-beagleboard again.
>      >
>      > My layer has the priority higher than meta-beagleboard.
>
>     I can't get at my machines to test this myself (technically I'm still
>     on vacation), but when you
>     dump the bitbake environment, how many defconfig's show up in the
>     SRC_URI ? It would be
>     easy enough in your bbapend to simply call your defconfig something
>     else (i.e. defconfig-mine)
>     and override/append to kernel_do_configure() to simply copy yours over
>     top of the .config,
>     regardless of what the fetcher is doing with the SRC_URI.
>
>     Bruce
>
>
> Bruce,
>
> Putting the following in my recipe did the trick:
>
>     do_configure_prepend() {
>                  cp ${WORKDIR}/defconfig-mine ${WORKDIR}/defconfig
>     }
>
>
> Now the .config is the same as my custom defconfig.
>
> But, this is a workaround, right?

I could be. Until we root cause the issue, I can't say for sure.

> I expected to get this working "out-of-box".

Did you do a  "bitbake -e <your kernel recipe>" ? and then look at
the SRC_URI ? That will tell us if for some reason the beagle layer's
defconfig is on there twice.

> Why config fragments did not worked too?

recipes must inherit linux-yocto to get that support, since it is
optional and not something we force on all kernel recipes. So if you
want fragment support, creating your own kernel recipe, based on the
one in the layers you are using, which inherits linux-yocto is one
route to take.

Bruce

>
>
>
> --
> *dS
> Diego Sueiro
>
> /*long live rock 'n roll*/
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


