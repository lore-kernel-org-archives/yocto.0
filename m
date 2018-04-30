Return-Path: <stevep@korgrd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD1C7E00C40; Mon, 30 Apr 2018 16:40:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f182.google.com (mail-yb0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24634E00C22
	for <yocto@yoctoproject.org>; Mon, 30 Apr 2018 16:40:39 -0700 (PDT)
Received: by mail-yb0-f182.google.com with SMTP id v63-v6so3652046ybi.11
	for <yocto@yoctoproject.org>; Mon, 30 Apr 2018 16:40:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=korgrd-com.20150623.gappssmtp.com; s=20150623;
	h=from:content-transfer-encoding:mime-version:date:subject:message-id
	:to; bh=rlp/JRgEl1E6D/SRWTrhTdMDbUCNBdKgw7rRwWzJSkI=;
	b=trj66Iq5AxJDgAzOC7Tcqot8bMNysXlknOpjquqYqa5KXbmPaGZPip9orPK5Pn9h8r
	OrUjQ1nGuubV3tNKEmnvKJ2Vxe5lU8550gY0b1AzgN03UkrFYW72SbdEF5MEsxZNVRZe
	z4rJ2kwATktAIVagiVonZ9ycNdy+mHlclNmbik+9YIlKFBubHsX/CqjtNWTlInL8N2xv
	kMti2/FXT1/aNGiXpFZorzOLDbi9rdJ4SwjT0Bj2tpH9GYdKOWBga7ZmbM9N7/jzeYN/
	TaNuTz9Y1llFkyKtGGTZ3VuLNTB9X5zjsShvmz0e5oacSVSaQpZdf38fcnuquTZEXzcP
	OJMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
	:subject:message-id:to;
	bh=rlp/JRgEl1E6D/SRWTrhTdMDbUCNBdKgw7rRwWzJSkI=;
	b=ok8YnS3AY/yCM4aYWOcXOK2/RnjBTMGtkrqsi40ZzSrm6BaDbHotmOU9vvvqB1foyC
	lXvk/dgGKHaS0ugHoWkgRU8Am2G5Uriw4YDpkkmbVMTvnu5D5QQZDqMjZaYIJqbuQ3dE
	Yl/leCbkTVCIrRgGQ38AVcEXWdEjqoXbXm8JbVy8Unu0rHzPkbLhW0BC7KYS+bJUTEAY
	uZ/fxNMcnki1h6yMV7999UNylWXwEvrL/MwdXGCYN63QBcf1Kzqr8adQc7kss/LmNXYc
	97aOBIA/OE+mGbavZfsH6mdsscYtfHNdSVd3b86OnLg2HjJ0UgbW7P8ZEdJVeQ5aT2vt
	8XlQ==
X-Gm-Message-State: ALQs6tCeHmmRwNl2mHhoXUQ6nP3aHzElMC07K4ZYPABydr39cnQOkLC3
	CDNf/LjR90xs6SJicpYs5SYhFX9iS5U=
X-Google-Smtp-Source: AB8JxZol1o3Lt+Uflg2XZbyNmEpIGAX2DzX5YEKf/ZUYnS1iyX6RmKmAYiSDMO2e2NVaDx4oQ5sDHw==
X-Received: by 2002:a25:e5c3:: with SMTP id
	c186-v6mr8568346ybh.457.1525131638702; 
	Mon, 30 Apr 2018 16:40:38 -0700 (PDT)
Received: from [192.168.1.2] (68-112-255-18.dhcp.oxfr.ma.charter.com.
	[68.112.255.18]) by smtp.gmail.com with ESMTPSA id
	x125-v6sm3872596ywf.106.2018.04.30.16.40.37
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 30 Apr 2018 16:40:37 -0700 (PDT)
From: Steve Pavao <stevep@korgrd.com>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Mon, 30 Apr 2018 19:40:36 -0400
Message-Id: <05108809-5601-43F4-B1D3-5F2B8D675EFC@korgrd.com>
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3273)
Subject: [meta-raspberrypi] Compute Module 3 machine .conf questions
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
X-List-Received-Date: Mon, 30 Apr 2018 23:40:40 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hello,

My company has bought a Raspberry Pi Compute Module 3 for evaluation, =
and I have a 2 questions about the supplied machine .conf files for it.

1. Should the supplied raspberrypi-cm3.conf file internally refer to the =
Raspberry Pi 3 instead of the Raspberry Pi 2, since the RPi3 is the =
hardware basis of the Compute Module 3?

2. Should there also be an additional .conf file supplied in the =
meta-raspberry pi layer for a 64-bit version of poky Linux for the =
Compute Module 3, just as there is a raspberrypi3-64 machine .conf for =
the RPi3?

Thanks in advance for your thoughts about this.

- Steve Pavao
Korg R&D


.=

