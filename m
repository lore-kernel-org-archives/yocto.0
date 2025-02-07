Return-Path: <patrick.huesmann@desy.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB427C02196
	for <webhook@archiver.kernel.org>; Fri,  7 Feb 2025 11:06:31 +0000 (UTC)
Subject: Shared package feed between different projects
To: yocto@lists.yoctoproject.org
From: "Patrick Huesmann" <patrick.huesmann@desy.de>
X-Originating-Location: Hamburg, Free and Hanseatic City of Hamburg, DE (217.233.212.157)
X-Originating-Platform: Linux Firefox 134
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 07 Feb 2025 03:06:29 -0800
Message-ID: <5JM1.1738926389537935531.kq6U@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="JIT5TgZKScWZVMlOkKsE"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 07 Feb 2025 11:06:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64744

--JIT5TgZKScWZVMlOkKsE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

in our org we use a shared Yocto distribution that a lot of different proje=
cts build on top of. The individual projects use the common layers of our d=
istribution and add project-specific layers on top of them. There is a shar=
ed package feed and I'm looking for a way to prevent the individual project=
s from overwriting each other's packages, which may share the same name but=
 may have different contents or configuration.

Is there a best practice how to achieve that?

Solutions that come to mind so far:

* append a project specific suffix to PKG:${PN} - this prevents the name co=
llision, but has to be set explicitly in each recipe of the project-specifi=
c layer(s)

* set PACKAGE_ARCH to a project specific one - this would neatly separate t=
he RPMs in different folders, but also needs to be set explicitly in each r=
ecipe of the project-specific layer(s) - also feels a bit hackish (a projec=
t is not an architecture)

* use a dedicated package feed per project - this is probably the most robu=
st / foolproof way, but doesn't scale well; 99% of the package data is the =
same across all projects.

* use a dedicated package feed per project, but also keep a shared package =
feed; deduplicate the unmodified packages so the project specific feed cont=
ains only the project specific packages. Configure dnf on the target that i=
t uses the project-feed first and falls back to the common-feed. (This is m=
y favorite so far, but I'm not sure how to implement it efficiently - is th=
ere any existing work I can build upon?)

Thanks and best regards,
Patrick

--JIT5TgZKScWZVMlOkKsE
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<div>Hi,</div>
<div>&nbsp;</div>
<div>in our org we use a shared Yocto distribution that a lot of different =
projects build on top of. The individual projects use the common layers of =
our distribution and add project-specific layers on top of them. There is a=
 shared package feed and I'm looking for a way to prevent the individual pr=
ojects from overwriting each other's packages, which may share the same nam=
e but may have different contents or configuration.</div>
<div>&nbsp;</div>
<div>Is there a best practice how to achieve that?</div>
<div>&nbsp;</div>
<div>Solutions that come to mind so far:<br /><br /></div>
<ol>
<li>append a project specific suffix to PKG:${PN} - this prevents the name =
collision, but has to be set explicitly in each recipe of the project-speci=
fic layer(s)<br /><br /></li>
<li>set PACKAGE_ARCH to a project specific one - this would neatly separate=
 the RPMs in different folders, but also needs to be set explicitly in each=
 recipe of the project-specific layer(s) - also feels a bit hackish (a proj=
ect is not an architecture)<br /><br /></li>
<li>use a dedicated package feed per project - this is probably the most ro=
bust / foolproof way, but doesn't scale well; 99% of the package data is th=
e same across all projects.<br /><br /></li>
<li>use a dedicated package feed per project, but also keep a shared packag=
e feed; deduplicate the unmodified packages so the project specific feed co=
ntains only the project specific packages. Configure dnf on the target that=
 it uses the project-feed first and falls back to the common-feed. (This is=
 my favorite so far, but I'm not sure how to implement it efficiently - is =
there any existing work I can build upon?)</li>
</ol>
<div>&nbsp;</div>
<div>Thanks and best regards,<br />Patrick</div>
</div>

--JIT5TgZKScWZVMlOkKsE--

