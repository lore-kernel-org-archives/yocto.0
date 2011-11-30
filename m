Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BB27E0030A
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2011 15:18:35 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pAUNIUG8007394
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 30 Nov 2011 15:18:30 -0800 (PST)
Received: from [128.224.21.135] (128.224.21.135) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 30 Nov 2011 15:18:29 -0800
Message-ID: <4ED6B9C3.50301@windriver.com>
Date: Wed, 30 Nov 2011 18:18:27 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.23) Gecko/20110922 Thunderbird/3.1.15
MIME-Version: 1.0
To: Wolfgang Denk <wd@denx.de>
References: <alpine.DEB.2.02.1111291759160.17235@oneiric>	<1592821.2ngvXcyh81@helios>	<alpine.DEB.2.02.1111300644120.18752@oneiric>	<4ED6AED5.8070308@linux.intel.com>
	<20111130224717.709871828FD3@gemini.denx.de>
In-Reply-To: <20111130224717.709871828FD3@gemini.denx.de>
Cc: yocto@yoctoproject.org
Subject: Re: how to cleanly exit a QEMU session?
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
X-List-Received-Date: Wed, 30 Nov 2011 23:18:35 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-11-30 05:47 PM, Wolfgang Denk wrote:
> Dear Joshua Lock,
>
> In message<4ED6AED5.8070308@linux.intel.com>  you wrote:
>>
>> What do people think to the idea of putting something into the image for
>> those two specific machines which aliases poweroff to reboot?
>
> I consider it a really bad idea, as "poweroff" is actually a very
> different action than "reboot" - the former should shut down and halt
> the system, while the latter should actually restart it.
>
> It appears both operations are not properly working and need to be

The hardware that qemu 'models' in both cases doesn't perform
this function either, so the behaviour is consistent. We looked
into fix it, and quite frankly, there was very little value in
fixing it, so simply using reboot was good enough given the scope
of the problem.

Cheers,

Bruce

> fixed.
>
> Best regards,
>
> Wolfgang Denk
>


