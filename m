Return-Path: <tech@domaigne.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F23DEE00AC5; Mon, 11 Mar 2019 13:16:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [80.237.132.122 listed in list.dnswl.org]
Received: from wp115.webpack.hosteurope.de (wp115.webpack.hosteurope.de
	[80.237.132.122])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E5DCE007B3
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2019 13:16:30 -0700 (PDT)
Received: from app16-neu.ox.hosteurope.de ([92.51.170.150]); authenticated
	by wp115.webpack.hosteurope.de running ExIM with esmtpsa
	(TLS1.0:ECDHE_RSA_AES_256_CBC_SHA1:256)
	id 1h3RLZ-0007OP-Kn; Mon, 11 Mar 2019 21:16:29 +0100
Date: Mon, 11 Mar 2019 21:16:29 +0100 (CET)
From: =?UTF-8?Q?Lo=C3=AFc_Domaign=C3=A9?= <tech@domaigne.com>
To: yocto@yoctoproject.org
Message-ID: <1210025179.154688.1552335389580@ox.hosteurope.de>
In-Reply-To: <CAAV2bM2jFrH426UPxyKTk6whFry_J0VD_E5C-Gsi-CwYDL=wHQ@mail.gmail.com>
References: <CAAV2bM2jFrH426UPxyKTk6whFry_J0VD_E5C-Gsi-CwYDL=wHQ@mail.gmail.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.4-Rev51
X-Originating-Client: open-xchange-appsuite
X-bounce-key: webpack.hosteurope.de;tech@domaigne.com;1552335391;e35ea641;
X-HE-SMSGID: 1h3RLZ-0007OP-Kn
Subject: Re: devtmpfs failing to mount
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
X-List-Received-Date: Mon, 11 Mar 2019 20:16:32 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Bonsoir Emily,

> I'm using Yocto version rocko with a custom layer to run on the Zynq+ SoC
> on a custom board. When trying to boot I'm getting the following error in
> the boot output:
> ...=20
> [    4.127997] EXT4-fs (mmcblk0p2): couldn't mount as ext3 due to feature
> incompatibilities
> [    4.183737] EXT4-fs (mmcblk0p2): recovery complete
> [    4.190840] EXT4-fs (mmcblk0p2): mounted filesystem with ordered data
> mode. Opts: (null)
> [    4.198870] VFS: Mounted root (ext4 filesystem) on device 179:2.
> [    4.205861] devtmpfs: error mounting -2
>=20
> Are there common reasons for this happening I should check?

Not sure if that helps, but I'd check:
a) What's the type of the mmcblk0p2 (=3Drootfs?) partition?  and
b) How is this partition mounted?

Cheers!
Lo=C3=AFc

