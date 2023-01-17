Return-Path: <whuang8933@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B5A8C54E76
	for <webhook@archiver.kernel.org>; Tue, 17 Jan 2023 19:26:36 +0000 (UTC)
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
 by mx.groups.io with SMTP id smtpd.web11.207042.1673983590983816968
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Jan 2023 11:26:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=NfA/x5rH;
 spf=pass (domain: gmail.com, ip: 209.85.210.178, mailfrom: whuang8933@gmail.com)
Received: by mail-pf1-f178.google.com with SMTP id x4so20209515pfj.1
        for <yocto@lists.yoctoproject.org>; Tue, 17 Jan 2023 11:26:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OxtqMcGsmErTxOn/kxfVwHC3x6DyPui8eGe037LVOcI=;
        b=NfA/x5rHrwjDlCaXJOKdgB0LqGCq3uzYbIMijvZPtt8SsafZyqeMT69O88pnFiE3YG
         W1J4HGllevcp643ocDW/5QQTTl+tniGX7/U21Le03CL4ceNLUf1ckZclxwh4Ou5YP0K3
         T4hn5Yes4Cf9IiKoqK6LGkelVWyjrpo+y4xscyWHGN0gPEruoB5jVC6/0Ds7DsHzXrY1
         z3JikFTd/rqOQPaPxEw4fOcu+88TDOfI27PNIoVVOyQ6eYJsMpiRd2aMGwM4RyOUxXqr
         Ww2fUkDd/6F8RhqbSwkgp2nvOf+aAGCrgceW4zRHF4WlUjSs+X7psHt0NIxX/YiCU9oL
         AAuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OxtqMcGsmErTxOn/kxfVwHC3x6DyPui8eGe037LVOcI=;
        b=S7ioMrHkgY4JlTmGKnIOsKpS1qaZHgWtRYN1FCgmPkNpSmJgzxT+IZV53OS7bFCHt9
         eoK65Vod3T80VcvtFutJm3/usd7/NXweCYkI1VkL+bswPMzy5fAvGDOuvbWibCDQACdE
         Pv/l1JVsQt/ccPQk7p2h03hHgmcQjIlLyjs0rWGfqo36Qmo4uudZm/5w8X+c/qhTYXR4
         16cUYdoIWchTZgDMAEWIlIc7MWfyjvbxZVAAqm3Bu4yP2DzH6fCis5ZRJDmhCUagWbdO
         kh5l/mzX/oeDqxqSQVarivZJPmgK2R+tqqjZBXukNICy1OjVl59uZHlPUbkUBh//9CH/
         APCQ==
X-Gm-Message-State: AFqh2kq+jnMkOIwDF2j+sCL2g5klcEmeh3w/Dhn3t/NtEuGBA2vs0x2M
	EQcf+ZOy5UXPtUETK5OHC+eWvvZTMtStK9DW4Gc=
X-Google-Smtp-Source: AMrXdXu6Tmz1rWegaZ5wzY2HS+STJJIs6oBhDT/Gkv+Keu0Zlc3gJtlLODB0E6A1HBJURR6eG2AQOZYZNwMTlfjm/o0=
X-Received: by 2002:aa7:8493:0:b0:58d:8e53:7ce1 with SMTP id
 u19-20020aa78493000000b0058d8e537ce1mr423505pfn.76.1673983590415; Tue, 17 Jan
 2023 11:26:30 -0800 (PST)
MIME-Version: 1.0
References: <UJ70.1673979468308754075.EgUP@lists.yoctoproject.org> <CANNYZj90RhVw_EKkOZcz1vsz+DjcihwWKtrMygt+F1t6PqsaMw@mail.gmail.com>
In-Reply-To: <CANNYZj90RhVw_EKkOZcz1vsz+DjcihwWKtrMygt+F1t6PqsaMw@mail.gmail.com>
From: William Huang <whuang8933@gmail.com>
Date: Tue, 17 Jan 2023 14:26:19 -0500
Message-ID: <CADa-vC31UPSh1ymwvbft9DQinefR+r-DK_WPzPMtxoJmydvz-w@mail.gmail.com>
Subject: Re: [yocto] Possible to replace gcc-runtime libraries & libgcc #gplv3
 #yocto #llvm
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Jan 2023 19:26:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59009

Thanks for the response!
I did try googling the interpretation of the license exception but
there are always back-and-forth debates on the issue.
Anyways, consulting with the legal team came back with the inclusion
of these libraries would still trigger the "installation information"
clause. For this reason, I'm investigating the feasibility of
replacing these libraries completely.

On Tue, Jan 17, 2023 at 1:39 PM Alexander Kanavin
<alex.kanavin@gmail.com> wrote:
>
> The GCC exception frees you from having to fulfil the terms of gpl3 in al=
most all cases. Links with details are easily obtainable with google search=
.
>
> Alex
>
> On Tue 17. Jan 2023 at 19.17, William Huang <whuang8933@gmail.com> wrote:
>>
>> Hello all,
>> I'm in the process of generating an image without GPLv3 software. I have=
 removed everything but the gcc-runtime and libgcc libraries. These are gpl=
-3.0 with GCC exception. I'm not sure how feasible it is to remove these or=
 replace them with llvm replacements. Just wondering if anyone had been dow=
n this path before and if you can share your experience that would be great=
!
>>
>> Thanks
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#59007): https://lists.yoctoproject.org/g/yocto/messa=
ge/59007
>> Mute This Topic: https://lists.yoctoproject.org/mt/96336692/1686489
>> Mute #gplv3:https://lists.yoctoproject.org/g/yocto/mutehashtag/gplv3
>> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
>> Mute #llvm:https://lists.yoctoproject.org/g/yocto/mutehashtag/llvm
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@=
gmail.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>

