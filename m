Return-Path: <dave@synergy.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D976CD484E
	for <webhook@archiver.kernel.org>; Mon, 11 May 2026 20:54:09 +0000 (UTC)
Received: from mta-512a.oxsus-vadesecure.net (mta-512a.oxsus-vadesecure.net [173.45.18.120])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.60970.1778532840995401955
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 May 2026 13:54:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@oxsus-vadesecure.net header.s=dkim-202410-rsa2048 header.b=gk57mqIN;
 spf=pass (domain: synergy.org, ip: 173.45.18.120, mailfrom: dave@synergy.org)
Authentication-Results: oxsus-vadesecure.net;
 auth=pass smtp.auth=4@316323 smtp.mailfrom=dave@synergy.org;
DKIM-Signature: v=1; a=rsa-sha256; bh=ty8bjnVaIcxl0H4k68E4XZ0Ut2wYhOxOem+NFS
 hyBvw=; c=relaxed/relaxed; d=oxsus-vadesecure.net; h=from:reply-to:
 subject:date:to:cc:resent-date:resent-from:resent-to:resent-cc:
 in-reply-to:references:list-id:list-help:list-unsubscribe:
 list-unsubscribe-post:list-subscribe:list-post:list-owner:list-archive;
 q=dns/txt; s=dkim-202410-rsa2048; t=1778532840; x=1779137640; b=gk57mqI
 NHtnCaIvT+jsE4KjsW6Yp6i79+oXln6428ZTYov7N12gXXhhh+kAKm1jeSthapaxB2KA50b
 UDgfMmdnmmbRzeJHbGoxS2kHRNcEIN0+DERf54DYitKhLFup7tcEAB1u+ZWCD6v2GBCOqJ3
 ynwAaWwTsD/PGi6BT1pvt10rXB0FuhMeW69bMef2/E3gzQXMAKrZokjCtkHPn2HWfgY7CIx
 9oCWakdMuweZtW1+oQxWH6WAzg8nYlq1OMbobI07DuoY+uMz3feKNMe2/qkUopT/jSQwohe
 6VmZHbWMxupUWewha0NsHII/dzrRJ/V4aQ/DR3oyCyIPCS6otaQ==
Received: from proxy-6.proxy.cloudus.mci.xion.oxcs.net ([174.165.77.67])
 by oxsus5nmtao02p.internal.vadesecure.com with ngmta
 id 0bb4d272-18ae9e31bffaf80e; Mon, 11 May 2026 20:54:00 +0000
From: <dave@synergy.org>
To: <yocto@lists.yoctoproject.org>
References: 
In-Reply-To: 
Subject: Looking for Yocto-supported Reference Design
Date: Mon, 11 May 2026 13:53:56 -0700
Message-ID: <001001dce188$4a8cde20$dfa69a60$@synergy.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIbOnTDxG2l8aUJ4f9hhl42aKNuPrWMmxBA
Content-Language: en-us
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 May 2026 20:54:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66531

Hello,
	My name is David Richards and I am blind. I am new to Yocto. I would
like to build a portable talking e-book reader. The goal is to support
DAISY, Audible, Kindle, and epub books. In addition, I would like to be able
to stream MP3 content. To that end, I am looking for a reference design to
base the project on. It does not require/use a display or touchpad. The user
interface will utilize buttons and speech output. The design should have
existing Yocto support, if possible.
	Does anyone have any pointers for a reference design I could start
with?
	Many thanks,
	David



