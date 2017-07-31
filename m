Return-Path: <f_l_k@t-online.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D77E5E00C2E; Mon, 31 Jul 2017 08:27:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [194.25.134.22 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [194.25.134.22 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailout12.t-online.de (mailout12.t-online.de [194.25.134.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59818E00C2B
	for <yocto@yoctoproject.org>; Mon, 31 Jul 2017 08:27:09 -0700 (PDT)
Received: from fwd06.aul.t-online.de (fwd06.aul.t-online.de [172.20.26.150])
	by mailout12.t-online.de (Postfix) with SMTP id 2C33C41F0107
	for <yocto@yoctoproject.org>; Mon, 31 Jul 2017 17:27:08 +0200 (CEST)
Received: from genericx86-64.Speedport_W_724V_01011603_05_032
	(rSHoLkZCQhvSrtbkjiCtXXYRIlc3pnJszoz1n2wE1M8zlJDxgEKdkZWJ4xwR5Oywlc@[84.146.40.121])
	by fwd06.t-online.de
	with (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384 encrypted)
	esmtp id 1dcCb5-1QKGzQ0; Mon, 31 Jul 2017 17:27:07 +0200
Date: Mon, 31 Jul 2017 17:27:07 +0200
From: Markus Volk <f_l_k@t-online.de>
To: yocto@yoctoproject.org
Message-Id: <20170731172707.99f391941732c2321f9862d6@t-online.de>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-poky-linux-gnu)
Mime-Version: 1.0
X-ID: rSHoLkZCQhvSrtbkjiCtXXYRIlc3pnJszoz1n2wE1M8zlJDxgEKdkZWJ4xwR5Oywlc
X-TOI-MSGID: d99a73aa-fc74-45c7-bd49-2387ab60c815
Subject: installing iso images in legacy mode
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
X-List-Received-Date: Mon, 31 Jul 2017 15:27:11 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Iso Images (x86_64) created with the current master fail when trying to ins=
tall using the legacy bios startup. Live boot from usb is fine, but when in=
stalling, i=B4m getting an error ... "/usr/share/locale" could not be found=
. After reboot i'm getting dropped to grub-shell, because the kernel could =
not be loaded.

When setting the bios startup to uefi mode, everything works as expected.

Has legacy pcbios mode been dropped or is this some kind of bug ?

--=20
Markus Volk <f_l_k@t-online.de>

