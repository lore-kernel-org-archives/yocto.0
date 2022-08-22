Return-Path: <forums@bitflipper.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40604C28D13
	for <webhook@archiver.kernel.org>; Mon, 22 Aug 2022 20:54:57 +0000 (UTC)
Received: from omta037.useast.a.cloudfilter.net
 (omta037.useast.a.cloudfilter.net [44.202.169.36])
 by mx.groups.io with SMTP id smtpd.web11.23435.1661201687670973302
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Aug 2022 13:54:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bitflipper.net header.s=default header.b=2AriR6QK;
 spf=pass (domain: bitflipper.net, ip: 44.202.169.36,
 mailfrom: forums@bitflipper.net)
Received: from eig-obgw-6016a.ext.cloudfilter.net ([10.0.30.207])
	by cmsmtp with ESMTP
	id Q4IKoeHbM7krOQERaoEm9c; Mon, 22 Aug 2022 20:54:46 +0000
Received: from gator4161.hostgator.com ([108.167.133.17])
	by cmsmtp with ESMTP
	id QERYobt9jWtOfQERYoQKtq; Mon, 22 Aug 2022 20:54:45 +0000
X-Authority-Analysis: v=2.4 cv=TdKFCDch c=1 sm=1 tr=0 ts=6303ed15
 a=wy83rNxz+atVFkX2aYqp/w==:117 a=aN6y9qdCXCRkBQVezpBZ3g==:17
 a=dLZJa+xiwSxG16/P+YVxDGlgEgI=:19 a=biHskzXt2R4A:10 a=myVjTR8LsXQA:10
 a=Kw0Nh6hiwHLgQ-Elx6EA:9 a=QEXdDO2ut3YA:10 a=bX5CB5dUPiF7BZMo:21
 a=_W_S_7VecoQA:10
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=bitflipper.net; s=default; h=To:Date:Message-Id:Subject:Mime-Version:
	Content-Type:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=sEfIcymMFeC/tnRbhRO3HJ/4DdQiAFB9gLrWjneGVeU=; b=2AriR6QKO7XmCg+hPUAwtLQhFQ
	oKO4RXDx2EHoOMmWIyPuJ22euduSCOSqVhrSkkLp39nsVK6ZqRj3ou+G2bynCwTVNQYyUGba8P21B
	G5vnNikHz4tEUS5rvabTKpkWZzxwLpvrBY0/cuWK/Q0Quf+r7AK4WlN9Tx62lDlxwoudcbbLN8JbM
	+jYMxMpy8nJeWigwh2ZZyaXo8Y+E9gxIBJGy499MmaTqznjD9O/mPTq6esw5XjuETZ6N9ETGYSt7e
	OBOgT3+giQpvdUcjze8vHdWDHtKo3hj2g3n5I4D6GSc/lWllMWwSaJIcDHN4gkoNYlTfrjpl8Hurt
	mI0we5qw==;
Received: from pool-108-20-201-51.bstnma.fios.verizon.net
 ([108.20.201.51]:51837 helo=smtpclient.apple)
	by gator4161.hostgator.com with esmtpsa  (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <forums@bitflipper.net>)
	id 1oQERX-000UO5-Nv
	for yocto@lists.yoctoproject.org;
	Mon, 22 Aug 2022 15:54:43 -0500
From: forums <forums@bitflipper.net>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_C5F8F95A-F0D3-4841-A84D-6509C748CE56"
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.60.0.1.1\))
Subject: Bitbake + Patches
Message-Id: <53C07165-3951-4450-B175-E323971C8DEC@bitflipper.net>
Date: Mon, 22 Aug 2022 16:54:40 -0400
To: yocto@lists.yoctoproject.org
X-Mailer: Apple Mail (2.3693.60.0.1.1)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4161.hostgator.com
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - bitflipper.net
X-BWhitelist: no
X-Source-IP: 108.20.201.51
X-Source-L: No
X-Exim-ID: 1oQERX-000UO5-Nv
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: pool-108-20-201-51.bstnma.fios.verizon.net (smtpclient.apple)
 [108.20.201.51]:51837
X-Source-Auth: forums@bitflipper.net
X-Email-Count: 1
X-Org: HG=hgshared;ORG=hostgator;
X-Source-Cap: YmFsc29uODg7YmFsc29uODg7Z2F0b3I0MTYxLmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: 
 MS4xfEBjGAFKsMUlH36VMBezANJQHng03XVkmffHgrKbY/++uHDhIYndcz03oD2lpkYg3f9TftPJuLF787cjjXfkV9d8ydhS+g/UUhG7Ml2prS1gAjY6CEgH
 hPWtmcKOdGT6raZWIL/GtdffzWQxHD33sJHvrmChLCldKwARNJczp24H6luoT8n2MFesqDpvrfwiRHNXNg3y9/zJvIOO8ZLiB8s355lPYlInV4tR2WIAhgwt
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 Aug 2022 20:54:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57874


--Apple-Mail=_C5F8F95A-F0D3-4841-A84D-6509C748CE56
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



I was told this was the right group to ask my question. If this is not =
right, please let me know.

I am currently using  Zeus, and with Zeus, we get Apache v2.4.41. But I =
would like to get a later version of apache because there have been a =
few fixes related to cyber security. So I believe that, given we=E2=80=99r=
e using Zeus, we can=E2=80=99t upgrade to the latest version of Apache =
given the current recipe that Zeus uses. Therefore I believe that the =
only way accomplish getting tho the latest version of apache with Zeus =
would to be =E2=80=98patch=E2=80=99  the v2.4.41 version that comes with =
Zeus.

Looking at the Bitbake manual, in section 4.1, it states the following:

"BitBake takes several steps when fetching source code or files. The =
fetcher codebase deals with two distinct processes in order: obtaining =
the files from somewhere (cached or otherwise) and then unpacking those =
files into a specific location and perhaps in a specific way. Getting =
and unpacking the files is often optionally followed by patching. =
Patching, however, is not covered by this module."


The manual does not cover patching.=20

Where can I get information on this process of patching something like =
apache or any other application that was add via IMAGE_INSTALL_append =
method.

Any help pointing me to where this process might be documented is much =
appreciated.


Thanks, Jim=

--Apple-Mail=_C5F8F95A-F0D3-4841-A84D-6509C748CE56
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><div =
class=3D"" style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);"><br =
class=3D""></div><div class=3D"" style=3D"caret-color: rgb(0, 0, 0); =
color: rgb(0, 0, 0);"><br class=3D""></div><div class=3D"" =
style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);">I was told =
this was the right group to ask my question. If this is not right, =
please let me know.</div><div class=3D"" style=3D"caret-color: rgb(0, 0, =
0); color: rgb(0, 0, 0);"><br class=3D""></div><div class=3D"" =
style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);">I am currently =
using &nbsp;Zeus, and with Zeus, we get Apache v2.4.41. But I would like =
to get a later version of apache because there have been a few fixes =
related to cyber security. So I believe that, given we=E2=80=99re using =
Zeus, we can=E2=80=99t upgrade to the latest version of Apache given the =
current recipe that Zeus uses. Therefore I believe that the only way =
accomplish getting tho the latest version of apache with Zeus would to =
be =E2=80=98patch=E2=80=99 &nbsp;the v2.4.41 version that comes with =
Zeus.</div><div class=3D"" style=3D"caret-color: rgb(0, 0, 0); color: =
rgb(0, 0, 0);"><br class=3D""></div><div class=3D"" style=3D"caret-color: =
rgb(0, 0, 0); color: rgb(0, 0, 0);">Looking at the Bitbake manual, in =
section 4.1, it states the following:</div><div class=3D"" =
style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);"><br =
class=3D""></div><blockquote class=3D"" style=3D"caret-color: rgb(0, 0, =
0); color: rgb(0, 0, 0); margin: 0px 0px 0px 40px; border: none; =
padding: 0px;"><div class=3D""><p class=3D"" style=3D"line-height: =
1.5em; margin-top: 0em; caret-color: rgb(51, 51, 51); color: rgb(51, 51, =
51); font-family: Verdana, Sans, sans-serif;">"BitBake takes several =
steps when fetching source code or files. The fetcher codebase deals =
with two distinct processes in order: obtaining the files from somewhere =
(cached or otherwise) and then unpacking those files into a specific =
location and perhaps in a specific way. Getting and unpacking the files =
is often optionally followed by patching.&nbsp;<b class=3D""><i =
class=3D"">Patching, however, is not covered by this =
module</i></b>."</p></div></blockquote><div class=3D"" =
style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);"><div =
class=3D""><br class=3D""></div></div><div class=3D"" =
style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);">The manual =
does not cover patching.&nbsp;</div><div class=3D"" style=3D"caret-color: =
rgb(0, 0, 0); color: rgb(0, 0, 0);"><br class=3D""></div><div class=3D"" =
style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);">Where can I =
get information on this process of patching something like apache or any =
other application that was add via IMAGE_INSTALL_append =
method.</div><div class=3D"" style=3D"caret-color: rgb(0, 0, 0); color: =
rgb(0, 0, 0);"><br class=3D""></div><div class=3D"" style=3D"caret-color: =
rgb(0, 0, 0); color: rgb(0, 0, 0);">Any help pointing me to where this =
process might be documented is much appreciated.</div><div class=3D"" =
style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);"><br =
class=3D""></div><div class=3D"" style=3D"caret-color: rgb(0, 0, 0); =
color: rgb(0, 0, 0);"><br class=3D""></div><div class=3D"" =
style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);">Thanks, =
Jim</div></body></html>=

--Apple-Mail=_C5F8F95A-F0D3-4841-A84D-6509C748CE56--

