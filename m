Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23FA4E00CEE
	for <yocto@yoctoproject.org>; Fri, 11 Apr 2014 08:24:21 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s3BFOGCP018278
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 11 Apr 2014 08:24:16 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Fri, 11 Apr 2014 08:24:16 -0700
Message-ID: <5348091A.9070500@windriver.com>
Date: Fri, 11 Apr 2014 11:24:10 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: =?ISO-8859-1?Q?S=F8ren_Holm?= <sgh@sgh.dk>
References: <2489555.PeAzndN2bA@koontz> <3576503.mNsH0YDmIl@koontz>
	<534804C8.4060900@windriver.com> <2327870.6kBY9rsEeq@koontz>
In-Reply-To: <2327870.6kBY9rsEeq@koontz>
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
X-List-Received-Date: Fri, 11 Apr 2014 15:24:22 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 8bit

On 14-04-11 11:21 AM, Søren Holm wrote:
> Hi Bruce
>
> I just realized that I gave you the wrong files. I migrate to dora, so 3.14 is
> my kernel I'm building. I gave you the dora-files - doh!. I'll check if 3.10
> works because it does for you on daisy and for me on dora.

No worries. I just forced the kernel version to 3.10 to test. If you
want to send the 3.14 ones, I can double check there as well.

Bruce

>
>
> Fredag den 11. april 2014 11:05:44 skrev Bruce Ashfield:
>> On 14-04-11 11:03 AM, Søren Holm wrote:
>>> Hi Bruce
>>>
>>> I just check if AUFS is enabled. It should be since that's in my
>>> defconfig.
>>


