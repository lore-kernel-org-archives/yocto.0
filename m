Return-Path: <julian@jusst.de>
Received: from smtp.work.de (smtp1.work.de [212.12.40.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D091AE0027E
	for <yocto@yoctoproject.org>; Mon,  1 Oct 2012 13:18:22 -0700 (PDT)
Received: from [88.71.86.155] (helo=julian-scheels-macbook.fritz.box)
	by smtp.work.de with esmtpsa (TLS1.0:RSA_AES_128_CBC_SHA1:16)
	(Exim 4.72) (envelope-from <julian@jusst.de>) id 1TImRL-00011G-UQ
	for yocto@yoctoproject.org; Mon, 01 Oct 2012 22:18:08 +0200
From: Julian Scheel <julian@jusst.de>
Message-Id: <D9A15604-C508-4314-B4DC-B6F52691EC51@jusst.de>
Date: Mon, 1 Oct 2012 22:18:12 +0200
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 6.0 \(1486\))
X-Mailer: Apple Mail (2.1486)
Subject: Runtime update of yocto-images
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
X-List-Received-Date: Mon, 01 Oct 2012 20:18:23 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

I wonder how everyone deals with runtime updates of yocto based systems? =
Are you using the package management for this? Actually I'd prefer a =
one-file update, which would replace the whole rootfs. I think having a =
squashfs image containing the rootfs and place it on some ext-partition =
would be nice. One would just need an initramfs, that could mount the =
squashfs file as root.

Is anyone following an approach like this?

Regards,
Julian


