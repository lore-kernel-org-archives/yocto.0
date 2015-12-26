Return-Path: <king.lijin@huawei.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9AAEE00C2F; Fri, 25 Dec 2015 17:57:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [119.145.14.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [119.145.14.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 305DCE00869
	for <yocto@yoctoproject.org>; Fri, 25 Dec 2015 17:57:27 -0800 (PST)
Received: from 172.24.1.49 (EHLO szxeml434-hub.china.huawei.com)
	([172.24.1.49])
	by szxrg03-dlp.huawei.com (MOS 4.4.3-GA FastPath queued)
	with ESMTP id BTK01762; Sat, 26 Dec 2015 09:57:24 +0800 (CST)
Received: from [127.0.0.1] (10.177.34.120) by szxeml434-hub.china.huawei.com
	(10.82.67.225) with Microsoft SMTP Server id 14.3.235.1;
	Sat, 26 Dec 2015 09:57:22 +0800
Message-ID: <567DF401.50902@huawei.com>
Date: Sat, 26 Dec 2015 09:57:21 +0800
From: Jin Li <lijin14@huawei.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:17.0) Gecko/20130801 Thunderbird/17.0.8
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <567CA2F0.5000201@huawei.com>
	<CAMKF1sr6o=oNsA9gKP9g3jWQqqDcqr8oXsZE5eqg2Dj=gX+J1A@mail.gmail.com>
In-Reply-To: <CAMKF1sr6o=oNsA9gKP9g3jWQqqDcqr8oXsZE5eqg2Dj=gX+J1A@mail.gmail.com>
X-Originating-IP: [10.177.34.120]
X-CFilter-Loop: Reflected
X-Mirapoint-Virus-RAPID-Raw: score=unknown(0),
	refid=str=0001.0A090205.567DF405.0007, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0, ip=0.0.0.0,
	so=2013-05-26 15:14:31, dmn=2013-03-21 17:37:32
X-Mirapoint-Loop-Id: 7c004e12825f4958ec2b02ec22e7f4eb
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to use systemd as system init manager
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
X-List-Received-Date: Sat, 26 Dec 2015 01:57:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On 2015/12/25 13:55, Khem Raj wrote:
> On Thu, Dec 24, 2015 at 5:59 PM, Jin Li <lijin14@huawei.com> wrote:
>> Hi,
>>
>> I am trying to build yocto project which use systemd as system init manager.
>> But the qemu boot up and still use INIT as usual. The rootfs even fail to install systemd.
>>
>> I refers to yocto docs http://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#ref-features-distro
>> I use meta/recipes-extended/images/core-image-full-cmdline.bb and add the following part
>> to support systemd:
>>
>> DISTRO_FEATURES_append = "systemd"
> 
> space after first "
> 
>> DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"
>>
>> Did I miss somethings ?
>>
> 
> DISTRO_FEATURES_append = " systemd"
> DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"
> VIRTUAL-RUNTIME_init_manager = "systemd"
> VIRTUAL-RUNTIME_initscripts = "systemd-compat-units"
> 

Hi Raj

I used add the above code in meta/recipes-extended/images/core-image-full-cmdline.bb to
build image with systemd, but still get the same result - get no systemd installed in rootfs image and
system use "INIT" as usual as follows:

$ runqemu qemuarm64
...

root@qemuarm64:~# systemctl
-sh: systemctl: command not found
root@qemuarm64:~#
root@qemuarm64:~# ps aux | grep init
root         1  5.1  0.2   1764  1176 ?        Ss   01:57   0:04 init [5]

Regards,

Jin

> 
>> Any help would be appreciated.
>>
>> Jin
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> 
> 



