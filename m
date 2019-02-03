Return-Path: <yocto@emagii.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 739D1E00CB0; Sat,  2 Feb 2019 21:50:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [213.80.101.71 listed in list.dnswl.org]
X-Greylist: delayed 373 seconds by postgrey-1.32 at yocto-www;
	Sat, 02 Feb 2019 21:50:16 PST
Received: from ste-pvt-msa2.bahnhof.se (ste-pvt-msa2.bahnhof.se
	[213.80.101.71])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F450E00D2C
	for <yocto@yoctoproject.org>; Sat,  2 Feb 2019 21:50:16 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTP id EED403F6DB
	for <yocto@yoctoproject.org>; Sun,  3 Feb 2019 06:44:01 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
Received: from ste-pvt-msa2.bahnhof.se ([127.0.0.1])
	by localhost (ste-ftg-msa2.bahnhof.se [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id 6ITngUJwBf7B for <yocto@yoctoproject.org>;
	Sun,  3 Feb 2019 06:44:00 +0100 (CET)
Received: from [10.175.196.210] (h-169-62.A454.priv.bahnhof.se [37.123.169.62])
	(Authenticated sender: mb782575)
	by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id 9ECE83F50F
	for <yocto@yoctoproject.org>; Sun,  3 Feb 2019 06:44:00 +0100 (CET)
To: yocto@yoctoproject.org
References: <CAPo_4QCE-N-tVUQhOF_Q3f18306TqXSrT+QOSO_Yg2C3Uo5ghw@mail.gmail.com>
	<4cbbfed2-f3cb-c2f2-10de-586c27b63b2c@windriver.com>
	<CAPo_4QDzJCtRvytauoWhixKSV7EfL4h2LKrZGQuKRF3pZF_Now@mail.gmail.com>
From: Ulf Samuelsson <yocto@emagii.com>
Message-ID: <c0bd97f9-1aed-7c9d-17c5-dc9059f1a11c@emagii.com>
Date: Sun, 3 Feb 2019 06:43:59 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.0
MIME-Version: 1.0
In-Reply-To: <CAPo_4QDzJCtRvytauoWhixKSV7EfL4h2LKrZGQuKRF3pZF_Now@mail.gmail.com>
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
X-List-Received-Date: Sun, 03 Feb 2019 05:50:19 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: sv
Content-Transfer-Encoding: 7bit

Den 2019-02-03 kl. 04:16, skrev Ken Sloat:
> On Sat, Feb 2, 2019 at 10:03 PM Bruce Ashfield
> <bruce.ashfield@windriver.com> wrote:
>>
>> On 2019-02-02 9:59 p.m., Ken Sloat wrote:
>>> Hello,
>>>
>>> I have an out of tree kernel module which I want autoloaded at startup
>>> on my system. Looking at the Yocto project manual, I see that one way
>>> I can do this is to add the module name to the KERNEL_MODULE_AUTOLOAD
>>> variable within my custom module recipe.
>>>
>>> What I have found is that the module-split class is indeed generating
>>> the "/etc/modules-load.d/mymodule.conf" file, however this file is not
>>> actually being installed. To be more precise it is appearing in the
>>> "package" directory (i.e.
>>> tmp/work/**/mymodule/package/etc/modules-load.d/mymodule.conf) but not
>>> within the "image" directory (nor in my final rootfs).
>>>
>>> Is there something I'm missing in the usage of KERNEL_MODULE_AUTOLOAD?
>>> Is the intention for this variable I add extra steps to manually
>>> install this file in my recipe? FYI I'm using Morty.
>>
>> Can you provide your recipe ? It would make suggestions easier. For
>> example, my first question is: Is the module being installed to your
>> image via IMAGE_INSTALL, or some other similar variable ?
>>
>> Bruce
>>
>>>
>>> Thanks,
>>> Ken Sloat
>>>
>>
> 
> Hi Bruce,
> 
> Thanks for your quick reply. Yes the module is being installed via
> image_install. Module is installed but generated conf file is not. See
> recipe below:
> 
> require mymodule.inc
> 
> inherit module kernel-module-split
> 
> DEPENDS = "virtual/kernel"
> 
> EXTRA_OEMAKE_append = " \
>      KERNELDIR=${STAGING_KERNEL_DIR} \
>      "
> 
> MAKE_TARGETS = "module"
> 
> MODULE_NAME = "mymodule"
> 
> PKG_${PN} = "kernel-module-${MODULE_NAME}"
> 
> module_do_install() {
>      install -d ${D}/lib/modules/${KERNEL_VERSION}/kernel/${MODULE_NAME}
>      install -m 0644 ${MODULE_NAME}.ko \
>      ${D}/lib/modules/${KERNEL_VERSION}/kernel/${MODULE_NAME}/${MODULE_NAME}.ko
> }
> 
> FILES_${PN} = " \
>      /lib/modules/${KERNEL_VERSION}/kernel/${MODULE_NAME} \
> "
> 
> KERNEL_MODULE_AUTOLOAD += "${MODULE_NAME}"
> 

One would think that the file should be added automatically,
but this might be required, - or a workaround...

FILES_${PN} = " \
       /lib/modules/${KERNEL_VERSION}/kernel/${MODULE_NAME} \
       ${sysconfdir}/modules-load.d/${MODULE_NAME}.conf \
"


-- 
Best Regards
Ulf Samuelsson

