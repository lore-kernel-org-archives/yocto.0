Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 396C4E013B2
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 07:58:59 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q79Eww8p028844
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 9 Aug 2012 07:58:58 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.309.2;
	Thu, 9 Aug 2012 07:58:58 -0700
Message-ID: <5023D02E.6060908@windriver.com>
Date: Thu, 9 Aug 2012 10:58:54 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Elvis Dowson <elvis.dowson@gmail.com>
References: <B35EAA35-E64A-42AE-A168-1F60424BE999@gmail.com>
	<5023CE44.4060406@windriver.com>
	<D67422E7-DD4C-432B-97EE-A15487BCCB46@gmail.com>
In-Reply-To: <D67422E7-DD4C-432B-97EE-A15487BCCB46@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Incorrect warning: preferred version linux-libc-headers_3.3 of linux-libc-headers not available (for item linux-libc-headers)
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
X-List-Received-Date: Thu, 09 Aug 2012 14:58:59 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-08-09 10:55 AM, Elvis Dowson wrote:
> Hi Bruce,
>
> On Aug 9, 2012, at 6:50 PM, Bruce Ashfield wrote:
>
>> On 12-08-09 10:48 AM, Elvis Dowson wrote:
>>> Hi,
>>>
>>> In my local.conf I have set the following variable
>>>
>>> PREFERRED_VERSION_linux-libc-headers = "linux-libc-headers_3.3"
>>
>> Have you tried dropping the "linux-libc-headers" ?
>>
>> i.e. PREFERRED_VERSION_linux-libc-headers = "3.3"
>>
>
> Ahh, ok, that worked.
>
> Along similar lines, if I had to explicitly set the gcc version, is it
> correct to specify the following variables?

In my experience .. it is always just the version, not the package that
you want to specify, so from all of those, you'd drop the gcc_ .. etc,
from the string.

Bruce

>
> PREFERRED_VERSION_gcc = "gcc_4.6"
> PREFERRED_VERSION_gcc-cross = "gcc-cross_4.6"
> PREFERRED_VERSION_gcc-cross-initial = "gcc-cross-initial_4.6"
> PREFERRED_VERSION_gcc-cross-intermediate = "gcc-cross-intermediate_4.6"
> PREFERRED_VERSION_gcc-cross-canadian = "gcc-cross-canadian_4.6"
> PREFERRED_VERSION_gcc-crosssdk= "gcc-crosssdk_4.6"
> PREFERRED_VERSION_gcc-crosssdk-initial= "gcc-crosssdk-initial_4.6"
> PREFERRED_VERSION_gcc-crosssdk-intermediate= "gcc-crosssdk-intermediate_4.6"
> PREFERRED_VERSION_gcc-runtime = "gcc-runtime_4.6"
> PREFERRED_VERSION_libgcc = "libgcc_4.6"
>
> Best regards,
>
> Elvis Dowson
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


