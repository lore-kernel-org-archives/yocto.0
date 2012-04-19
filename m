Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 617BAE0140E
	for <yocto@yoctoproject.org>; Thu, 19 Apr 2012 07:36:04 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q3JEa3ad017772
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 19 Apr 2012 07:36:03 -0700 (PDT)
Received: from msp-dhcp23.wrs.com (172.25.34.23) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 19 Apr 2012 07:36:03 -0700
Message-ID: <4F9022D2.5030900@windriver.com>
Date: Thu, 19 Apr 2012 09:36:02 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:11.0) Gecko/20120327 Thunderbird/11.0.1
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CAPhnLPCs-57NxB5-O=YSiqbPzQk0xhigEEfDEhwrGB2_qtgJ3Q@mail.gmail.com>
	<20120419102523.00657202B35@gemini.denx.de>
In-Reply-To: <20120419102523.00657202B35@gemini.denx.de>
Subject: Re: 1.2 release candidate 4 now available.
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
X-List-Received-Date: Thu, 19 Apr 2012 14:36:04 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 4/19/12 5:25 AM, Wolfgang Denk wrote:
> Dear Elizabeth,
>
> In message<CAPhnLPCs-57NxB5-O=YSiqbPzQk0xhigEEfDEhwrGB2_qtgJ3Q@mail.gmail.com>  you wrote:
>>
>> Release candidate 4 for 1.2 is now available for testing:
>
> Thanks.
>
>
> Sorry, here is a new Bug 2347 - libtool library files broken
>

I've commented on the bug report.  The libtool on the target being used to 
compile that item is broken in some way.  See the comments for a couple of 
possible solutions to the issue.

(For easy reference for people searching the email archives...)

The first question was, did you run libtoolize --copy --force before trying to 
compile?  If not, then the correct version of libtool is likely not being run 
from the build environment, but instead it's an older incompatible version 
included in the package being compiled.

Alternatively, if libtoolize was run, the target libtool itself is broken in 
some way related to the sysroots.  The libtool (.la) files themselves though 
appear to be correct based on the results of your grep.

--Mark

> Best regards,
>
> Wolfgang Denk
>


