Return-Path: <pinganddu90@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67527E00D6D; Fri, 26 Jan 2018 01:06:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pinganddu90[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f177.google.com (mail-ot0-f177.google.com
	[74.125.82.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBF4FE00CF1
	for <yocto@yoctoproject.org>; Fri, 26 Jan 2018 01:06:41 -0800 (PST)
Received: by mail-ot0-f177.google.com with SMTP id t20so9544757ote.11
	for <yocto@yoctoproject.org>; Fri, 26 Jan 2018 01:06:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=IhMkeAGJBLibrKjJNFQSvbKgWMPv1H3zOom2bb4oaJ8=;
	b=tm3RZmV02fAPH1ltYsmzJIZIDwonUanfqY5vY900mUvSrU44OGL78XvFCSDAKgNoO9
	yJg1/r1nebOdVskoW4Dp5ttoirOkvvIsS1sYmm3WqMjFstrbbda7k91zCtcXAA7VDzJ2
	gnym4fNR/ddQkNV9tW9zc+73mfm/TTE2V3RuBqEWYWfC2FRRK2uHgheB9/sJgtHrRlwm
	4t2zQestN0WEZdGMd7VmgAygY08CyaLfBNb2jlFm/kMtL9EfKNwzOPXAa1y72bxjWxsN
	JOwhI14BMQl6WxdcuZ21v36hWSqLLR5wU7lG8GMfPcfl0xOkAAbEAWmC51OnS6Q2GCW6
	Tm1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=IhMkeAGJBLibrKjJNFQSvbKgWMPv1H3zOom2bb4oaJ8=;
	b=IZH3lU7TY3Fn8kT4Wr/LAKEOJUJ6hmLaoAM4HD6ArIdKwg9YLWYTBO7Ns4mYOIcvP1
	jC88TXVdQ1IIL/9MQAnqdvB6+7C3ucJxc8Jzum4zvcJgXt+TPgU8OGOdM/vA5pNNSZht
	TDYAePss9rNzC107y+IHSoyhrWxGU1kQgyKz7nEqAEI/aCzuhsQFNUcVY68oOO4UQmxf
	0FmOn0K9T56okLmCJQfpFQuCXL5CioPqtZv5IELbItrf/yvPK8CbzODUrHSeU6SMYwvq
	4I4AqJC7O8SQZ4MbcN7QvVON+xhvkfUW1+JsyALTqojDoQ/bEfd4vWIjziSoYk60F438
	SztQ==
X-Gm-Message-State: AKwxytdrUz/Nn+U3d/mubYItouSzjEDuBkuB1dUvyJWbZ1wJjoeR2s4L
	fUs+DYGtu0ZOC2jD5BOCTTLb+oUMGriYWorz/JIeyQ==
X-Google-Smtp-Source: AH8x224CfTBKwL0OMLn+Y39Hx7aLG0QBuENgVq8uFoAp+TpE/W3wmkqglb04l8htUM0aLvXfYdbx5i4fDRTSzNeI6Rc=
X-Received: by 10.157.87.101 with SMTP id x34mr13138974oti.171.1516957601069; 
	Fri, 26 Jan 2018 01:06:41 -0800 (PST)
MIME-Version: 1.0
Received: by 10.74.173.139 with HTTP; Fri, 26 Jan 2018 01:06:40 -0800 (PST)
From: kk <pinganddu90@gmail.com>
Date: Fri, 26 Jan 2018 17:06:40 +0800
Message-ID: <CAKHP1ds6nvjVUMEvYk-_RDQ968N6X+EMWbgi2hveKJnaALk0iA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-raspberrypi] how the linux-raspberry skip the do_kernel_metadata?
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
X-List-Received-Date: Fri, 26 Jan 2018 09:06:42 -0000
Content-Type: multipart/alternative; boundary="94eb2c1c002ef37e620563aa3698"

--94eb2c1c002ef37e620563aa3698
Content-Type: text/plain; charset="UTF-8"

I see the linux-raspberrypi_4.9.bb recipe didn't use the
yocto-kernel-cache, and add configure in linux-raspberrypi.inc, I am
interested in how the linux-raspberry skip the do_kernel_metadata?

Thanks!

--94eb2c1c002ef37e620563aa3698
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I see the=C2=A0<a href=3D"http://linux-raspberrypi_4.9.bb"=
>linux-raspberrypi_4.9.bb</a> recipe didn&#39;t use the yocto-kernel-cache,=
 and add configure in=C2=A0linux-raspberrypi.inc, I am interested in how th=
e linux-raspberry skip the do_kernel_metadata?<div><br></div><div>Thanks!</=
div></div>

--94eb2c1c002ef37e620563aa3698--
