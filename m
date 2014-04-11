Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3561E002A6
	for <yocto@yoctoproject.org>; Fri, 11 Apr 2014 12:06:09 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s3BJ63BT018898
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 11 Apr 2014 12:06:03 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Fri, 11 Apr 2014 12:06:02 -0700
Message-ID: <53483D14.7020807@windriver.com>
Date: Fri, 11 Apr 2014 15:05:56 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: =?ISO-8859-1?Q?S=F8ren_Holm?= <sgh@sgh.dk>
References: <2489555.PeAzndN2bA@koontz> <3478732.Agy1Jcga6F@koontz>
	<53481D75.8070306@windriver.com> <7023738.t8MMlfpnim@koontz>
In-Reply-To: <7023738.t8MMlfpnim@koontz>
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
X-List-Received-Date: Fri, 11 Apr 2014 19:06:09 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 8bit

On 14-04-11 02:43 PM, Søren Holm wrote:
> Hi Bruce
>
> That sounds great. The situation is that I though that that was the case, so I
> also tried adding this to the bbappend.
>
> KERNEL_FEATURES_append = " features/aufs"
>
> But that does not seem to work either. So I guess you are talking about
> somthing else.

I am. There's a missing patch that I typically carry, it actually
links the fs/aufs directory into the build. Without it, the Kconfig
and code isn't processed .. hence why everything is dropped.

I have it merged now, but have to build aufs for all architectures to
make sure nothing broke.

Bruce

>
> Fredag den 11. april 2014 12:51:01 skrev Bruce Ashfield:
>> On 14-04-11 12:15 PM, Søren Holm wrote:
>>> Ok
>>>
>>> Using the *exact* same bbappend file for both 3.10 and 3.14 gives me a
>>> correct -config for 3.10 but not for 3.14. Both 3.10/defconfig and
>>> 3.14/defconfig contains my original defconfig, so it is picked up and
>>> should be taken into account.
>>
>> This is a slightly different problem .. I can see that I managed to
>> drop a patch which links AUFS into the build. Hence why everything
>> is dropped.
>>
>> I'm fixing that right now in 3.14, and will send updates later.
>>
>


