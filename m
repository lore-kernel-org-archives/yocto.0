Return-Path: <elvis.dowson@gmail.com>
Received: from mail-bk0-f46.google.com (mail-bk0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 043FEE01445
	for <yocto@yoctoproject.org>; Tue,  3 Sep 2013 02:01:35 -0700 (PDT)
Received: by mail-bk0-f46.google.com with SMTP id 6so1985185bkj.33
	for <yocto@yoctoproject.org>; Tue, 03 Sep 2013 02:01:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=references:mime-version:in-reply-to:content-type
	:content-transfer-encoding:message-id:cc:from:subject:date:to;
	bh=nx8qmHFmkJlNmkJZsknxR52+9KoMgmnQrwdzmqDAbxg=;
	b=Xh0p0yW7NPSAlNZl6k2Fg1qcDStOVPqdD+EcEg8INTL2ePSJN9L5HsBJJ3H+4+FQyM
	iiRsbztZKxnWsBrwYv4X74LOWqVfPW59ZhbmQRlOfIZE9yc/wAbltfAOnbUVErGagna3
	TNtSW5N8veSHNKbE5OCCh/A1uM0cWJ6/UeVRwaaVnRWHqRHJernJD8O1nAlJNJzqtM1D
	bmkDnEhh8qRZ8daIMRySVtdEGfVDhf6WFO0RVXNE1guaSbJFY36ZLREtYfh+ZpXVsm3N
	LMj6wPxicSQ0ZULlBf3IWwgl5kU4vOpyKHujr6SWdUTBj6NZL3q79Jxul6ETWyJG2Bda
	V13Q==
X-Received: by 10.204.102.71 with SMTP id f7mr28800bko.57.1378198894316;
	Tue, 03 Sep 2013 02:01:34 -0700 (PDT)
Received: from [94.58.158.210] ([94.58.158.210])
	by mx.google.com with ESMTPSA id kk2sm3938816bkb.10.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 03 Sep 2013 02:01:33 -0700 (PDT)
References: <52241C84.2090605@gna.org>
	<CAJTo0LZSkA5Gr4AkaFEAuG0irsLWfeUkO2jXmmBXHJ6qcaGN_w@mail.gmail.com>
	<522506F8.8060706@gna.org>
	<0C95222C-9247-4FDD-837C-83FB03A314AC@keylevel.com>
	<52251F60.9060804@gna.org>
	<B3347AE5-6200-4E3D-9A7F-8BC683568F98@gmail.com>
	<52255245.9090609@gna.org>
Mime-Version: 1.0 (1.0)
In-Reply-To: <52255245.9090609@gna.org>
Message-Id: <BE638486-774D-46AE-B84C-9733813BBFC2@gmail.com>
X-Mailer: iPhone Mail (11A4449d)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Tue, 3 Sep 2013 12:55:54 +0400
To: Christian Gagneraud <chgans@gna.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Server specs for a continuous integration system
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
X-List-Received-Date: Tue, 03 Sep 2013 09:01:39 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable


>>=20
>> I use a 3770K i7 quad-core processor, 16GB RAM, with a liquid cooled
>> solution running at 3.8GHz. I've overclocked the CPU to 4.5GHz, but I
>> end up shaving only 2 minutes off build times, so I just run it at 3.8GHz=
.
>>=20
>> A core-image-minimal build takes around 22 minutes for me, for a Xilinx
>> ZC702 machine configuration (Dual ARM Cortex A9 processor + FPGA).
>=20
> Is it a full build from scratch (cross-toolchain, native stuff, etc...)? I=
f so, it's quite impressive to me!

Yes, it is a full build from scratch, and the core-image-minimal builds the c=
ross tool chain, kernel and root file system. A full kernel build from scrat=
ch completes in under 1 or 2 minutes, can't remember exactly, will let u kno=
w in a while. This represents approximately 1600 tasks. A full meta-toolchai=
n-sdk task takes about 40 minutes and executes around 3600 tasks. I'll send s=
ome precise figures later on.

Best regards,

Elvis Dowson=

