Return-Path: <marc.ferland@gmail.com>
Received: from mail-qa0-f53.google.com (mail-qa0-f53.google.com
	[209.85.216.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 817EBE014E2
	for <yocto@yoctoproject.org>; Mon, 10 Jun 2013 15:11:56 -0700 (PDT)
Received: by mail-qa0-f53.google.com with SMTP id g10so2581982qah.19
	for <yocto@yoctoproject.org>; Mon, 10 Jun 2013 15:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:user-agent:mime-version
	:content-type; bh=rAa63kydQRDxsnkK3R0RuylTOBrYxzjCqWxJKip8ZN8=;
	b=EeZJ3vEycNYVM6ICBRBKAwn7Saqz9A3DkhNs5RIpLFUS5gUuEu3ZlrhnmRvZdpeIXm
	TzJmYPXzSHrFhfp10GXBFKEa+Ym3/EUIGV/UHWcnlw5hcnI1NNvfWfB3tN5mj3IQ6gUy
	DQyNlidn66+V7K8BiMZ+xqFvOQ7iiMk68/W1xVpIcwwg+EYTbk+bEIDmgofiN0O26kUW
	gLqrK2shkgCM5B+eulTW4HaGK8/8Eo7y6HWjqFKYyNTnQHMEnYf1Z/O7YcHuWhqohJ5f
	UY2K3v5uX68ssHCpwNpfmsWf+1LUCGBitX+jqWAkJdBcOKbfQvaq7ryETKuorxQlTBs0
	RV+Q==
X-Received: by 10.49.18.166 with SMTP id x6mr12640622qed.39.1370893154245;
	Mon, 10 Jun 2013 12:39:14 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPSA id
	ds7sm15464704qab.13.2013.06.10.12.39.11 for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Mon, 10 Jun 2013 12:39:12 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Mon, 10 Jun 2013 15:39:30 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: yocto@yoctoproject.org
Date: Mon, 10 Jun 2013 15:39:30 -0400
Message-ID: <874nd592ml.fsf@sonatest.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.2 (gnu/linux)
MIME-Version: 1.0
Subject: kernel-module in initramfs
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
X-List-Received-Date: Mon, 10 Jun 2013 22:11:57 -0000
Content-Type: text/plain

Hi,

I have an application recipe wich RDEPENDS on a couple of kernel modules
and is installed in my initramfs image. The dependency on the kernel
modules is expressed by:

RDEPENDS_${PN}_mymachine += "kernel-module-abc kernel-module-def"

This seems to work fine, expect that I now have a copy of the bzImage
packaged in the initramfs. This has a negative effect on boot
performance and the final image size.

Is there a way to get rid of this 'extra' bzImage?

Marc

