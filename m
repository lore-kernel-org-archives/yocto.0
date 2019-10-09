Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 553F8E00D89; Wed,  9 Oct 2019 05:05:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
	[209.85.222.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC410E00C4F
	for <yocto@yoctoproject.org>; Wed,  9 Oct 2019 05:05:35 -0700 (PDT)
Received: by mail-qk1-f193.google.com with SMTP id w2so1950858qkf.2
	for <yocto@yoctoproject.org>; Wed, 09 Oct 2019 05:05:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=efXzzuPWJXlzLBK+sTHd0zlnIRDX7sDHtR2aoEbEAFU=;
	b=hXZeZpTEGbkMJbdr6mkvxUjvMdCu6h8J4oV7J8P5zOf9PvggR4bLb9dffsfXbrAom/
	omc+LbRx4BLQTxLyBPvhNazlRvXAqaFJ1aKo3rJrzejFhrBhJYFcRwh24zjw9brh561/
	oUFxS9em2iSF0eOOy7jCPvbxTqHbsI5RplsbAToh0vaZ1Ax8jpGE8r+HPaeMsWnxsxwO
	dVtG9DHOkmB6VrZjobUQ9t45Os50UZOonE5BIfQJ53ePXoQtOXhjrDVtOk/3qWWzT1kj
	/J6ovFLTzP/I+yWULXXWERI7zDyrWpyt2aX1/5lAkP98INgFdECM7FfuF7j+lhYf1uB0
	w3Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=efXzzuPWJXlzLBK+sTHd0zlnIRDX7sDHtR2aoEbEAFU=;
	b=db7X78kW0Xxrw+L956DMDTBhOFgjqYEQxaNMMbwNOy5W85EpwlFMPzcgiLVf7NN2hz
	6YFk/NdJRXYHpsS9Wk5rhmD8lvYzh35Cix2xvpkMBFB5b9KG3lq9SemfEX6RK1g9QDlR
	u5IhEltvPpIy6MLlkHDUKFRFWRf2MELCr0P+ND/w5efi+N9C7NEym4fE42MObHK2+y6z
	W69z+NMQDDwaf9bnZEbY3RZCW6wde6XoonYPAnh8fh3i2rDMJLGKC4ydYBn9FgWkXfKW
	hfVcPXg6ANZOAGn6jeqpYWjvsNii4cl0OVCCvT2IwkAtQxl1aaddPYF4F46DIlnOCibK
	e61Q==
X-Gm-Message-State: APjAAAUhMYDwoxtVSz/+hwRQPs7tO6ijXwOSfoVUEnQ4omN4sFsKfK0L
	Q9hdjxjBei++gzAJfG6e/RPZ99vR7JIAE/L8ChCvCq7EO8L+Xw==
X-Google-Smtp-Source: APXvYqwkClvnF7mtTFSFTiXcsDu8mll38cxiWaXZbOjz9J6FXx2HRLXLLuIzEOowaAzlirmtE/CCedcY+UsSfeXDJrs=
X-Received: by 2002:a37:bbc5:: with SMTP id l188mr3075084qkf.118.1570622735073;
	Wed, 09 Oct 2019 05:05:35 -0700 (PDT)
MIME-Version: 1.0
References: <CABjzrPTAFGE8nua4ONh0S_6zrFL38LSojCpFyR_ELp6p3Lcx5w@mail.gmail.com>
	<CADkTA4M0gW+bRdRLEp8nZ4nS6Z9_q6G3SjBir5+FOOxe3_8BfA@mail.gmail.com>
	<CABjzrPS6Lzn2_QRAQu06J=RMNfgbtnMA8a_JrETKEpKRV5U6RQ@mail.gmail.com>
In-Reply-To: <CABjzrPS6Lzn2_QRAQu06J=RMNfgbtnMA8a_JrETKEpKRV5U6RQ@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 9 Oct 2019 14:05:23 +0200
Message-ID: <CAGAf8Lwc1A3iLmV-VNgkJG6iFB2++y+eqBzpnafzpZ=g7_5iMw@mail.gmail.com>
To: Shravan Singh <shravan@bluesparq.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Building a out of tree kernel module on target system
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
X-List-Received-Date: Wed, 09 Oct 2019 12:05:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have this all standardized for BBB, and here are pointers how to
build an out of tree kernel module on BBB target system (with some
specifics):
local.conf (with added systemd service):
https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-releases/bb=
b-warrior/local.conf_full

Compiling out of tree kernel modules:
https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/Issues/LKM/prep=
are_modules.log

Zoran
_______

On Wed, Oct 9, 2019 at 12:48 PM Shravan Singh <shravan@bluesparq.com> wrote=
:
>
> Hello Bruce,
>
> So I was finally able to compile the kernel module by creating a patch an=
d then applying that patch to linux recipe file.
> However now, I am facing a different issue and have been trying to figure=
 that one out, Hence the delay in my response.
>
> After creating an appropriate device tree overlay file. After loading the=
 module, the I2C driver still reads the screen abs_x_max=3D800 and abs_y_ma=
x=3D480.
> I have specified the frame_buffer_width and frame_buffer height as 1024 X=
 600. Also I have specifically provided touchscreen-x-size and touchscreen-=
y-size in my device tree overlay to match the same.
>
> Why could this be happening?
>
> Regards,
> Shravan Singh
> (239) 243-0838
>
> Blue Sparq, Inc.
> 928 NE 24th Lane unit 4 and 5.
> Cape Coral, FL 33993
>
> IMPORTANT: The contents of this email and any attachments are confidentia=
l. They are intended for the named recipient(s) only. If you have received =
this email by mistake, please notify the sender immediately and do not disc=
lose the contents to anyone or make copies thereof.
>
>
> On Fri, Oct 4, 2019 at 1:42 PM Bruce Ashfield <bruce.ashfield@gmail.com> =
wrote:
>>
>> On Fri, Oct 4, 2019 at 11:40 AM Shravan Singh <shravan@bluesparq.com> wr=
ote:
>> >
>> > Hello,
>> >
>> > I am trying to build an out of tree service module on a yocto raspberr=
y pi image(target system).
>> > I am using yocto version warrior
>> > and my machine is Raspberrypi-cm3
>> > Kernel version is 4.19.58
>> >
>> > I was able to get the build directory by including
>> >
>> > IMAGE_INSTALL_append =3D " kernel-modules kernel-dev kernel-devsrc"
>> > After that, I saw a build directory on raspberrypi-image
>> >
>> > Now I am trying to compile my source file with the command
>> >
>> > make ARCH=3Darm CROSS_COMPILE=3Darm-poky-linux-gnueabi- KSRC=3D"/lib/m=
odules/4.19.58/source" -C /lib/modules/$(shell uname -r)/build M=3D/home/ro=
ot/tsDriver modules
>> >
>> > After that I get an error saying asm/bitsperlong.h: no such file or di=
rectory
>> >
>> > Am I missing something in my make command?
>>
>> You need to rebuild/regenerate some file on target (they can't be packag=
ed).
>> So have you gone to /usr/src/kernel and done a "make scripts prepare" ?
>>
>> Bruce
>>
>> >
>> >
>> > Regards,
>> > Shravan Singh
>> > (239) 243-0838
>> >
>> > Blue Sparq, Inc.
>> > 928 NE 24th Lane unit 4 and 5.
>> > Cape Coral, FL 33993
>> >
>> > IMPORTANT: The contents of this email and any attachments are confiden=
tial. They are intended for the named recipient(s) only. If you have receiv=
ed this email by mistake, please notify the sender immediately and do not d=
isclose the contents to anyone or make copies thereof.
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>> --
>> - Thou shalt not follow the NULL pointer, for chaos and madness await
>> thee at its end
>> - "Use the force Harry" - Gandalf, Star Trek II
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

