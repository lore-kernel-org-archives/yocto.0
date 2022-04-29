Return-Path: <alessio.bogani@elettra.eu>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBEBFC433EF
	for <webhook@archiver.kernel.org>; Fri, 29 Apr 2022 11:52:47 +0000 (UTC)
Received: from bacon.elettra.eu (bacon.elettra.eu [140.105.206.12])
 by mx.groups.io with SMTP id smtpd.web08.8998.1651233166165729494
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Apr 2022 04:52:46 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: elettra.eu, ip: 140.105.206.12, mailfrom: alessio.bogani@elettra.eu)
X-Envelope-From: <alessio.bogani@elettra.eu>
Received: from zmp.elettra.eu (zmp.elettra.trieste.it [140.105.206.204])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bacon.elettra.eu (Postfix) with ESMTPS id 94B4341D69
	for <yocto@lists.yoctoproject.org>; Fri, 29 Apr 2022 13:52:36 +0200 (CEST)
Received: from zmp.elettra.eu (localhost [127.0.0.1])
	by zmp.elettra.eu (Postfix) with ESMTPS id 860D214308BA
	for <yocto@lists.yoctoproject.org>; Fri, 29 Apr 2022 13:52:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by zmp.elettra.eu (Postfix) with ESMTP id 70B5A14308BC
	for <yocto@lists.yoctoproject.org>; Fri, 29 Apr 2022 13:52:36 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zmp.elettra.eu
Received: from zmp.elettra.eu ([127.0.0.1])
	by localhost (zmp.elettra.eu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id xyZEQXQCeorY for <yocto@lists.yoctoproject.org>;
	Fri, 29 Apr 2022 13:52:36 +0200 (CEST)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com
 [209.85.219.181])
	by zmp.elettra.eu (Postfix) with ESMTPSA id 5501C14308BA
	for <yocto@lists.yoctoproject.org>; Fri, 29 Apr 2022 13:52:36 +0200 (CEST)
Received: by mail-yb1-f181.google.com with SMTP id w17so14002001ybh.9
        for <yocto@lists.yoctoproject.org>;
 Fri, 29 Apr 2022 04:52:36 -0700 (PDT)
X-Gm-Message-State: AOAM530IKFOl7owLSCFMY+iBidGQyjREMppk2AABQiTK/DmqwxbtzLw2
	0QbxVYp6t9NAMYditlxHYb3v7cMCoA0GvB1AuB4=
X-Google-Smtp-Source: 
 ABdhPJxsgAahJ94MAc8aAividVGpc2nF105DLwoNHjlgE3771gZGVvG47HE+cm1n1YmjPbp6xCQhBuACKj+j/6tehd8=
X-Received: by 2002:a05:6902:154d:b0:649:3455:e3e1 with SMTP id
 r13-20020a056902154d00b006493455e3e1mr1137371ybu.635.1651233154960; Fri, 29
 Apr 2022 04:52:34 -0700 (PDT)
MIME-Version: 1.0
From: Alessio Igor Bogani <alessio.bogani@elettra.eu>
Date: Fri, 29 Apr 2022 13:51:59 +0200
X-Gmail-Original-Message-ID: 
 <CAPk1OjHyko81NFi0FtGruE5Z8TvUiwsdyT9aOyKRSv5886Guvg@mail.gmail.com>
Message-ID: 
 <CAPk1OjHyko81NFi0FtGruE5Z8TvUiwsdyT9aOyKRSv5886Guvg@mail.gmail.com>
Subject: OS-less SDK
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
X-elettra-Libra-ESVA-Information: Please contact elettra for more information
X-elettra-Libra-ESVA-ID: 94B4341D69.A8DDA
X-elettra-Libra-ESVA: No virus found
X-elettra-Libra-ESVA-From: alessio.bogani@elettra.eu
X-elettra-Libra-ESVA-Watermark: 1651837959.45908@8ESVCmwpz9WkZvZ9IVkslw
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Apr 2022 11:52:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56953

Dear Yocto developers,

Is there a way to generate an SDK which contains the toolchain for
bare-metal systems (i.e. MCU without operating system)?

Thanks in advance!

Ciao,
Alessio

