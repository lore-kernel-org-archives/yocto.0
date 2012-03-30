Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB36FE0044D
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 13:18:13 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q2UKIAOf021961
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 30 Mar 2012 13:18:10 -0700 (PDT)
Received: from msp-dhcp12.wrs.com (172.25.34.12) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 30 Mar 2012 13:18:10 -0700
Message-ID: <4F7614FE.5000107@windriver.com>
Date: Fri, 30 Mar 2012 15:18:06 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: Koen Kooi <koen@dominion.thruhere.net>
References: <D044B647-8BCD-48B4-BABD-CE4751D023E0@dominion.thruhere.net>
	<4F7608DC.1000402@windriver.com>
	<26C6B15B-4A12-453A-A146-C884A5040178@dominion.thruhere.net>
In-Reply-To: <26C6B15B-4A12-453A-A146-C884A5040178@dominion.thruhere.net>
Cc: yocto@yoctoproject.org
Subject: Re: Moving angstrom under the yocto banner
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
X-List-Received-Date: Fri, 30 Mar 2012 20:18:13 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 3/30/12 2:33 PM, Koen Kooi wrote:
>
> Op 30 mrt. 2012, om 12:26 heeft Mark Hatle het volgende geschreven:
>
>> On 3/30/12 1:44 PM, Koen Kooi wrote:
>>> Hi,
>>>
>>> RP said I should raise this on the yocto lists, so here it is:
>>>
>>> The Angstrom core team would like to move angstrom under the yocto banner so
>>> we can formally claim to be 'yocto'.
>>
>> For it to be on the yocto project web site, it just need to have the layers hosted on the git.yoctoproject.org.  But there is no "yocto".. It's the Yocto Project, Poky, or specific git repositories.  There is no reason we can't have an angstrom repository.  It could be in a similar format to the Poky repository (everything combined for a single download), or it could be a layer [or layers] that sit on top of Poky.
>
> Why on top of poky? I do not want poky, nor do my customers, oe-core is what
> we need and want. This proposal to move angstrom under yocto is targeted at
> eliminating 'poky' from the stack while still being able to say 'yocto'.

Poky is a repository made up of bitbake + oe-core + meta-yocto, as well as a 
distribution definition (in meta-yocto).  I assume angstrom has it's own 
distribution definition.

So my question is why NOT on top of Poky (the repository, not distribution 
definition)?

>
> We both know that saying it is 'yocto' is wrong and misleading, but that's
> what users are asking for and yocto advocates seem to push. Just watch the ELC
> videos for yocto related presentations, 'yocto' and 'poky' are used
> interchangeably in most of them.
>
> A 'reference' should be just that, a reference, not a mandated part.

It's hard to call something Yocto Project based unless it used something from 
the Yocto Project.  meta-yocto being on of those components.

There is enough confusion about yocto vs poky vs..  It's slowly being reconciled 
and defined.. but it's a slow process for all of us.

--Mark

>
> regards,
>
> Koen


