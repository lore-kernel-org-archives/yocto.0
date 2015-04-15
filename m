Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 728D0E009BD; Wed, 15 Apr 2015 06:13:32 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD002E00954
	for <yocto@yoctoproject.org>; Wed, 15 Apr 2015 06:13:29 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.9) with ESMTP id t3FDDN8M027839
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 15 Apr 2015 06:13:23 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.224.2;
	Wed, 15 Apr 2015 06:13:29 -0700
Message-ID: <552E63F1.9090406@windriver.com>
Date: Wed, 15 Apr 2015 09:13:21 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: "Bach, Pascal" <pascal.bach@siemens.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, Patches and discussions about the oe-core layer
	<Openembedded-core@lists.openembedded.org>
References: <355BE46A91031048906B695426A8D8E616B7BE37@DEFTHW99EH4MSX.ww902.siemens.net>
In-Reply-To: <355BE46A91031048906B695426A8D8E616B7BE37@DEFTHW99EH4MSX.ww902.siemens.net>
Subject: Re: Move device tree generation from include file to bbclass
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
X-List-Received-Date: Wed, 15 Apr 2015 13:13:32 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-04-15 08:33 AM, Bach, Pascal wrote:
> Hi
>

Adding oe-core, since that's the right place to have a discussion like
this.

> As ARM now also moved to device tree it look like in future we will have more kernels that are using device tree then ones that are not.

True, but it has been like this for quite some time now :)

> As far as I understand currently the generation of device trees is controlled via KERNEL_DEVICETREE and is handled in via an include file recipes-kernel/linux/linux-dtb.inc.
>
> I was thinking about moving this include into a class so it becomes easier to use. Before I dive into implementing something I would like some feedback from the community.

The big trick with changing anything like this is compatibility with
existing recipes. Whatever we do, existing recipes and layers shouldn't
be broken .. or if they are broken, there should be a compelling
technical reason to do so.

>
> I have the following variant in mind.
>
> Add the device tree generation to the current kernel.bbclass (or let kernel.bblcass inherit from a kernel-dtb.bbclass).
> This way all kernels would automatically be DT enabled.
> The class would check if KERNEL_DEVICETREE is set and generate device trees based on this information. For boards that don't have KERNEL_DEVICETREE set the class would do nothing and the behavior is like before.
> The advantage I see with this approach is that the only thing a user needs to do is to set KERNEL_DEVICETREE in the board and make sure the device trees are available in the kernel they like to build.

That's pretty much the experience that most users have now, since
there's nearly always a kernel recipe created, that recipe includes
linux-dtb.inc, and sets KERNEL_DEVICETREE.

Everything else happens to build and package the device tree.

Was there something specifically that was causing issues with the
current way of building them ?

Cheers,

Bruce

>
> I appreciate your feedback?
>
> Regards
> Pascal
>


