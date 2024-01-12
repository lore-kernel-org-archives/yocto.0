Return-Path: <adrian.freihofer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64C5CC4706C
	for <webhook@archiver.kernel.org>; Fri, 12 Jan 2024 08:03:12 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web10.2813.1705046590500206904
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Jan 2024 00:03:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=RNwo3f7+;
 spf=pass (domain: gmail.com, ip: 209.85.208.171, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2cc9fa5e8e1so71911711fa.3
        for <yocto@lists.yoctoproject.org>; Fri, 12 Jan 2024 00:03:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705046588; x=1705651388; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9hhf0iWlgPTiDX0MW6UsDCCXk68B1W7V2yTNh+k7vYM=;
        b=RNwo3f7+uH+4n/jUlnmI4DfNEfeXMaPc7duqEag+v5nuQ6sM5akgKfpZaJqw9cCh5y
         PWbqql1ndm2gqChy+zixcSUdmjBHdA9DMXqixkKdBteYnoXCSg9px7s9ZZZYUdQ+3KVX
         slGl887JrVutAeWlQK0HUVDMoRHIF9vNmCjznqrTtYhl/UajdF/KyGi2Ox/cNjipu/c3
         WrJ7aCPqmxJXplUeleDcM+nExvfwJk+GxbzTFSZmINI8kZD6EWePel+pMTeGnaSWDFdD
         EpdYscfHs50+nXhyI04uLm3tQGL9tdc60xTIMQojmJcIyxM2y68y+FSEx/trIYTRKjEC
         zFMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705046588; x=1705651388;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9hhf0iWlgPTiDX0MW6UsDCCXk68B1W7V2yTNh+k7vYM=;
        b=dh+/sNHRuiJ9rLHop23yUre44YirIhc5Fo/ypQovE6YVG+qFZ+7LvDG1B0KJ8VO+9K
         tynPFnoanfCcRA+XIBWgUOs39pscqGwdckhaur3ylqlLCjap/YRjZwHLwU0aLCks8xrv
         1DD8tf4dE3dacOLIht3htLAstri1hhmSkrINpCFoE0k7JUAHmX38tkdSf7igqn6B917K
         b+XGPtsf1+nnKLlGeZx9mpHH+FDPIC2kcXtal3N6wrr6Qn7PQtNaKa13+DFycwTA02w5
         6U32riPxuiC1nyhIiz4iqKYUQlCv4jae2MFJFnYfEv3dD5juV6OFzuy02X4gJAQHr5FG
         zG3w==
X-Gm-Message-State: AOJu0Yzi9DMUO8VpDri03tNfi4NnnSq0dBGteJ1O2xOCaumBDDD1oD3G
	sC/QbO0wG3ZE3OGjtf9BmT0=
X-Google-Smtp-Source: AGHT+IE9hImIzGHrHZ69oftB6xAyjER+jEsTtI2ByVH46Bge9xkfW4ZMosuLakNMM3bfpNeOCjWIyw==
X-Received: by 2002:a2e:7d18:0:b0:2cd:660d:e481 with SMTP id y24-20020a2e7d18000000b002cd660de481mr440846ljc.38.1705046588313;
        Fri, 12 Jan 2024 00:03:08 -0800 (PST)
Received: from ?IPv6:2a02:169:59a6:0:5488:f785:9061:cf6c? ([2a02:169:59a6:0:5488:f785:9061:cf6c])
        by smtp.gmail.com with ESMTPSA id fe7-20020a056402390700b0055668ccd9a3sm1495538edb.17.2024.01.12.00.03.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jan 2024 00:03:07 -0800 (PST)
Message-ID: <5a8e5c23f713097b08bd7c9388622184a323311c.camel@gmail.com>
Subject: Re: [yocto] CVE Scanners and Package Version
From: adrian.freihofer@gmail.com
To: Marta Rybczynska <rybczynska@gmail.com>, yocto@lists.yoctoproject.org
Date: Fri, 12 Jan 2024 09:03:06 +0100
In-Reply-To: <CAApg2=Tm2uW69ND5sKFUOVYvA32coeEF+7Xn2Dg56JLCjoOC0A@mail.gmail.com>
References: <01of.1703328456869824351.98Vs@lists.yoctoproject.org>
	 <ZZO6LMkb9ECnPFev@nuoska>
	 <38fdec21c1f00c5cacc9c3fff8f8875460f25376.camel@gmail.com>
	 <CAApg2=Tm2uW69ND5sKFUOVYvA32coeEF+7Xn2Dg56JLCjoOC0A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 12 Jan 2024 08:03:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62133

Hi Marta
>=20
> The discussion in this thread is in fact related to what we have in
> sessions
> about SRTools. Would you be willing to join?
>=20
I remember that the meetings were announced via the mailing lists. But
I can no longer find them and they are not listed on
https://www.yoctoproject.org/community/get-involved/#virtual-meetings.
How can I participate?

Thank you.
Best regards,
Adrian


> Kind regards,
> Marta


