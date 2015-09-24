Return-Path: <h4nn35.work@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE3A0E00C88; Thu, 24 Sep 2015 04:25:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (h4nn35.work[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2034E00AD0
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 04:25:40 -0700 (PDT)
Received: by wicfx3 with SMTP id fx3so108007603wic.0
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 04:25:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type;
	bh=ciWUjwpFSS3POfkUaV40zsytM34gk1mfFLIXR8eYLtI=;
	b=RiMzWf2VJ+oPJaXZ+QK/TnUMGawTKmixLJxJuiG6JQrGmxwVSNeGeIk/4psTo2nwQm
	dq16LgnLgnkGfWsEHqXJ4wXKXTeIzkYCzzPhhctdh/DpAuBEWk2Dm98Ul798Te8OgEeq
	JT4XEuigc/MEuRd2r9H36Cd52/yQ63W7Y5U/0x44yg+zZ050zHgEnmyfbCPG204XZ2fv
	h2GWHbCF064uJH+oqoS/GDut3M5PpABwAJy9zj+BbLqtjx+8LKv3kNMlktfFuTMkFIXN
	m61wH69rlf8LN8n13n6FtcragH9TLvV0ZCf/478tn6AdlCteRdyOotMnek04SSMiI/2c
	/5iA==
MIME-Version: 1.0
X-Received: by 10.194.24.68 with SMTP id s4mr16521531wjf.12.1443093939457;
	Thu, 24 Sep 2015 04:25:39 -0700 (PDT)
Received: by 10.27.222.203 with HTTP; Thu, 24 Sep 2015 04:25:39 -0700 (PDT)
Date: Thu, 24 Sep 2015 13:25:39 +0200
Message-ID: <CAHvQdo3CuJP2rAVS6gZVe0OWciXucZzv-Gd0NLVbJXBKH8_fog@mail.gmail.com>
From: Johannes Pointner <h4nn35.work@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: [systemd-devel] How to automount
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
X-List-Received-Date: Thu, 24 Sep 2015 11:25:41 -0000
Content-Type: text/plain; charset=UTF-8

I have to admit, I don't use systemd at the embedded system, but I use
the following files to do it for the usb flash drives:
/etc/auto.master:
+auto.master
/var/autofs /etc/auto.usb       --timeout=2

/etc/auto.usb:
usb1    -fstype=vfat,rw,sync,noatime,nodiratime,nodev,nosuid,noexec,uid=1000
   :/dev/usba
usb2    -fstype=vfat,rw,sync,noatime,nodiratime,nodev,nosuid,noexec,uid=1000
   :/dev/usbb

Furthermore I have a additional udev rule for the usb interfaces:
/etc/udev/rules.d/99-mount-usb-key.rules:
SUBSYSTEMS=="usb", SUBSYSTEM=="block", KERNELS=="1-1", ENV{USB_HUB}="usb2"
SUBSYSTEMS=="usb", SUBSYSTEM=="block", KERNELS=="2-1", ENV{USB_HUB}="usb1"

ENV{USB_HUB}=="usb1", SUBSYSTEM=="block", KERNEL=="sd[a-z]*", SYMLINK+="usba"
ENV{USB_HUB}=="usb2", SUBSYSTEM=="block", KERNEL=="sd[a-z]*", SYMLINK+="usbb"

But I also use automount on my desktop PC and there with systemd, but
no for a flash drives instead for cifs shares and this looks like
this:

/etc/autofs/aut.cifs-shares:
exchange -fstype=cifs,nosuid,rw,credentials=/home/h4nn35/.smbcredentials,dir_mode=0777,file_mode=0666
://server/exchange

/etc/autofs/auto.master:
+auto.master
/home/h4nn35/NetShares /etc/autofs/auto.cifs-shares --timeout=60 --ghost

I hope this helps.

2015-09-24 12:58 GMT+02:00 Mike Looijmans <mike.looijmans@topic.nl>:
> On 24-09-15 08:04, Johannes Pointner wrote:
>>
>> I'm using autofs to do the trick. It's working fine for me.
>>
>> To get the umount working I use a timeout of 2 seconds, which seems to
>> be ok so far.
>
>
>
> I am very very interested in how you got that to actually work. Please show
> us your configuration files and/or recipes and enlighten us!
>
> So far, all I ever got autofs to accomplish was giving me a major headache.
>
>
> Kind regards,
>
> Mike Looijmans
> System Expert
>
> TOPIC Embedded Products
> Eindhovenseweg 32-C, NL-5683 KH Best
> Postbus 440, NL-5680 AK Best
> Telefoon: +31 (0) 499 33 69 79
> Telefax: +31 (0) 499 33 69 70
> E-mail: mike.looijmans@topicproducts.com
> Website: www.topicproducts.com
>
> Please consider the environment before printing this e-mail
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

