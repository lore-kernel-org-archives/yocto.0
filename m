Return-Path: <ashishpandey@huawei.com>
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [58.251.152.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77321E01374
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 00:01:24 -0700 (PDT)
Received: from huawei.com (szxga05-in [172.24.2.49])
	by szxga05-in.huawei.com (iPlanet Messaging Server 5.2 HotFix 2.14
	(built Aug
	8 2006)) with ESMTP id <0M2700FSAA4671@szxga05-in.huawei.com> for
	yocto@yoctoproject.org; Mon, 09 Apr 2012 15:00:06 +0800 (CST)
Received: from szxrg01-dlp.huawei.com ([172.24.2.119])
	by szxga05-in.huawei.com (iPlanet Messaging Server 5.2 HotFix 2.14
	(built Aug
	8 2006)) with ESMTP id <0M27000QCA461G@szxga05-in.huawei.com> for
	yocto@yoctoproject.org; Mon, 09 Apr 2012 15:00:06 +0800 (CST)
Received: from szxeml212-edg.china.huawei.com ([172.24.2.119])
	by szxrg01-dlp.huawei.com (MOS 4.1.9-GA)	with ESMTP id AIE45942; Mon,
	09 Apr 2012 15:00:05 +0800
Received: from SZXEML427-HUB.china.huawei.com (10.72.61.35)
	by szxeml212-edg.china.huawei.com (172.24.2.181) with Microsoft SMTP
	Server (TLS) id 14.1.323.3; Mon, 09 Apr 2012 14:59:43 +0800
Received: from SZXEML532-MBS.china.huawei.com ([169.254.5.132])
	by szxeml427-hub.china.huawei.com ([10.72.61.35]) with mapi id
	14.01.0323.003; Mon, 09 Apr 2012 15:00:02 +0800
Date: Mon, 09 Apr 2012 06:58:54 +0000
From: Ashish Pandey <ashishpandey@huawei.com>
In-reply-to: <CAMKF1sq59hus9hUrUsqfH7YCB1aOeM_=GtxHJDm6EbRT6G6Yjg@mail.gmail.com>
X-Originating-IP: [10.18.96.98]
To: Khem Raj <raj.khem@gmail.com>
Message-id: <F3906846C0EDD246B5CF75E8EDA3C47E2170327E@szxeml532-mbs.china.huawei.com>
MIME-version: 1.0
Accept-Language: en-IN, zh-CN, en-US
Thread-topic: [yocto] [Yocto] Build Failure in beecrypt-4.2.1-r1 package with
	poky-1.2_M4.rc2 on Open Suse 12.1
Thread-index: Ac0T9beqxV1jVHdTSNuM2m6FpjBb1gAU62+AAG8yaPD//5OjgIAAm39E
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
X-CFilter-Loop: Reflected
References: <F3906846C0EDD246B5CF75E8EDA3C47E138A7864@szxeml532-mbx.china.huawei.com>
	<4F7FE69D.3040003@gmail.com>
	<F3906846C0EDD246B5CF75E8EDA3C47E217021D5@szxeml532-mbs.china.huawei.com>
	<CAMKF1sq59hus9hUrUsqfH7YCB1aOeM_=GtxHJDm6EbRT6G6Yjg@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build Failure in beecrypt-4.2.1-r1 package with poky-1.2_M4.rc2 on Open Suse 12.1
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 09 Apr 2012 07:01:24 -0000
Content-type: text/plain; charset=us-ascii
Content-language: en-IN
Content-transfer-encoding: 7BIT


I have installed java-1.6.0-openjdk and then build again and build was successful. 
I think , It should give package dependency error instead of  compilation error. 
Please give your suggestion on this ? 

Regards,

Ashish

Huawei Technology



This e-mail and its attachments contain confidential information from HUAWEI, which is intended only for the person or entity whose address is listed above. Any use of the information contained herein in any way (including, but not limited to, total or partial disclosure, reproduction, or dissemination) by persons other than the intended recipient(s) is prohibited. If you receive this e-mail in error, please notify the sender by phone or email immediately and delete it!

________________________________________
From: Khem Raj [raj.khem@gmail.com]
Sent: 09 April 2012 11:08:57
To: Ashish Pandey
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [Yocto] Build Failure in beecrypt-4.2.1-r1 package with poky-1.2_M4.rc2 on Open Suse 12.1

On Sun, Apr 8, 2012 at 9:07 PM, Ashish Pandey <ashishpandey@huawei.com> wrote:
>
>  I tried woth " --disable-java" option but it is giving same error.
> Please check once again and help me to build.

post your configure logs somewhere disabling java should have disabled
any JNI detection

