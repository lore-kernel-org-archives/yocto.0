Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f172.google.com (mail-ie0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C76BE017B9
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 16:59:09 -0700 (PDT)
Received: by mail-ie0-f172.google.com with SMTP id tp5so3635544ieb.31
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 16:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=t9oEtbdM+pvPph/b22bkgMAL7W535SUjIG0xGTzB5cA=;
	b=0RQO72Mfrc7Ga463KizuqY1d/XF87cDj0yHq2w4A0txgmcVSBS4lYewOjIOtiyNej7
	BtGFH4qslXOvxwdTfmAmUNX8Jz9Ur+DWnuLHfWtCd1eZUrg3W5+gXZD7+uvMY14unon6
	RJOdvERoIKW1QEoNsGjmZ5Q8iIVQuFnbjejkblQDqgAAV8xTa2g1Y8kNCPIfR3Boes7s
	s0zO8nWAwhzVYYaLkSoDu30tQVQwJ+mF+b9pUHH6Xv9WQe3xdbusnxuplzltj5FP6Mzo
	OLt63beSLdDJ55SBWISLgFp7A3NO6P/Atq8CAT3M9belXl3gbeKpUTZjgwUMeAuVc6/z
	rnGw==
X-Received: by 10.50.17.9 with SMTP id k9mr188368igd.3.1383177549511; Wed, 30
	Oct 2013 16:59:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.219.195 with HTTP; Wed, 30 Oct 2013 16:58:39 -0700 (PDT)
In-Reply-To: <CANwz6nxT34jJGydYGe=snHHijwMdMOKdOgnxQWCp0KGkBN4OHw@mail.gmail.com>
References: <CANwz6nxT34jJGydYGe=snHHijwMdMOKdOgnxQWCp0KGkBN4OHw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 30 Oct 2013 16:58:39 -0700
Message-ID: <CAMKF1spw=Kr99nmVHjAw8PELK6E768RBpgxLCZFMcdMyConSEg@mail.gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: adding a udev entry for a camera
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
X-List-Received-Date: Wed, 30 Oct 2013 23:59:12 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 30, 2013 at 1:51 PM, Edward Vidal <vidal.develone@gmail.com> wrote:
> Hello,
> I am trying to add a c920 camera to my systems.  I am not getting a
> /dev/video0.
> lsusb --verbose shows the HD Pro Webcam C920
> Bus 001 Device 007: ID 046d:082d Logitech, Inc.
> Device Descriptor:
>   bLength                18
>   bDescriptorType         1
>   bcdUSB               2.00
>   bDeviceClass          239 Miscellaneous Device
>   bDeviceSubClass         2 ?
>   bDeviceProtocol         1 Interface Association
>   bMaxPacketSize0        64
>   idVendor           0x046d Logitech, Inc.
>   idProduct          0x082d
>   bcdDevice            0.11
>   iManufacturer           0
>   iProduct                2 HD Pro Webcam C920
>   iSerial                 1 211EF9AF
>   bNumConfigurations      1
> plus much more information
>
> I created /etc/udev/rules.d/10-c920.rules
> SUBSYSTEM=="video4linux", BUS=="usb", ATTRS{idvendor}=="0x046d",
> ATTRS{idProduct}=="0x082d", NAME="video0", MODE:="0660"
>
> mknod /dev/video0 c 81 0
>
> when I v4l2-ctl --all error no /dev/video0
> Any and all help will be appreciated.

you can check if udev rule is infact kicking in. use udevadm monitor/test

> Thanks
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

