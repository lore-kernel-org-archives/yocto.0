Return-Path: <autif.mlist@gmail.com>
Received: from mail-pz0-f41.google.com (mail-pz0-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAD6CE0059A
	for <yocto@yoctoproject.org>; Fri,  6 Apr 2012 06:40:23 -0700 (PDT)
Received: by dajx4 with SMTP id x4so3208674daj.28
	for <yocto@yoctoproject.org>; Fri, 06 Apr 2012 06:40:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=i0zHmBNdAOUAFUWY7GFeMHUvOpcu4B1gAGBDJ05pueg=;
	b=J0PRIWo4VTSK4vs/x1s5/wmD6qhpgIdmrYas01oOPiBCYCQ9cbhq56GUgiqUL21h+s
	iMS7UeIqPMQLOMiOLQKZoPWMW4XHg2G7eNOQLd6/6izr0o57lmA/PnjzAbTaR7gpVuxt
	04wG5Fghn6/uiQWMv3RzrK1u017Q/SZ1gpe3mqfLOAVJbrgGcOnClaYk27leFpiB8ZzQ
	3sQX2FSgPlLSowxTLubhcNrAoMKWzQodd1Zk2TBCQMkrWeTmgZWk+48BpMQwhnMhCZ/5
	wO7VBS1co/4cUixFkZFA8n4C3RieMFPlzvBtRGsMJpjEDkTYGeQXQKR5EHcWKYAiy4bv
	3c2A==
MIME-Version: 1.0
Received: by 10.68.130.196 with SMTP id og4mr15357243pbb.155.1333719623601;
	Fri, 06 Apr 2012 06:40:23 -0700 (PDT)
Received: by 10.68.20.134 with HTTP; Fri, 6 Apr 2012 06:40:23 -0700 (PDT)
In-Reply-To: <CADzUK1JNq71fqEdMUiv1WfTiGb12+mixnZzDWeHw4+kwrR1a-A@mail.gmail.com>
References: <4F7EB894.3040308@r-finger.com>
	<CADzUK1JNq71fqEdMUiv1WfTiGb12+mixnZzDWeHw4+kwrR1a-A@mail.gmail.com>
Date: Fri, 6 Apr 2012 09:40:23 -0400
Message-ID: <CADzUK1JWf-SoXi-fW=LX3JtCp8Aic90XddVVTeaQ9oE4aMaRoA@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: using and auditing kernel config fragments
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
X-List-Received-Date: Fri, 06 Apr 2012 13:40:24 -0000
Content-Type: text/plain; charset=ISO-8859-1

>> For some reason which I cannot work out, the rt2800usb options are
>> removed (rather then disabled) from the yocto kernel config, i.e., if I
>> run 'bitbake -c menuconfig linux-yocto', there is very little under
>> Drivers->Net->WLAN. If I run menuconfig in the devshell, there are lots
>> more WLAN drivers available, including the rt2800.
>
> Under Device Drivers -> Network device support -> Wireless LAN, You
> have to enable Ralink driver support to see the options for
> CONFIG_RT2800USB
>
> It is not under Device Drivers -> Network device support -> Wireless LAN
>
> It is under Device Drivers -> Network device support -> Wireless LAN
> -> Ralink driver support

I forgot to mention - Under Networking Support -> Wireless, you need
to enable cfg80211 AND msc80211 (Generic IEEE 802.11 Netowrking Stack)

Then the Ralink driver support shows up under Wireless LAN

