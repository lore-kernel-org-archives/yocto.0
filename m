Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDD77E00B6E
	for <yocto@yoctoproject.org>; Fri, 11 Apr 2014 06:49:40 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s3BDnak3015864
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 11 Apr 2014 06:49:37 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Fri, 11 Apr 2014 06:49:35 -0700
Message-ID: <5347F2E9.208@windriver.com>
Date: Fri, 11 Apr 2014 09:49:29 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: =?ISO-8859-1?Q?S=F8ren_Holm?= <sgh@sgh.dk>
References: <2489555.PeAzndN2bA@koontz> <53476D43.6030900@windriver.com>
	<2289397.7FZuMHCiSt@koontz>
In-Reply-To: <2289397.7FZuMHCiSt@koontz>
Cc: yocto@yoctoproject.org
Subject: Re: defconfig on daisy
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
X-List-Received-Date: Fri, 11 Apr 2014 13:49:42 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 8bit

On 14-04-11 03:39 AM, Søren Holm wrote:
> Sure
>
> I guess this is what you need :
>
> http://sgh.dk/~sgh/cb16_kernel.tar.bz2
>
> It's just the machine-configuration and my append-file and defconfig.

replying again .. with the list this time.

Great. I did a build here and I see the defconfig being applied. How
were you determining that it wasn't happening ? I want to make sure
I'm checking the same config options.

Bruce

>
> Fredag den 11. april 2014 00:19:15 skrev Bruce Ashfield:
>> Nothing has changed in this area, and it works here. Can you post
>> your defconfig, and machine you are building somewhere so I can try
>> it myself ?
>>
>> Bruce
>


