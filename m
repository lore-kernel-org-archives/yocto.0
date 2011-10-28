Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82EB8E006CC
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2011 01:14:44 -0700 (PDT)
Received: from [192.168.0.69] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id 8E06123CB4
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2011 07:24:25 +0100 (BST)
Message-ID: <4EAA643B.3080104@communistcode.co.uk>
Date: Fri, 28 Oct 2011 09:13:47 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1319705155.10032.40.camel@localhost.localdomain>
	<1319770761.10032.44.camel@localhost.localdomain>
In-Reply-To: <1319770761.10032.44.camel@localhost.localdomain>
Subject: Re: how to set timezone
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
X-List-Received-Date: Fri, 28 Oct 2011 08:14:50 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 28/10/2011 03:59, Ni Qingliang wrote:
> Is anyone there?
>
>
>
> On Thu, 2011-10-27 at 16:45 +0800, Ni Qingliang wrote:
>> Hello All:
>>
>> what is the right way to set timezone?
>>
>> I have added tzdata into my image, and can find some variables in the
>> etc, e.g. 'TZ'.
>>
>> on my archlinux, I can set TIMEZONE in the rc.conf, and used in
>> rc.sysvinit (which will link the /etc/localtime using TIMEZONE).
>>
>> what is the right place to locate similar setting code (e.g. link
>> the /etc/localtime) in the yocto?
>>
>> thanks!
>>
>>
>>
>> --
>> Yi Qingliang
>> niqingliang@insigma.com.cn
>> http://niqingliang2003.wordpress.com
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

Hello Yi,

A lot of the project members are at a conference in europe this week and 
hence the lack of availability. They are popping in and out of IRC so 
you may get a better answer if you ask in there, otherwise it may be a 
day or two before someone has enough time to answer your query.

Regards,
Jack.

