Return-Path: <autif.mlist@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 559CFE003E3
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2012 10:04:14 -0800 (PST)
Received: by pbbrp8 with SMTP id rp8so1745517pbb.35
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2012 10:04:14 -0800 (PST)
Received-SPF: pass (google.com: domain of autif.mlist@gmail.com designates
	10.68.223.199 as permitted sender) client-ip=10.68.223.199; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of autif.mlist@gmail.com
	designates 10.68.223.199 as permitted sender)
	smtp.mail=autif.mlist@gmail.com;
	dkim=pass header.i=autif.mlist@gmail.com
Received: from mr.google.com ([10.68.223.199])
	by 10.68.223.199 with SMTP id qw7mr10512910pbc.79.1330106654232
	(num_hops = 1); Fri, 24 Feb 2012 10:04:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=nFk98mffZysR0U5u+JEXnUJGNHYfEJwznQoUbDMxTgE=;
	b=TO5RjafUy4yClX0H0RIiOhBR6h7VLGyOKWxlxZRudi2Y9++/p0VMbOKIgw8dN1AjxJ
	eQPNlHHMvvO+S4nVNOAZLq/6nHbuGHUnW9DKcFcqCkcj6b3QKCg41sZiUlCbm/KkqVVi
	3I4Ha1mnCId2uoYSui0DR/i3X5xfeWkXoy+kc=
MIME-Version: 1.0
Received: by 10.68.223.199 with SMTP id qw7mr8698031pbc.79.1330106654186; Fri,
	24 Feb 2012 10:04:14 -0800 (PST)
Received: by 10.68.33.170 with HTTP; Fri, 24 Feb 2012 10:04:14 -0800 (PST)
Date: Fri, 24 Feb 2012 13:04:14 -0500
Message-ID: <CADzUK1J1+mLEg8n0X7HucQx9dMzO3NK5qZjrCEDYG2Rb=BrvVg@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: yocto@yoctoproject.org
Subject: USB touchscreen integration
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
X-List-Received-Date: Fri, 24 Feb 2012 18:04:14 -0000
Content-Type: text/plain; charset=ISO-8859-1

I have a touchscreen made by AUO. It came with a driver which I have
written a recipe for and it seems to be compiling and when the
touchscreen is detected, the driver seems to be loading and
controlling the touchscreen. (Its not under the control of hid_core
driver).

It shows up in /proc/bus/input/devices

I: Bus=0003 Vendor=03eb Product=201c Version=1503
N: Name="pixcir_hid_mt_v2.0"
P: Phys=
S: Sysfs=/devices/pci0000:00/0000:00:17.0/0000:01:00.0/0000:02:02.0/usb3/3-1/3-1:1.0/input/input4
U: Uniq=
H: Handlers=mouse0
B: PROP=0
B: EV=b
B: KEY=400 0 0 0 0 0 0 0 0 0 0
B: ABS=650000 3

It shows up as /dev/input/mouse0

While this is great, I am not sure how to wire this up with X so that
the mouse is actually functional on the screen.

A quick search at yocto wiki resulted in nothing, and google's search
in site:yoctoproject.org also resulted in somewhat irrelevant results.

I am using poky master on machine crownbay. X is running very well on
an LVDS monitor. Keyboard and mouse run fine when externally
connected. This query is limited to wiring a USB touchscreen with
yocto.

I am not sure what the next steps are. Please help!

Thanks

Autif

