Return-Path: <sven.ebenfeld@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1505E00576; Wed, 27 Aug 2014 00:46:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sven.ebenfeld[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f170.google.com (mail-lb0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A01DE0054C
	for <yocto@yoctoproject.org>; Wed, 27 Aug 2014 00:46:54 -0700 (PDT)
Received: by mail-lb0-f170.google.com with SMTP id p9so2668075lbv.15
	for <yocto@yoctoproject.org>; Wed, 27 Aug 2014 00:46:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=0ejZH8esDx9r45FOxe4S7opBnNwvPfGBcJPUeMmdIFY=;
	b=Dhx6/nz1G5C4RahYMlI1IuySn/Qs/JUkASschginQr3vIvK3qOdxl+eyUZ0mwyb6RS
	x8eLUgJG0juakEiB7ZPomL0k38X7eLzhaTMo0pOMTYzOA0CkjmftqjR9sLoQyg6v43V2
	aA9mxD5kIwcq4J3BzbrsF1sKh3DW4XadsDJF6bmse/eItGb/4ofk1mAPrdEmLRP3HBaR
	RxXix6cJxKJJqBUSWT2RR707tN2qC63/0ldeA46KYh8UuOHxRyYMFzoHjVPzjL2hCauQ
	LeWNnDTyNOuVrZA2ZungXj/bRbdupZgwOeGh8NaPmXTRdYdhWufNjHOhwauA6OymbaQl
	k+bw==
X-Received: by 10.112.56.206 with SMTP id c14mr30958070lbq.27.1409125612896;
	Wed, 27 Aug 2014 00:46:52 -0700 (PDT)
Received: from [192.168.50.237] (ip-109-90-30-8.hsi11.unitymediagroup.de.
	[109.90.30.8])
	by mx.google.com with ESMTPSA id d9sm3688532lad.11.2014.08.27.00.46.51
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 27 Aug 2014 00:46:51 -0700 (PDT)
Message-ID: <53FD8CEB.8010504@gmail.com>
Date: Wed, 27 Aug 2014 09:46:51 +0200
From: Sven Ebenfeld <sven.ebenfeld@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <5390133D-A7A4-4E21-A2D9-D9BBAF6F849F@keylevel.com>
	<53FCE7DD.7010102@gmail.com>
	<A12629B8-0554-4039-8796-8E1585744D30@keylevel.com>
In-Reply-To: <A12629B8-0554-4039-8796-8E1585744D30@keylevel.com>
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
X-List-Received-Date: Wed, 27 Aug 2014 07:47:00 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



Am 26.08.2014 22:51, schrieb Chris Tapp:
> 
> On 26 Aug 2014, at 21:02, Sven Ebenfeld <sven.ebenfeld@gmail.com> wrote:
> 
>> You should look at  "ConditionPathExists=" Options of systemd-units.
> 
> Thanks, that looks like it would do the job. I was hoping not to hard code paths as they may change if a configuration file is changed, but...
> 
>> Otherwise if udev is loading your device module, you could add the
>> device-unit to "Requires=" option.
> 
> This sounds better. Is there an easy way to tell if udev did load the module? There's nothing obvious in the syslog.

If you didn't load the module by hand it's probably udev. If you didn't
run modprobe or insmod. Then you should try to create a device-unit for
the device.

For /dev/dvb/adaptor the unit should probably be something like
dev-dvb-adaptor.device .

> 
>> Am 26.08.2014 21:52, schrieb Chris Tapp:
>>> I've got a service running under systemd that will only start once a kernel module has loaded and created its /dev/dvb/adaptor nodes.
>>>
>>> Unfortunately, it doesn't load until after the service has failed and gone into an error state due to too many restarts.
>>>
>>> I could "fix" this by increasing the restart interval, but is there a way of adding a dependancy on the kernel module?
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

