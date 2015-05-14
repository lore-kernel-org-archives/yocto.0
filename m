Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8932DE009A6; Wed, 13 May 2015 19:26:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34199E009A1
	for <yocto@yoctoproject.org>; Wed, 13 May 2015 19:26:02 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.9) with ESMTP id t4E2Q0Yn014339
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 13 May 2015 19:26:00 -0700 (PDT)
Received: from [128.224.163.153] (128.224.163.153) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.224.2;
	Wed, 13 May 2015 19:25:59 -0700
Message-ID: <555407B9.7040105@windriver.com>
Date: Thu, 14 May 2015 10:26:01 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Ash Charles <ashcharles@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <CAK8F28nH13quAv_8KqfEDnyua99mBYvLnBYej0ugC73dP5LX+A@mail.gmail.com>
In-Reply-To: <CAK8F28nH13quAv_8KqfEDnyua99mBYvLnBYej0ugC73dP5LX+A@mail.gmail.com>
X-Originating-IP: [128.224.163.153]
Subject: Re: Using smart within an SDK
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
X-List-Received-Date: Thu, 14 May 2015 02:26:04 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Ash,

SDK has basically two parts, nativesdk part and the target part.
For the nativesdk part, we can use smart/rpm to manage packages. A long 
time ago, I tried this out and succeeded.
However, for the target part, we cannot do the same thing as the rpm 
database for the target part is not usable after installation. I once 
tried to solve this problem but failed.
You can have a little try and if you have some good news, let me know.

Best Regards,
Chen Qi

On 05/14/2015 08:51 AM, Ash Charles wrote:
> Hi,
>
> I'd like to be able install packages using smart within an SDK
> environment (much like [1]; @Erik, did you find a solution?).
>
> I stumbled on two questions in looking into this.
>
> 1. Why does the nativesdk version of smart get wrapped with these
> environment variables, 'RPM_USRLIBRPM', 'RPM_ETCRPM', and
> 'RPM_LOCALEDIRRPM'?  As per [2], the RPM utilities themselves are
> already wrapped.  It might be nice to specify the '--data-dir'
> argument to smart with a create_cmdline_wrapper instead.
>
> 2. Why does the smart configuration data get removed during SDK
> creation?  In particular, the self.target_pm.remove_packaging_data
> line in meta/lib/oe/sdk.py.
>
> [1] https://lists.yoctoproject.org/pipermail/yocto/2015-March/024152.html
> [2] http://lists.openembedded.org/pipermail/openembedded-core/2012-December/071894.html
>
> Thanks for any advice!
> --Ash


