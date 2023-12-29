Return-Path: <tyrocjl@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E53BC46CD4
	for <webhook@archiver.kernel.org>; Fri, 29 Dec 2023 05:51:24 +0000 (UTC)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
 by mx.groups.io with SMTP id smtpd.web10.140427.1703829080034024904
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Dec 2023 21:51:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=bAIywM4+;
 spf=pass (domain: gmail.com, ip: 209.85.208.172, mailfrom: tyrocjl@gmail.com)
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2cce6c719caso11764051fa.2
        for <yocto@lists.yoctoproject.org>; Thu, 28 Dec 2023 21:51:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703829078; x=1704433878; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=0lkvdSDzFLafs9ZrRczdr2FUz77MHgur8jD+LcBr/PY=;
        b=bAIywM4+GQB0vPlLv/vIR3fR+TaAphxLAzJWmuY0uBQcQoO5UFtLDj0fCfhYGHOxLj
         MLmkbjqLF8ffbQ5Vtc2KXv+fEd+uqWMdgLp96xiQAcuF3z2MCdwhQUsllOVCNMXH5gdc
         gYZ1xO5dz5eSxcteCgKe721Rd1Yl7P+zfEQfPTQJ1mEBVF7q4ed719Pd7GuY9yDYZbRy
         BWyq/rd2TmjRDSgl6ITDhufdom3wCFabAoQ+Iva+46ZksRdvSZ8ZHu7Bz3UHoJw6GSnZ
         ZxHdAZSTXmxZR3Ah0EN2i+lNTTs+25cZ4KuVNLliCoLjmwI7toZaiKkiw1iyGabH+U5D
         qc4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703829078; x=1704433878;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0lkvdSDzFLafs9ZrRczdr2FUz77MHgur8jD+LcBr/PY=;
        b=MB+iDWgvTmaPDtrAPXjb8nlYJBYnSlO06rZmqVjn+WsCEf8hwxPl1e2Br0JAHxhW1v
         EXB97HnpFMtmDDTArnHzaTaUBPohD896spV0+arMZX2Rvulax5E47+FO0iFilZWmWu1Q
         HbRCw+B1fA+rLpBQx1QxlU8mJkzPpA0kAQAriAeeBHkqJgICMuSPLauy2NIN19NMRIOA
         xMyUBbTmH8bseRhj/YL/H3MEEFRJ6oQqm9OLO4dwSG+LgqW9ozajrt59btLHt9HvwVN9
         /Po3ybT5YHJiO2lQ/weSvavN3KAa7P65ZzMeJgkABNPa75Y7i4Tw/rl+3n72CfAVNeVp
         f1aQ==
X-Gm-Message-State: AOJu0Yy5T92r79Q5Tr9B16obFP1LXupq2oW+SHuK3c0T4tKPyx+da1tj
	s+yLPWNytbzrJnwvmiarUdz/qnHq+VX/PXquYOhdHkmeVTGJ9Q==
X-Google-Smtp-Source: AGHT+IHNkSQ/6NfqqDC5+/b4XdKZ1PHOzPfyZfABWtOL7TCirR/J3pm9wqKRlV+NUMbjjPXuL/ftE8+cTblTZer5qbM=
X-Received: by 2002:a2e:8190:0:b0:2cc:7ba8:d756 with SMTP id
 e16-20020a2e8190000000b002cc7ba8d756mr5141503ljg.89.1703829077345; Thu, 28
 Dec 2023 21:51:17 -0800 (PST)
MIME-Version: 1.0
From: Gileon Chai <tyrocjl@gmail.com>
Date: Fri, 29 Dec 2023 13:49:56 +0800
Message-ID: <CANzPQ-CLdx1y_skPWVvQBSpZpYEQLGvOsNJn5smG2P0du=t7Cg@mail.gmail.com>
Subject: [yocto] How to generate a random number for all recipes?
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Dec 2023 05:51:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62046

I define a global variable in config like this:
HELLO=${@random_number_function}

Then I print HELLO's value in two bbfiles. I found that the value of
HELLO is different because the random_number_function was called in
every bbfile. How to fix it?

