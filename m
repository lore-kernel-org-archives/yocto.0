Return-Path: <dhanyalakshmi.k@priyarajaelectronics.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE16BD0E6F7
	for <webhook@archiver.kernel.org>; Mon, 21 Oct 2024 11:36:17 +0000 (UTC)
Subject: Information related to RCW file used in FRWY-LS1012A evaluation board.
To: yocto@lists.yoctoproject.org
From: dhanyalakshmi.k@priyarajaelectronics.com
X-Originating-Location: IN (49.249.50.109)
X-Originating-Platform: Linux Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 21 Oct 2024 04:36:15 -0700
Message-ID: <jW0a.1729510575607728217.yf5O@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="yNuIDiqFPMgtKo8on33E"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Oct 2024 11:36:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64066

--yNuIDiqFPMgtKo8on33E
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello team,
I'm Dhanyalakshmi,
We have designed a custom board based on the FRWY-LS1012A evaluation board,=
 with minimal changes. The main differences are the removal of the audio ja=
ck, Micro-Click connectors, and Ethernet ports, while all other components =
remain the same.
I successfully flashed the U-Boot firmware ( firmware_ls1012afrwy_uboot_qsp=
iboot.img ) onto the custom board=E2=80=99s QSPI NOR flash, and the board i=
s booting correctly with console output as expected.

The next step was to load the OS from a micro-SDHC card. I formatted the ca=
rd and copied both the OS image ( ls-image-main-ls1012afrwy-20240806042644.=
rootfs.tar.gz ) and the bootloader firmware ( firmware_ls1012afrwy_uboot_qs=
piboot.img ) onto it.

*Note:* The same micro-SDHC card successfully loads the OS on the evaluatio=
n board.

However, on the custom board, the micro-SDHC card is not detected. I used t=
he mmc info command to verify this. While the card is detected on the evalu=
ation board, it is not recognized on the custom board.

I would like to review the RCW file to understand the functionality of mult=
ifunctional pins, particularly those related to the SD card interface. I ha=
ve tried searching for it, but I need to know how to identify which RCW fil=
e is included in the firmware_ls1012afrwy_uboot_qspiboot.img firmware image=
 that provides information about the SD card pin configuration.

Additionally, I would like to understand how RCW files are written and conf=
igured. Could you please assist me with these queries?

Thank you.

--yNuIDiqFPMgtKo8on33E
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello team,</div>
<div>I'm Dhanyalakshmi,
<div>We have designed a custom board based on the FRWY-LS1012A evaluation b=
oard, with minimal changes. The main differences are the removal of the aud=
io jack, Micro-Click connectors, and Ethernet ports, while all other compon=
ents remain the same.</div>
<div>I successfully flashed the U-Boot firmware (<code>firmware_ls1012afrwy=
_uboot_qspiboot.img</code>) onto the custom board&rsquo;s QSPI NOR flash, a=
nd the board is booting correctly with console output as expected.</div>
<p>The next step was to load the OS from a micro-SDHC card. I formatted the=
 card and copied both the OS image (<code>ls-image-main-ls1012afrwy-2024080=
6042644.rootfs.tar.gz</code>) and the bootloader firmware (<code>firmware_l=
s1012afrwy_uboot_qspiboot.img</code>) onto it.</p>
<p><strong>Note:</strong> The same micro-SDHC card successfully loads the O=
S on the evaluation board.</p>
<p>However, on the custom board, the micro-SDHC card is not detected. I use=
d the <code>mmc info</code> command to verify this. While the card is detec=
ted on the evaluation board, it is not recognized on the custom board.&nbsp=
;</p>
<p>I would like to review the RCW file to understand the functionality of m=
ultifunctional pins, particularly those related to the SD card interface. I=
 have tried searching for it, but I need to know how to identify which RCW =
file is included in the <code>firmware_ls1012afrwy_uboot_qspiboot.img</code=
> firmware image that provides information about the SD card pin configurat=
ion.</p>
<p>Additionally, I would like to understand how RCW files are written and c=
onfigured. Could you please assist me with these queries?</p>
<p>Thank you.&nbsp;</p>
</div>

--yNuIDiqFPMgtKo8on33E--

