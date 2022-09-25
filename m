Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 891F7C6FA82
	for <webhook@archiver.kernel.org>; Sun, 25 Sep 2022 09:41:49 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
 [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web08.15424.1664098899253733431
 for <yocto@lists.yoctoproject.org>;
 Sun, 25 Sep 2022 02:41:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=hbmRWAQs;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.44,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f44.google.com with SMTP id
 n40-20020a05600c3ba800b003b49aefc35fso2144148wms.5
        for <yocto@lists.yoctoproject.org>;
 Sun, 25 Sep 2022 02:41:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date;
        bh=WrUOJADpwNP8WhMqivhb8SZbZEp4hNRvYhbjmojkcxU=;
        b=hbmRWAQsRoc89CWKWkFLTdtXmxMrl3ljrEzIUGe0JgLjaQy/ILkZCzCBHsVwyo/bfL
         EwU2iQUSZJocCSF15sbwh9YpHQcM94fjBSNvhpurW8vFoheXpFS4JQGOx5gvE8YRpKuu
         SX/7+H+uWFFQxeTz2ZYmUBwGfPGIYN1WBWou4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date;
        bh=WrUOJADpwNP8WhMqivhb8SZbZEp4hNRvYhbjmojkcxU=;
        b=LDjBSwIkADonHzgwg3IP1ZJYPpCTAFV44Ww2Sst23qNI35eMIxMfrieEwyEpB4GJRw
         1PpbIb11TX6QblGBIMwkUjlU8SgIckuOqQpyD2HcnCsmh7v/XyI5tKKEluGiUAJ/TDBM
         OvJoYoW+9S57Gduh+gEbMrtlwNaec51VNnfiX+HxkR46Vf/DkYjJaeM9Um/1UXY7Hd+F
         ySiSfoonE1f2P5qA69caaB75tuqSMNISC+CfUY5wv9v7hPZ2/cLyWGz9DoeCQO+wVpEU
         Y/9q+/GsIkFYFrkz8tYnut0dyusgK2giQTDrJbtsi+FR9F2RqYfN2/ESDSUBEaQo0IGs
         dxcw==
X-Gm-Message-State: ACrzQf2Ws60HAzSnJYE7z1pCFk6Rj9TqBjFWu9hpUxuv3oOnLbhr39ge
	INOlv9S6rMiiiTmzmPCdCe1L8w==
X-Google-Smtp-Source: 
 AMsMyM4Fhhorik8tvLwdonVVFkWQtyeHVbU43uHY+bYIKYTdkRT5jssgNMWSG6QUzuVO/DF1rCvAvw==
X-Received: by 2002:a05:600c:4e02:b0:3b4:86bf:a3d0 with SMTP id
 b2-20020a05600c4e0200b003b486bfa3d0mr18482428wmq.24.1664098897391;
        Sun, 25 Sep 2022 02:41:37 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:70bf:6fa:95f1:db37?
 ([2001:8b0:aba:5f3c:70bf:6fa:95f1:db37])
        by smtp.gmail.com with ESMTPSA id
 p12-20020a05600c358c00b003b482fbd93bsm7753241wmq.24.2022.09.25.02.41.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Sep 2022 02:41:36 -0700 (PDT)
Message-ID: 
 <3ce43a96c2881ef3b35519550c39054f83c2379c.camel@linuxfoundation.org>
Subject: Re: [Openembedded-architecture] [yocto-announce] [ANNOUNCEMENT]
 Milestone 3 for Yocto Project 4.1 (yocto-4.1_M3) Now Available
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Konrad Weihmann <kweihmann@outlook.com>,
	yocto-announce@lists.yoctoproject.org, openembedded-architecture
	 <openembedded-architecture@lists.openembedded.org>,
	"yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Cc: chee.yang.lee@intel.com
Date: Sun, 25 Sep 2022 10:41:35 +0100
In-Reply-To: 
 <PR2PR09MB3100F0131EBDA0845AB70AC5A8539@PR2PR09MB3100.eurprd09.prod.outlook.com>
References: 
	<DM5PR1101MB2361A81943CD4DB797AF61F8B9509@DM5PR1101MB2361.namprd11.prod.outlook.com>
	 <PR2PR09MB3100F0131EBDA0845AB70AC5A8539@PR2PR09MB3100.eurprd09.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 25 Sep 2022 09:41:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58150

On Sun, 2022-09-25 at 10:53 +0200, Konrad Weihmann wrote:
> Hi all,
>=20
> On 24.09.22 04:02, Lee Chee Yang wrote:
> > Hi
> >=20
> > We are pleased to announce the third milestone release for Yocto Projec=
t=20
> > 4.1 (yocto-4.1_M3) is now available for download.
> >=20
> > Download:
> >=20
> > http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-4.1_M=
3=20
> > <http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-4.1_=
M3>
> >=20
> > bitbake: 6424f4b7e9c1ba8db81346e8b3a806dd035d4551
> >=20
> > meta-agl: e4ea839db9c26e78175d61388c5408a79f6927dc
> >=20
> > meta-arm: 261263a6701ab3530ff997643d08da502222ac20
> >=20
> > meta-aws: a16f35a73bff26d9506f519451dc75034211d61b
> >=20
> > meta-gplv2: 43bf0e8d5985945d19d01f94bfbbda420c4435f3
>=20
> I thought the agreement was to stop promoting meta-gplv2?
> Still I find it listed here - it somehow implies that this is still=20
> officially support, which everyone agreed it isn't
>=20
> Can this be removed from the announcement template for the next=20
> releases? - just to avoid any future misunderstandings

Someone needs to do the work involved and I guess that hasn't happened.
It isn't entirely simple as this does still exist in the other
releases.

Could you open a bug please so we don't forget this.

I still don't know who will do it but that way we at least remember we
need to.

Cheers,

Richard

