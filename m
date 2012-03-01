Return-Path: <autif.mlist@gmail.com>
Received: from mail-pz0-f41.google.com (mail-pz0-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5223E013F1
	for <yocto@yoctoproject.org>; Wed, 29 Feb 2012 21:45:04 -0800 (PST)
Received: by dadv6 with SMTP id v6so383091dad.28
	for <yocto@yoctoproject.org>; Wed, 29 Feb 2012 21:45:04 -0800 (PST)
Received-SPF: pass (google.com: domain of autif.mlist@gmail.com designates
	10.68.130.233 as permitted sender) client-ip=10.68.130.233; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of autif.mlist@gmail.com
	designates 10.68.130.233 as permitted sender)
	smtp.mail=autif.mlist@gmail.com;
	dkim=pass header.i=autif.mlist@gmail.com
Received: from mr.google.com ([10.68.130.233])
	by 10.68.130.233 with SMTP id oh9mr16173185pbb.92.1330580704689
	(num_hops = 1); Wed, 29 Feb 2012 21:45:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=iW0b6HYmeV2Eo2rUQAXRHl4oUARVdkzM/XmDOBKbyxM=;
	b=xWyNYXxMUk6ZBlmDGlyTM6O8nrn5JlD/9a8EsyfsGVPqdG7Kwt/QFdS0R2wJmDJiMd
	A//MeV1HqDqDlZFfFSTIB1MnjFScoeEoBDtWj/lPgbjs7SIOEYV1nfTcbPXpZcikufCo
	BZdOB9ipzWZhNMANhIqqAkQGmldgYWhWsU32U=
MIME-Version: 1.0
Received: by 10.68.130.233 with SMTP id oh9mr13428360pbb.92.1330580704544;
	Wed, 29 Feb 2012 21:45:04 -0800 (PST)
Received: by 10.68.20.134 with HTTP; Wed, 29 Feb 2012 21:45:04 -0800 (PST)
In-Reply-To: <4F4F098B.3050506@gmail.com>
References: <CADzUK1J1+mLEg8n0X7HucQx9dMzO3NK5qZjrCEDYG2Rb=BrvVg@mail.gmail.com>
	<4F4F098B.3050506@gmail.com>
Date: Thu, 1 Mar 2012 00:45:04 -0500
Message-ID: <CADzUK1JCvOC0+26gFedg8g4-4661xcP7Bfi3Y6odzs+vV+BKSQ@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: USB touchscreen integration
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
X-List-Received-Date: Thu, 01 Mar 2012 05:45:05 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Mar 1, 2012 at 12:30 AM, Khem Raj <raj.khem@gmail.com> wrote:
> On 02/24/2012 10:04 AM, Autif Khan wrote:
>> I have a touchscreen made by AUO. It came with a driver which I have
>> written a recipe for and it seems to be compiling and when the
>> touchscreen is detected, the driver seems to be loading and
>> controlling the touchscreen. (Its not under the control of hid_core
>> driver).
>>
>> It shows up in /proc/bus/input/devices
>>
>> I: Bus=0003 Vendor=03eb Product=201c Version=1503
>> N: Name="pixcir_hid_mt_v2.0"
>> P: Phys=
>> S: Sysfs=/devices/pci0000:00/0000:00:17.0/0000:01:00.0/0000:02:02.0/usb3/3-1/3-1:1.0/input/input4
>> U: Uniq=
>> H: Handlers=mouse0
>> B: PROP=0
>> B: EV=b
>> B: KEY=400 0 0 0 0 0 0 0 0 0 0
>> B: ABS=650000 3
>>
>> It shows up as /dev/input/mouse0
>
> tslib handles /dev/input/touchscreen0 can you modify the driver ?

After struggling, I realized that enabling events and events debug, I
can get more information - which lead me to an issue with the LCD
driver provided by the vendor. Vendor is supporting me since.

