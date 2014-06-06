Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F10FBE00BEA; Fri,  6 Jun 2014 05:31:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.41 listed in list.dnswl.org]
Received: from mail-qg0-f41.google.com (mail-qg0-f41.google.com
	[209.85.192.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8870E00BB1
	for <yocto@yoctoproject.org>; Fri,  6 Jun 2014 05:31:25 -0700 (PDT)
Received: by mail-qg0-f41.google.com with SMTP id j5so4258183qga.28
	for <yocto@yoctoproject.org>; Fri, 06 Jun 2014 05:31:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=BVKv6XPXa1eJH1DMkERvfLsaZuQBR3G2jmyRfX/JwiU=;
	b=WJm1uz3CnMK5eH7oaSat1KPXf7GqzeDD4U5T+bZ5R5W/zbFQJcVLjte9fTqq0h0UKY
	TGTFsqKAaw3lJbFCv4rnT3UgwOKYei+cia9tDZzzraQloWjYVwxHsQfIU1dGfCNq92/J
	TbGTxQwT0GHk5XDiGbNBAIDTw9c0Yl1a4l8/lDnK0tQzgMuTpNjVvN1pIaXGIWBUEcqM
	j7+oVM5RxbBH0xD8CafJrR8oGegmD/t3VGVuegZ9hrgV69Le1bdkcaZ9cDkL7gZJJfOo
	2A/4ir2yF6WDLzHvHik2c1uyghVnAyC2tfvee9dTAWe9ZEJH1CI5sTZdp1ScJvUUyJ32
	8feg==
X-Gm-Message-State: ALoCoQnbwc8rBajVuMVpNrFhIe9IlBFoinQ26bIz8NauHiOuu5hsZqZgbQ90lJpZly6HCyDeNnoB
X-Received: by 10.140.91.161 with SMTP id z30mr7461063qgd.65.1402057884445;
	Fri, 06 Jun 2014 05:31:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Fri, 6 Jun 2014 05:31:04 -0700 (PDT)
In-Reply-To: <lms7fl$84c$1@ger.gmane.org>
References: <lmphm1$2bk$1@ger.gmane.org> <lmrmc7$vdr$1@ger.gmane.org>
	<CANyK_8f8oO+7gVbcXXOLVAdxa5OpmHR2s6yj199LpWaQcjSheQ@mail.gmail.com>
	<lms7fl$84c$1@ger.gmane.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 6 Jun 2014 13:31:04 +0100
Message-ID: <CAJTo0La2RQgjFy2Y-SZG3P7LvOu9fB9n=NqA1p0Fc3WsnJyEVw@mail.gmail.com>
To: Neuer User <auslands-kv@gmx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problems with postinstall
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
X-List-Received-Date: Fri, 06 Jun 2014 12:31:29 -0000
Content-Type: text/plain; charset=UTF-8

On 6 June 2014 12:08, Neuer User <auslands-kv@gmx.de> wrote:
>> The postinst is executed by the package manager when the package is
>> installed. If that installation takes place during do_rootfs, ${D}
>> will refer to the rootfs directory for the image being built and ${S}
>> will probably refer to something else to do with the image recipe but
>> I'm not entirely sure on the details. If the installation takes place
>> on the device, or the postinst is delayed until the first boot, ${D}
>> and ${S} will not be set.
>>
>> Hope this helps,
>>
>
> So, I guess there are now two possibilities:
> a.) The postinstall is not done at all.
> b.) The postinstall is done, but before the other packages are
> installed, which overwrite the files again. Is this possible? If yes,
> howto specify that this postinstall should really be done last of all?

Basically a postinstall is *not* the way of doing this.  You can't
control when it runs and when it does, you can't get to the files you
want to install.

If the files are installed by other packages then use a bbappend to
change those files.  If nothing installs them already, write a recipe
to install them.  If there are changes that can only be done at rootfs
time, then use a rootfs postproces command.

Ross

