Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85720E007C2; Tue, 12 Aug 2014 21:00:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.51 listed in list.dnswl.org]
Received: from mail-la0-f51.google.com (mail-la0-f51.google.com
	[209.85.215.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5180E0079A
	for <yocto@yoctoproject.org>; Tue, 12 Aug 2014 21:00:29 -0700 (PDT)
Received: by mail-la0-f51.google.com with SMTP id pn19so8492849lab.24
	for <yocto@yoctoproject.org>; Tue, 12 Aug 2014 21:00:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=5bXaRWQLs0a5Z/x0mk1tJfGFHGGOBCoMNYKTfLJCq4w=;
	b=rPPUolDI1vgNUuv/2FBcJWsPsrcvSNqQdYV9lGXKbjLrdQ32/GD4e7wTfgGgYRTTrv
	arBRn6liLC1F2MxCtStfDS48zOIqDkOg+mEv3YaIvzZ9/EWJ5iPNYoNbVE+CNpnTGTNN
	dX4qTEYUpsRHojNrlU2GQQK7/UtEU2SsgOq5c9VEdbOZBND07aE/9mlxvnwdtJkarhhr
	/XaTwSAvaeKc45BgTWGGyboVUAMEYN0+3ZuqG9PZ/ycJ7cje3Pa8uaSRzbgTq7/D6rB9
	+sVnEzIdEJwqAwXvadqeaNWgDA8zxSWVSF3DEgDEqfPZsq3OEk5NEADCz7WUEXC3hEy4
	n1oA==
X-Received: by 10.152.30.71 with SMTP id q7mr1783303lah.56.1407902428568;
	Tue, 12 Aug 2014 21:00:28 -0700 (PDT)
Received: from ernie.muppets.liwing.de (p578b540c.dip0.t-ipconnect.de.
	[87.139.84.12])
	by mx.google.com with ESMTPSA id yn1sm1138932lbb.25.2014.08.12.21.00.25
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 12 Aug 2014 21:00:26 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Jens Rehsack <rehsack@gmail.com>
In-Reply-To: <1407881331.94733.YahooMailNeo@web140703.mail.bf1.yahoo.com>
Date: Wed, 13 Aug 2014 06:00:22 +0200
Message-Id: <BC359CE3-40BC-4303-846E-9CD61700B093@gmail.com>
References: <1407881331.94733.YahooMailNeo@web140703.mail.bf1.yahoo.com>
To: Peter Tornel <petertornel@yahoo.com>
X-Mailer: Apple Mail (2.1878.6)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ordering multiple bbappends and their FILESEXTRAPATHS_prepend setting
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
X-List-Received-Date: Wed, 13 Aug 2014 04:00:34 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


Am 13.08.2014 um 00:08 schrieb Peter Tornel <petertornel@yahoo.com>:

> Hi,
>=20
> What is the correct method for controlling which =
FILESEXTRAPATHS_prepend actually shows up first in the path when there =
are multiple bbappends setting the same variable? =20

Check <layer>/conf/layer.conf (BBFILE_PRIORITY_<layer> =3D "n")

Cheers
--=20
Jens Rehsack
rehsack@gmail.com






