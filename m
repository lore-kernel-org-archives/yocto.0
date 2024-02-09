Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71D6FC48297
	for <webhook@archiver.kernel.org>; Fri,  9 Feb 2024 08:58:15 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web11.7465.1707469087606017856
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Feb 2024 00:58:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kLEFi+NW;
 spf=pass (domain: gmail.com, ip: 209.85.208.182, mailfrom: marek.belisko@gmail.com)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2d0aabed735so9825701fa.0
        for <yocto@lists.yoctoproject.org>; Fri, 09 Feb 2024 00:58:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707469085; x=1708073885; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=4Md1mBLbXBm8TdGQhF5W1JGixqDibLDUARDL0ur9lcw=;
        b=kLEFi+NW9WJRKoQ0Z87sBV/4bTksWQ2YAiB8Rwl5DJRZxsnqo2og275pYK3alTrHo9
         qvmP0E/eD2vZZ8ymeAvZdw5RVHDrzbxCxW/KzmEBEZMPeTU6nfEtlG+tiivDBNkz/IWM
         zE+czKKw8YizwFUyhNassNpJQnAsUVbx1V+ONfFIWEk6T7F4oLACGtBHXs3Lvi8v44mW
         TTbKVQWf//v84DHHbgYhxIhtW2TSjItVZLVcEY07LOlBdOt/6y/A4IM8/sHS/7PnS/Ln
         21S93Fbgd5LmUC8l8tl//2Js10777qZR4+knql0bT4X/T3dfC1guJKjb6avPOl7W6+0O
         2QJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707469085; x=1708073885;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4Md1mBLbXBm8TdGQhF5W1JGixqDibLDUARDL0ur9lcw=;
        b=hDvbn+P7P4QPTkFRWC6gyZpAKhfGnQe9vnscfnEhkwjFwQoojH1c3uyyz4tjZ/W3qe
         5rBjk9WbHwhlIZZNFCIIaHjfVbVc+taKMu01m15517CoUdl98dVVTUNts/nQfqZizxym
         rny6b2gYveY9MR5utOLPmIRdP0AWZC5u+JM4SM3qPLPmsyGW++Yz3YhUf3QNCytzq628
         +1II02q3DNLeIzk8HFmcJ4c+ANYlE/6RCuJAia4rp3DLvf3lbBJBvDxhztEFls1DCoQg
         MgzZIhKm/vMIcT0IcnXpvO07pUs9aO9jrZxHBhe5aLrXVExkynjCSWBFl0TTjhMYtkrM
         YyxQ==
X-Gm-Message-State: AOJu0YzsQYUBuKEuHabvi+5HhHfHqM1IZd9Drvk+efDuKHfKkH9tR3U/
	f5CTIEtrFhqKFj6uQu2ee/WDU3Xn2rBpKRKcgDdgVeopRWzERCe4jJh7ooAXNnKFajuuvJbaQcJ
	l+7SllvdlLP6QAb3AnrYkreCAU2LjpKEB
X-Google-Smtp-Source: AGHT+IHGIu5L75HOQeo7qZNFDP6UzfZHQpSo6Fkf98Hhnajhl2nNw5Gh5i6j4Sslr+H+6VdMZ+gCxDQLvS6ChBCyMR4=
X-Received: by 2002:a2e:86d1:0:b0:2d0:cd7c:6271 with SMTP id
 n17-20020a2e86d1000000b002d0cd7c6271mr853638ljj.38.1707469084972; Fri, 09 Feb
 2024 00:58:04 -0800 (PST)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Fri, 9 Feb 2024 09:57:53 +0100
Message-ID: <CAAfyv34eGKsP-EvTxO4=ERjZL5=ahUMuDq_JHGgw3903gRP-0g@mail.gmail.com>
Subject: cve-check output display
To: Yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000465aa60610ef20c8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 09 Feb 2024 08:58:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62442

--000000000000465aa60610ef20c8
Content-Type: text/plain; charset="UTF-8"

Hi,

Does there exist some tool for viewing output from cv-check feature?

Thanks and BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

--000000000000465aa60610ef20c8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Does there exist some tool for view=
ing output from cv-check feature?</div><div><br></div><div>Thanks and BR,</=
div><div><br></div><div>marek<br clear=3D"all"><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature" data-smartmail=3D"gmail_signature">as simple and primitive as pos=
sible<br>-------------------------------------------------<br>Marek Belisko=
 - OPEN-NANDRA<br>Freelance Developer<br><br>Ruska Nova Ves 219 | Presov, 0=
8005 Slovak Republic<br>Tel: +421 915 052 184<br>skype: marekwhite<br>twitt=
er: #opennandra<br>web: <a href=3D"http://open-nandra.com" target=3D"_blank=
">http://open-nandra.com</a></div></div></div>

--000000000000465aa60610ef20c8--

