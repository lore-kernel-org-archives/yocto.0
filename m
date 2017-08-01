Return-Path: <f_l_k@t-online.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A53BE00BE9; Tue,  1 Aug 2017 12:58:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [194.25.134.21 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailout10.t-online.de (mailout10.t-online.de [194.25.134.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE2E6E00944
	for <yocto@yoctoproject.org>; Tue,  1 Aug 2017 12:58:25 -0700 (PDT)
Received: from fwd13.aul.t-online.de (fwd13.aul.t-online.de [172.20.27.62])
	by mailout10.t-online.de (Postfix) with SMTP id A2C0C41FD73B
	for <yocto@yoctoproject.org>; Tue,  1 Aug 2017 21:58:23 +0200 (CEST)
Received: from genericx86-64.Speedport_W_724V_01011603_05_032
	(EB5AWkZp8hAtizRec9ZGjECEH2VZFcueXsyYk1AvaR0Gz+FtiHMdlCUS4VK+ivDg7e@[84.146.40.121])
	by fwd13.t-online.de
	with (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384 encrypted)
	esmtp id 1dcdJ2-1UbdBY0; Tue, 1 Aug 2017 21:58:16 +0200
Date: Tue, 1 Aug 2017 21:58:16 +0200
From: Markus Volk <f_l_k@t-online.de>
To: yocto@yoctoproject.org
Message-Id: <20170801215816.44e8bc72bd0f99260cdc79da@t-online.de>
In-Reply-To: <20170731172707.99f391941732c2321f9862d6@t-online.de>
References: <20170731172707.99f391941732c2321f9862d6@t-online.de>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-poky-linux-gnu)
Mime-Version: 1.0
X-ID: EB5AWkZp8hAtizRec9ZGjECEH2VZFcueXsyYk1AvaR0Gz+FtiHMdlCUS4VK+ivDg7e
X-TOI-MSGID: 673138db-c809-41dd-9f3c-f3bb2e81d22a
Subject: Re: installing iso images in legacy mode
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
X-List-Received-Date: Tue, 01 Aug 2017 19:58:27 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I had some time to look at this issue today. Since grub was recently update=
d i tried using the old recipes from pyro. This fixed booting without efi. =
Then i had a look at meta/recipes-core/initrdscripts/files/init-install.sh

My suspicion was, that this line

grub_version=3D$(grub-install -v|sed 's/.* \([0-9]\).*/\1/')

turns out to be zero with grub-202, and thereby messes the whole thing up

Changing to:

grub_version=3D202

fixed my legacy boot problem.

:)

On Mon, 31 Jul 2017 17:27:07 +0200
Markus Volk <f_l_k@t-online.de> wrote:

> Iso Images (x86_64) created with the current master fail when trying to i=
nstall using the legacy bios startup. Live boot from usb is fine, but when =
installing, i=B4m getting an error ... "/usr/share/locale" could not be fou=
nd. After reboot i'm getting dropped to grub-shell, because the kernel coul=
d not be loaded.
>=20
> When setting the bios startup to uefi mode, everything works as expected.
>=20
> Has legacy pcbios mode been dropped or is this some kind of bug ?
>=20
> --=20
> Markus Volk <f_l_k@t-online.de>
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--=20
Markus Volk <f_l_k@t-online.de>

