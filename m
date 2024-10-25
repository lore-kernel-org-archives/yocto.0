Return-Path: <philip.lorenz@bmw.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37945D0C614
	for <webhook@archiver.kernel.org>; Fri, 25 Oct 2024 13:59:58 +0000 (UTC)
Received: from esa10.hc324-48.eu.iphmx.com (esa10.hc324-48.eu.iphmx.com [207.54.69.29])
 by mx.groups.io with SMTP id smtpd.web11.12676.1729864792426692524
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Oct 2024 06:59:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bmw.de header.s=mailing1 header.b=RSKPlZA0;
 spf=pass (domain: bmw.de, ip: 207.54.69.29, mailfrom: prvs=021463fce=philip.lorenz@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1729864792; x=1761400792;
  h=message-id:date:mime-version:subject:to:references:cc:
   from:in-reply-to:content-transfer-encoding;
  bh=Khwte403ePb2WdJLNIy/VBCR9b2f4N1rkNsxbDEAFtM=;
  b=RSKPlZA0+BG30dIpJvj0zgIHS7SOZSLuhTMiYlsudv3HXGLA6tTJRp0O
   RGZ6AKy3ik3hrJbY/cV7T8AbXQhwarl6fbaNX40BVxPI+9eLAq5AFdE54
   pYW2ZhQKcmG9w1wV7kXOkHCklaQFoRH8bDeiID2LIGRWLh1Z2GpHXWmzV
   w=;
X-CSE-ConnectionGUID: e+X3wJ1jTCy1QdYSTpoxnw==
X-CSE-MsgGUID: jQMl3XE3TXmobS6U2IqfpQ==
Received: from esagw2.bmwgroup.com (HELO esagw2.muc) ([160.46.252.38]) by
 esa10.hc324-48.eu.iphmx.com with ESMTP/TLS; 25 Oct 2024 15:59:50 +0200
Received: from esabb4.muc ([160.50.100.33])  by esagw2.muc with ESMTP/TLS;
 25 Oct 2024 15:59:49 +0200
Received: from smucmp10e.bmwgroup.net (HELO SMUCMP10E.europe.bmw.corp) ([10.30.13.87])
 by esabb4.muc with ESMTP/TLS; 25 Oct 2024 15:59:49 +0200
Received: from [10.242.8.57] (10.30.85.203) by SMUCMP10E.europe.bmw.corp
 (2a03:1e80:a15:58f::2027) with Microsoft SMTP Server (version=TLS;
 Fri, 25 Oct 2024 15:59:48 +0200
X-CSE-ConnectionGUID: MXzQFCYpT8W1FczvjYdGeQ==
X-CSE-MsgGUID: 4o+Dy/d9TIGZHOPVg3fqhg==
X-CSE-ConnectionGUID: 086ARVbFQ+2eP0r6gUjGOA==
X-CSE-MsgGUID: vNyvEiiWSr+MnkzAaFgXjw==
Message-ID: <4dd48c42-f36b-4fa1-b1c9-1b6a914c1f85@bmw.de>
Date: Fri, 25 Oct 2024 15:59:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] version-going-backwards issues with shared sstate cache
To: Alexander Kanavin <alex.kanavin@gmail.com>
References: <96c0c00e-7d19-4c27-a7cb-f4f98cfca732@bmw.de>
 <CANNYZj_-NX_k09uLbbzVrvZWNNV0v+Rae1h=USZPW0w_a71g9A@mail.gmail.com>
CC: <yocto@lists.yoctoproject.org>
From: Philip Lorenz <philip.lorenz@bmw.de>
In-Reply-To: <CANNYZj_-NX_k09uLbbzVrvZWNNV0v+Rae1h=USZPW0w_a71g9A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SMUCMP09G.europe.bmw.corp (2a03:1e80:a15:58f::1:2e) To
 SMUCMP10E.europe.bmw.corp (2a03:1e80:a15:58f::2027)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Oct 2024 13:59:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64127

Hi Alex,

On 25.10.24 11:07, Alexander Kanavin wrote:
> On Thu, 24 Oct 2024 at 19:26, Philip Lorenz via lists.yoctoproject.org
> <philip.lorenz=bmw.de@lists.yoctoproject.org> wrote:
>> Is this issue generally known and are there any other recommendations on
>> how to deal with this?
> I don't really know much about this, but I would consider allocating
> PR values only for things that have been reviewed merged and landed in
> trunk via separate after-the-fact release pipeline. Volatile CI stuff
> should perhaps be run without enabling the PR server at all.

Wouldn't we then see version-going-backwards errors in the validation 
builds (as the "mainline" builds which contribute to the shared 
buildhistory will have higher PRs from PRserv)? We'd like to maximize 
our cache reuse so in a perfect world even the write_package_* tasks 
could be reused between the builds (which I believe we could do if we 
combine hash equivalence with a non-cached packagedata task).

Philip

-- 
Philip Lorenz
BMW Car IT GmbH, Software-Plattform, -Integration Connected Company, Lise-Meitner-Straße 14, 89081 Ulm
-------------------------------------------------------------------------
BMW Car IT GmbH
Management: Chris Brandt and Michael Böttrich
Domicile and Court of Registry: München HRB 134810
-------------------------------------------------------------------------


