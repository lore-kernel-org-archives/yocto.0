Return-Path: <raj.khem@gmail.com>
Received: from mail-pd0-f182.google.com (mail-pd0-f182.google.com
	[209.85.192.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEE08E01400
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 19:31:38 -0700 (PDT)
Received: by mail-pd0-f182.google.com with SMTP id r10so5704026pdi.13
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 19:31:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=xgsVRXPZuemwuQHkksJVdOX1MIz/d61m0ij8eyqQgmI=;
	b=l2i5rJQAG3ccZgJXciWewKN5U8n1uPUifuv8seTqn2mjz1z9vCPFJQV2U+HPVb8QCu
	rEY2wtAJIMpr8w49ddjNaEIGz9+wHCDqBO8Mv53chQ/XmBP1D9BwWLXS9JxT6EpMBCmc
	gLzeDjYKbQThoJ1qnZBvcbIDn7UJAWykHnZ5Z0f4Xlg2P0iJdmNjooW2Wqt36Oit/C8x
	LxcMIqPp8f6yowavs8C7uRnyzrKe32RR0wUsnVnvuSU2lPRkie2f+GWqmQzmsVcwb1rL
	ZizmCxGaWQt2A9kQRkkzmUjYI0Wxckk5CxuhJn2sTaK1j7Q405n7EzbfIF/PhzL6tYwU
	BrAA==
X-Received: by 10.66.162.135 with SMTP id ya7mr4726288pab.173.1371695497632;
	Wed, 19 Jun 2013 19:31:37 -0700 (PDT)
Received: from bjupudi-sslvpn-nc.jnpr.net (natint3.juniper.net.
	[66.129.224.36]) by mx.google.com with ESMTPSA id
	re16sm27342104pac.16.2013.06.19.19.31.35 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 19 Jun 2013 19:31:35 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1371639211-3726-1-git-send-email-noor_ahsan@mentor.com>
Date: Wed, 19 Jun 2013 19:31:34 -0700
Message-Id: <746BB1A1-A592-4FFB-9A3F-B9D6C904451A@gmail.com>
References: <1371639211-3726-1-git-send-email-noor_ahsan@mentor.com>
To: "Noor, Ahsan" <noor_ahsan@mentor.com>
X-Mailer: Apple Mail (2.1508)
Cc: yocto@yoctoproject.org, Mikhail Durnev <mikhail_durnev@mentor.com>
Subject: Re: [PATCH] ecryptfs-utils: Modify systemd service file to 'simple'.
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
X-List-Received-Date: Thu, 20 Jun 2013 02:31:39 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

reasoning why it is being turned into simple service would be nice

On Jun 19, 2013, at 3:53 AM, "Noor, Ahsan" <noor_ahsan@mentor.com> =
wrote:

> From: Noor <noor_ahsan@mentor.com>
>=20
> Signed-off-by: Mikhail Durnev <mikhail_durnev@mentor.com>
> Signed-off-by: Noor Ahsan <noor_ahsan@mentor.com>
> ---
> .../ecryptfs-utils/ecryptfs-utils/ecryptfs.service |    4 +---
> 1 file changed, 1 insertion(+), 3 deletions(-)
>=20
> diff --git =
a/recipes-support-ivi/ecryptfs-utils/ecryptfs-utils/ecryptfs.service =
b/recipes-support-ivi/ecryptfs-utils/ecryptfs-utils/ecryptfs.service
> index ba12aa3..52f3397 100644
> --- =
a/recipes-support-ivi/ecryptfs-utils/ecryptfs-utils/ecryptfs.service
> +++ =
b/recipes-support-ivi/ecryptfs-utils/ecryptfs-utils/ecryptfs.service
> @@ -3,9 +3,7 @@ Description=3DA userspace daemon that runs as the user =
perform file operations und
> After=3Dudev.service
>=20
> [Service]
> -Type=3Doneshot
> -ExecStart=3D/usr/bin/ecryptfsd
> -RemainAfterExit=3Dyes
> +ExecStart=3D/usr/bin/ecryptfsd -f
>=20
> [Install]
> WantedBy=3Dmulti-user.target
> --=20
> 1.7.9.5
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


