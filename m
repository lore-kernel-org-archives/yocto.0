Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93682C77B7A
	for <webhook@archiver.kernel.org>; Fri,  2 Jun 2023 23:49:41 +0000 (UTC)
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
 by mx.groups.io with SMTP id smtpd.web11.1549.1685749773372429841
 for <yocto@lists.yoctoproject.org>;
 Fri, 02 Jun 2023 16:49:33 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=gZ+MknLI;
 spf=pass (domain: gmail.com, ip: 209.85.219.169, mailfrom: ticotimo@gmail.com)
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-ba8a0500f4aso2849115276.3
        for <yocto@lists.yoctoproject.org>; Fri, 02 Jun 2023 16:49:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685749772; x=1688341772;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=DZMeNMXQxLzXqiJaCHhNV3pJs3D0ChITFTLmSSx3B2Y=;
        b=gZ+MknLIG/XyqdWG0BeqXZKM62wi6cDze8JF9P823mMQBmOmInQCqKPfA/5dlDEzWl
         GMbZEy7meg33+wJW2U0IxGNUlxLf1gn5BG6KgG2cFiLI7gk9rsel1Hsr/uMdvzjXD0Si
         0TrZ99/xwSgL6TF1AAH+zce3mVSTfsS5l9BT5LrjfI/KuD2zUPBlv2iHRpv6gJfzpmiv
         5RSPhDFLweiP91CEViVt7bHOJ4QGt+kbbz9Ec81uyI+xa9z53/DNf1c87qBksFgKohPF
         MhShi3EbHH9pkDpeSqjOPk400p4nJvOWwJOshpZGNR3jWfnhnTMwx1dphGdrZEmCsceg
         iA3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685749772; x=1688341772;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DZMeNMXQxLzXqiJaCHhNV3pJs3D0ChITFTLmSSx3B2Y=;
        b=LEBCTSLDFAl8PedgNGxhqzuMKgFUhM8T41D5PcZ2FF7DQRMqTr8RMDtvFwtNlNxqY/
         2zxbZXnlsigJoqk4ddYjq7NGBCvJFIHfNMcIRKO/f5WuITztPjXU92i782cbLCSzBZdz
         1/D5769IqPNpuT44PM9JMbTHTZIB/18J0P1vFiFCR8Cg4gn8cYa77Zi71cJbV9W4iLuL
         KDJX5ABVnZ93doUhMexyRiuaybnuHC2f21fCd2qzrKmikx2AJ1cjlcFlCHkKCIMVp+6T
         SOU3RH8ilpdDK4KxC3UcxHH+lJDp1JYeQa/slqubO33DSFv+FciNOmbh4IibZrpTM/yF
         le7A==
X-Gm-Message-State: AC+VfDxJ643ix1DqXhTSFpZjuS7V3XgU7RmvOHP1L1/sbL4/1JwOziMv
	3C1DRa3/OFbjzfIrADRHfZ/CyyS+heo/rNZjLbiVYxWn
X-Google-Smtp-Source: ACHHUZ77FJt9yJ7PB9YO/8ARwfgWpD7duLWN+E+9I+tqg5eXj61O405RgWkcwX8TKmf7QIePRZc4KfybovoPblqyYB0=
X-Received: by 2002:a0d:d954:0:b0:561:e9f0:924a with SMTP id
 b81-20020a0dd954000000b00561e9f0924amr1584571ywe.28.1685749772078; Fri, 02
 Jun 2023 16:49:32 -0700 (PDT)
MIME-Version: 1.0
From: Tim Orling <ticotimo@gmail.com>
Date: Fri, 2 Jun 2023 16:49:20 -0700
Message-ID: <CANx9H-DsS9GObR2+KAuM2pnecvsfpaUVQ2sc3h2Qzb9MWtDeYw@mail.gmail.com>
Subject: [auto-upgrade-helper] Should AUH send patches in-line instead of as attachments?
To: "Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>, 
	Alexander Kanavin <alex.kanavin@gmail.com>
Content-Type: multipart/alternative; boundary="0000000000005851de05fd2e3488"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 02 Jun 2023 23:49:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60167

--0000000000005851de05fd2e3488
Content-Type: text/plain; charset="UTF-8"

In the `b4 shazaam` workflow, you cannot consume patches from AUH emails
because they are sent as attachments. This means a maintainer must first
download the patch from an email or wget it from a lore.kernel.org copied
url.

Before I go implementing something that might be unwanted, is there a
downside to sending AUH generated emails with the patches in the normal
`git send-email` type approach?

Regards
--Tim

--0000000000005851de05fd2e3488
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">In the `b4 shazaam` workflow, you cannot consume patches f=
rom AUH emails because they are sent as attachments. This means a maintaine=
r must first download the patch from an email or wget it from a <a href=3D"=
http://lore.kernel.org">lore.kernel.org</a> copied url.<div><br></div><div>=
Before I go implementing something that=C2=A0might be unwanted, is there a =
downside to sending AUH generated emails with the patches in the normal `gi=
t send-email` type approach?</div><div><br></div><div>Regards</div><div>--T=
im</div></div>

--0000000000005851de05fd2e3488--

