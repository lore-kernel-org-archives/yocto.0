Return-Path: <logan.grosz@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22BB1C77B73
	for <webhook@archiver.kernel.org>; Thu, 20 Apr 2023 20:08:06 +0000 (UTC)
Subject: Multiple wifi access points when using Connman
To: yocto@lists.yoctoproject.org
From: logan.grosz@gmail.com
X-Originating-Location: Rapid City, South Dakota, US (208.117.101.126)
X-Originating-Platform: Windows Firefox 111
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 20 Apr 2023 13:08:04 -0700
Message-ID: <tEhD.1682021284572852771.sxZQ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="rjRK2IQTnH10AWxDffi5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Apr 2023 20:08:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59743

--rjRK2IQTnH10AWxDffi5
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I am using the poky connman_1.37 recipe and the wpa-supplicant_2.9 recipe. =
When I get the services from Connman I get duplicates access points:

```
connmanctl> services
my-access-point wifi_02...
my-access-point wifi_00...
```

I am able to connect to the ones with wifi_00*, but not the ones like wifi_=
02*. Why are there two access points and why does only one of them "work?" =
I have removed systemd-networkd from my image.

I have attempted to downgrade to connman_1.35 (from an older version of Yoc=
to which does not have this problem) but to no avail.

Thank you,
Logan

--rjRK2IQTnH10AWxDffi5
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I am using the poky connman_1.37 recipe and the wpa-supplica=
nt_2.9 recipe. When I get the services from Connman I get duplicates access=
 points:<br /><br />```<br />connmanctl&gt; services<br />my-access-point w=
ifi_02...<br />my-access-point wifi_00...<br />```<br /><br />I am able to =
connect to the ones with wifi_00*, but not the ones like wifi_02*. Why are =
there two access points and why does only one of them "work?" I have remove=
d systemd-networkd from my image.<br /><br />I have attempted to downgrade =
to connman_1.35 (from an older version of Yocto which does not have this pr=
oblem) but to no avail.<br /><br />Thank you,<br />Logan

--rjRK2IQTnH10AWxDffi5--

