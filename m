Return-Path: <ganesh.manoj.mahajan@signify.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D67B3C02180
	for <webhook@archiver.kernel.org>; Wed, 15 Jan 2025 16:23:54 +0000 (UTC)
Subject: Re: [yocto] [HELP]
To: "Ganesh Mahajan" <ganesh.manoj.mahajan@signify.com>, yocto@lists.yoctoproject.org
From: "Ganesh Mahajan" <ganesh.manoj.mahajan@signify.com>
X-Originating-Location: Pune, Maharashtra, IN (103.118.144.223)
X-Originating-Platform: Windows Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 15 Jan 2025 08:23:48 -0800
References: <29326.1736942916869266807@lists.yoctoproject.org>
In-Reply-To: <29326.1736942916869266807@lists.yoctoproject.org>
Message-ID: <1047.1736958228437212707@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="sxEAxZeep4O4uTPGUqBM"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Jan 2025 16:23:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64561

--sxEAxZeep4O4uTPGUqBM
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Tried with echo got the vlaues same as expected but still facing same error=
.

fi
templatesdir=3D$(python3 -c "import sys; print(sys.argv[1].strip('/').split=
('/')[-2])" "$TEMPLATECONF")
*echo "templatdirvalue =3D $templatesdir , templateconf value =3D $TEMPLATE=
CONF"*
if [ "$templatesdir" !=3D templates ] || [ ! -f "$TEMPLATECONF/../../layer.=
conf" ]; then
*echo "templateconf value =3D $TEMPLATECONF"*
die "TEMPLATECONF value (which is $TEMPLATECONF) must point to meta-some-la=
yer/conf/templates/template-name"
fi

build@ubuntu-bionic:~/project$ source meta-eaton/setup-build-env

templatdirvalue =3D templates , templateconf value =3D /home/build/project/=
meta-eaton/conf/templates/template-name
templateconf value =3D /home/build/project/meta-eaton/conf/templates/templa=
te-name

Error: TEMPLATECONF value (which is /home/build/project/meta-eaton/conf/tem=
plates/template-name) must point to meta-some-layer/conf/templates/template=
-name
build@ubuntu-bionic:~/project$ cd meta-eaton/conf/templates/template-name/

--sxEAxZeep4O4uTPGUqBM
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Tried with echo got the vlaues same as expected but still facing same =
error.<br /><br />&nbsp;fi<br />&nbsp; &nbsp; templatesdir=3D$(python3 -c "=
import sys; print(sys.argv[1].strip('/').split('/')[-2])" "$TEMPLATECONF")<=
br />&nbsp; &nbsp;<strong> echo "templatdirvalue =3D $templatesdir , templa=
teconf value =3D $TEMPLATECONF"</strong><br />&nbsp; &nbsp; if [ "$template=
sdir" !=3D templates ] || [ ! -f "$TEMPLATECONF/../../layer.conf" ]; then<b=
r />&nbsp; &nbsp; &nbsp;<strong>echo "templateconf value =3D $TEMPLATECONF"=
</strong><br />&nbsp; &nbsp; &nbsp; &nbsp; die "TEMPLATECONF value (which i=
s $TEMPLATECONF) must point to meta-some-layer/conf/templates/template-name=
"<br />&nbsp; &nbsp; fi<br /><br />build@ubuntu-bionic:~/project$ source me=
ta-eaton/setup-build-env<br /><br />templatdirvalue =3D templates , templat=
econf value =3D /home/build/project/meta-eaton/conf/templates/template-name=
<br />templateconf value =3D /home/build/project/meta-eaton/conf/templates/=
template-name<br /><br />Error: TEMPLATECONF value (which is /home/build/pr=
oject/meta-eaton/conf/templates/template-name) must point to meta-some-laye=
r/conf/templates/template-name<br />build@ubuntu-bionic:~/project$ cd meta-=
eaton/conf/templates/template-name/</div>

--sxEAxZeep4O4uTPGUqBM--

