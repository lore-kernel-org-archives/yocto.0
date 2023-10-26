Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1219BC25B6E
	for <webhook@archiver.kernel.org>; Thu, 26 Oct 2023 13:30:47 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
 by mx.groups.io with SMTP id smtpd.web10.200186.1698327038311134488
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Oct 2023 06:30:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=j96DrSIj;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.208.52, mailfrom: jester@theyoctojester.info)
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-538e8eca9c1so1400992a12.3
        for <yocto@lists.yoctoproject.org>; Thu, 26 Oct 2023 06:30:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1698327037; x=1698931837; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ndO5bUYSzSoIwe0hFBOaUNd1kr3/d/yw7n1CC3H5KNM=;
        b=j96DrSIjH7CHhkBAyfVmtzAMnJM0GkFk+2MyVGhNXY9ZdeOhmD4GFmBwUzl6Gb19Tc
         bMqVcTscp1ZgYjAR5Jsb58ZPA5RjbPcMO/33160mYETHsZNQxXgha2sxuZj6cfqMvvL9
         W7XQTf5bO29kpIFbSSgNlDy6gx5E/ur2wmjHUYqkXUwEtcSusYgR3wb0lTb1+0/zXA5o
         C4/+IiXQ3QWCdiofh2N/pFdS3Ixou6WFg6IKldmAgs0iQ4eRrfMZWm96dsGFJMrKmFq6
         7Qng3+yOK8uNNVKFGR1p29z+XRNrGhu6iuVSKkxnXJ55HECb/zMIj66sf+Z31RDdRyrG
         KcqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698327037; x=1698931837;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ndO5bUYSzSoIwe0hFBOaUNd1kr3/d/yw7n1CC3H5KNM=;
        b=UfYbyZ5zzkU1/OXntsPQoyznLb+EPLCPpI/CBvK/2oNEjbhNmzOxSQtqVh8LGUK6s5
         zB/3ZERYk5XTTBg0qMZzXLspUFgzWCHEEld3IgwZFs1+euZC3ZAvA+LWxONwiGOfyFAT
         3drcbyg7XouyhKyS+IUGhM+/26/LbDf6zXiYooDYnak5Vrel3r558BghbLapevnHYTDV
         loUpAzmI83nvMeTisbOXbu2WQpjcZijNejwlzCsOHW43p5eG26fkOVbiwfkEZffc+aue
         5xkJrNummIGH8WIY76No9VFZLNI7Ec5UXD13t2TLGd9Hi2HeaHOoyLq3jvKgieFCvT1u
         EQzw==
X-Gm-Message-State: AOJu0Ywmq1vdu2mreq8hwW+VeKypOo14BcO28TIEunHsPM2WF//YtVgT
	B3VkHTU2qEW9jPO+NvWyJB1ekPbxZ5QOS7XS9Wfqsx8MxzKx2PXrzdi2/g==
X-Google-Smtp-Source: AGHT+IHRyKKfDCyQhOdHc/TvKTRID5BVxx9PksY+089e5A7Ee8YD73cZPAU/SSDo5F4ZTC6dFQIBT6+kLZnWWFXfZjY=
X-Received: by 2002:a05:6402:1d4d:b0:540:c8b7:6023 with SMTP id
 dz13-20020a0564021d4d00b00540c8b76023mr5264117edb.35.1698327036462; Thu, 26
 Oct 2023 06:30:36 -0700 (PDT)
MIME-Version: 1.0
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Thu, 26 Oct 2023 15:30:10 +0200
Message-ID: <CAEt6NwrEPS379dzhPKO1rKDk8uc7anzjNNah=GRV+=EDcUdvWg@mail.gmail.com>
Subject: OpenEmbedded Workshop CFP - February 5th, 2024
To: openembedded-devel@lists.openembedded.org, 
	openembedded-core <openembedded-core@lists.openembedded.org>, 
	openembedded-members@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000b8a8d406089e93a0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 Oct 2023 13:30:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61491

--000000000000b8a8d406089e93a0
Content-Type: text/plain; charset="UTF-8"

We are hosting a workshop on Monday, February 5th 2024 in Brussels. Yes
exactly, the day right after FOSDEM. So make sure to extend your stay and
share your findings or the things you bring. How? By submitting to the OE
Workshop 2024 CFP. Open now and waiting for you.

https://pretalx.com/oe-ws-2024/cfp

Josef,
on behalf of the OpenEmbedded board

--000000000000b8a8d406089e93a0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>We are hosting a workshop on Monday, February 5th 202=
4 in Brussels. Yes exactly, the day right after FOSDEM. So make sure to ext=
end your stay and share your findings or the things you bring. How? By subm=
itting to the OE Workshop 2024 CFP. Open now and waiting for you.</div><div=
><br><a href=3D"https://pretalx.com/oe-ws-2024/cfp">https://pretalx.com/oe-=
ws-2024/cfp</a><br></div><br><div>Josef,</div><div>on behalf of the OpenEmb=
edded board</div></div>

--000000000000b8a8d406089e93a0--

