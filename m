Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C680AE0121A
	for <yocto@yoctoproject.org>; Sun,  8 Jan 2012 22:02:46 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q0962iSd022058
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 8 Jan 2012 22:02:44 -0800 (PST)
Received: from [128.224.162.219] (128.224.162.219) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Sun, 8 Jan 2012 22:02:44 -0800
Message-ID: <4F0A8303.7030203@windriver.com>
Date: Mon, 9 Jan 2012 14:02:43 +0800
From: Kang Kai <Kai.Kang@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: Pedro Algarvio <pedro@algarvio.me>
References: <4F06C43D.3090102@windriver.com> <4F0706C5.8020400@algarvio.me>
	<4F0A5F62.50305@windriver.com>
In-Reply-To: <4F0A5F62.50305@windriver.com>
X-Originating-IP: [128.224.162.219]
Cc: yocto@yoctoproject.org
Subject: Re: Design Document of "Yocto 1656 Recipe creation/import script"
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
X-List-Received-Date: Mon, 09 Jan 2012 06:02:46 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 2012年01月09日 11:30, Kang Kai wrote:
> On 2012年01月06日 22:35, Pedro Algarvio wrote:
>
> Hi Pedro,
>
>> Is there any work started regarding this?
> There is perl script from meego do the similar thing.
>
>> Will this be part of bitbake?
> I want to put it under directory "scripts"
My mistake, put it under "bitbake/bin"

>
>> Python will be it's "implementation" language?
> Yes.
>
> Regards,
> Kai
>>
>> Best Regards,
>> Pedro Algarvio.
>>
>>
>> On 06/01/12 09:51, Kang Kai wrote:
>>> Hi All,
>>>
>>> This is the design document of "Yocto 1656 Recipe creation/import
>>> script". Please help to review it.
>>> Any suggestion is appreciate.
>>>
>>> Regards,
>>> Kai
>>>
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


