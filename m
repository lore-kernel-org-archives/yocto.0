Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.34964.1615204785398348405
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Mar 2021 03:59:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aruba.it header.s=a1 header.b=VU5XgSr5;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 198.145.29.25, mailfrom: mauro@faresoftware.it)
Received: from smtpcmd15176.aruba.it (smtpcmd15176.aruba.it [62.149.156.176])
	by mail.yoctoproject.org (Postfix) with ESMTP id DBFEC38C065C
	for <yocto@yoctoproject.org>; Mon,  8 Mar 2021 11:59:43 +0000 (UTC)
Received: from p50 ([213.213.6.58])
	by Aruba Outgoing Smtp  with ESMTPSA
	id JEY1lKfmrMqeYJEY2lPsrQ; Mon, 08 Mar 2021 12:59:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1615204782; bh=bTTi0+kxGaIW+WwnbZcX9ACZFhtEBHBtRPPKWubfeCc=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=VU5XgSr5G8Z05flUJTXCCIav/y8+xUzSsMyYMp6cX+2NAnUF0nz34145N7h0YFY3Z
	 tWJSQx/Gr4aE4xfs2EOVq30ifZjCakPeh0vd7RjGQJVhF+Ip8PzuARXvrPhDNhCPtm
	 /qOpjY3yMo/9bz2YFaBEwXMC63kSAwDe8Wi0W9vOeAyhmGMYDOQIyj5rGupU/XW1Cs
	 SinE/Pl0qMmVlzErw7quzcQXWsCQ5kO60PodDVzfo1FwS9A72tAlvabtZ9jDLQFUJv
	 Ta8qGES/tDFfv3MSrpDs/4aHy1rEqc2dYkW34DR2RYjcR5MBJ0yH2/DmTXnkq7YlW9
	 D7jc67UlpDogw==
Date: Mon, 8 Mar 2021 12:59:41 +0100
From: "Mauro Ziliani" <mauro@faresoftware.it>
To: "=?utf-8?Q?yocto=40yoctoproject.org?=" <yocto@yoctoproject.org>
Message-ID: <0635A4DC-DEF1-4901-AAD4-F9788168F9FF@getmailspring.com>
Subject: Remove *-dev packages from final image
X-Mailer: Mailspring
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfNJtGpjzU6P9wFN/lE0/JPL3YzWXf9lZnaVInYPkBaP8kkRA/GZEwiXK+PHpCev7bPQEEKrIOWK0YY1hL2nce3Ub9ERUVhmNIaKuFcxq5/xXd28hrNGn
 mlWlq/l6fOn7wqJSFkiKFUhJYRNl7CBF6waLP8m7Ev76z8bRcDdGPBjm
Content-Type: multipart/alternative; boundary="604611ad_158c399e_cfa"

--604611ad_158c399e_cfa
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hi all.
I'm in trouble to remove the *-dev packages from final image.

I remove dev-pkgs and dbg-pkgs from EXTRA_IMAGE_FEATURES and IMAGE_FEATURES with lines
IMAGE_FEATURES_remove = " \
dbg-pkgs \
dev-pkgs \
"

EXTRA_IMAGE_FEATURES_remove = " \
dbg-pkgs \
dev-pkgs \
"

But *-dev persists.
I suppose there is some package-group which installs *-dev
In the image recipe I includes
require recipes-sato/images/core-image-sato.bb
require recipes-fsl/images/fsl-image-multimedia-full.bb

and I force a remove with
IMAGE_INSTALL_remove = " \
packagegroup-fsl-tools-gpu \
imx-gpu-sdk \
packagegroup-core-x11-sato-games \
attr-dev \
alsa-lib-dev \
base-file-dev \
connman \
"

Even if I remove alsa-lib-dev I find it in the manifest.
I'm working with a Krogoth
Any idea?
Thanks all
MZ


--604611ad_158c399e_cfa
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<div>Hi all.</div><div>I'm in trouble to remove the *-dev packages from f=
inal image.</div><br><div>I remove dev-pkgs and dbg-pkgs from EXTRA=5FIMA=
GE=5F=46EATURES and IMAGE=5F=46EATURES with lines</div><br><div>IMAGE=5F=46=
EATURES=5Fremove =3D =22 =5C</div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; dbg-pkgs =5C</div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dev-pkgs =5C=
</div><div>=22</div><br><div>EXTRA=5FIMAGE=5F=46EATURES=5Fremove =3D =22 =
=5C</div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dbg-pkgs =5C</div><div=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dev-pkgs =5C</div><div>=22</div><br=
><div>But *-dev persists.</div><br><div>I suppose there is some package-g=
roup which installs *-dev</div><br><div>In the image recipe I includes</d=
iv><br><div>require recipes-sato/images/core-image-sato.bb</div><div>requ=
ire recipes-fsl/images/fsl-image-multimedia-full.bb</div><br><div>and I f=
orce a remove with</div><br><div>IMAGE=5FINSTALL=5Fremove =3D =22 =5C</di=
v><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; packagegroup-fsl-tools-=
gpu =5C</div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; imx-gpu-sdk =
=5C</div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; packagegroup-cor=
e-x11-sato-games =5C</div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 attr-dev =5C</div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; alsa-l=
ib-dev =5C</div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; base-file=
-dev =5C</div><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; connman =5C=
</div><div>=22</div><br><div>Even if I remove alsa-lib-dev&nbsp; I find i=
t in the manifest.</div><br><div>I'm working with a Krogoth </div><br><di=
v>Any idea=3F</div><br><div>Thanks all</div><div>&nbsp;&nbsp; MZ</div><br=
><br>

--604611ad_158c399e_cfa--
