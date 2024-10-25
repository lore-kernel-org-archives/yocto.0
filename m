Return-Path: <dan@engineeredarts.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2A31D0C61E
	for <webhook@archiver.kernel.org>; Fri, 25 Oct 2024 15:00:18 +0000 (UTC)
Subject: Date in version number
To: yocto@lists.yoctoproject.org
From: "Daniel Squires" <dan@engineeredarts.co.uk>
X-Originating-Location: Watford, England, GB (62.31.146.167)
X-Originating-Platform: Linux Chrome 129
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 25 Oct 2024 08:00:14 -0700
Message-ID: <sJzU.1729868414274671683.IJEM@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0oYcVggyM8goUD9tbOVN"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Oct 2024 15:00:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64129

--0oYcVggyM8goUD9tbOVN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

We have many internal projects that we build as part of our platform. These=
 are all managed in git repositories. Our recipes therefore all point at gi=
t repositories.
After some internal discussions we have come to=C2=A0 the conclusion that h=
aving traditional version numbers of the form x.y.z is not very useful to a=
nyone and is a chore to maintain.
We would like to generate our version numbers in the format YYYY.MM.DD-PR-S=
RCREV - e.g. 2024.10.25-1-abcdef12.
I found the SRCDATE variable in the glossary documented as "The date of the=
 source code used to build the package. This variable applies only if the s=
ource was fetched from a Source Code Manager (SCM)." and initially thought =
great, and went ahead and set:

PV =3D "${SRCDATE}-${SRCPV}"

However what I find is that builds have the current date - i.e. the build d=
ate, not the date of the currently used commit to the source tree. Indeed S=
RCDATE it literally derived from DATE, the date when we run. This has a sev=
eral problems:

1) Everything would be rebuilt every day as a new date changes the recipe
2) The builds are not reproducible
3) We want to be able to see at a glance the date a given packages source w=
as committed, not when it happened to get built.

Does anybody know of a way to achieve this? I have tried looking through th=
e docs and the output of bitbake <recipename> -e and come up empty.

If we were to implement a way to get this information in bitbake what are t=
he chances of being able to get it merged upstream? would this be frowned u=
pon or rejected on any grounds?

--0oYcVggyM8goUD9tbOVN
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>We have many internal projects that we build as part of our platform. =
These are all managed in git repositories. Our recipes therefore all point =
at git repositories.</div>
<div>After some internal discussions we have come to&nbsp; the conclusion t=
hat having traditional version numbers of the form x.y.z is not very useful=
 to anyone and is a chore to maintain.</div>
<div>We would like to generate our version numbers in the format YYYY.MM.DD=
-PR-SRCREV - e.g. 2024.10.25-1-abcdef12.</div>
<div>I found the SRCDATE variable in the glossary documented as "The date o=
f the source code used to build the package. This variable applies only if =
the source was fetched from a Source Code Manager (SCM)." and initially tho=
ught great, and went ahead and set:</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; PV =3D "${SRCDATE}-${SRCPV}"</div>
<div>&nbsp;</div>
<div>However what I find is that builds have the current date - i.e. the bu=
ild date, not the date of the currently used commit to the source tree. Ind=
eed SRCDATE it literally derived from DATE, the date when we run. This has =
a several problems:</div>
<div>&nbsp;</div>
<div>1) Everything would be rebuilt every day as a new date changes the rec=
ipe</div>
<div>2) The builds are not reproducible</div>
<div>3) We want to be able to see at a glance the date a given packages sou=
rce was committed, not when it happened to get built.</div>
<div>&nbsp;</div>
<div>Does anybody know of a way to achieve this? I have tried looking throu=
gh the docs and the output of bitbake &lt;recipename&gt; -e and come up emp=
ty.</div>
<div>&nbsp;</div>
<div>If we were to implement a way to get this information in bitbake what =
are the chances of being able to get it merged upstream? would this be frow=
ned upon or rejected on any grounds?</div>

--0oYcVggyM8goUD9tbOVN--

