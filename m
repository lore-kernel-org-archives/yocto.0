Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f174.google.com (mail-ie0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02A52E0096A
	for <yocto@yoctoproject.org>; Tue,  4 Mar 2014 14:46:29 -0800 (PST)
Received: by mail-ie0-f174.google.com with SMTP id rp18so233346iec.5
	for <yocto@yoctoproject.org>; Tue, 04 Mar 2014 14:46:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=TGMEPdwP9JUTdN2kKVdmmo2QUjBPmSlRjgbnlhZikHE=;
	b=xXnK4BnZfwkl+9BUlMlopI9W0637ZgJSv09/ldexaQs/1/viBM8w92BzDdWQcRtEzJ
	HxOGP6VJtSQTWsj0UCVwHuGSADt6MdQKEF1Ncr6bYdadNx2y8lX4KuWTgVhmiyTPNm65
	Jta9qM64m6YyHurdrvg0LIjwnMEWYmd9HTOkELn2bsmkUkKFc33t4hgpVtGYAOfrhvJ2
	Wirib7stYziHAtJL4y/kjzjfKq8aWxGm0xSdTzWabrEXQ6tYKebiQrVf0AVSKPQ3VVba
	zpGcli73g0MoOXqL1RJRIy/ycYBPsCEhvDLfabR8OwxYz/VcPQ9GPIZJqC9RNHhr8+i5
	dkIg==
X-Received: by 10.50.20.100 with SMTP id m4mr5875141ige.17.1393973188900; Tue,
	04 Mar 2014 14:46:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.224.136 with HTTP; Tue, 4 Mar 2014 14:45:58 -0800 (PST)
In-Reply-To: <CAM1ZcoX8R7CLcrLzXA2B9LqYLkHGPCtqSpsapcBP39-DWKc6tA@mail.gmail.com>
References: <CAM1ZcoVHPgerCQnFsP5EpAu=71s-WMHYfrwM3Q5eBFngKPq8XA@mail.gmail.com>
	<CAM1ZcoX8R7CLcrLzXA2B9LqYLkHGPCtqSpsapcBP39-DWKc6tA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 4 Mar 2014 14:45:58 -0800
Message-ID: <CAMKF1spktCyfdaT+i=eGVZFywMRPRXCmNP0u=DAwzRZCgz1eZw@mail.gmail.com>
To: Katu Txakur <katutxakurra@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: enable/disable systemd from image.bb
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
X-List-Received-Date: Tue, 04 Mar 2014 22:46:32 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 4, 2014 at 6:38 AM, Katu Txakur <katutxakurra@gmail.com> wrote:
> Sorry, I sent it uncompleted by mistake.
>
> I've also tried
>
> ROOTFS_POSTPROCESS_COMMAND =+ "\
>     rm -rf /etc/systemd/system/multi-user.target.wants/recipeA.service; \
> "
>
> but it didn't work either. Anyone knows how to do this?
>

you can mask the service via a postprocess command something like
systemctl --root=${D} mask <yourservice>.service


> Thanks,
> Katu
>
>
> 2014-03-04 14:37 GMT+00:00 Katu Txakur <katutxakurra@gmail.com>:
>
>> Hi,
>>
>> I'm using Yocto 1.3 and I've created some recipes. All of them have
>> systemd services. Some of them start at boot time and others don't. Let's
>> say for example:
>> recipeA_1.0.bb > SYSTEMD_AUTO_ENABLE_${PN}-systemd = "enable"
>> recipeB_1.0.bb > SYSTEMD_AUTO_ENABLE_${PN}-systemd = "disable"
>>
>> I want to create two image.bb files. One of them will start A and the
>> other one will start B. I've tried adding
>>
>> imageB.bb
>> .....
>> SYSTEMD_AUTO_ENABLE_recipeA-systemd = "disable"
>> SYSTEMD_AUTO_ENABLE_recipeB-systemd = "enable"
>> .....
>>
>> I've also tried
>>
>>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

