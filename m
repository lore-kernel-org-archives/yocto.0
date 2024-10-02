Return-Path: <michael.opdenacker@rootcommit.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8242CF6D28
	for <webhook@archiver.kernel.org>; Wed,  2 Oct 2024 13:36:24 +0000 (UTC)
Received: from skyblue.cherry.relay.mailchannels.net (skyblue.cherry.relay.mailchannels.net [23.83.223.167])
 by mx.groups.io with SMTP id smtpd.web10.7467.1727876175133358742
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Oct 2024 06:36:15 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@rootcommit.com header.s=hostingermail-a header.b=L4GT3nRu;
 spf=pass (domain: rootcommit.com, ip: 23.83.223.167, mailfrom: michael.opdenacker@rootcommit.com)
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id A21C6A5A20
	for <yocto@lists.yoctoproject.org>; Wed,  2 Oct 2024 13:36:14 +0000 (UTC)
Received: from fr-int-smtpout9.hostinger.io (trex-4.trex.outbound.svc.cluster.local [100.99.101.170])
	(Authenticated sender: hostingeremail)
	by relay.mailchannels.net (Postfix) with ESMTPA id DB389A5AB8
	for <yocto@lists.yoctoproject.org>; Wed,  2 Oct 2024 13:36:13 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1727876174; a=rsa-sha256;
	cv=none;
	b=I+KU453Gxrc+oaIVhkFZNB86OIlZbKrDRgwM9/rUXqcqRAhMwmCATqMHUWKObbeLXIlpGP
	LkpDXzeu4o1y26mHnPd6Df+PHTi72mqNueuwijbM1AB655zxn+u4ksFd3lQR9tG/G4Hkhc
	V7Kb9fO7LXl3zkzG3wBdx8cojCChCCFlxInCaOtriHKhptJwBKlGpTH9lw134eJTtzKS0U
	bcegufzQ6wyAUfgtFQlh0+FolAcJ0YJf2JwzdO7e480Hyes12DXVX6DLrmeQoHnRzGfNfa
	ZvBdY45Z/82KgRzMPCPRHSjmGM57qv6NbKce/IKspQu+6hUZgYQ4sy06WuQ7hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1727876174;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=ZoXA/Aj/5ubPOTFX2dMy4zinz6nNle/hYuIBfwXm5wo=;
	b=LYJ5qghm+Xb44491xiF8DuSVHGa621LpMfCTmdGuV/J+Qore+RuuqhTJBoJwU4PBzED10O
	zGn3DpZ9F3pHad5bpgILvzQjFrrsdAgLa+XiZ3/pxHA0Y2gM5OI1MbASnckv2VAQEo52Jw
	rNfR+NCVcCu0hIT7wB5SSwN5Vh8H7MURHwiIsDiqgu9kwXa3npDxVstAxX4yoz7+WWGjQi
	DnCGxTUJVOW7MJ0fqc7/cL0KVi12xiuYTelcHHI+niRRctjc0seS/m4i5nhvya+NlV3TLP
	3evX9fM+I+TTLcu/TXwVJo81Cn95jdHeSOMXxtoKKr6UeUBsLg5L6PEQpeJflw==
ARC-Authentication-Results: i=1;
	rspamd-784544597-6sgs7;
	auth=pass smtp.auth=hostingeremail
 smtp.mailfrom=michael.opdenacker@rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MC-Relay: Neutral
X-MailChannels-SenderId: 
 hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MailChannels-Auth-Id: hostingeremail
X-Befitting-Vacuous: 0f6d83c646ade699_1727876174383_2524658491
X-MC-Loop-Signature: 1727876174383:3999932983
X-MC-Ingress-Time: 1727876174383
Received: from fr-int-smtpout9.hostinger.io (fr-int-smtpout9.hostinger.io
 [89.116.146.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.99.101.170 (trex/7.0.2);
	Wed, 02 Oct 2024 13:36:14 +0000
Message-ID: <e4142246-cf86-4dd4-884d-ef8d7561744b@rootcommit.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=hostingermail-a; t=1727876172;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZoXA/Aj/5ubPOTFX2dMy4zinz6nNle/hYuIBfwXm5wo=;
	b=L4GT3nRuYnobxDM6VTxchgQl+VNWi5/rmNiucKxhJWHgP4iJ/gIofMLUfYlkXTHJPdgtL7
	4UNgGw+fvDfbD9+ei0vOpyGQ/iUmAM129CCgFwci5B+grbinC5ok5I2fRQCRe6AQxlrfQp
	vW1EnA68QoOMvnUofUNiT9R/KEpok8fLMfuiRNm7fzKqJNBvpxlMGc8nvftCmMNP3+O8jH
	EC61MRJfy5ggJRE2RwJuKBs/Swn/DbNWlmjAKH1Qa56M85ZyKbQOoV7BlJHVQEXyx20F1k
	cUX506ofxtUK/tlpzJa0FlTa8ZizjEdp3n9DL1Co/nwmmMTmSW7OkoT6gbYh5g==
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: michael.opdenacker@rootcommit.com, yocto@lists.yoctoproject.org
Subject: Re: [yocto] How to install a Snap package in Image #mickledore #snapd
To: dspore@parraid.com
References: <7c6729c4-c102-440d-9b00-b00692a4c347@rootcommit.com>
 <7587.1727788883607607228@lists.yoctoproject.org>
Content-Language: en-US
From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
Organization: Root Commit
In-Reply-To: <7587.1727788883607607228@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Date: Wed, 02 Oct 2024 13:36:11 +0000 (UTC)
X-CM-Analysis: v=2.4 cv=brweB1ai c=1 sm=1 tr=0 ts=66fd4c4c a=ECbuaEMMx6F9i7Ts0igI3g==:617 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=d70CFdQeAAAA:8 a=RI9oz6NgFOlyNb9062wA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=NcxpMcIZDGm-g932nG_k:22
X-CM-Envelope: MS4xfB3Ri55TEgzGUQGUuJYgBuhH2Etdl5cHnpF0LTBXvZxQ+71e156QKtjxFi+ciDw1VtrDjdc9M6sbbnjdo21KCf/jpHUQy7lz2zzDf2bmH367nPFUQrzT 40pGwEBqhbknL3RZKaAE6uaus97b2FqkOPmQ3hg87jBpEGhWGrZTGSwaGBEOkCAO9G4rYityq1eM1dEHzE84ywSB6rNp1IY1B7H9dJteILSjABTwvwT1nf// +70/YGxFzlbd+TMyASFPD+mF5sGVizBCYhnhUpygW6ie9cuBj3K5tg9IzGva2Sw9LcI8IErz9H5zZuDdoY7Ro5Bq6FagGmwA3vp7gyRvqZnvZM4SS23wM6sI c+kKPYboEOaWwuwBkzdGNZnMGJdGI6FuDoSw+rkg4+rHwKP2gLs=
X-AuthUser: michael.opdenacker@rootcommit.com
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Oct 2024 13:36:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63929

Hi David

On 10/1/24 15:21, Spore, David wrote:
> Michael,
> Thanks for your reply!=C2=A0 Yes, I have deployed the snap on my target=
=20
> machine manually after having installed snapd.


But did you check that the snap worked as expected?

> Now I am looking for a way to run snap packages during the image=20
> build, as well as deploy rpm and/or deb packages.


Do you mean deploying rpm and deb packages from other distros like=20
Fedora and Debian? Those are extremely likely to break, as the binaries=20
were built against different C libraries. RPM and DEB are package=20
formats, they don't provide binary compatibility.

> =C2=A0 I've deployed these packages manually on the target machine.=C2=A0=
 My=20
> problem is that I don't know how to write recipes for automating these=20
> tasks at build time.

I guess you should write a class which the recipes would inherit. You=20
may ask the meta-snapd or meta-snappy people for advice.
Cheers
Michael.

--=20
Michael Opdenacker
Root Commit
https://rootcommit.com


