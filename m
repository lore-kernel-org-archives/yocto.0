Return-Path: <joel.winarske@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08046C636D4
	for <webhook@archiver.kernel.org>; Fri,  3 Feb 2023 16:41:21 +0000 (UTC)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
 by mx.groups.io with SMTP id smtpd.web10.15841.1675442472007405811
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Feb 2023 08:41:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=OaCIV2NH;
 spf=pass (domain: gmail.com, ip: 209.85.217.48, mailfrom: joel.winarske@gmail.com)
Received: by mail-vs1-f48.google.com with SMTP id j7so5921353vsl.11
        for <yocto@lists.yoctoproject.org>; Fri, 03 Feb 2023 08:41:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YXWYv1GoXKZcOAIHnhId+8Nc+hinmHpAWTdwTIoueJo=;
        b=OaCIV2NHV1MuVsY5KcmkTHILyiseP+vzk4gK9KJFl/Pb8jiqaVabx6agcb3n0NYTKu
         QCOxAeydZ9wOvaFHt953m9fythv+AZMmqkOadmLipI1U7hvk8sV1JMS+xt1epbucUWPo
         hUUqfWIwt2ntcs+ilWHjMwelIZihlydd70wcQ1D3CTktCn3HO4vZuJAjX2noRq22647c
         g0DBQgSRhDcJcy/9tCxcZmvC3o0x/KLq5BH84raw7AaLBg99hsZe14bxeBPNYhTEkCaD
         e5Mzjm5OJLelNjtq6ufZz8Z8clff0KDxoT2o722Jmh2h0V/8hYjTzCuOYt40pflbp7NE
         PHUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YXWYv1GoXKZcOAIHnhId+8Nc+hinmHpAWTdwTIoueJo=;
        b=perwxwmcWtNph0AK4pwL4IjHawk6cOz/y8nPg++Y/yjyTgblNOJlHvC4RCQFsSwSV0
         TBYAy3vJxvAXATlxrjBsWLETVaCbRdFisMNliQKskYd6Cma8fqBwZIVziOs8G7pYFAPV
         p3sxCAmdTG/n53QRcW4gHg7iHHwLGOrplGgP1/rUUn2LdwB98Jv9Afqmg9+/YPsNt0iE
         qJd/RRRDWRdSE37w9bU6wR25uzFnYUtbsNaW7PQ5cu5oGeSzwwqoeDITinexhJeN3gLT
         i2dNJBd2r2ZyjUdjc0xwWQN3sUbNoU+sZtY+9qcIbGAxDjoe1ejMex9/OUv2MjE6PeKU
         WNFw==
X-Gm-Message-State: AO0yUKWahJyL7lu79c4VZT8Qo0CLo88kjcRh1B5yI7tgx5b26uFwMUCe
	1ErST2K6aDpUP8WPl8Ub4DLEQMeguEy5H+51w7s=
X-Google-Smtp-Source: AK7set/GW7EZP8ggNlGZUkDmlBUIbpbNWZJLPc7YdcCLoaxS9C00oS+qaNabZ8RQadE2aY0jUFDBw7L4kg53BBLhbEU=
X-Received: by 2002:a67:ce18:0:b0:3e8:de1b:53f1 with SMTP id
 s24-20020a67ce18000000b003e8de1b53f1mr1584386vsl.60.1675442470878; Fri, 03
 Feb 2023 08:41:10 -0800 (PST)
MIME-Version: 1.0
References: <CABKMkPKaoqM8U0CShdQxRk+a6iYWNqqd-ADuP9_z==x9ZW31_Q@mail.gmail.com>
 <20118.1675408692328976766@lists.yoctoproject.org> <174052FEBB286E1B.4349@lists.yoctoproject.org>
In-Reply-To: <174052FEBB286E1B.4349@lists.yoctoproject.org>
From: Joel Winarske <joel.winarske@gmail.com>
Date: Fri, 3 Feb 2023 08:40:59 -0800
Message-ID: <CABKMkP+Z=3FSNGxbcVbrEtw2wvdJ07EbDtFSiW+tCUzn-iFGDg@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi] Is Preempt-rt still supported in
 master / latest releases?
To: joel.winarske@gmail.com
Cc: Carles.SoleMendi@de.bosch.com, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000051865c05f3ce59ac"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Feb 2023 16:41:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59160

--00000000000051865c05f3ce59ac
Content-Type: text/plain; charset="UTF-8"

I created an issue:
https://github.com/agherzan/meta-raspberrypi/issues/1147

I would use Kuzemko Aleksandr's solution in bbappend until there is support
in meta-raspberrypi.

--00000000000051865c05f3ce59ac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I created an issue:=C2=A0 <a href=3D"https://github.c=
om/agherzan/meta-raspberrypi/issues/1147">https://github.com/agherzan/meta-=
raspberrypi/issues/1147</a></div><div><br></div><div>I would use Kuzemko Al=
eksandr&#39;s solution in bbappend until there is support in meta-raspberry=
pi.<div class=3D"gmail-gs"><div class=3D"gmail-gE gmail-iv gmail-gt"><table=
 class=3D"gmail-cf gmail-gJ" cellpadding=3D"0"><tbody><tr class=3D"gmail-ac=
Z"><td class=3D"gmail-gF gmail-gK"><table class=3D"gmail-cf gmail-ix" cellp=
adding=3D"0"><tbody><tr><td class=3D"gmail-c2"><br></td></tr></tbody></tabl=
e></td></tr></tbody></table></div></div></div></div>

--00000000000051865c05f3ce59ac--

