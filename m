Return-Path: <emirelkholy@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A2D6E01304
	for <yocto@yoctoproject.org>; Tue, 22 May 2012 11:58:22 -0700 (PDT)
Received: by yenm14 with SMTP id m14so7393640yen.35
	for <yocto@yoctoproject.org>; Tue, 22 May 2012 11:58:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=EzoiHcaiW/3yF3qui56c/9GZ6jV2UsbULbFF8VvK1rE=;
	b=RXgANUHFlzDLtFNIfRb7jkpeIXp0fXkIFntPEenXPX9Gy9H6XXfc07TUiYdaz6qEba
	SgtQc9XnTOLZo+Zl3xto/WBJkwUAxeq3clJvW/nDlSanxueN51nsqLt3FnvOkKr27PJE
	QweI/n2AReNn5eeqCtm4RutE+w1FPOZ8W+4OvR+H33i9lnTfXLmTzVKvcOKtJLC95jSy
	179KAYLBf14NfPkq8bNrh+ZEBpFXW3PkLkyk6VcB4ECZJ//rkVqltb7gCPmeEwHIPJxY
	ihfOWWIjKbLnCkvXOI1p2vvUO1wYBeQ9UJeDF8C4AALhEU4Ecz9mbi1FDtBit0lcDs2H
	V/Lw==
MIME-Version: 1.0
Received: by 10.236.153.104 with SMTP id e68mr28355175yhk.36.1337713101668;
	Tue, 22 May 2012 11:58:21 -0700 (PDT)
Received: by 10.146.234.10 with HTTP; Tue, 22 May 2012 11:58:21 -0700 (PDT)
Date: Tue, 22 May 2012 14:58:21 -0400
Message-ID: <CAExZvuNa59NhtL767y9fD-A05rZkpYdp+55N-zHWn2kJeEU_Fw@mail.gmail.com>
From: Emir Elkholy <emirelkholy@gmail.com>
To: yocto@yoctoproject.org
Subject: Connecting to target using eclipse/ADT
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 22 May 2012 18:58:22 -0000
Content-Type: text/plain; charset=ISO-8859-1

When connecting to my CRB that is running off a usb drive that has
yocto on it I am trying to connect to the CRB from my host in order to
debug using TCF agent. Through eclipse I am entering the IP address of
the target, and attempting to debug from the debug configurations
menu. Using a simple helloworld as an example, the file is actually
transferred to the target CRB, but the debugging fails. Eclipse gives
me a connection timing out error (not allowing me to debug). Is there
a link that describes how to connect to a physical target
using eclipse and the ADT? Is there anything that must be done on the
target side first before attempting to debug? I only enter the IP
address of the target under debug configurations, I don't setup
anything on the target side, maybe this is the problem? I followed the
same procedure as connecting to the QEMU (which works) as I did with
the physical hardware. I can't find anything online about a connection
time out either.

Thanks

