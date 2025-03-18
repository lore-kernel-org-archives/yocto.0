Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3CC27C282EC
	for <webhook@archiver.kernel.org>; Tue, 18 Mar 2025 14:52:32 +0000 (UTC)
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
 by mx.groups.io with SMTP id smtpd.web10.303.1742309547154066486
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Mar 2025 07:52:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=S3+H5bs5;
 spf=pass (domain: gmail.com, ip: 209.85.219.50, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-6e8fce04655so49042226d6.3;
        Tue, 18 Mar 2025 07:52:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742309546; x=1742914346; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Deuzggcr+AeI4e4xH+qY61p8HSC4Yh8k3rYwTRB1qig=;
        b=S3+H5bs5p9zFcKMXe3yFhuX3a94d6iwODy6ChpnXsacesrQg5cGv3DBKaC0QMPh2Hy
         4UmjMxxyQOZboGtE6vHYbubUYW+VkfOPlHTPkohWpX7VwCDrTv3bBJvU2ru2wyIqVVre
         OIMmNAsj/UJgbIke4RwhsOukD1s/fWTZCGXmzAhJrZzEDnrP3vvoHysy1aLs+Nvkl321
         PF1ug+anSQ9G94FqJK6Ox83R8cH25Mh/4X8/LbGo6IulqDZsHrZb2T23qzMM6MCmeksx
         LUvVf4M2onX2zvTo7lYufSnBAuCqr6CvieJdGB7QgI76KExtvmqXUHzqZQFYTKjkNGmQ
         9N5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742309546; x=1742914346;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Deuzggcr+AeI4e4xH+qY61p8HSC4Yh8k3rYwTRB1qig=;
        b=OByUyJNBIvJm/LexJ7UyLNeUuVZgKG0WHyJABVcjBHb8yhnhxtD9a7Acjx7hvOVkIT
         1mYr8k+2L3E8ArZqbpr1/tfeyCuur9XbC/PPOyB9Dc01lzEw9Tt/3CacixLPMHjDCqvs
         grdh0A9KfYvPiBA8YK5FK6bjlFFfOQYRm9XuCfcHmuTwclgHwET1PDKuq6C3v7+cjbyd
         1s2Z2d5LG/PCTGdja5sDpqNhtnOp63cUKIL/N7j7RRzK/8435/LMl9zKAAXlQWGOoMOa
         FEmsv/wTENVzN/KdrdMM6iuy18rcna3ywFNw4p+soJ5c4tGP+9W0khiQrXak0VsIEPmn
         HSVA==
X-Forwarded-Encrypted: i=1; AJvYcCXeT4ulrMODK7SLVdfbxNIh+rI/S/YUe7Rj99aCb8degwdVvkwmoKvqafUs8veYQn4RtE1Mld4pXcfoVfo=@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yzt/kmZvdVGRDOEPePRyfa3R4ETL2S0sjKamLqj0dCVXCHjPInv
	ICREHZipysoz+Xus1PMkbMc+ufcbiLr6XFo3R4mJBf6/lNPn21D5RBDfH4J8Tu2W10qdIN9Dldi
	9TlmLrXC/tYEfIq275uwT+OAHwYc=
X-Gm-Gg: ASbGncuWjLyl96ci/EeNNBNYX3KPbudmxZFZ1BJWg6VHIeHZAeX6jVp5zE04vn+cEjw
	12T51RA+y0tsrOZUimUUyPE9ShBDcZ8CNg080OmwAGIkiZW+dz2B1Do1IGHn2JSTLTyfmvC35PZ
	ClEhl74xe6GLaSVRRXANDi5OpybjAMHoeXowO+ZBn1Ufp5dURGxWY2CADmsaxo
X-Google-Smtp-Source: AGHT+IHWE3POcMFsMSDNPjRakyqO0a28CLQhHJtXCj+2kyVot1MfZfc46oMsvn5lK7E4Fe0mhKXqD7gqizrj6ld7b1I=
X-Received: by 2002:a05:6214:5018:b0:6e8:89e8:bd25 with SMTP id
 6a1803df08f44-6eb1b961f3cmr43710386d6.43.1742309546138; Tue, 18 Mar 2025
 07:52:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAK5yBb_0c9XR8HxMNUWSyenvhYmrO8kOOqQfSrOVCe8B1X5m0g@mail.gmail.com>
In-Reply-To: <CAK5yBb_0c9XR8HxMNUWSyenvhYmrO8kOOqQfSrOVCe8B1X5m0g@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 18 Mar 2025 15:52:15 +0100
X-Gm-Features: AQ5f1JoR3mO21KKU5GS-VSfwSS2fOfBbVrU_naxO0E9P5TNWDTeKG2ovlwsxQoM
Message-ID: <CANNYZj96wAqwXi=1WQBMFMCoZ5MPYK2=6bJp9X8aC+GtFUtH0Q@mail.gmail.com>
Subject: Re: [OE-core] Yocto Project Status 18 Mar. 2025 (WW12)
To: sjolley.yp.pm@gmail.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>, 
	yocto-status@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Mar 2025 14:52:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64974

On Tue, 18 Mar 2025 at 15:44, Stephen Jolley via
lists.openembedded.org
<sjolley.yp.pm=gmail.com@lists.openembedded.org> wrote:
> Next Team Meetings:
> Bug Triage meeting Thursday Mar.20th 7:30 am PST (https://zoom.us/j/454367603?pwd=ZGxoa2ZXL3FkM3Y0bFd5aVpHVVZ6dz09)
> Weekly Project Engineering Sync Tuesday Mar. 18th 8 am PST (https://zoom.us/j/990892712?pwd=cHU1MjhoM2x6ck81bkcrYjRrcmJsUT09)

The patch review meetings should be added here?

Alex

