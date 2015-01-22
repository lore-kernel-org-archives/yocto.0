Return-Path: <dominic.sacre@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB17FE00845; Thu, 22 Jan 2015 14:39:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dominic.sacre[at]gmx.de)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [212.227.17.21 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 320 seconds by postgrey-1.32 at yocto-www;
	Thu, 22 Jan 2015 14:38:54 PST
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 190C2E00782
	for <yocto@yoctoproject.org>; Thu, 22 Jan 2015 14:38:54 -0800 (PST)
Received: from [192.168.0.201] ([37.24.103.185]) by mail.gmx.com (mrgmx103)
	with ESMTPSA (Nemesis) id 0MC3zg-1YNBjy2KG0-008vZg;
	Thu, 22 Jan 2015 23:33:26 +0100
Message-ID: <54C17A37.9040104@gmx.de>
Date: Thu, 22 Jan 2015 23:31:19 +0100
From: =?windows-1252?Q?Dominic_Sacr=E9?= <dominic.sacre@gmx.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Otavio Salvador <otavio@ossystems.com.br>, 
	Raphael Philipe <rapphil@gmail.com>
References: <CAENGNhcVmxW2xD4d4TDjTtLu2zCvCJ6sEOF8ek80hWz4kxKf6A@mail.gmail.com>	<5100308.QAtzWr7jXK@peggleto-mobl5.ger.corp.intel.com>	<CAENGNhff5-CZRSJaD1t1ppPOOQNrWipF01hAdatWqSkjGVmnVA@mail.gmail.com>	<2632438.D1xOHJKf9V@peggleto-mobl5.ger.corp.intel.com>	<CAENGNhe7Uv1PQv=J3QYhPAX3dj9p0pakAg5x9oGQ0V3pxfbHUw@mail.gmail.com>
	<CAP9ODKq85m2Cb_DoVgh9+Wi=zjAJc-MmrGAo58h347zd+UUOgQ@mail.gmail.com>
In-Reply-To: <CAP9ODKq85m2Cb_DoVgh9+Wi=zjAJc-MmrGAo58h347zd+UUOgQ@mail.gmail.com>
X-Provags-ID: V03:K0:2Tf4bY8/kn+7VB2jHuFKJcwyG5fwfxZFqIFDXiS/Xa5npr7ycF3
	+Zf2cz837CDuzyy4I7VoWTn49ACIMt3oSemdrzMXwwJ1/59uNfJEUfw/PcVdgguMxE9aIoy
	eRK+fDxbzuhA+LFepYg+3Afol1Ouzd6xh/cqdR96coJDQb2A4PGRwdvGhVFHGEuvYKZmZQZ
	+xeshbD9cdk+qoKw7H9nQ==
X-UI-Out-Filterresults: notjunk:1;
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Denys Dmytriyenko <denys@ti.com>, yocto <yocto@yoctoproject.org>
Subject: Re: Difference between target, cross, native and nativesdk.
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
X-List-Received-Date: Thu, 22 Jan 2015 22:39:07 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 2015-01-21 14:37, Otavio Salvador wrote:
> The fw tools inside of U-Boot qualifies for both target and cross use
> cases. When used in cross or crosssdk, it can be used to change things
> in the generated image (sdcard for example) while in the target case
> it can be used in the runtime system.

I've been wondering about the "u-boot-fw-utils-cross" recipe myself.
When I build the recipe I get what appear to be the correct binaries for
the host architecture, located in the target-specific work directory
(e.g. tmp/work/imx6qsabresd-poky-linux-gnueabi/u-boot-fw-utils-cross).
However, these binaries don't get installed anywhere other recipes (like
my sdcard image) would be able to find them.

My workaround so far has been to build a native package instead (by
simply adding BBCLASSEXTEND = "native" to the regular "u-boot-fw-utils"
recipe).
This way the binaries get installed to the host's sysroot and are found
just fine, but I feel like I'm missing something about how the cross
recipe should be used properly for this purpose.

Can anyone shed some light on this?


Cheers,

Dominic

