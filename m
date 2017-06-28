Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4C8AE00BB1; Wed, 28 Jun 2017 01:41:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtownsend1973[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.42 listed in list.dnswl.org]
Received: from mail-lf0-f42.google.com (mail-lf0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77EA5E00B83
	for <yocto@yoctoproject.org>; Wed, 28 Jun 2017 01:41:53 -0700 (PDT)
Received: by mail-lf0-f42.google.com with SMTP id h22so30737455lfk.3
	for <yocto@yoctoproject.org>; Wed, 28 Jun 2017 01:41:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=5+3aWqDWeQUdvdPp1j7ALPlCNOal5e38stVG9tS6El4=;
	b=lKqzjT+j23w/eUGrdJicb54D2AXCC0XfydE3Bju0MM6hg2yNblurtfDTJd5/T6iHMG
	SKp1ert8sEDAkSjl0nQnReb+OxjW7jWhNcPCwOBptyETjKjpj7e1UIK7GKozvcXkQKff
	vJxbdb9j3owH8xLuj6V7d8fgylPTb53bxUsMakmom12mbzV3CvlJgDpjj6J0XlJ4vDZY
	1wGmShLjYXya/etS+uLWC2pDYWks+K9Dv05XwupQJ9fdmjiSvLcdWXo2SnrmIRb50W3J
	3xPlohSI51EEy5fArDxYySI2oJuCWkKk3qUri0c+zrss0/RFVG0DXsu4V/F4K2djAcrt
	Sn2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=5+3aWqDWeQUdvdPp1j7ALPlCNOal5e38stVG9tS6El4=;
	b=YU+TQmY3efjiuWt/fNN7+KQeVm0oZPkMA4jd1U851qVeJcrJ17XK4Mb7x+g7Cc0UPm
	6T1hBspe9Ep4yDomK5RuCjdRehxm2VVFbr/9QPqs0o39zHRIVwt/CZz2Gdaw72p0kbEL
	u0+tYjQSeiqW6MpoIqTie0Tz4NqUeefsfq3pWlPbEd1c9/7ECDcB8hRvrLmKzmNVqhSK
	ISUH2pmsDPWN5CqjSWbijffwIAwhr8sNEMwg3DonVYRKf1UdcM6syyN/8sxZsAJq8Ls0
	0WQBvRg0YyBX174xa7FIBTcbFBcjBEctC5UhykL/0XqNpbZkWSFh5gOHTtYDAPOgOdUm
	MgVQ==
X-Gm-Message-State: AKS2vOymgvCXR2g2Xmj1jDckInWLC+h6ISos7+aycuqbbCMyrqyY2Evx
	FPCe1VBUGxTUsi0d06o7LO2EgymzrJpgZvU=
X-Received: by 10.25.229.13 with SMTP id c13mr3753371lfh.102.1498639312495;
	Wed, 28 Jun 2017 01:41:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.196.17 with HTTP; Wed, 28 Jun 2017 01:41:52 -0700 (PDT)
From: Martin Townsend <mtownsend1973@gmail.com>
Date: Wed, 28 Jun 2017 09:41:52 +0100
Message-ID: <CABatt_x4FiEHw=qKuy+2VBy6svGccTnLRRFb9w42Sf2cfGkOmQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: RNDIS Broken in linux-yocto 4.1.39, working in 4.1.37
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
X-List-Received-Date: Wed, 28 Jun 2017 08:41:57 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I recently upgraded to 4.1.39 linux-yocto and Ethernet Gadget stopped
working with Windows hosts, here's the output from the Journal:

Jun 22 20:31:37 varsomam43-bb5eda kernel: g_ether gadget: rndis
reqa1.01 v0000 i0000 l4096
Jun 22 20:31:37 varsomam43-bb5eda kernel: g_ether gadget: rndis
req21.00 v0000 i0000 l28
Jun 22 20:31:37 varsomam43-bb5eda kernel: gen_ndis_query_resp:
RNDIS_OID_GEN_SUPPORTED_LIST
Jun 22 20:31:37 varsomam43-bb5eda kernel[242]: [ 7459.457796] IPv6:
ADDRCONF(NETDEV_CHANGE): usb0: link becomes ready
Jun 22 20:31:37 varsomam43-bb5eda kernel[242]: [ 7459.481614] g_ether
gadget: rndis req21.00 v0000 i0000 l24
Jun 22 20:31:37 varsomam43-bb5eda kernel[242]: [ 7459.481946]
rndis_msg_parser: RNDIS_MSG_INIT
Jun 22 20:31:37 varsomam43-bb5eda kernel[242]: [ 7459.528733] g_ether
gadget: rndis reqa1.01 v0000 i0000 l4096
Jun 22 20:31:37 varsomam43-bb5eda kernel[242]: [ 7459.530206] g_ether
gadget: rndis req21.00 v0000 i0000 l28
Jun 22 20:31:37 varsomam43-bb5eda kernel[242]: [ 7459.530322]
gen_ndis_query_resp: RNDIS_OID_GEN_SUPPORTED_LIST
Jun 22 20:31:37 varsomam43-bb5eda kernel: g_ether gadget: rndis
reqa1.01 v0000 i0000 l4096
Jun 22 20:31:37 varsomam43-bb5eda kernel: g_ether gadget: rndis
req21.00 v0000 i0000 l32
Jun 22 20:31:37 varsomam43-bb5eda kernel: rndis_msg_parser: unknown
RNDIS message 0x80000004 len 136
Jun 22 20:31:37 varsomam43-bb5eda kernel: rndis_msg_parser00000000: 04
00 00 80 88 00 00 00 03 00 00 00 00 00 00 00  ................
Jun 22 20:31:37 varsomam43-bb5eda kernel: rndis_msg_parser00000010: 70
00 00 00 10 00 00 00 01 01 01 00 02 01 01 00  p...............
Jun 22 20:31:37 varsomam43-bb5eda kernel: rndis_msg_parser00000020: 03
01 01 00 04 01 01 00 06 01 01 00 07 01 01 00  ................
Jun 22 20:31:37 varsomam43-bb5eda kernel: rndis_msg_parser00000030: 0a
01 01 00 0b 01 01 00 0c 01 01 00 0d 01 01 00  ................
Jun 22 20:31:37 varsomam43-bb5eda kernel: rndis_msg_parser00000040: 16
01 01 00 0e 01 01 00 11 01 01 00 14 01 01 00  ................
Jun 22 20:31:37 varsomam43-bb5eda kernel: rndis_msg_parser00000050: 02
02 01 00 01 01 02 00 02 01 02 00 03 01 02 00  ................
Jun 22 20:31:37 varsomam43-bb5eda kernel: rndis_msg_parser00000060: 04
01 02 00 05 01 02 00 01 01 01 01 02 01 01 01  ................
Jun 22 20:31:37 varsomam43-bb5eda kernel: rndis_msg_parser00000070: 03
01 01 01 05 01 01 01 04 01 01 01 01 01 02 01  ................
Jun 22 20:31:37 varsomam43-bb5eda kernel: rndis_msg_parser00000080: 02
01 02 01 03 01 02 01                          ........
Jun 22 20:31:37 varsomam43-bb5eda kernel: RNDIS command error -524, 32/32
Jun 22 20:31:37 varsomam43-bb5eda kernel[242]: [ 7459.592722] g_ether
gadget: rndis reqa1.01 v0000 i0000 l4096
Jun 22 20:31:37 varsomam43-bb5eda kernel[242]: [ 7459.594360] g_ether
gadget: rndis req21.00 v0000 i0000 l32
Jun 22 20:31:37 varsomam43-bb5eda kernel[242]: [ 7459.594699]
rndis_msg_parser: unknown RNDIS message 0x80000004 len 136
Jun 22 20:31:37 varsomam43-bb5eda kernel[242]: [ 7459.601671]
rndis_msg_parser00000000: 04 00 00 80 88 00 00 00 03 00 00 00 00 00 00
00  ................
Jun 22 20:31:37 varsomam43-bb5eda kernel[242]: [ 7459.601697]
rndis_msg_parser00000010: 70 00 00 00 10 00 00 00 01 01 01 00 02 01 01
00  p...............
Jun 22 20:31:37 varsomam43-bb5eda kernel[242]: [ 7459.601718]
rndis_msg_parser00000020: 03 01 01 00 04 01 01 00 06 01 01 00 07 01 01
00  ................
Jun 22 20:31:37 varsomam43-bb5eda kernel[242]: [ 7459.601739]
rndis_msg_parser00000030: 0a 01 01 00 0b 01 01 00 0c 01 01 00 0d 01 01
00  ................
Jun 22 20:31:37 varsomam43-bb5eda kernel[242]: [ 7459.601759]
rndis_msg_parser00000040: 16 01 01 00 0e 01 01 00 11 01 01 00 14 01 01
00  ................
Jun 22 20:31:37 varsomam43-bb5eda kernel[242]: [ 7459.601779]
rndis_msg_parser00000050: 02 02 01 00 01 01 02 00 02 01 02 00 03 01 02
00  ................
Jun 22 20:31:37 varsomam43-bb5eda kernel[242]: [ 7459.601800]
rndis_msg_parser00000060: 04 01 02 00 05 01 02 00 01 01 01 01 02 01 01
01  ................
Jun 22 20:31:37 varsomam43-bb5eda kernel[242]: [ 7459.601820]
rndis_msg_parser00000070: 03 01 01 01 05 01 01 01 04 01 01 01 01 01 02
01  ................
Jun 22 20:31:37 varsomam43-bb5eda kernel[242]: [ 7459.601839]
rndis_msg_parser00000080: 02 01 02 01 03 01 02 01
    ........
Jun 22 20:31:37 varsomam43-bb5eda kernel[242]: [ 7459.601858] RNDIS
command error -524, 32/32

Not only has it stopped working but it often locks up the Windows host
when you try things like re-installing the Windows RNDIS driver, or
enabling the RNDIS/Ethernet Gadget Network adapter.

I reverted back to 4.1.37 and everything is fine again.  I'm using a
TI AM4378 based board.  Has anyone else seen this problem?

Many Thanks,

Martin.

