Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64603E00D2C; Sat,  2 Feb 2019 19:03:06 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17505E00AD5
	for <yocto@yoctoproject.org>; Sat,  2 Feb 2019 19:03:05 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x13333xT022683
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 2 Feb 2019 19:03:03 -0800 (PST)
Received: from server.local (128.224.21.69) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.435.0;
	Sat, 2 Feb 2019 19:02:50 -0800
To: Ken Sloat <ken.sloat@ohmlinxelectronics.com>, <yocto@yoctoproject.org>
References: <CAPo_4QCE-N-tVUQhOF_Q3f18306TqXSrT+QOSO_Yg2C3Uo5ghw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <4cbbfed2-f3cb-c2f2-10de-586c27b63b2c@windriver.com>
Date: Sat, 2 Feb 2019 22:02:49 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <CAPo_4QCE-N-tVUQhOF_Q3f18306TqXSrT+QOSO_Yg2C3Uo5ghw@mail.gmail.com>
Cc: Nate Drude <nate.drude@ohmlinxelectronics.com>
Subject: Re: Proper Use of KERNEL_MODULE_AUTOLOAD variable
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
X-List-Received-Date: Sun, 03 Feb 2019 03:03:06 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2019-02-02 9:59 p.m., Ken Sloat wrote:
> Hello,
> 
> I have an out of tree kernel module which I want autoloaded at startup
> on my system. Looking at the Yocto project manual, I see that one way
> I can do this is to add the module name to the KERNEL_MODULE_AUTOLOAD
> variable within my custom module recipe.
> 
> What I have found is that the module-split class is indeed generating
> the "/etc/modules-load.d/mymodule.conf" file, however this file is not
> actually being installed. To be more precise it is appearing in the
> "package" directory (i.e.
> tmp/work/**/mymodule/package/etc/modules-load.d/mymodule.conf) but not
> within the "image" directory (nor in my final rootfs).
> 
> Is there something I'm missing in the usage of KERNEL_MODULE_AUTOLOAD?
> Is the intention for this variable I add extra steps to manually
> install this file in my recipe? FYI I'm using Morty.

Can you provide your recipe ? It would make suggestions easier. For
example, my first question is: Is the module being installed to your
image via IMAGE_INSTALL, or some other similar variable ?

Bruce

> 
> Thanks,
> Ken Sloat
> 


