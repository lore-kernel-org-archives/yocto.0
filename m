Return-Path: <Randy.MacLeod@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C9BCE0071C
	for <yocto@yoctoproject.org>; Tue, 18 Feb 2014 19:39:24 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s1J3dM4u004669
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 18 Feb 2014 19:39:22 -0800 (PST)
Received: from [147.11.117.116] (147.11.117.116) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Tue, 18 Feb 2014 19:39:22 -0800
Message-ID: <53042768.8020001@windriver.com>
Date: Tue, 18 Feb 2014 22:39:20 -0500
From: Randy MacLeod <randy.macleod@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Zhu Yanjun <yanjun.zhu@windriver.com>
References: <1392777327-12786-1-git-send-email-yanjun.zhu@windriver.com>
	<DFFB071F-AB89-462B-97F6-95F4EE0A766B@gmail.com>
In-Reply-To: <DFFB071F-AB89-462B-97F6-95F4EE0A766B@gmail.com>
X-Originating-IP: [147.11.117.116]
Cc: yocto@yoctoproject.org, Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [PATCH] nmap: use native python and add python dependence
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: yocto@yoctoproject.org
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 19 Feb 2014 03:39:25 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-02-18 09:40 PM, Khem Raj wrote:
>
> On Feb 18, 2014, at 6:35 PM, Zhu Yanjun <yanjun.zhu@windriver.com> wrote:
>
>> +export BUILD_SYS
>> +export HOST_SYS
>> +export STAGING_LIBDIR
>> +export STAGING_INCDIR
>> +
>
> why are these needed ?

Also, meta-security recipes are discussed on:
   yocto@yoctoproject.org
not the oe-core list.

../Randy
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core
>
>


-- 
# Randy MacLeod. SMTS, Linux, Wind River
Direct: 613.963.1350

