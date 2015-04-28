Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72DB8E009A5; Tue, 28 Apr 2015 11:58:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A75DE00932
	for <yocto@yoctoproject.org>; Tue, 28 Apr 2015 11:58:08 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.9) with ESMTP id t3SIw3eg005751
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 28 Apr 2015 11:58:04 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.224.2;
	Tue, 28 Apr 2015 11:58:03 -0700
Message-ID: <553FD83A.6040407@windriver.com>
Date: Tue, 28 Apr 2015 14:58:02 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: =?windows-1252?Q?=22Schauml=F6ffel=2C_Jan=22?=
	<J.Schaumloeffel@astro-kom.de>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <ce604c0c1a1d4131a72119dbecb97ab2@ASTRO-EX1.Bensberg.de>	<553F90A3.9070501@windriver.com>
	<82ac67a7e46e416dbabdda01c42fc89a@ASTRO-EX1.Bensberg.de>
In-Reply-To: <82ac67a7e46e416dbabdda01c42fc89a@ASTRO-EX1.Bensberg.de>
Subject: Re: Migration from 1.7.1 to 1.8 - kernel-abiversion missing
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
X-List-Received-Date: Tue, 28 Apr 2015 18:58:12 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 2015-04-28 11:36 AM, Schaumlöffel, Jan wrote:
>> Hmmm. It shouldn't have gone missing. Bits of the kernel build outputs
>> did move around in 1.8, but the abiversion is still generated and
>> placed in the STAGING_KERNEL_BUILDDIR.
>
> I was just wondering, is there an easy way to resolve these Paths from the ommand line? I do not have a lot of experience with bitbake, so I have no good guess where STAGING_KERNEL_BUILDDIR should be located.

I always just run bitbake -e <your target>, and then either grep or
capture the output. The value and places the variable are set will be
in the bulk data export. Others may have fancier ways to do the
same thing.

>
> Also, I don't quite get why the kernel abiversion and kernel modules are needed at all, because I build the kernel externally with no modules at all. Although in the future it might be nice to integrate building the kernel into the bitbake process, at the moment I would be equally happy to just leave off everything that has to do with the kernel.

Have you tried setting linux-dummy as the preferred provider for the
kernel ? That would skip the build processing doing anything more than
satisfying the various kernel dependencies.

>
>> After your build has failed, if you look in STAGING_KERNEL_BUILDDIR do
>> you see the abiversion file ?
>
> There are three instances of the file:
>
> ~/yocto-build-fido$ find . -name kernel-abiversion
> ./tmp/work/beaglebone-poky-linux-gnueabi/linux-yocto/3.14.36+gitAUTOINC+162dfe3bb0_dbe5b52e93-r0/pkgdata/kernel-depmod/kernel-abiversion
> ./tmp/sysroots/beaglebone/pkgdata/kernel-depmod/kernel-abiversion
> ./tmp/work-shared/beaglebone/kernel-build-artifacts/kernel-abiversion

Those are where I'd expect them for 1.8, so they should be found and
used by the various parts of the build process. Something different
is happening in your build .. hmm.

Bruce

>
> Jan
>


