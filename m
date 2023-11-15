Return-Path: <j.casas@falconelectronica.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B08FC07548
	for <webhook@archiver.kernel.org>; Wed, 15 Nov 2023 11:54:09 +0000 (UTC)
Subject: Re: Files copied to /usr/local during installation get removed misteriously
To: yocto@lists.yoctoproject.org
From: =?UTF-8?B?SmF2aWVyIENhc2FzIE1hcsOtbg==?= <j.casas@falconelectronica.com>
X-Originating-Location: Lodosa, Navarre, ES (185.128.171.24)
X-Originating-Platform: Windows Chrome 119
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 15 Nov 2023 03:54:00 -0800
References: <CAMKF1srQnfQtFTpdfrbtEp2=FURE-Bq=R-Ek56+Xcm-VpPHcxA@mail.gmail.com>
In-Reply-To: <CAMKF1srQnfQtFTpdfrbtEp2=FURE-Bq=R-Ek56+Xcm-VpPHcxA@mail.gmail.com>
Message-ID: <2967.1700049240535395269@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="MDBLfItcAg0SghvdBS7E"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Nov 2023 11:54:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61695

--MDBLfItcAg0SghvdBS7E
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Just in case someone has the same problem, it is the do_userfs function the=
 one that deletes /usr/local directories and files after copying them to ${=
image_userfs}:

cp -r /build/tmp/work/kontron_mx8mm-ked-linux/image-ked-qt/1.0-r0/rootfs${i=
mage_userfs_dir}/* ${image_userfs}
rm -rf /build/tmp/work/kontron_mx8mm-ked-linux/image-ked-qt/1.0-r0/rootfs${=
image_userfs_dir}/*

I have changed the installation folder to /opt that seems more appropiate

Thanks

--MDBLfItcAg0SghvdBS7E
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Just in case someone has the same problem, it is the do_userfs function the=
 one that deletes /usr/local directories and files after copying them to ${=
image_userfs}:<br /><br />cp -r /build/tmp/work/kontron_mx8mm-ked-linux/ima=
ge-ked-qt/1.0-r0/rootfs${image_userfs_dir}/* ${image_userfs}<br />rm -rf /b=
uild/tmp/work/kontron_mx8mm-ked-linux/image-ked-qt/1.0-r0/rootfs${image_use=
rfs_dir}/*<br /><br />I have changed the installation folder to /opt that s=
eems more appropiate<br /><br />Thanks

--MDBLfItcAg0SghvdBS7E--

