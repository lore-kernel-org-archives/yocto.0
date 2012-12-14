Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C7A6E006B4
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2012 19:50:36 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id qBE3oYVB011632
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 13 Dec 2012 19:50:35 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.22.174) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.318.4; Thu, 13 Dec 2012 19:50:34 -0800
Message-ID: <50CAA209.1000009@windriver.com>
Date: Thu, 13 Dec 2012 22:50:33 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <alpine.DEB.2.02.1212131456500.10980@oneiric>
	<88701C38B5D07249817D428430999C9128AA9E5D@sestoex09.enea.se>
	<alpine.DEB.2.02.1212131644350.12603@oneiric>
	<50CA5BE5.5000709@mlbassoc.com>
In-Reply-To: <50CA5BE5.5000709@mlbassoc.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] Use "+=" consistently when setting IMAGE_FSTYPES in Yocto machine conf files.
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
X-List-Received-Date: Fri, 14 Dec 2012 03:50:37 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 8bit

On 12-12-13 5:51 PM, Gary Thomas wrote:
> On 2012-12-13 14:45, Robert P. J. Day wrote:
>> On Thu, 13 Dec 2012, David Nyström wrote:
>>
>>> Hi,
>>>
>>> Hmm,
>>> This will lead to these variables beeing append:able but
>>> non-overridable in image layer, as an(un?)intended consequence,
>>> right ?
>>>
>>> Br,
>>> David
>>>
>>> Sent from my Android phone using TouchDown (www.nitrodesk.com)
>>>
>>> -----Original Message-----
>>> From: Robert P. J. Day [rpjday@crashcourse.ca]
>>> Received: Thursday, 13 Dec 2012, 20:59
>>> To: Yocto discussion list [yocto@yoctoproject.org]
>>> Subject: [yocto] [PATCH] Use "+=" consistently when setting
>>> IMAGE_FSTYPES in Yocto machine conf files.
>>>
>>>
>>> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
>>>
>>> ---
>>>
>>> diff --git a/meta-yocto-bsp/conf/machine/atom-pc.conf
>>> b/meta-yocto-bsp/conf/machine/atom-pc.conf
>>> index 77dd7fb..fbde1d3 100644
>>> --- a/meta-yocto-bsp/conf/machine/atom-pc.conf
>>> +++ b/meta-yocto-bsp/conf/machine/atom-pc.conf
>>> @@ -25,7 +25,7 @@ XSERVER ?= "xserver-xorg \
>>>
>>> MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
>>>
>>> -IMAGE_FSTYPES ?= "ext3 cpio.gz live"
>>> +IMAGE_FSTYPES += "ext3 cpio.gz live"
>>>
>>> APPEND += "usbcore.autosuspend=1"
>>>
>>> diff --git a/meta-yocto-bsp/conf/machine/routerstationpro.conf
>>> b/meta-yocto-bsp/conf/machine/routerstationpro.conf
>>> index e5e4d1a..c7a5ad5 100644
>>> --- a/meta-yocto-bsp/conf/machine/routerstationpro.conf
>>> +++ b/meta-yocto-bsp/conf/machine/routerstationpro.conf
>>> @@ -22,5 +22,5 @@ USE_VT ?= "0"
>>>
>>> MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
>>>
>>> -IMAGE_FSTYPES ?= "jffs2 tar.bz2"
>>> +IMAGE_FSTYPES += "jffs2 tar.bz2"
>>
>> please don't top post. and i'll have to take a look at this to see
>> what the potential problem is here. can anyone else see a potential
>> issue with this patch?
>
> Yes, as David said, it eliminates the possibility of overriding
> the variable. IMO, all of these should be ?= which lets there
> be a useful default, but can still be [completely] overridden
> by the user.

I'd agree that if we were shooting for consistency, I'd go with
?= and not the +=.

Cheers,

Bruce

>


