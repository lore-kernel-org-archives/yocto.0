Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 504F0C3DA7D
	for <webhook@archiver.kernel.org>; Tue,  3 Jan 2023 15:38:02 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web11.66417.1672760279178530501
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Jan 2023 07:37:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=I08eqTWS;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id f20so32234589lja.4
        for <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 07:37:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4Z/+sE/qXhNyMrfVnPWimH05EjPhRME+/um8aqeFU+0=;
        b=I08eqTWSx8rTzS0obexjYHQWYYkEb6Aiz0qirjnPrezTZmxwYOOGsWOy2Ock9vQq6n
         x7sSmOZQ7m2eiJbzjJgsCTofnO4SYrJuedO+9k/Piv4Bf7Z7cGQIvbHMqhOtadJo5sTN
         5zOPhj59FbS9ddjNpQGY/oq0RJLxWOe5DiE7REyIMnnUvzlVmA9cbdaABiUL8NelHhsX
         27oYLQ8Nk8bWv+/kD+BuEkzmJB9knANbIgsjQYOHotsVmhKN5Y+efUfnwads/oBU4Ja6
         Eux63qt+UkiXOxwC9jOzCQJ/sl3P4qZFBNErsOFdVEwydNQmF+0xAhoSiZLlFseow3kF
         xRhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4Z/+sE/qXhNyMrfVnPWimH05EjPhRME+/um8aqeFU+0=;
        b=TmEW9aFcsWntZ79/Y7xpr5Wf9jPSSSWoE8hNl5PO8BPBs1WjvW7JKnTpuqJxkKyl32
         Kfmxr3gFWaoY7Y2v1wcn6qXiVXFa5eLclhQQscVNoeBQ2vxAZB/CRCHWsRoSRZlvNC6Y
         HXRaiURsjlq+j5JKgUS2aF2D1hOx7Vt15CNIGdP7jY/Z4Ir0zSXCpmUJuiITBXTSplM4
         9wuL0XAqOG/OexNFBmQo27aiRJnlVBqvs56PqS3LIK4RdponDyIKckDmABPXuTNwpmno
         EGIy7C5abIx/fSCWcVuPbKi1pZfYt5C/+l2mcNp0Hj8Z+lMkCxeRLeQLC1C5D6Kd/S4y
         fzHg==
X-Gm-Message-State: AFqh2koJVo31zWepG7UPHIYbZux3Yjc8cUyfnAVidRwEQXN7aO7A557/
	8dd/kwA4AdkzGAXfZbhTCChIw6tUFFXXbgPRdyk=
X-Google-Smtp-Source: AMrXdXuak5RbO6SdDHOR1o3eOwhrNEfm+pN37LbeJ4IMf9iZn2Guhf1aG28ctm9s1RQqAvamWlPAEayQJbiZ5rBvuGY=
X-Received: by 2002:a2e:a486:0:b0:27f:e99f:7f2c with SMTP id
 h6-20020a2ea486000000b0027fe99f7f2cmr468145lji.222.1672760277363; Tue, 03 Jan
 2023 07:37:57 -0800 (PST)
MIME-Version: 1.0
References: <5a37c855-943a-7ae2-b481-e030ebb69de8@gmail.com>
 <10280.1623316977582274550@lists.yoctoproject.org> <829bf26e-b882-d479-aa0c-f22998071fa7@windriver.com>
 <a760fbd1-f76c-598f-a802-f4e6207f9720@gmail.com> <43af6b3b-a2c5-b937-93a4-fec8ab2e1fcd@gmail.com>
 <26729316-8d42-3ec9-d6b5-f77002a85c74@windriver.com> <89e0c314-86ca-6fb4-642c-7493116b467f@gmail.com>
 <CANNYZj80qvYk5=OXDhGr78=pmzsBdxD1EbHDNrfKDf9_gUQyPA@mail.gmail.com>
 <3ffc9740-b8a5-358b-8e56-4103d4d0f0cb@gmail.com> <e36d4afd-235a-a2f2-7272-9d9b49c02698@theobroma-systems.com>
 <41754798-a1f2-05a7-93d8-799907ed988b@gmail.com> <BN7PR14MB2420DC3CA660334614825E4A85F49@BN7PR14MB2420.namprd14.prod.outlook.com>
 <f34730a2-c775-8e9c-dd36-9282e9cff08d@gmail.com> <1736D5DCC66BC3DE.4716@lists.yoctoproject.org>
In-Reply-To: <1736D5DCC66BC3DE.4716@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 3 Jan 2023 16:37:45 +0100
Message-ID: <CANNYZj_8C0sZA07y86ErjC8kL02oTPFahEV8Tsq9yfVWmxz-HA@mail.gmail.com>
Subject: Re: [yocto] bitbake controlling memory use
To: alex.kanavin@gmail.com
Cc: Ferry Toth <fntoth@gmail.com>, Janne Kiiskila <janne.kiiskila@izumanetworks.com>, 
	Quentin Schulz <quentin.schulz@theobroma-systems.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 15:38:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58905

On Tue, 3 Jan 2023 at 16:24, Alexander Kanavin via
lists.yoctoproject.org <alex.kanavin=gmail.com@lists.yoctoproject.org>
wrote:
> Sorry guys, but this is venturing into the ridiculous. If you embark
> on building a whole Linux distribution, you need to start with the
> correct tools for it.

I mean, one can use a virtual machine inside a windows laptop if
that's all they got. But then you should provide them with a sstate
cache server, which fulfils the same role as binary package feeds on
traditional Linux distros in that case.

Alex

