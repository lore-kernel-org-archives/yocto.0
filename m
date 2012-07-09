Return-Path: <jfabernathy@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6024E01454
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2012 03:39:26 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so10557849yhf.35
	for <yocto@yoctoproject.org>; Mon, 09 Jul 2012 03:39:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:date:message-id
	:to:mime-version:x-mailer;
	bh=mnz3ysD+9MAtDnnU4EqAnEYoEKWPyln0s5s20NhdF0g=;
	b=wXoUsfMH6nCHqPV7uH8z09RKaFRgCOV0UDzGM4UXbdz7rsYRWbZD7KlV0BmjqhFtXG
	Ua2vKjO4sjjOUb1nzNM6lKDnyNbbDNCbIZQTKmV74qspv3uGmo3Lz9h5r0O8hEFofrdR
	lzVKKKsa1avnG/C01xHirdz8PEnnkjM6fJ4oZHnbcUG/jlDXb3k/B1Ni+q4Ka0k99Ws0
	jnAq7oobZ6gMwjn3gyltqiQA+fYbxel+zj8rpUhCObSAY1a66JHCLwEc0JPy5XK1wrJy
	Kr2CN2Wq0hUc72ZN6AuUH03UvKcU8uiKbGst15GmbgN1sbLticENd+j3mwKcoTMudp4F
	k9Ng==
Received: by 10.236.77.164 with SMTP id d24mr48153706yhe.129.1341830364965;
	Mon, 09 Jul 2012 03:39:24 -0700 (PDT)
Received: from [10.0.1.47] (nc-184-4-39-191.dhcp.embarqhsd.net. [184.4.39.191])
	by mx.google.com with ESMTPS id q10sm29609941anm.16.2012.07.09.03.39.24
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 09 Jul 2012 03:39:24 -0700 (PDT)
From: James Abernathy <jfabernathy@gmail.com>
Date: Mon, 9 Jul 2012 06:39:40 -0400
Message-Id: <43492210-601B-467E-8BC2-8CDD691669A4@gmail.com>
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: menuconfig vs. config fragments?
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
X-List-Received-Date: Mon, 09 Jul 2012 10:39:26 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

my goal of this test was to see if I could use the n450 BSP as a =
starting point for a BSP to support my Acer Aspire One n450 based =
netbook.  The core-image-sato will boot from USB key on the netbook if I =
use the ZIP drive format for the USB key, but the current n450 BSP =
doesn't include the drivers for the networking hardware in the netbook.

I found by testing, using the menuconfig option documented in the =
Developer Manual Appendix B example, that I needed to add 2 parameters =
to the .config:

CONFIG_ATH9K_PCI
CONFIG_ATL1C

To make this change easier to manage and more permanent, I thought about =
creating a config fragment.  I put the config parameters in a file, =
myconfig, in the linux-yocto directory at the same level as the =
linux-yocto_3.2.bbappend file, where I added:

SRC_URI +=3D "file//myconfig"

I can see from the tmp/work directory that bitbake found my myconfig =
file and copied it over, but the .config file used in the building of =
the kernel didn't have the parameters listed and obviously, the drivers =
didn't make it.

Is there something else to do to get these config parameters included as =
config fragments?  Is there some tool reviewing the config parameters =
and throwing my 2 out for some reason? =20

The only way I've gotten this to work is with the bitbake linux-yocto -c =
menuconfig command and manually adding the parameters.

Jim A


