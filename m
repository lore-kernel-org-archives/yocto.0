Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6251EE00803; Sun, 10 Apr 2016 09:52:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (k4230r6[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3BC4E00522
	for <yocto@yoctoproject.org>; Sun, 10 Apr 2016 09:52:39 -0700 (PDT)
Received: by mail-wm0-f42.google.com with SMTP id f198so117771450wme.0
	for <yocto@yoctoproject.org>; Sun, 10 Apr 2016 09:52:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:date:message-id:in-reply-to:references:user-agent:subject
	:mime-version:content-transfer-encoding;
	bh=uvUXnnMNWd/1Yoj7UWGkIHqRlB6HIsMDKwFNQLmEDow=;
	b=b5roxOTDupghQw+quoMEg098rg1lbBfrWuOED2XboZiL8YHKIPCdtN/zLvtb0x8s5T
	bC1B6XavWch3tmtA8vpQVCjK4IC0igQmMG1mwMmIYJGQcKsUs0MDFmxRRgfZThYT1aL+
	R7XXTIbKNXvmT8Xd7re7ljNjPzftETcogRBmdjPZuTTXTsGO5l2vZpQcB14AEloWCGIO
	xG1ft4CXDQrlIm6en4USNIjL3RHQqq6qhZDGRLSyvXSzOsfZcTWx/EP637I7Dl3xfoLw
	jQvEneEFISjjclcMGfi5Lap8jSwnDJkx7l+Hv4YHYLDTduEDGsVhhFvptM3p8BLjER7q
	Xp7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:date:message-id:in-reply-to:references
	:user-agent:subject:mime-version:content-transfer-encoding;
	bh=uvUXnnMNWd/1Yoj7UWGkIHqRlB6HIsMDKwFNQLmEDow=;
	b=C2wR8tZXWhwrtGblREGplZ2/mcEsoWRsADU+ELt3DyTAY+TexCSFSaC88UTmwLhG2p
	DHp0P0yyB2YjP2Bqqdqk2v6w0C1+MlxDbIzHkc/cf9s9PfvRowiiwb11Njr4EE6VwfQS
	2YZadNSXKr8QtZRZxmGJO7KAW+RkThb65CuH/LgAPEFDztBimz/caesreKZHHofsVBKN
	k7LFD+Ok2UgGTI7hXHsPw7sdGlB21TpGZ1U9qGus5Xr8qAc9EELRM8HiyTjPq+IM3C1R
	mO/J6o7RvnBJawdKLdLtSlM44G7++vvmCIydbkz8FXDzA53Y49LyGcnxODpPlI536j6D
	NQjg==
X-Gm-Message-State: AD7BkJIo17dWQ2oJpZnf/lOjUhNsgWFFZlgblBQS6LqizVyOsNRapWJeZct4xtl+P/AJTQ==
X-Received: by 10.194.22.97 with SMTP id c1mr19416990wjf.19.1460307158832;
	Sun, 10 Apr 2016 09:52:38 -0700 (PDT)
Received: from [192.168.23.165]
	(HSI-KBW-46-223-219-101.hsi.kabel-badenwuerttemberg.de.
	[46.223.219.101])
	by smtp.gmail.com with ESMTPSA id s6sm3991060wjy.31.2016.04.10.09.52.37
	for <yocto@yoctoproject.org> (version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 10 Apr 2016 09:52:37 -0700 (PDT)
From: Christian Ege <k4230r6@gmail.com>
To: <yocto@yoctoproject.org>
Date: Sun, 10 Apr 2016 18:52:37 +0200
Message-ID: <1540116e008.27ac.b5f386b42cd5ccf91b9cb7358bc3020d@gmail.com>
In-Reply-To: <1213150485.2252203.1460219883667.JavaMail.yahoo@mail.yahoo.com>
References: <1213150485.2252203.1460219883667.JavaMail.yahoo.ref@mail.yahoo.com>
	<1213150485.2252203.1460219883667.JavaMail.yahoo@mail.yahoo.com>
User-Agent: AquaMail/1.6.1.5 (build: 26000005)
MIME-Version: 1.0
Subject: Re: Yocto touch
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
X-List-Received-Date: Sun, 10 Apr 2016 16:52:44 -0000
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Transfer-Encoding: 8bit

Hi,
Am 10. April 2016 5:31:52 nachm. schrieb Berlin Vince Joe V S 
<berlinvince@yahoo.com>:

> hi ,,I already posted my query on yocto mail but it won't get moderator 
> approval I don't know why ?
> I am working on KONTRON SMARC(IMX6"Freescale"). I need to build the yocoto 
> that can control all the devices that are connected to KONTRON but it 
> won't. Now the problem is i am trying to interface with a capacitive touch 
> screen (FT5x06 family) the Driver is already available but it is not working.

Are you planning ti use Qt5 with eglfs on framebuffer or are you planning 
to use X11 or Wayland?

> Any way I am really need help could you please tell me if i need to add a 
> hardware driver individually what are the files I need to take care of .... 
> but OS Run Good but touch is not responding!!!
>
Have you checked lsmod if the driver is loaded (when compiled as module )

Have you checked dmesg if the touch screen is successful detected?

Is there any new input device?

How is the touchscreen connected by USB or i2c? If by i2c it may worth to 
check with i2c tools.
>
> Please help me guys

Regards,
Christian
>
>
>
>
>
>
> ----------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>




