Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F41F6E00718; Wed, 26 Sep 2018 05:35:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48FA4E00566
	for <yocto@yoctoproject.org>; Wed, 26 Sep 2018 05:35:25 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w8QCYbaK020102
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 26 Sep 2018 05:34:59 -0700
Received: from server.local (128.224.21.73) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.408.0;
	Wed, 26 Sep 2018 05:34:46 -0700
To: Aaron Cohen <aaron@assonance.org>, <yocto@yoctoproject.org>
References: <CAFSZm+i0xsg+teZ8+cTWkH_HdBr5nvE2s4WyKe=QZJn5ojh8uQ@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <15314cda-58ee-ec35-4186-75484539bbe6@windriver.com>
Date: Wed, 26 Sep 2018 08:34:46 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
	Gecko/20100101 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CAFSZm+i0xsg+teZ8+cTWkH_HdBr5nvE2s4WyKe=QZJn5ojh8uQ@mail.gmail.com>
Subject: Re: Is KCONFIG_MODE test backwards in kernel-yocto.bbclass?
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
X-List-Received-Date: Wed, 26 Sep 2018 12:35:27 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2018-09-25 10:03 PM, Aaron Cohen wrote:
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/kernel-yocto.bbclass#n297
> 
> With no KCONFIG_MODE specified, we check if the user has copied a 
> defconfig to workdir, and then use allnoconfig if so. Shouldn't we be 
> using alldefconfig in this case?
> 
> The result currently is that if you use a defconfig file that you add to 
> SRC_URI, much of it won't work, because it's been set to no by 
> allnoconfig, and it's not super-obvious, to me at least, why.

Nope. This is fully intentional. The defconfig is traditionally
a complete .config that specifies all values. As such, we clear
the settings with allnoconfig and then apply it to the tree.

If you want a minimal .config (like fragments, etc), that adds
only non-default settings, we use alldefconfig and then apply
the fragments.

Cheers,

Bruce

> 
> 


