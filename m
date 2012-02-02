Return-Path: <jfabernathy@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F08FE00592
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2012 09:44:33 -0800 (PST)
Received: by qcsd1 with SMTP id d1so1858426qcs.35
	for <yocto@yoctoproject.org>; Thu, 02 Feb 2012 09:44:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=SJNlgfknIaKylL+5gnLXn8nCFufy1uqXRatyHikim2o=;
	b=D9FkfR4QHzXonTj79r4nSjJWy8Jwihmo8xyKlWpBysS9/N5FzrMI2uJxHvb03UMrcZ
	eVWkwqzjWdwwAbUFna4hJljINXqFpJ8WHELyNByzp33NRBFf+dA6puZHcrQqNRrDAgFP
	26XCZlIIedLYwT/PFJowM66eSA3fpP835ROAE=
Received: by 10.229.114.210 with SMTP id f18mr1471161qcq.121.1328204672687;
	Thu, 02 Feb 2012 09:44:32 -0800 (PST)
Received: from [10.0.1.54] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	fh6sm6852453qab.22.2012.02.02.09.44.31 (version=SSLv3 cipher=OTHER);
	Thu, 02 Feb 2012 09:44:32 -0800 (PST)
Message-ID: <4F2ACB7F.4010509@gmail.com>
Date: Thu, 02 Feb 2012 12:44:31 -0500
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F2A0A34.4020605@gmail.com> <4F2AB4FF.5070208@gmail.com>
	<4F2AC2AB.6030204@windriver.com> <4F2AC9A5.5040706@gmail.com>
In-Reply-To: <4F2AC9A5.5040706@gmail.com>
Subject: Re: needed site is down???
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
X-List-Received-Date: Thu, 02 Feb 2012 17:44:33 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/02/2012 12:36 PM, jfabernathy wrote:
> On 02/02/2012 12:06 PM, Mark Hatle wrote:
>> On 2/2/12 10:08 AM, jfabernathy wrote:
>>> On 02/01/2012 10:59 PM, jfabernathy wrote:
>>>> Am I the only one seeing this dead link?  I'm building from master and
>>>> can't get to this link that draws the error:
>>>>
>>>> http://cgit.freedesktop.org/libva/snapshot/libva-1.0.12.tar.bz2
>>>>
>>>> I'm building crownbay bsp with core-image-sato.
>>>>
>>>> Jim A
>>>>
>>> I can't seem to build anything that requires something from
>>> cgit.freedesktop.org.  The whole site seems to be down.  Is there a 
>>> mirror?
>>
>> Using the standard poky distribution configuration, you should be 
>> connecting to our mirrors.
>>
>> meta-yocto/conf/distro/poky.conf has the settings.  All of the 
>> upstream packages should be mirrored there.  If they are not, then 
>> please let us know and we'll work on resolving any missing files.
>>
>> --Mark
>>
> In the poky.conf file you mentioned, I see the statement in the mirror 
> section:
>
> http://.*/.*     http://autobuilder.yoctoproject.org/sources/ \n \
>
> I'm not sure if this statement will allow the yocto mirror site to 
> pull the dead location:
>
> http://cgit.freedesktop.org/libva/snapshot/libva-1.0.12.tar.bz2
>>> JIm A
>>>
>>> _
Just noticed that what's on the Yocto mirror is 
libva_0.31.0-1+sds9.1ubuntu1.tar.gz ), but the recipe is calling for a 
newer version, libva-1.0.12.tar.bz2

Jim A

>>> ______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>


