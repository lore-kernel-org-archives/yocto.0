Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B1EAE008E3; Sun,  4 Nov 2018 17:14:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34E2FE00872
	for <yocto@yoctoproject.org>; Sun,  4 Nov 2018 17:14:01 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id wA51Dog8019917
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 4 Nov 2018 17:13:51 -0800 (PST)
Received: from [172.25.44.4] (172.25.44.4) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Sun, 4 Nov 2018 17:13:50 -0800
To: Patrick Boettcher <patrick.boettcher@posteo.de>, <yocto@yoctoproject.org>
References: <20181104175530.3ca8ed50@yaise-pc1>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <637c7a2f-2d80-7b1f-df4c-9eafe25bd83a@windriver.com>
Date: Sun, 4 Nov 2018 20:13:49 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20181104175530.3ca8ed50@yaise-pc1>
X-Originating-IP: [172.25.44.4]
Subject: Re: How to request a certain version of a recipes for an image?
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
X-List-Received-Date: Mon, 05 Nov 2018 01:14:06 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 11/4/18 11:55 AM, Patrick Boettcher wrote:
> Hi list,
> 
> I'm using the morty-release for my device.
> 
> My sources consists of different layers. Some application
> specific-layers (which contains a image-recipe), our
> BSP-provider and tooling-layers.
> 
> It now happens that in there is package (dt-utils) which has recipes in
> two different layers, with different versions.
> 
> In my image-file I request the package via
> 
>      IMAGE_INSTALL += "dt-utils"
> 
> How do I force the version of dt-utils for this image? By default it
> selects the wrong one.
> 
> Here's what I tried, by adding to the image-recipe:
> 
>      DEPENDS += "dt-utils (>= 2017.03.0)"
> 
> and
> 
>      RDEPENDS += "dt-utils (>= 2017.03.0)"
> 
> seems to have no effect. Adding the version-logic to the
> IMAGE_INSTALL-line fails to build.
> 
> What works is to add PREFERRED_VERSION to local.conf. But this is not
> committable, so I'd like to avoid it.

Can't you use PREFERRED_VERSION and commit that in one of the
layers that you control?

eg:
$ cd .../meta-virtualization.git
$ grep -r PREFERRED_VERSION .| head -1
./conf/distro/include/meta-virt-default-versions.inc:PREFERRED_VERSION_python-blinker 
= "1.3"


../Randy

> 
> Thanks.
> 
> best regards,
> --
> Patrick.
> 
> 
> 


-- 
# Randy MacLeod
# Wind River Linux

