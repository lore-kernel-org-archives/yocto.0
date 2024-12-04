Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A447FE7716B
	for <webhook@archiver.kernel.org>; Wed,  4 Dec 2024 04:52:30 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
 by mx.groups.io with SMTP id smtpd.web10.6846.1733287945205307966
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2024 20:52:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=QpWCPPTi;
 spf=pass (domain: gmail.com, ip: 209.85.208.42, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5ceb03aadb1so7581320a12.0
        for <yocto@lists.yoctoproject.org>; Tue, 03 Dec 2024 20:52:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733287943; x=1733892743; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xSY+zQlH9GK8Bl1dmwKF1xLNTAI9Ddqei3QUjm5x058=;
        b=QpWCPPTir6E+eED0EQDpSfIs4HokAQ2Suhn2uCESKfmQ+es58OAtZ592yOF6eBDYpF
         MbcyryGxz4z6yRQIUJg8TNq5IDZd7wTJLWz/cPorQlN9UxprPnGzDfn7KrVbXDnMpPoW
         vDBnLx4Uxc7Ph7bMJU8JZRkOafQ+/oGFu//rfMd3fNHem4Be5nGe60i2vG1cHw0n5YHU
         bgClfevK+cSgyfpXWBvDawp12A9wSdv32UBueS3PgGL7QoKsG9sso0msIYGuGC0Z7lUa
         f+ZTdQBEW2z3etUgPYxEpX2jjY4uaXK86YpNi7m2K+6rOJWWGluaA9HkmRatkBnZLs5/
         5QEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733287943; x=1733892743;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xSY+zQlH9GK8Bl1dmwKF1xLNTAI9Ddqei3QUjm5x058=;
        b=hPUTjeKCxslpB4gu1hLOWvxxxDzgMHHtpx78gsxv0b2DYkY75wzV3dSbvjSRFCcsRY
         8xu81g3pauyXpwdAgmAjPJfYSDGepmwUd2pOKYNfcpJWkfUgJW8HVU5TrmiCic4Dk6ZU
         7P0XO2PPaLSVLGGE6Zc4j/gOpv7qu88PED/LIYsOzWrOODmpP3Zjo25NSwqNediY2bWa
         PsateKD2EKBXZhR7oNTjQV9U+JHfzk121F5zj8DuDvL8R3An1X3xCg5B2ZonH7rw2cnr
         J4VkS+AF+rMKDBVXrE8OwSwwHfmXuQ0uNylFDHfW+tUZ/piJQJ1XgRZXHFUC+3NLhj1r
         +U/Q==
X-Gm-Message-State: AOJu0Yz9YFGMPk5ZghrfHATSOjZpnLxD2ZfuHIGDnA1OoL+jYfgmfsVt
	REWZnDpGABgblf/CM/BpnMubkH8+6l6umlY9lDnUGh/0Nblz9hhHekbBk6iUx766RQHBpf8Ms05
	Af9C0MNxMdIUo//GkzSc5bS2eVc9NYA==
X-Gm-Gg: ASbGncvrlkKuhI8q4LGdYX9qzKEDGYGj+3xzIwOWcxh+sKkogJKyj8XfAcNajhyFxEh
	uf88bzDy99wXcY3brc73PqaKi/DUfNvkSra+AB+NoCNdr6Kqw/Zb3Ra1b8zQuW/X+hQ==
X-Google-Smtp-Source: AGHT+IG1Yy2RnsEHvNoB2DEpw6cePpKWlhX/hc2wNANV5szCU8M5fwXRjxjBa7LkuorDszJwMo+EuGSrgnjoyjcrmsc=
X-Received: by 2002:a17:906:2189:b0:aa5:451c:ce2b with SMTP id
 a640c23a62f3a-aa5f7ee7467mr418760366b.48.1733287942983; Tue, 03 Dec 2024
 20:52:22 -0800 (PST)
MIME-Version: 1.0
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Wed, 4 Dec 2024 10:22:11 +0530
Message-ID: <CAPJWBnjZoSJcV4B+mDLzU=jbxOmkNsugvHpYRp-oEFeuuXTO-g@mail.gmail.com>
Subject: How to install files in root directory
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000022988106286a8cf8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Dec 2024 04:52:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64394

--00000000000022988106286a8cf8
Content-Type: text/plain; charset="UTF-8"

Hi guys,
I am unable to install my files, binary, etc in the /root directory. I have
searched the documentation and tried but to no avail.
Please share some snippet or recipe code for my reference.


Thanks
Hassan

--00000000000022988106286a8cf8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi guys,<div dir=3D"auto">I am unable to install my files, binary, etc in t=
he /root directory. I have searched the documentation and tried but to no a=
vail.=C2=A0</div><div dir=3D"auto">Please share some snippet or recipe code=
 for my reference.</div><div dir=3D"auto"><br></div><div dir=3D"auto"><br><=
/div><div dir=3D"auto">Thanks</div><div dir=3D"auto">Hassan</div>

--00000000000022988106286a8cf8--

