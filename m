Return-Path: <max.oss.09@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75C18E00C1E; Mon,  3 Dec 2018 11:38:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (max.oss.09[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.54 listed in list.dnswl.org]
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
	[209.85.208.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D5D8E00B81
	for <yocto@yoctoproject.org>; Mon,  3 Dec 2018 11:38:09 -0800 (PST)
Received: by mail-ed1-f54.google.com with SMTP id f23so11835481edb.3
	for <yocto@yoctoproject.org>; Mon, 03 Dec 2018 11:38:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:subject:from:to:date:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=DhC8XH6KLFMN5ZF1uXT2Z/R1DTS0WbTZ7jsssqCu9yc=;
	b=MDf+Gl23AvRLx5RbCTqCl2s2mBhoqDnK5GO2faDEiH1vA20ReI5cavhZHdU4nBHvRO
	M/vXlo9zxJoPIP7lzglEhomACzTcIYZhkzlmC/bPTmKdfU/7aNjGkMCWg6Co2rZXwqU3
	+LjjX26GuL6DFdMPMToNrX2WQPaceM7xIo9mm5Wup5ZgD656++S2ZcYa1UvxBOXu5cZh
	DYPYXVUFk8s7veTQSPWbGJR8/IoXLOkzNjX6TB2GxCAOOtIp24MQUZtvSN720Ub0HHi4
	Mhklm68XFfA2xdoL+sae6YcQ5PktoH1xtr/aQakkzoR/eZg3mlv/4p6zqCnAK5UcVBOm
	NXhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=DhC8XH6KLFMN5ZF1uXT2Z/R1DTS0WbTZ7jsssqCu9yc=;
	b=PExr06WVtPEsOm1gb9YUvxvy/cWEX9lTwfCHzl1JUvbsP770AFtQB/DKFfKUzcDTRX
	nd0NugGgp/oRB6xYya6QjjnlNHQtIiDRicd9prmNN3IfRtpV4LW3+kjmkWylkIJPlUvf
	MBhOE1In8XqdpAE9HtivhoQSQ9OoI5hABlCK0huNVnf7AamrW9EkYzykdNYNxh81xJ0V
	3ZlcVz9mLfJ7vkGtOfE26iV5HsVTHrJPAFH5QDnN8WcyzjiIAVIUU1GSzbtVnnQpm/n9
	KgrXI9mReOWdqY7nbVqxaDmSkX2UKRN8sO/aY+uZcPx85v1j8/x0Q9pXCOpSkyrwLitR
	sOig==
X-Gm-Message-State: AA+aEWaxrgS/BncyQc4DqffSkNxU4bUF6K0Bn8vhLTTnLFuPJ5JWW54i
	LlQEg0K2aEAaDOB/Rggy9JUAV3AL
X-Google-Smtp-Source: AFSGD/Xru1Un5dTv8qQ/F7ShSwpB6vognk2TiHjbQI0kIKoA3KBGglEKEwkpOS90GSU/ozC71zAEDQ==
X-Received: by 2002:aa7:d29a:: with SMTP id w26mr15985684edq.30.1543865888293; 
	Mon, 03 Dec 2018 11:38:08 -0800 (PST)
Received: from Saturn.local.all ([195.48.14.138])
	by smtp.gmail.com with ESMTPSA id
	j21-v6sm2323883ejz.51.2018.12.03.11.38.06
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Mon, 03 Dec 2018 11:38:07 -0800 (PST)
Message-ID: <1543865886.3634.8.camel@gmail.com>
From: Max Krummenacher <max.oss.09@gmail.com>
To: Alankar Dhobale <alankar.dhobale@renuelectronics.com>, 
	yocto@yoctoproject.org
Date: Mon, 03 Dec 2018 20:38:06 +0100
In-Reply-To: <005201d48ac3$933b7470$b9b25d50$@renuelectronics.com>
References: <005201d48ac3$933b7470$b9b25d50$@renuelectronics.com>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
Subject: Re: [yocto-rocko] : fsl-community-bsp X11 build touch screen calibration issue on iMX6UL
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
X-List-Received-Date: Mon, 03 Dec 2018 19:38:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi

> Machine: imx6ulevek
> 
> Image: core-image-x11
> 
> The issue I have observed on the device is, Xorg is unable to calibrate the
> touchscreen, I don't know what has changed but it is unable to calibrate,
> below is the log I get on prompt
> 
...
> ERROR: XorgPrint Calibrator does not support the supplied --output-type
> 
> Error: unable to apply or save configuration valuesUsing calibration data
> stored in /etc/pointercal.xinput
> 

Does not installing xf86-input-libinput help? xinput-calibrator cannot cope with that input backend.

I used the following bbappend to achieve this:

http://git.toradex.com/cgit/meta-toradex-demos.git/commit/?h=rocko-next&id=664a1926af81e49396bfe2681
18969ec2b8718cb

Regards
Max

