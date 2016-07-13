Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10814E00DA5; Wed, 13 Jul 2016 07:56:46 -0700 (PDT)
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
	*      [209.85.216.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f180.google.com (mail-qt0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7126CE00CCD
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 07:56:41 -0700 (PDT)
Received: by mail-qt0-f180.google.com with SMTP id w38so27023443qtb.0
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 07:56:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=/kSyFbuhtmaBxpTHZTdz2vniu9dW5I9chgKKdoZm6w0=;
	b=zOizb+8cLMwnmv4sWg7FvIVPF4xFOvGrQ/ctPiX77WO+jsWxtKM/rsJb0qMziHbMBv
	hSLuwNMFEGa3Sf5M4fjUVP3McFwIevSq7CUpbNWi8nFHRncaq8YCDVXqdBwO2XdUyDrm
	PKw0SycO8Z4s/w3Glcrc6rYVDjPiNv+IPJozIgHUkCF96TAz5R7108cc9KyQW8CEwtjM
	ElAbBSNPLVSgKxfpsMXtjuKRoPuc/wkxwgmrxRBYfWTW+Veb3oYd2jEcmuYjSdFX6MzB
	ik5HxTg5YrAbT3L7lAdbpEqFDwHo4eKfR39FhqK6dNpZoaQpQgmeY5F+UYPWRo1chGb0
	PFcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=/kSyFbuhtmaBxpTHZTdz2vniu9dW5I9chgKKdoZm6w0=;
	b=YNvbWZbJvVaJT8B87E2HL3eTaLHnoZpEl1d38/JXyj3oo9zsA7EmJe3fRqvcEWo10N
	1XoxF9B/poI7jMeLwc0tM7D3XPXZ9S1qL0dJ+Msf3wg+h6eVtBj0QbA5BTuSDRSTodcT
	nHp6PAPHvnG+t4x6TXqLOSUU9dLZi1yQnjhwItLwZrn4S7KSzTOXWw/SFaGrLUrAdtRb
	jKXSoeYhK0p+KxqSOcHdFm7ebKEg9IXX3VYzIiboaP5ANF1GFZMUpjWFGHPwjTBBbMSi
	8wt35KKbK04mw/oTPSKi9gICjK0tJ0nebSfrQuDseK7sf53M3uMQLYBYVLSDQkHnwy9Z
	8gsA==
X-Gm-Message-State: ALyK8tL5PWebrR9NCeQccuRS0WsRpdnPwd7SkqnRg/i7TIF3xd1fx4Uq5DPpsOd9Jb0o6UXUUEfThWk+oSaPpQ==
X-Received: by 10.237.43.164 with SMTP id e33mr12788510qtd.55.1468421801331;
	Wed, 13 Jul 2016 07:56:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Wed, 13 Jul 2016 07:56:11 -0700 (PDT)
In-Reply-To: <CAEfap_DQrSiDkDrBH7T7Ecez5R2D-KM_V+Lnm2nombozFBKF4w@mail.gmail.com>
References: <CAEfap_CAJpEnc6xWUbcYUkMx2CRa2HVT+FOBXy+rYb67jv16gw@mail.gmail.com>
	<CAMKF1soyZBMzFUo0FLgk3Hb69PfMGiyQ7TNqsDBdVdHz7UNX8w@mail.gmail.com>
	<CAEfap_BV6LRYUyG3u9oLDvXrpy9ztgVM-UaPNSHo9i1xbNj24w@mail.gmail.com>
	<CAMKF1sqGSWkd-aTcY3fNk=88iL8BW5ihGnvSy14bCiSfeVUvzw@mail.gmail.com>
	<CAEfap_BpFoi66j9PJO=PiZURULiivtR0Z6yCSedebLgTvzcY0g@mail.gmail.com>
	<CAEfap_DQrSiDkDrBH7T7Ecez5R2D-KM_V+Lnm2nombozFBKF4w@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 13 Jul 2016 07:56:11 -0700
Message-ID: <CAMKF1srjRAkFueO5A-dXy-E+n4PjpcZM57xF=BbU7P7NJH4csg@mail.gmail.com>
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
X-List-Received-Date: Wed, 13 Jul 2016 14:56:46 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 13, 2016 at 4:57 AM, Simon Bolek <simon.bolek@googlemail.com> w=
rote:
> Hi Raj,
>
> So i tried to do manually, what init script does and udev definitely does
> not recognize the SSD drive.
> I ran
>  /lib/udev/udevd --daemon --debug > udev.debug 2>&1 &
> from the cli and there is no trace of recognizing the SSD. Only the
> /dev/sda, which is the USB stick I am running the installation from.
>
> I used 'meld' to compare the /initrd from current jethro image and previo=
us
> working fido image.
> They are almost the same:
> - in jethro /lib/modules... file structure is missing with:
> modules.alias
> modules.alias.bin
> modules.builtin.bin
> modules.dep
> modules.dep.bin
> modules.devname
> modules.softdep
> modules.symbols
> modules.symbols.bin

this means depmod did not run during initramfs image creation

>
> - there are slight differences between
> /etc/init.d/udev
> /etc/udev/scripts/mount.sh
> , but I cannot tell, if this is the reason.

what are the differences ?
>
> Unfortunately I did not dig inside binary /lib/udev/udevd.
>
> So do you have any other ideas, what might be the reason for not recogniz=
ing
> the SSD? Maybe there are some additional recipes needed from jethro on?
>
>
> thanks & kind regards
> Simon :-)
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
> On Wed, Jul 13, 2016 at 9:03 AM, Simon Bolek <simon.bolek@googlemail.com>
> wrote:
>>
>> Thank you,
>>
>> I just guess, that it is the following function in init script to put th=
e
>> echos to? Is it?
>>
>> udev_daemon() {
>>     OPTIONS=3D"/sbin/udev/udevd /sbin/udevd /lib/udev/udevd
>> /lib/systemd/systemd-udevd"
>>
>>     for o in $OPTIONS; do
>>         if [ -x "$o" ]; then
>>             echo $o
>>             return 0
>>         fi
>>     done
>>
>>     return 1
>> }
>>
>>
>> cheers
>> Simon:-)
>>
>> Viele Gr=C3=BCsse
>> Simon Bolek :-)
>>
>> mit freundlichem Gruss / kind regards / pozdrawiam
>> Simon P. Bolek
>> ------------------------------------------------------
>> Dipl. Inf. Simon P. Bolek
>> SAP Integration Architect
>> Business Mobile and IVI Solutions
>> mailto: simon.bolek@arcom-ivi.de
>> http://www.arcom-ivi.de/
>> XING: https://www.xing.com/profile/SimonP_Bolek
>>
>> On Wed, Jul 13, 2016 at 8:36 AM, Khem Raj <raj.khem@gmail.com> wrote:
>>>
>>> On Tue, Jul 12, 2016 at 11:28 PM, Simon Bolek
>>> <simon.bolek@googlemail.com> wrote:
>>> > Thank you Raj,
>>> >
>>> > Is there a standard way to activate these initramfs logs, or do I hav=
e
>>> > to
>>> > implement it myself somewhere?
>>>
>>> you have to add printf etc. yourself into the init script in initramfs
>>> image
>>>
>>> >
>>> > thank you and kind regards
>>> > Simon :-)
>>> >
>>> > Viele Gr=C3=BCsse
>>> > Simon Bolek :-)
>>> >
>>> > mit freundlichem Gruss / kind regards / pozdrawiam
>>> > Simon P. Bolek
>>> > ------------------------------------------------------
>>> > Dipl. Inf. Simon P. Bolek
>>> > SAP Integration Architect
>>> > Business Mobile and IVI Solutions
>>> > mailto: simon.bolek@arcom-ivi.de
>>> > http://www.arcom-ivi.de/
>>> > XING: https://www.xing.com/profile/SimonP_Bolek
>>> >
>>> > On Wed, Jul 13, 2016 at 1:36 AM, Khem Raj <raj.khem@gmail.com> wrote:
>>> >>
>>> >> On Tue, Jul 12, 2016 at 3:45 AM, Simon Bolek
>>> >> <simon.bolek@googlemail.com>
>>> >> wrote:
>>> >> > Hello everyone!
>>> >> >
>>> >> > I am trying to install genericx86 core-image-sato (jethro) HDDIMG =
to
>>> >> > an
>>> >> > atom-pc.
>>> >> > For this 2GB USB stick is used.
>>> >> > When choosing 'install' option from boot menu I get the message:
>>> >> >
>>> >> > "Searching for hard drives...
>>> >> > No hard drive selected. Installation aborted."
>>> >> >
>>> >> > Installatiion stops and i get the console.
>>> >> > When I try to run fsck, it says: can't read '/etc/fstab': No such
>>> >> > file
>>> >> > or
>>> >> > directory
>>> >> >
>>> >> > fdisk -l  shows only the partitions of USB stick.
>>> >> >
>>> >> > After I choose 'boot' option to boot into live image, SDD drive is
>>> >> > under
>>> >> > /dev/sdb and USB installation stick under /dev/sda,
>>> >> >
>>> >> > What recipe/package is my installation missing? The SSD hard drive
>>> >> > is
>>> >> > not
>>> >> > recognized for some reason. With previous yocto releases this
>>> >> > package
>>> >> > list
>>> >> > DID work fine.
>>> >> > So there is something missing in the background.
>>> >> > Do you have any idea what this might be?
>>> >>
>>> >> udev should have run and found your hdd. So it seems its not finding
>>> >> it when running from initramfs. Can you try to add logs to initramfs
>>> >> and see what udev is doing ?
>>> >>
>>> >> >
>>> >> > Below is my package list from local.conf.
>>> >> >
>>> >> > thank you and kind regards
>>> >> > Simon :-)
>>> >> >
>>> >> > EXTRA_IMAGE_FEATURES =3D "debug-tweaks ssh-server-openssh"
>>> >> > IMAGE_INSTALL_append =3D " make \
>>> >> >      initscripts \
>>> >> >      grub \
>>> >> >      initramfs-boot \
>>> >> >      syslinux \
>>> >> >      initramfs-live-install \
>>> >> >      initramfs-live-install-efi \
>>> >> >      initramfs-live-boot \
>>> >> >      xinit \
>>> >> >      xwininfo \
>>> >> >      openssh-sftp \
>>> >> >      openssh-sftp-server \
>>> >> >      qtbase-plugins \
>>> >> >      qtconnectivity \
>>> >> >      qtdeclarative \
>>> >> >      qtdeclarative-plugins \
>>> >> >      qtdeclarative-tools \
>>> >> >      qtdeclarative-qmlplugins \
>>> >> >      qtenginio \
>>> >> >      qtlocation \
>>> >> >      qtmultimedia \
>>> >> >      qtmultimedia-plugins \
>>> >> >      qtmultimedia-qmlplugins \
>>> >> >      qtsystems \
>>> >> > "
>>> >> >
>>> >> > Viele Gr=C3=BCsse
>>> >> > Simon Bolek :-)
>>> >> >
>>> >> > mit freundlichem Gruss / kind regards / pozdrawiam
>>> >> > Simon P. Bolek
>>> >> > ------------------------------------------------------
>>> >> > Dipl. Inf. Simon P. Bolek
>>> >> > SAP Integration Architect
>>> >> > Business Mobile and IVI Solutions
>>> >> > mailto: simon.bolek@arcom-ivi.de
>>> >> > http://www.arcom-ivi.de/
>>> >> > XING: https://www.xing.com/profile/SimonP_Bolek
>>> >> >
>>> >> > --
>>> >> > _______________________________________________
>>> >> > yocto mailing list
>>> >> > yocto@yoctoproject.org
>>> >> > https://lists.yoctoproject.org/listinfo/yocto
>>> >> >
>>> >
>>> >
>>
>>
>

