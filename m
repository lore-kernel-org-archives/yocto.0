Return-Path: <paul.betafive@gmail.com>
Received: from mail-vc0-f182.google.com (mail-vc0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDFCBE01458
	for <yocto@yoctoproject.org>; Sat,  4 May 2013 03:34:09 -0700 (PDT)
Received: by mail-vc0-f182.google.com with SMTP id ia10so2059975vcb.41
	for <yocto@yoctoproject.org>; Sat, 04 May 2013 03:34:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=TBPntCrIaSjJyqdXaZaIek20abBlc+NCBQe2LWtybHY=;
	b=m3K5N5dM0sJa3XvFz3/S3ixMA4K8q4gQ2di8vwqmqDfxjUZI7LPu3q6THzuQ/0Va1h
	gTFa5rCQont7lHN9SjsyYylsySu6ZyizqF/rIYiuSLDSCOxA622QZLA//t81lahJjmT1
	RQcvoXfVCFsO72ZtrWMq9MxwO5nR+gSwdvbcUZm7mjkTjto/XwJ69dEDDFVY6K4qdH7E
	Ny/fXS38jR9tliOunM49JluRVaPAlS1c8ld/vVn47SwiXUA9VsoAUDVQyFgghAQ/Rk6y
	gyDd0pXQK4SH7pIPBhsC7jDGxi1vqszPl9pLfnHkTHGvbjTs9vJbm39W1mcMSvwAcWVR
	bYQQ==
X-Received: by 10.52.27.52 with SMTP id q20mr4136468vdg.16.1367663649090; Sat,
	04 May 2013 03:34:09 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.48.5 with HTTP; Sat, 4 May 2013 03:33:48 -0700 (PDT)
In-Reply-To: <CAHUNapTv=e3_zcKrR34=_v4Wtq6pp_WznA2gLKPBxTZ=FFo6KA@mail.gmail.com>
References: <CANyK_8c2tTqktkHFuR+vzAGbsb3AKyFow1T4rU_aEnb8pdQnuw@mail.gmail.com>
	<CAK18fxFMKykJQnuMqrU6eLkD0E_Ht+Vyo2tmayukvNU_eyV6aw@mail.gmail.com>
	<CANyK_8fVfKbTHq3X1hdSWOFdwsz4cZLaaispiwC_hJJbimM1ig@mail.gmail.com>
	<CAHUNapRr4y47FGqp90NZwKwwE0PGSj6A2vN1nRujqjBSL9oOZw@mail.gmail.com>
	<CANyK_8erAWaRzrXxDOCwaa9xkfxqVM5Fk5hukGPoyapZJTMw5w@mail.gmail.com>
	<518292E5.9030101@mlbassoc.com>
	<CAHUNapTv=e3_zcKrR34=_v4Wtq6pp_WznA2gLKPBxTZ=FFo6KA@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Sat, 4 May 2013 11:33:48 +0100
X-Google-Sender-Auth: f26lP8hI-a6qfUoXT02MmgLHuVA
Message-ID: <CANyK_8cKxsPbG7DfcXAnD8-yeLCGHeuq=hUTWr9HN=m37WYsFQ@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Zenity is in meta-gnome
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
X-List-Received-Date: Sat, 04 May 2013 10:34:10 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 2 May 2013 17:35, Trevor Woerner <twoerner@gmail.com> wrote:
>
> If I knew the best way to integrate it with Yocto, I'd submit patches
> to include it. But for the time-being I'll just mention it :-)
>

Maybe take a look at how the existing SD card image for the
raspberrypi is generated? The relevant file is
classes/sdcard_image-rpi.bbclass in meta-raspberrypi
(https://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/classes/sdcard_image-rpi.bbclass).

You'd probably want to create a new rootfs of the desired size (maybe
a IMAGE_SIZE variable that can be set in local.conf?) and untar the
relvant .rootfs.tar.bz2 file into the new partition then join it with
a machine-specific boot partition into a final image. The sizes would
be set so rootfs size + boot size + alignment, etc = IMAGE_SIZE.

This doesn't solve everything you say about unique serial numbers or
IP addresses but it's a start, such features could be added later.

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

