Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03622E00D15; Tue, 12 Jul 2016 23:37:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f194.google.com (mail-qt0-f194.google.com
	[209.85.216.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69A0AE00CFF
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2016 23:36:58 -0700 (PDT)
Received: by mail-qt0-f194.google.com with SMTP id j37so1419483qta.0
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2016 23:36:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=vl3foF3KFRpQ22MaaxSYUPN6+legJCLMFnFA4QZXPLA=;
	b=qoTUDOb+Rmo84qPXlW8T/H34dr53AZhgwGKTwpf/VlxrjHmd0M9U0mLvTqvAPQTye3
	PyKkBqUVxGhffmw6YeagQPK8eX9iOaL6ZOMLAvlXvTuJkuOXKZuwzNUqPPwsx+XSn9r/
	SpQONLm5nSCPBCfcmLc43jUI1rJe1CxEJufytCT8DR4NVIRn1beImQ4Oer8W2y4SCB9c
	CQwTQuvwAGpKTqA3dPuGLEmEyh8p3NzK+7IDWQiHjws7LoGqJ9I0uvw4Zrtd4XMEehAi
	QakJtaKCy2bkIWoyQmIAA3ZcLYwPoT90gg5GJGkfGcdkZSC6IfG0ruk0DKUT5dJKVGo9
	jcIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=vl3foF3KFRpQ22MaaxSYUPN6+legJCLMFnFA4QZXPLA=;
	b=X6PzPR4WI0gl3yOTlf7zRN2tCb0KUD677KPEUGc98OQu6wOuIdOZ5zrTyy+muu067+
	bJ2PkdYqC4O3SZZ/iICvwFgV0TpXsW9+xh7bMKA1/6LdNgpfgTsi48BVYMrBp3b0xqaL
	u+wogVmi4eW6ItUYFcATHGhBZa60B33HFGJX0aBS0xGUGrXW6r2yMakeTaKzfC4KAkwq
	Iew9pv6nBrMZwdiBDBKY5kQEgq+Jo6JCkBogM7AMls5JfrCSwZMBdclTTXcYdmrmfBd9
	xHSEeLCAVX2NEMubvr86en0gZDTpVsM4U9gD74XgfTR68zVZ9rRTl1B5fO3nZjIcbfDX
	Uqiw==
X-Gm-Message-State: ALyK8tJ00PMoITjFuW265V0NPhNnMZdKFYJvhqQD8pfdbcy/nhyy7N2MQxHYBISyRjno27ZOPqH+AbEBVzzYQQ==
X-Received: by 10.200.53.103 with SMTP id z36mr9518416qtb.5.1468391817930;
	Tue, 12 Jul 2016 23:36:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Tue, 12 Jul 2016 23:36:28 -0700 (PDT)
In-Reply-To: <CAEfap_BV6LRYUyG3u9oLDvXrpy9ztgVM-UaPNSHo9i1xbNj24w@mail.gmail.com>
References: <CAEfap_CAJpEnc6xWUbcYUkMx2CRa2HVT+FOBXy+rYb67jv16gw@mail.gmail.com>
	<CAMKF1soyZBMzFUo0FLgk3Hb69PfMGiyQ7TNqsDBdVdHz7UNX8w@mail.gmail.com>
	<CAEfap_BV6LRYUyG3u9oLDvXrpy9ztgVM-UaPNSHo9i1xbNj24w@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 12 Jul 2016 23:36:28 -0700
Message-ID: <CAMKF1sqGSWkd-aTcY3fNk=88iL8BW5ihGnvSy14bCiSfeVUvzw@mail.gmail.com>
To: Simon Bolek <simon.bolek@googlemail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [genericx86-jethro] core-image-sato HDDIMG 'install' - no hard drive selected - /etc/fstab no such file or directory
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
X-List-Received-Date: Wed, 13 Jul 2016 06:37:02 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 12, 2016 at 11:28 PM, Simon Bolek
<simon.bolek@googlemail.com> wrote:
> Thank you Raj,
>
> Is there a standard way to activate these initramfs logs, or do I have to
> implement it myself somewhere?

you have to add printf etc. yourself into the init script in initramfs imag=
e

>
> thank you and kind regards
> Simon :-)
>
> Viele Gr=C3=BCsse
> Simon Bolek :-)
>
> mit freundlichem Gruss / kind regards / pozdrawiam
> Simon P. Bolek
> ------------------------------------------------------
> Dipl. Inf. Simon P. Bolek
> SAP Integration Architect
> Business Mobile and IVI Solutions
> mailto: simon.bolek@arcom-ivi.de
> http://www.arcom-ivi.de/
> XING: https://www.xing.com/profile/SimonP_Bolek
>
> On Wed, Jul 13, 2016 at 1:36 AM, Khem Raj <raj.khem@gmail.com> wrote:
>>
>> On Tue, Jul 12, 2016 at 3:45 AM, Simon Bolek <simon.bolek@googlemail.com=
>
>> wrote:
>> > Hello everyone!
>> >
>> > I am trying to install genericx86 core-image-sato (jethro) HDDIMG to a=
n
>> > atom-pc.
>> > For this 2GB USB stick is used.
>> > When choosing 'install' option from boot menu I get the message:
>> >
>> > "Searching for hard drives...
>> > No hard drive selected. Installation aborted."
>> >
>> > Installatiion stops and i get the console.
>> > When I try to run fsck, it says: can't read '/etc/fstab': No such file
>> > or
>> > directory
>> >
>> > fdisk -l  shows only the partitions of USB stick.
>> >
>> > After I choose 'boot' option to boot into live image, SDD drive is und=
er
>> > /dev/sdb and USB installation stick under /dev/sda,
>> >
>> > What recipe/package is my installation missing? The SSD hard drive is
>> > not
>> > recognized for some reason. With previous yocto releases this package
>> > list
>> > DID work fine.
>> > So there is something missing in the background.
>> > Do you have any idea what this might be?
>>
>> udev should have run and found your hdd. So it seems its not finding
>> it when running from initramfs. Can you try to add logs to initramfs
>> and see what udev is doing ?
>>
>> >
>> > Below is my package list from local.conf.
>> >
>> > thank you and kind regards
>> > Simon :-)
>> >
>> > EXTRA_IMAGE_FEATURES =3D "debug-tweaks ssh-server-openssh"
>> > IMAGE_INSTALL_append =3D " make \
>> >      initscripts \
>> >      grub \
>> >      initramfs-boot \
>> >      syslinux \
>> >      initramfs-live-install \
>> >      initramfs-live-install-efi \
>> >      initramfs-live-boot \
>> >      xinit \
>> >      xwininfo \
>> >      openssh-sftp \
>> >      openssh-sftp-server \
>> >      qtbase-plugins \
>> >      qtconnectivity \
>> >      qtdeclarative \
>> >      qtdeclarative-plugins \
>> >      qtdeclarative-tools \
>> >      qtdeclarative-qmlplugins \
>> >      qtenginio \
>> >      qtlocation \
>> >      qtmultimedia \
>> >      qtmultimedia-plugins \
>> >      qtmultimedia-qmlplugins \
>> >      qtsystems \
>> > "
>> >
>> > Viele Gr=C3=BCsse
>> > Simon Bolek :-)
>> >
>> > mit freundlichem Gruss / kind regards / pozdrawiam
>> > Simon P. Bolek
>> > ------------------------------------------------------
>> > Dipl. Inf. Simon P. Bolek
>> > SAP Integration Architect
>> > Business Mobile and IVI Solutions
>> > mailto: simon.bolek@arcom-ivi.de
>> > http://www.arcom-ivi.de/
>> > XING: https://www.xing.com/profile/SimonP_Bolek
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>
>

