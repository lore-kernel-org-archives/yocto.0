Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB13AE00A6A; Wed, 16 May 2018 02:29:00 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EF35E00A0C
	for <yocto@yoctoproject.org>; Wed, 16 May 2018 02:28:59 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w4G9Sx71014623
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 16 May 2018 02:28:59 -0700 (PDT)
Received: from [128.224.162.218] (128.224.162.218) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Wed, 16 May 2018 02:28:58 -0700
To: <yocto@yoctoproject.org>
References: <777993E7-C6B3-44E5-A1AE-26C8A56A2100@korgrd.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <fb385ea3-e97c-829d-5b20-bd1ffc52644b@windriver.com>
Date: Wed, 16 May 2018 17:30:59 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <777993E7-C6B3-44E5-A1AE-26C8A56A2100@korgrd.com>
X-Originating-IP: [128.224.162.218]
Subject: Re: -c populate_sdk question
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
X-List-Received-Date: Wed, 16 May 2018 09:29:01 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 05/16/2018 03:12 AM, Steve Pavao wrote:
> Hello,
>
> Is there an easy way to exclude a section of my local conf when I am building with -c populate_sdk option?
>
> Long story short, I have some multilib-related entries in my local.conf which I need when building only the OS image, but which cause errors when building the SDK.
>
> It’s be easiest if I could put a conditional around the multilib-related entries in my local.conf.  Then when I build with the -c populate_sdk option, they would be excluded from that build.
>
> I noticed there are many SDK* variables in the Bitbake system, but I’m not so sure what are the best one/ones to use for my purpose, and what is the recommended syntax to achieve this conditional exclusion in my local.conf.
>
> Thanks in advance for any ideas.
>
> - Steve Pavao
> Korg R&D
>

I don't think there's some easy and automatic way to do so.
Why not just comment the lines out?

FYI, the SDK and the target image should match, and our SDK is supposed 
to support multilib.

Best Regards,
Chen Qi

