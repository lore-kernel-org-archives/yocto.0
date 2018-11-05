Return-Path: <markus4dev@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9945FE00A9B; Mon,  5 Nov 2018 13:10:05 -0800 (PST)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
	[209.85.221.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE6AFE00A54
	for <yocto@yoctoproject.org>; Mon,  5 Nov 2018 13:10:04 -0800 (PST)
Received: by mail-wr1-f52.google.com with SMTP id k15-v6so8138773wre.12
	for <yocto@yoctoproject.org>; Mon, 05 Nov 2018 13:10:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=XQMB99JQLw4g5wOQfn52dlgbxfdtIFNPTisVkdBtwfU=;
	b=CBtGgKXSkxCG/fxXC2/d3eQO01M68vn4xPczf19F/dJ8S7Fmrd3rruj80RW1ANKRxn
	Hq623jHQNoOKJFVatcg4w8E2WbAGaSjKWQuvRJktEC/ISQ/31t+elQA1ALRJu4zD9k7h
	WUYJ80+OW8J4BLghS4F3LNAS7uM+3sKNziK961kZpFIAerOoHfDjkMjTpKlE1GcHmxlM
	X5YAPKzjdWuOPlwZNc4rmkp95UGO9DlQxfdk7I6/Quy4kLkPbawmZE+lTRnj/EV2khyf
	srTH1sYeCn/FP3Qpm0DDS0tUEZGZ1xAecktCw01cZu9dpT9XwpEISsycqjjdN83Wnkkl
	cVVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=XQMB99JQLw4g5wOQfn52dlgbxfdtIFNPTisVkdBtwfU=;
	b=baDfjkuY3JLuUgNg89eQ9RFhyt8WGwjbfTVsQD7Gu7PO4nSuuyCwRx1Aum+paLhWUY
	tPgUV+S8sIiuU/G7ZIxvUtrQo3rOzUeP1cUOVcMxAP+ZdbTRE7OoOUeJQseBxXaF+zUx
	hYlAAbD2yt30WlEH/JC0visz9ONgRzrjQZS5dSPrTlnhjHZ3Q46h5dwp4YH+6YJGjZma
	M/IjK7T/NuwfQxRQw/cVyYJMZQ5jnGw7ozvf3b4tVnBxpTt7Z0PeIZ5yBZ6FjbYKiihc
	YDZ0gZf89kQRB2guUiUu7B/WCqYjK3sjgKt12L/JTByoq92/PPavl4UIb6s+trZtHS6T
	z3ow==
X-Gm-Message-State: AGRZ1gIc7A8xUcB7/N+7JjgF9S1Q4k3Kr+V04NTHCq1SQyuFKwVHkDEo
	2cs1/Txu6/zEZx4AiIsz3erVOI3BsEBWkHZaGsblhygr
X-Google-Smtp-Source: AJdET5ehuE+XdQ1tvBfdo26aj2rNM3cd7tkag9awDXhNVwIWLI8TS8Kg/T2Uw2fQhBp9WLVZ3y0ZDRrCu3xh8Wc+URw=
X-Received: by 2002:adf:c084:: with SMTP id
	d4-v6mr20801432wrf.268.1541452203700; 
	Mon, 05 Nov 2018 13:10:03 -0800 (PST)
MIME-Version: 1.0
From: Markus W <markus4dev@gmail.com>
Date: Mon, 5 Nov 2018 22:10:00 +0100
Message-ID: <CAFd=ocgvmSf1zyWWw3A1=+Hr=WeD0ixdf5xLAT-TWg3hhKTqXw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-raspberrypi]
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
X-List-Received-Date: Mon, 05 Nov 2018 21:10:05 -0000
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

