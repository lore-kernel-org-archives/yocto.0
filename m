Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA804E00348
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2012 14:50:56 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 72A08F81221; Thu, 13 Dec 2012 15:50:56 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 55089F8120E;
	Thu, 13 Dec 2012 15:50:54 -0700 (MST)
Message-ID: <50CA5BE5.5000709@mlbassoc.com>
Date: Thu, 13 Dec 2012 15:51:17 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.DEB.2.02.1212131456500.10980@oneiric>
	<88701C38B5D07249817D428430999C9128AA9E5D@sestoex09.enea.se>
	<alpine.DEB.2.02.1212131644350.12603@oneiric>
In-Reply-To: <alpine.DEB.2.02.1212131644350.12603@oneiric>
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
X-List-Received-Date: Thu, 13 Dec 2012 22:50:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

On 2012-12-13 14:45, Robert P. J. Day wrote:
> On Thu, 13 Dec 2012, David Nyström wrote:
>
>> Hi,
>>
>> Hmm,
>> This will lead to these variables beeing append:able but non-overridable in image layer, as an(un?)intended consequence,
>> right ?
>>
>> Br,
>> David
>>
>> Sent from my Android phone using TouchDown (www.nitrodesk.com)
>>
>> -----Original Message-----
>> From: Robert P. J. Day [rpjday@crashcourse.ca]
>> Received: Thursday, 13 Dec 2012, 20:59
>> To: Yocto discussion list [yocto@yoctoproject.org]
>> Subject: [yocto] [PATCH] Use "+=" consistently when setting IMAGE_FSTYPES in Yocto machine conf files.
>>
>>
>> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
>>
>> ---
>>
>> diff --git a/meta-yocto-bsp/conf/machine/atom-pc.conf b/meta-yocto-bsp/conf/machine/atom-pc.conf
>> index 77dd7fb..fbde1d3 100644
>> --- a/meta-yocto-bsp/conf/machine/atom-pc.conf
>> +++ b/meta-yocto-bsp/conf/machine/atom-pc.conf
>> @@ -25,7 +25,7 @@ XSERVER ?= "xserver-xorg \
>>
>>   MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
>>
>> -IMAGE_FSTYPES ?= "ext3 cpio.gz live"
>> +IMAGE_FSTYPES += "ext3 cpio.gz live"
>>
>>   APPEND += "usbcore.autosuspend=1"
>>
>> diff --git a/meta-yocto-bsp/conf/machine/routerstationpro.conf b/meta-yocto-bsp/conf/machine/routerstationpro.conf
>> index e5e4d1a..c7a5ad5 100644
>> --- a/meta-yocto-bsp/conf/machine/routerstationpro.conf
>> +++ b/meta-yocto-bsp/conf/machine/routerstationpro.conf
>> @@ -22,5 +22,5 @@ USE_VT ?= "0"
>>
>>   MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
>>
>> -IMAGE_FSTYPES ?= "jffs2 tar.bz2"
>> +IMAGE_FSTYPES += "jffs2 tar.bz2"
>
>    please don't top post.  and i'll have to take a look at this to see
> what the potential problem is here.  can anyone else see a potential
> issue with this patch?

Yes, as David said, it eliminates the possibility of overriding
the variable.  IMO, all of these should be ?= which lets there
be a useful default, but can still be [completely] overridden
by the user.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

