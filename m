Return-Path: <b.hutchman@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0B68E0071D
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2012 12:51:00 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by bkvi18 with SMTP id i18so1126310bkv.35
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2012 12:50:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=C/VrADXJDqLXFDIqbZpeQTuFAwekUX0OUV3Q/ogDfEs=;
	b=Ueio6yGXIgd6LG6Zc9irR0TRf7HwvWYkh07Y2m1eLMEqbQfg3FRe5wK3oGVyguRfY3
	EVyF4As2Yntc3iZjPXmDQrrfYV85Keowx1g/xhtQLe5fvkc3LbZ/47e8tjQ5Al2n1eG4
	fkK5e4WOoaf4iSIaL1OGL6rsfEmz4RcZJMF/8=
MIME-Version: 1.0
Received: by 10.204.136.215 with SMTP id s23mr210524bkt.31.1326315059889; Wed,
	11 Jan 2012 12:50:59 -0800 (PST)
Received: by 10.205.141.203 with HTTP; Wed, 11 Jan 2012 12:50:59 -0800 (PST)
In-Reply-To: <4F0DF51C.6000700@windriver.com>
References: <CAFZh4h-oJeiWFcM1mowKDwmF0gqT3Y0DBMFZ0WEcjJchUS+N4A@mail.gmail.com>
	<4F0DA377.9090903@windriver.com>
	<CAFZh4h_0R_vt94Twh_Pm=7ED7XRpQ_ddo_+FN30TnDBC8wae_A@mail.gmail.com>
	<4F0DAACB.3010603@windriver.com>
	<CAFZh4h_DC6Sk58Mw7_ixyTTz9p5iwMk5+6Ey1kD+oTnHG+KEFw@mail.gmail.com>
	<CAFZh4h9+OSjs8hmAR3=7oZ0Z+4wBVOgu=7KeFXB4Av6R0jqZBQ@mail.gmail.com>
	<4F0DF51C.6000700@windriver.com>
Date: Wed, 11 Jan 2012 15:50:59 -0500
Message-ID: <CAFZh4h8JNjeo-3ft2C2m8gBPrsMxb21+W_viv-nD2knwL2rA8w@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: Does Edison work with Beagleboard & linux-yocto-3.0 kernel?
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
X-List-Received-Date: Wed, 11 Jan 2012 20:51:01 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 11, 2012 at 3:46 PM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
>> Starting kernel ...
>>
>> Uncompressing Linux... done, booting the kernel.
>>
>> Yocto (Built by Poky 6.0) 1.1+snapshot-20120111 beagleboard ttyO2
>>
>> beagleboard login: root
>> root@beagleboard:~# ls
>> root@beagleboard:~# uptime
>> =A019:06:08 up 0 min, =A0load average: 1.08, 0.30, 0.10
>> root@beagleboard:~# uname -a
>> Linux beagleboard 3.0.12-yocto-standard+ #1 PREEMPT Wed Jan 11
>> 13:53:06 EST 2012 armv7l GNU/Linux
>> root@beagleboard:~#
>
>
> Excellent!
>
> If you still want the default (which you likely do here), you
> can leave KMACHINE untouched in your bbappend and the inherited
> value from the core layers will take care of everything. Get that
> working on your local clone, and then try tweaking things :)

Will do.  I also have a C3 Beagleboard around here somewhere and I'll
verify that the images I built today work on that platform too.

Regards,

Brian

