Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F150AE00D88; Tue, 31 May 2016 00:52:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.163 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDC4CE00D72
	for <yocto@yoctoproject.org>; Tue, 31 May 2016 00:52:05 -0700 (PDT)
Received: from nbhjo (LFbn-1-3582-159.w90-127.abo.wanadoo.fr [90.127.97.159])
	by msfrf2607.sfr.fr (SMTP Server) with ESMTP id 38DAC1C00146C;
	Tue, 31 May 2016 09:52:03 +0200 (CEST)
Received: from nbhjo (LFbn-1-3582-159.w90-127.abo.wanadoo.fr
	[90.127.97.159])	(using TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2607.sfr.fr (SMTP Server) with ESMTPSA;
	Tue, 31 May 2016 09:52:02 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Andreas =?iso-8859-1?q?M=FCller=27?= <schnitzeltony@googlemail.com>
References: <1464678539-110008-1-git-send-email-herve.jourdain@neuf.fr>
	<CALbNGRRE+H3pHQnLqf0C62gdRKd_NHNoswAXSXvHSicnQiQ8gQ@mail.gmail.com>
In-Reply-To: <CALbNGRRE+H3pHQnLqf0C62gdRKd_NHNoswAXSXvHSicnQiQ8gQ@mail.gmail.com>
Date: Tue, 31 May 2016 09:51:58 +0200
Message-ID: <001501d1bb11$4f941d00$eebc5700$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQMIbSLweykffYTx9eyrcHC51w3n3QGAmL/ZnVlDYaA=
X-sfr-mailing: LEGIT
Cc: 'Yocto Project' <yocto@yoctoproject.org>
Subject: Re: [PATCH v3] Support for .dtbo files for dtb overlays
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
X-List-Received-Date: Tue, 31 May 2016 07:52:09 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: fr

Oh, sorry for that...
Just sent to oe-core as well.
Thanks :)

Herve

-----Original Message-----
From: Andreas M=C3=BCller [mailto:schnitzeltony@googlemail.com]=20
Sent: mardi 31 mai 2016 09:21
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [yocto] [PATCH v3] Support for .dtbo files for dtb overlays

On Tue, May 31, 2016 at 9:08 AM, Herve Jourdain <herve.jourdain@neuf.fr> =
wrote:
> v3: rebased
> Recent kernels tend to use .dtbo files for device tree overlays, =
instead of .dtb before.
> .dtb are still used, but only for the "real" device trees (not the =
overlays).
>
> On some platforms (meta-raspberrypi for instance), recent firmware =
only loads .dtbo files for overlays.
>
> This patch tries to address this issue, while not breaking support for =
.dtb overlays.
> It allows the installation/deployment of both .dtb and .dtbo files, =
for device trees and overlays.
>
> This is in line with the behavior of kernels 4.4.6+
>
> Herve Jourdain (1):
>   linux-dtb.inc: Support for .dtbo files for dtb overlays
>
>  meta/recipes-kernel/linux/linux-dtb.inc | 18 +++++++++++-------
>  1 file changed, 11 insertions(+), 7 deletions(-)
>
If I am not mistaken this is a patch for oe-core layer and should be =
send to

openembedded-core@lists.openembedded.org

Andreas


