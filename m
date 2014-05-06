Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1D56E00A44; Tue,  6 May 2014 15:35:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DA2BE00480
	for <yocto@yoctoproject.org>; Tue,  6 May 2014 15:35:27 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s46MZPTG022652
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 6 May 2014 15:35:25 -0700 (PDT)
Received: from server.local (128.224.21.100) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.169.1;
	Tue, 6 May 2014 15:35:24 -0700
Message-ID: <536964BB.6060102@windriver.com>
Date: Tue, 6 May 2014 18:39:55 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Bob Feretich <bob.feretich@rafresearch.com>, <yocto@yoctoproject.org>
References: <536962D8.1040007@rafresearch.com>
In-Reply-To: <536962D8.1040007@rafresearch.com>
Subject: Re: A simpler way of creating an using a local kernel repository - BeagleBone example
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
X-List-Received-Date: Tue, 06 May 2014 22:35:30 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-05-06, 6:31 PM, Bob Feretich wrote:
> I have had problems getting good download performance when accessing the
> kernels at kernel.org. Since I expect to build the kernel several times,
> I decided to create a copy of the kernel repository locally and use that
> for my builds.
>
> There are instructions on how to create a local repository in the Yocto
> manuals, but those are more complex than I needed. (I don't plan on
> checking anything into the repository.)
>
> The below is a simpler way of creating and using the repository.
> I'm publishing this because my search though the Yocto/OE/Angstrom
> yielded only the more complicated or incomplete methods.
>
> // First set up local kernel repository
> mkdir ~/ksrc3-8
> cd ~/ksrc3-8
> git clone --bare
> git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git
> stable-work-bare.git
>
> // Then modify the kernel recipe to use the local repository instead of
> the the one at kernel.org.
> // The beaglebone recipe for the 3.8 kernel is at...
> setup-scripts/sources/meta-beagleboard/common-bsp/recipes-kernel/linux/linux-mainline_3.8.bb
>
>
> // Replace the file's SRC_URI with one that points to your local
> repository.
> #SRC_URI =
> "git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git;branch=linux-3.8.y"
>
> SRC_URI = "git:///home/Bob/ksrc3-8/stable-work-bare.git;branch=linux-3.8.y"

That's exactly how we've been doing it all along in the "meta-kernel-dev"
layer found in poky-extras (now meta-yocto-kernel-extras):

http://git.yoctoproject.org/cgit/cgit.cgi/meta-yocto-kernel-extras/tree/meta-kernel-dev/recipes-kernel/linux

Cheers,

Bruce

>
> Regards,
> Bob


