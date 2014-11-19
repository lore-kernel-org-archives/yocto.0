Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F44BE008D9; Tue, 18 Nov 2014 22:00:56 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40576E008C3
	for <yocto@yoctoproject.org>; Tue, 18 Nov 2014 22:00:53 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id sAJ60kLA000431
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 18 Nov 2014 22:00:47 -0800 (PST)
Received: from [128.224.162.226] (128.224.162.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.174.1;
	Tue, 18 Nov 2014 22:00:46 -0800
Message-ID: <546C320E.2010104@windriver.com>
Date: Wed, 19 Nov 2014 14:00:46 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.2
MIME-Version: 1.0
To: Stefan Eichenberger <stefan.eichenberger@netmodule.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <d08a8413c6434f89929894aca02a399c@ebro.netmodule.intranet>
	<546AB7E7.5010304@windriver.com> <546B7517.9040003@netmodule.com>
In-Reply-To: <546B7517.9040003@netmodule.com>
X-Originating-IP: [128.224.162.226]
Subject: Re: Busybox sh link
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
X-List-Received-Date: Wed, 19 Nov 2014 06:00:56 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/19/2014 12:34 AM, Stefan Eichenberger wrote:
> On 11/18/2014 04:07 AM, ChenQi wrote:
>> On 11/17/2014 10:07 PM, Stefan Eichenberger wrote:
>>> Hello all
>>>
>>> I have a question regarding busybox and sh. If I want to install 
>>> bash together with busybox ash, yocto does not consider the 
>>> ALTERNATIVE_PRIORITY in each case (e.g. if bash is installed before 
>>> busybox). The problem is that do_install of busybox creates a link 
>>> to busybox.nosuid. Is there a reason for that? Shouldn't 
>>> update-alternatives create that link for us? There is already a 
>>> patch available that targets this problem 
>>> (467b19efbaa9c0cb04d2665e8cd9a0919849a5ed ) but it only works if ash 
>>> is completely disabled in the busybox config.
>>>
>>> So the main question is, wouldn't it be possible to remove this 
>>> lines completely?
>>>
>>> Regards,
>>> Stefan
>>>
>>>
>>
>> I can confirm that this is indeed a problem. And we need to fix this.
>> I think the reason for this line is mainly to make 'busybox' provide 
>> '/bin/sh' so that do_rootfs would succeed.
>>
>> Regards,
>> Chen Qi
>
> Probably I miss something but I don't understand why do_rootfs fails 
> if the link is not provided? Isn't the link created anyhow during 
> package installation in the postinstall script with 
> update-alternatives if necessary?
>
> For testing I removed the link creation temporary from the recipe and 
> built the core-image-minimal for qemux86, it was creating the link 
> correctly in this case.
>
> Regards,
> Stefan
>
>

Hi Stefan,

I did some testing, and could not reproduce the problem.
I then realized that as the sh link is managed by ALTERNATIVES 
mechanism, it will always point to bash instead of busybox.

I tested it by the following steps:
1. build core-image-minimal with bash installed
2. reinstall bash
3. reinstall busybox

So I think the current code is right.

I'm not sure if I missed something. If so, could you please provide more 
information?

Best Regards,
Chen Qi

