Return-Path: <gauravsuman007@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03F23C43334
	for <webhook@archiver.kernel.org>; Tue,  5 Jul 2022 12:31:48 +0000 (UTC)
Subject: cve check report package version mismatch #yocto
To: yocto@lists.yoctoproject.org
From: gauravsuman007@gmail.com
X-Originating-Location: Bueckeburg, Lower Saxony, DE (213.71.0.155)
X-Originating-Platform: Windows Chrome 102
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 05 Jul 2022 05:31:39 -0700
Message-ID: <DRD0.1657024299174009146.HGxi@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="wwn6Kp01QKzWl71Lewg4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Jul 2022 12:31:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57453

--wwn6Kp01QKzWl71Lewg4
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I used the cve check class by including it in the local.conf and then ran t=
he bitbake build process for my image. I got a log of all the detected CVEs=
 in the packages used in the build. However, on closer inspection, I notice=
d that the packages used in the build are already higher version than when =
the CVE was patched. Here is an example:

* LAYER: meta
* PACKAGE NAME: libksba
* PACKAGE VERSION: 1.6.0
* CVE: CVE-2016-4355
* CVE STATUS: Patched
* CVE SUMMARY: Multiple integer overflows in ber-decoder.c in Libksba befor=
e 1.3.3 allow remote attackers to cause a denial of service (crash) via cra=
fted BER data, which leads to a buffer overflow.
* CVSS v2 BASE SCORE: 5.0
* CVSS v3 BASE SCORE: 7.5
* VECTOR: NETWORK
* MORE INFORMATION: https://nvd.nist.gov/vuln/detail/CVE-2016-4355

As can be seen, the CVE was patched in version 1.3.3 of the libksba while t=
he build is using the version 1.6.0.

Is there something wrong with what the cve-check is reporting or is it not =
bothering to match the version numbers before reporting a CVE? Or maybe my =
understanding of the report is incorrect?

Would really appreciate a feedback on this, seeing as how the documentation=
 on the cve checker is sparse.

Thanks,
Gaurav

--wwn6Kp01QKzWl71Lewg4
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I used the cve check class by including it in the local.conf and then ran t=
he bitbake build process for my image. I got a log of all the detected CVEs=
 in the packages used in the build. However, on closer inspection, I notice=
d that the packages used in the build are already higher version than when =
the CVE was patched. Here is an example:<br />
<ul>
<li>LAYER: meta</li>
<li>PACKAGE NAME: libksba</li>
<li>PACKAGE VERSION: 1.6.0</li>
<li>CVE: CVE-2016-4355</li>
<li>CVE STATUS: Patched</li>
<li>CVE SUMMARY: Multiple integer overflows in ber-decoder.c in Libksba bef=
ore 1.3.3 allow remote attackers to cause a denial of service (crash) via c=
rafted BER data, which leads to a buffer overflow.</li>
<li>CVSS v2 BASE SCORE: 5.0</li>
<li>CVSS v3 BASE SCORE: 7.5</li>
<li>VECTOR: NETWORK</li>
<li>MORE INFORMATION: <a href=3D"https://nvd.nist.gov/vuln/detail/CVE-2016-=
4355" target=3D"_blank" rel=3D"noopener">https://nvd.nist.gov/vuln/detail/C=
VE-2016-4355</a></li>
</ul>
As can be seen, the CVE was patched in version 1.3.3 of the libksba while t=
he build is using the version 1.6.0.<br /><br />Is there something wrong wi=
th what the cve-check is reporting or is it not bothering to match the vers=
ion numbers before reporting a CVE? Or maybe my understanding of the report=
 is incorrect?<br /><br />Would really appreciate a feedback on this, seein=
g as how the documentation on the cve checker is sparse.<br /><br /><br />T=
hanks,<br />Gaurav

--wwn6Kp01QKzWl71Lewg4--

