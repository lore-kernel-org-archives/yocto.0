Return-Path: <jfabernathy@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB665E00289
	for <yocto@yoctoproject.org>; Thu,  2 Aug 2012 08:03:55 -0700 (PDT)
Received: by yenl5 with SMTP id l5so10177217yen.35
	for <yocto@yoctoproject.org>; Thu, 02 Aug 2012 08:03:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=zBU6vGKaddBjy90DcI/eouzylZ5WfjaekwMX8pDWm3Q=;
	b=KBlfJNtsJKBPgHArYJHbEqbi2+Xl8dOHF7e0KbkVOb9CLPOnkm6P/R++JZam1JZXoN
	bJUnzA4rqtiGot9fw1Bt4j9A/EoBGzGlg26ywzRh0Axtw3IoEfJkp4zhVGQYLwpmqR/i
	DSrlGWEoG2jjScfYxcPOneTiLDzRfEWpt8mW/ubOwvKhxEIV49pP5VKWqAv3xFVEiOpZ
	54mro/+22BtCVExsddc/cOtPOByxZ057wfqjaSNqoozEe0TNyjotpiy/ZBUj/M0CDOXV
	nAmhYhUOpmDtDdvwIgSXrw3U28OwKsBhVk7s/x1qjIHvwoL6v+QlF5uGuzwH05F3eVs/
	05mg==
Received: by 10.236.153.39 with SMTP id e27mr21294515yhk.130.1343919835349;
	Thu, 02 Aug 2012 08:03:55 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-39-191.dhcp.embarqhsd.net. [184.4.39.191])
	by mx.google.com with ESMTPS id l12sm5736098ank.2.2012.08.02.08.03.54
	(version=SSLv3 cipher=OTHER); Thu, 02 Aug 2012 08:03:54 -0700 (PDT)
Message-ID: <501A96D9.8070109@gmail.com>
Date: Thu, 02 Aug 2012 11:03:53 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1343847593.30566.YahooMailNeo@web121606.mail.ne1.yahoo.com>
	<501A76FF.20102@gmail.com>
In-Reply-To: <501A76FF.20102@gmail.com>
Subject: Re: build error pandaboard on master
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
X-List-Received-Date: Thu, 02 Aug 2012 15:03:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/02/2012 08:47 AM, Jim Abernathy wrote:
> On 08/01/2012 02:59 PM, maniacbug wrote:
>> Yup, I can verify that denzil builds and runs on Pandaboard with 
>> meta-ti 30fb40ebc13614a74c2e237927c60ac43e01d1bc.  Haven't tried 
>> master, but don't see a need if denzil is going to work.  BTW, I did 
>> not find it necessary to use meta-oe.
>>
>>
>> Both core-image-base and core-image-sato are working swell, except 
>> for sound.  Though the latest omap4 kernel has lots of improvements 
>> in that area, so I'm in the midst of upgrading it to see if thatfind 
>> helps.
>>
> I got core-image-minimal to build and boot, but not core-image-sato.  
> pulseaudio issues/ couln't build at all.
>
> Jim A
>
Got around this issue by checking out the denzil branch on meta-ti and 
poky.  then my core-image-sato builds and boots.

Anyone know how to get the wireless and HW accelerated video playback to 
work with the pandaboard and Yocto? maybe a different image?

Jim A

>>> Yes, this is a rather touch ball of twine with all these layers - they
>>> have to
>>> be properly aligned to get something that builds.
>> Wow, try it WITHOUT Yocto/Poky.  Yocto project seems to add 
>> stabilization and documentation to OE, which is about the only thing 
>> that makes it possible to get started at all :)
>>
>>> Work arounds:
>>>     * You could checkout meta-ti to something that matches denzil
>>>       Revision 30fb40ebc13614a74c2e237927c60ac43e01d1bc works for me.
>>
>> I would actually call this the CORRECT solution, not just a 
>> workaround.  meta-ti should create a denzil-tracking branch from this 
>> commit.
>>> How in the world you knew how to find that commit number is the part 
>>> that amazes me
>> This commit was identified and discussed on the meta-ti list as the 
>> point of departure from denzil, that's how I found it, myself.
>>
>> m.b
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>


