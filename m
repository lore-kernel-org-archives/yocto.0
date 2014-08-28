Return-Path: <sven.ebenfeld@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF1E9E00798; Thu, 28 Aug 2014 12:51:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sven.ebenfeld[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.53 listed in list.dnswl.org]
Received: from mail-la0-f53.google.com (mail-la0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C7DEE00507
	for <yocto@yoctoproject.org>; Thu, 28 Aug 2014 12:51:07 -0700 (PDT)
Received: by mail-la0-f53.google.com with SMTP id s18so1561342lam.40
	for <yocto@yoctoproject.org>; Thu, 28 Aug 2014 12:51:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=SKCHro4juZOm6vixbHO3/BNf02SEINT8/u9uApQutvY=;
	b=m4gJoPfOOvW+A/csBMl0IbwPJBYFUsGgZkgttjjNSeT0a5OHt55+6Y0mvwITj1/EPK
	hhAVibagUqiqV8qzhJw21KGHCAlKAASrCcOUBJb7IkXMf9OTSPr+2MUY4kLrEpQ/X04a
	NoDTtYKgYxhP/QyE2MSjUjIqKBk9O6Avq4SdmFZ9nlfeC6MO0ClUZg5Yhg3tI/4UfU2V
	TEXH3t/1PxJisRqcr5AyFgGAIdrIhAQn4S44deaiwNnuhIONjh8BQfrRASENRm70Y1Tj
	Nsz2N/q6rRtcir6hLSX5M4uhJffaCEMxqnom4n1L+AcwRdtdEjgQYV4wq7PzolXREFyz
	wgnA==
X-Received: by 10.152.29.129 with SMTP id k1mr6673990lah.81.1409255466370;
	Thu, 28 Aug 2014 12:51:06 -0700 (PDT)
Received: from [192.168.50.237] (ip-109-90-30-8.hsi11.unitymediagroup.de.
	[109.90.30.8])
	by mx.google.com with ESMTPSA id ku1sm2992185lac.17.2014.08.28.12.51.04
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 28 Aug 2014 12:51:05 -0700 (PDT)
Message-ID: <53FF8828.8020207@gmail.com>
Date: Thu, 28 Aug 2014 21:51:04 +0200
From: Sven Ebenfeld <sven.ebenfeld@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <5390133D-A7A4-4E21-A2D9-D9BBAF6F849F@keylevel.com>
	<53FCE7DD.7010102@gmail.com>
	<A12629B8-0554-4039-8796-8E1585744D30@keylevel.com>
	<53FD8CEB.8010504@gmail.com>
	<E3B47DAE-345A-46B5-BA2C-BCD47795773F@keylevel.com>
In-Reply-To: <E3B47DAE-345A-46B5-BA2C-BCD47795773F@keylevel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: systemd - how do I wait for a driver to load?
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
X-List-Received-Date: Thu, 28 Aug 2014 19:51:19 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Am 28.08.2014 18:57, schrieb Chris Tapp:
> 
> On 27 Aug 2014, at 08:46, Sven Ebenfeld <sven.ebenfeld@gmail.com> wrote:
>> Am 26.08.2014 22:51, schrieb Chris Tapp:
>>> On 26 Aug 2014, at 21:02, Sven Ebenfeld <sven.ebenfeld@gmail.com> wrote:
>>>
>>>> You should look at  "ConditionPathExists=" Options of systemd-units.
>>>
>>> Thanks, that looks like it would do the job. I was hoping not to hard code paths as they may change if a configuration file is changed, but...
>>>
>>>> Otherwise if udev is loading your device module, you could add the
>>>> device-unit to "Requires=" option.
>>>
>>> This sounds better. Is there an easy way to tell if udev did load the module? There's nothing obvious in the syslog.
>>
>> If you didn't load the module by hand it's probably udev. If you didn't
>> run modprobe or insmod. Then you should try to create a device-unit for
>> the device.
>>
>> For /dev/dvb/adaptor the unit should probably be something like
>> dev-dvb-adaptor.device .
> 
> Thanks. I've now got a udev rule firing when the device loads.
> 
> I'm using this to create a device alias (SYMLINK) so I can get consistent names, and this is working great.
> 
> I've added TAG+="systemd" to the rule and I'm getting a .device generated automatically when the driver loads. However, the name for this isn't friendly (lots of bus id components). Is there a way to create my own name as my service doesn't want to know where the device is on the bus?
> 
> I've tried adding something like ENV{SYSTEMD_WANTS}="some-new-name.device" - this also gets created, but it never becomes active (and can't be manually started).
> 

There should be an option like SYSTEMD_ALIAS in udev database. I haven't
used it yet, but I think it should help out here.

http://www.freedesktop.org/software/systemd/man/systemd.device.html
describes it as "SYSTEMD_ALIAS= Adds an additional alias name to the
device unit. This must be an absolute path that is automatically
transformed into a unit name. (See above.)"

>> Am 26.08.2014 21:52, schrieb Chris Tapp:
>>>>> I've got a service running under systemd that will only start once a kernel module has loaded and created its /dev/dvb/adaptor nodes.
>>>>>
>>>>> Unfortunately, it doesn't load until after the service has failed and gone into an error state due to too many restarts.
>>>>>
>>>>> I could "fix" this by increasing the restart interval, but is there a way of adding a dependancy on the kernel module?
>>>>>
>>>>> --
>>>>>
>>>>> Chris Tapp
>>>>> opensource@keylevel.com
>>>>> www.keylevel.com
>>>>>
>>>>>
>>>>>
>>>>>
>>>
>>> --
>>>
>>> Chris Tapp
>>> opensource@keylevel.com
>>> www.keylevel.com
>>>
>>>
>>>
>>>
> 
> --
> 
> Chris Tapp
> opensource@keylevel.com
> www.keylevel.com
> 
> 
> 
> 

