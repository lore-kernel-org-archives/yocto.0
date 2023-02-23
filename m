Return-Path: <ayansh.mishra25@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2EFDFC636D6
	for <webhook@archiver.kernel.org>; Thu, 23 Feb 2023 14:19:20 +0000 (UTC)
Subject: Integrating Yocto for ti-TDA4VM using kas build tool #bitbake #kirkstone #yocto
To: yocto@lists.yoctoproject.org
From: ayansh.mishra25@gmail.com
X-Originating-Location: Bengaluru, Karnataka, IN (115.99.117.41)
X-Originating-Platform: Mac Safari 16.3
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 23 Feb 2023 06:19:19 -0800
Message-ID: <agU6.1677161959748788493.Ot9e@lists.yoctoproject.org>
Content-Type: multipart/mixed; boundary="4RlzlsIlyJURLzvYqEVQ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Feb 2023 14:19:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59292

--4RlzlsIlyJURLzvYqEVQ
Content-Type: multipart/alternative; boundary="zQummVRR1SfPTCUj19af"

--zQummVRR1SfPTCUj19af
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi, I am trying to build an image using kas built tool for ti TDA4VM. For t=
his I have created the attached j721e.yml file. When I put machine as j721e=
-evm it is showing the below error " Overrides could not be expanded into a=
 stable state after 5 iterations, overrides must be being referenced by oth=
er overridden variables in some recursive fashion. Please provide your conf=
iguration to bitbake-devel so we can laugh ". In meta-ti for the machine j7=
21e-evm it includes=C2=A0cons/machine/include/k3.inc and then we can see it=
 specifies kernel as linux-ti-staging, so it should be meta-ti-bsp/recipes-=
kernel/linux/linux-ti-staging/linux-ti-staging_5.10.bb as building kernel, =
but some how k3.inc is throwing that overrides error. Can someone provide m=
e with some insights on this. Will be really helpful.

--zQummVRR1SfPTCUj19af
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi, I am trying to build an image using kas built tool for ti TDA4VM. For t=
his I have created the attached j721e.yml file. When I put machine as j721e=
-evm it is showing the below error "&nbsp;<span style=3D"font-family: 'Helv=
etica Neue'; font-size: 13px;">Overrides could not be expanded into a stabl=
e state after 5 iterations, overrides must be being referenced by other ove=
rridden variables in some recursive fashion. Please provide your configurat=
ion to bitbake-devel so we can laugh</span><span style=3D"font-family: Helv=
etica Neue; font-size: small;">&nbsp;". In meta-ti for the machine j721e-ev=
m it includes&nbsp;cons/machine/include/k3.inc and then we can see it speci=
fies kernel as linux-ti-staging, so it should be meta-ti-bsp/recipes-kernel=
/linux/linux-ti-staging/linux-ti-staging_5.10.bb as building kernel, but so=
me how k3.inc is throwing that overrides error. Can someone provide me with=
 some insights on this. Will be really helpful.<br /><br /></span>

--zQummVRR1SfPTCUj19af--

--4RlzlsIlyJURLzvYqEVQ
Content-Type: application/x-yaml; name="j721e.yml"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="j721e.yml"

aGVhZGVyOgogIHZlcnNpb246IDExCgpyZXBvczoKICBtZXRhLXRpOgogICAgdXJsOiBnaXQ6Ly9n
aXQueW9jdG9wcm9qZWN0Lm9yZy9tZXRhLXRpCiAgICBwYXRoOiBsYXllcnMvbWV0YS10aQogICAg
cmVmc3BlYzoga2lya3N0b25lCiAgICBsYXllcnM6CiAgICAgIG1ldGEtdGktYnNwOgogICAgICBt
ZXRhLXRpLWV4dHJhczoKCiAgbWV0YS1vcGVuZW1iZWRkZWQ6CiAgICB1cmw6ICJodHRwczovL2dp
dGh1Yi5jb20vb3BlbmVtYmVkZGVkL21ldGEtb3BlbmVtYmVkZGVkLmdpdCIKICAgIHJlZnNwZWM6
IGtpcmtzdG9uZQogICAgcGF0aDogbGF5ZXJzL21ldGEtb3BlbmVtYmVkZGVkCiAgICBsYXllcnM6
CiAgICAgIG1ldGEtbmV0d29ya2luZzoKICAgICAgbWV0YS1weXRob246CiAgICAgIG1ldGEtb2U6
CiAgICAgIG1ldGEtZ25vbWU6CiAgICAgIG1ldGEtZmlsZXN5c3RlbXM6CgogIG1ldGEtYXJtOgog
ICAgdXJsOiBodHRwczovL2dpdC55b2N0b3Byb2plY3Qub3JnL2dpdC9tZXRhLWFybQogICAgcGF0
aDogbGF5ZXJzL21ldGEtYXJtCiAgICByZWZzcGVjOiBraXJrc3RvbmUKICAgIGxheWVyczoKICAg
ICAgbWV0YS1hcm06IGluY2x1ZGVkCiAgICAgIG1ldGEtYXJtLXRvb2xjaGFpbjogaW5jbHVkZWQK
CiAgCgoKbWFjaGluZTogajcyMWUtZXZtCg==

--4RlzlsIlyJURLzvYqEVQ--

