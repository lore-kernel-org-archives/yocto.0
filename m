Return-Path: <mirza.krak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8034E00E23; Mon,  5 Dec 2016 07:26:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mirza.krak[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.173 listed in list.dnswl.org]
Received: from mail-qt0-f173.google.com (mail-qt0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C840E00C19
	for <yocto@yoctoproject.org>; Mon,  5 Dec 2016 07:26:35 -0800 (PST)
Received: by mail-qt0-f173.google.com with SMTP id w33so316443199qtc.3
	for <yocto@yoctoproject.org>; Mon, 05 Dec 2016 07:26:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=rh3UTNJba1N5oN7so7CSDEfO7MaCfvRUN12KYqB6Hhw=;
	b=sor5KthF0S/a60mE2gJ0lOA9oTYLsuIsClTPiido4mAVLyY7IdUuZuJFrJHOYiz+Ns
	9lQ1Oi8pvlMIBIqpZBgEHDuE9XwB4RSmy2++VeYIKUhL5m1mr8Aj22DssmWWCIp+aBEW
	E0rjW7nEzfO+sx61T4kYExo6FVuQR4KH5nMvJut0XDsbOXKU/uT9NE5NASOelle1CG0D
	7QzjP8qCjwcDoyZp7YlFE2H1W9IMfir5jJiod675SbjJrw+h8gCBSLwvixDLZmPiBoIv
	IRWvKr/Dhl23WaEG6zv8WOe03vhg3iC/h0LZzJpBClKIVVzT2WWQyese2iwTaui2N+vb
	NVTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=rh3UTNJba1N5oN7so7CSDEfO7MaCfvRUN12KYqB6Hhw=;
	b=I0cCU12bUnvi00i1suClfnewBGwz4tID6BWrXTunx9TVyaDPTA/mqM7+RRUBL5CIzY
	fwmNsiH5F/Xv//9CtLtlR3Ao/gOsC4Y1tjfH40Pypul3pH6w/Zh/WClzq00xmLCscQ38
	mlaA6Fd8zqTWQ0/SDNXROcUx7pRA43XgTU7BKMAMV7Gb2fXqvQucVcoN3r9ruHOyJyor
	BWXwoqOB/0ViMVE61DmdBiuaDKojpVbaho+GS10KXS0UEySzFsj0khb+jkjubIJEgXUW
	ykIgS3plL88uG8BFR7YDM6Gx+q11sli4BjwFLGJoWmcFDLZxfGp9ey7nVwC4l8seCi8H
	AgFw==
X-Gm-Message-State: AKaTC01lQroGR8LrT/HGj3ylupTP0geFQrh/6voGFCruqBZXM/Se+NMYFsDsh+tQFek9F1kTQ7Ha3R7Geg/fog==
X-Received: by 10.200.53.9 with SMTP id y9mr49024816qtb.176.1480951594897;
	Mon, 05 Dec 2016 07:26:34 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.54.136 with HTTP; Mon, 5 Dec 2016 07:26:34 -0800 (PST)
From: Mirza Krak <mirza.krak@gmail.com>
Date: Mon, 5 Dec 2016 16:26:34 +0100
Message-ID: <CALw8SCXOnb6WEWbmSnjLOko_dzwK10X9DsrFPfAE7PPuPwKaDQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [meta-raspberrypi] morty release ?
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
X-List-Received-Date: Mon, 05 Dec 2016 15:26:38 -0000
Content-Type: text/plain; charset=UTF-8

Hi.

I have some questions and remarks and hopefully someone here can answer them.

The meta-raspberrpi layer is missing a morty release? Any time frame
of when this will be added?

There is currently a issue when using U-boot due to some updates in
RPi boot firmware. See [1] and [2]. Which should be noted/resolved
before a morty release?

To provide some more information about above mentioned problem. If you
use the current firmware files (20161030 in meta-raspberrypi) together
with U-boot (2016.03) you lose the console on U-boot and on Linux
kernel. This is due to the fact that "newer" firmware sets a default
uart clock to 48 MHz, but U-boot has a hard-coded value of 3 MHz, and
since we yet do not support to "forward" the patched DTB provided by
the firmware from U-boot to Linux we also break console on Linux.

The "default" values has been updated in Linux, see [2]. But if you
use that updated Linux kernel there is a mismatch between u-boot and
Linux. Should be noted that U-boot 2016.11 does not have this problem
since it does not try to initialize the UART port at all and only
relies on firmware to set it up correctly (see [3]).

Hope I made sense here :).

[1]. https://github.com/agherzan/meta-raspberrypi/issues/36
[2]. https://github.com/raspberrypi/linux/issues/1732#issuecomment-264810083
[3]. http://git.denx.de/?p=u-boot.git;a=commit;h=cd0fa5bff8052b19bde6967c2734f323c9848568

Best Regards
Mirza

