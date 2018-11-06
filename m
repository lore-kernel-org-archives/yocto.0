Return-Path: <markus4dev@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B29FAE00AD1; Mon,  5 Nov 2018 20:56:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (markus4dev[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.45 listed in list.dnswl.org]
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5270DE00A9B
	for <yocto@yoctoproject.org>; Mon,  5 Nov 2018 20:56:45 -0800 (PST)
Received: by mail-wr1-f45.google.com with SMTP id o15-v6so8284176wrv.4
	for <yocto@yoctoproject.org>; Mon, 05 Nov 2018 20:56:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=XQMB99JQLw4g5wOQfn52dlgbxfdtIFNPTisVkdBtwfU=;
	b=ngu6pfYqCsTk2Jbx6cRtjWm+AouRQ0HXbTJpSj1uMGhZF61IBmuR2joWDWEdbbLNrn
	alETtejejY6Kev50WPfVhGlTfZV9bmWS2ZutLDen49GMl0C9f7mrAXKRrJQho8MCkVze
	nv7tsD0T/FzUIGTI6vcAAOZ7gRfNlJGnh5aeTXMBxVxhSv/wXWlKmmHJLlrHjvpjHnwV
	/XpAM+cS3EYd9EBGflbRBkPiEUQywM16FdV0CYtlont/f8AUZHltdJciEOdPJ1l/0v2O
	MhurVkjTxdBRhl3yh7vXcsP2Nta4PFPXYWXbBt4n96jutzh7CBMcSHPqsdfndmr3l/gh
	0Iag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=XQMB99JQLw4g5wOQfn52dlgbxfdtIFNPTisVkdBtwfU=;
	b=aWCJuQX3TCvCqU8sJ3G5HnAJhHPWb91cn2t2F36A2l6KMyBNTKLOW93OxNdPt5k3I3
	WTAmQ+9XgTAR5hBTTL84U/7mRTUKvxvauIbGIzrOcnSrOn2szrnwNGhJii3yZyDo8Mkr
	NmUjDmP7XKpEaKn+iQK4j8sxFDCkabshzJbMQh9Jsi9+mqW/ONw27PZlcTbD0Pww70hX
	15W2fz2A/jQ29alMw1/T9rEfqcCv4vt/Q/ttch73c62/mfsqeJq8f0Dm55z/tVEDfA6Y
	U5jzR1yVZmYJBhLcuRjgZoL6GCTdPVQbqeNXHtOWX8NJut4xI4k6QT3vFdeXoDt0oKLW
	fm1w==
X-Gm-Message-State: AGRZ1gL3y5k89Y0mBWhqqKM57gJVeQgaffcKYlJ70a7X17HodcuPb9n1
	m6WdUxd7IbiQZK51mBwrFYKhtH8M2Q1PQ1gzg63PWg==
X-Google-Smtp-Source: AJdET5ff2c5TRkleYzKqy9cthIoomrQ1JoOuBJGjoODpxS0PM4QufjIiBNf4wFyQI7aShDHArU2/P2LH6AUq9cIzGRg=
X-Received: by 2002:adf:cc81:: with SMTP id
	p1-v6mr3917962wrj.139.1541480204115; 
	Mon, 05 Nov 2018 20:56:44 -0800 (PST)
MIME-Version: 1.0
References: <CAFd=ocgvmSf1zyWWw3A1=+Hr=WeD0ixdf5xLAT-TWg3hhKTqXw@mail.gmail.com>
In-Reply-To: <CAFd=ocgvmSf1zyWWw3A1=+Hr=WeD0ixdf5xLAT-TWg3hhKTqXw@mail.gmail.com>
From: Markus W <markus4dev@gmail.com>
Date: Tue, 6 Nov 2018 05:56:42 +0100
Message-ID: <CAFd=ocgFTMXeUxwFqkffhrk91KsXkSPR+chzyiGKqQTG+fs=dw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-raspberrypi] Problem with adding udev rules
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
X-List-Received-Date: Tue, 06 Nov 2018 04:56:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi!

I want to append the rules in the
recipe-core/udev/udev-rules-rpi/99-com.rules with the rules below from
within my own recipe. I can=C2=B4t figure out how to do that.

I have tried to add those rules as separate rules file in a recipe in
my own layer. After the build I can see that the rules file is in the
correct directory /etc/udev/rules.d (next to 99-com.rules) but the
rules didn't get applied. The groups below I have created by
inheriting the useradd class (GROUPADD_PARAM_${PN} =3D "-r spi; -r i2c;
-r gpio") in a different layer with a higher priority than the layer
with the rules recipe.

Not sure why this is not working. Any suggestions?

90-interfaces.rules file:

SUBSYSTEM=3D=3D"input", GROUP=3D"input", MODE=3D"0660"
SUBSYSTEM=3D=3D"i2c-dev", GROUP=3D"i2c", MODE=3D"0660"
SUBSYSTEM=3D=3D"spidev", GROUP=3D"spi", MODE=3D"0660"
SUBSYSTEM=3D=3D"bcm2835-gpiomem", GROUP=3D"gpio", MODE=3D"0660"

SUBSYSTEM=3D=3D"gpio", GROUP=3D"gpio", MODE=3D"0660"
SUBSYSTEM=3D=3D"gpio*", PROGRAM=3D"/bin/sh -c '\
chown -R root:gpio /sys/class/gpio && chmod -R 770 /sys/class/gpio;\
chown -R root:gpio /sys/devices/virtual/gpio && chmod -R 770
/sys/devices/virtual/gpio;\
chown -R root:gpio /sys$devpath && chmod -R 770 /sys$devpath\
'"

Regards,
Markus

