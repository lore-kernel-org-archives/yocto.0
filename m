Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B230CCEE356
	for <webhook@archiver.kernel.org>; Wed,  9 Oct 2024 21:49:24 +0000 (UTC)
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
 by mx.groups.io with SMTP id smtpd.web11.29483.1728510555685864362
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Oct 2024 14:49:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=jkHI7f9F;
 spf=pass (domain: gmail.com, ip: 209.85.161.53, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-5e804f043b6so188337eaf.2
        for <yocto@lists.yoctoproject.org>; Wed, 09 Oct 2024 14:49:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728510554; x=1729115354; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hx5A2rPJn/Hap610nMmf3Cnckg/f6PyN92V/UzyW794=;
        b=jkHI7f9Fb3HyVFDXarmvZF+zZGJhwmXzknl5qUhrJ13wC/MwpXQJJMJSggtd+Y51g6
         wTix/jqBnPrJ+QLweSyDR01rG5337xZoYC72GqqPfVmfn+8NblLHowgA1EOPLh0FDgTR
         GPiNK6TPBii5pBnr8XGcJ/g8DVyX8DKqeup24CM+ljkqNDl2RmjNyql13zHvKvHFxf4/
         8sDd+HCmoXNIOVjpxgDBT2cyxmT4gmpDFBbt8hjPudhv7W05+yHzdPTVmw1/VDz0u02Z
         rfALaoPy+BwHby8qCp81QDuLXNaDg4uTJKTjvszkdp5JU1NZdi0b7GzR7YQMbrZGtQ9N
         pnUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728510554; x=1729115354;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hx5A2rPJn/Hap610nMmf3Cnckg/f6PyN92V/UzyW794=;
        b=VZPRX2UwmFzSK0uKeI+VcT0B7yyszBbd7WbWGAxflBg3WL15c7OkNn9bPOjwrpVmwE
         5Bc75F4/hySkEVrkDxWI047PV7ZoXyEjFjb6paRWLHT9QxAJfmjq1FaoLZ0wvu24ci9Z
         Ech0srkFRnVtQmjsu04f5aShpzT+99wg9eYLQyo3OMYHf4+GuAR1NgQPA542rRV+1vgY
         +WVI1YqMpgiDu6cVT2qL1CzJkTBDXLqtocFePfvkT/eD00N3hepHaHlpYJxLN9HRNEZZ
         zBLbUNcOO1PJnrLvQYVkC0nHQPuXxy3xQH8dXR50uyKjk3qz+ej7pvcsald0h2MXvH8d
         ZIlg==
X-Gm-Message-State: AOJu0YwcKP/TtW6uQThFAeELZc1UatlTF4PoVgj7QlB1dCnMOzbw0FnI
	5jjSzpycdbc9TvuV+zVo/0Eo1G1AEyZtQD8VukzlqB+S9oPsjpYL3rUbLrZSz4Pk5BOm0qCdpR4
	oEKphC4XMyt0LEhzE2PcxIC77m7I/TCGYUSQ=
X-Google-Smtp-Source: AGHT+IGGmCLB/pz31pfq7RB9VZAyH8wTqFOeX1mGkqZpzWtypMdOyT0ZF4NOYN1pL89lO+wnuOuV6Fy/PmlXTo08CA8=
X-Received: by 2002:a05:6870:171b:b0:288:29ae:c981 with SMTP id
 586e51a60fabf-2883450f883mr3307553fac.43.1728510554460; Wed, 09 Oct 2024
 14:49:14 -0700 (PDT)
MIME-Version: 1.0
References: <g2lc.1728458127767426477.BfIA@lists.yoctoproject.org>
In-Reply-To: <g2lc.1728458127767426477.BfIA@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 9 Oct 2024 14:48:48 -0700
Message-ID: <CAMKF1sr0asGXus8v9KiOJ_01uwxpFSDC3z_kA02ONK9BPecQ7w@mail.gmail.com>
Subject: Re: [yocto] #kirkstone #yocto [openembedded-core] openssh/sshd
To: yocto@lists.yoctoproject.org, jean-michel.papy@exail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Oct 2024 21:49:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63993

Thanks for reporting this issue here,
ssh-keygen typically creates private key files with permissions set to
644 (readable by owner and group). Which
could be too permissive for private ssh keys so changing the
permissions after creation is right thing to do your patch
looks like we need upstream too, something like below might work, if
it works please consider sending it as a patch to oe-core mailing
list.

diff --git a/meta/recipes-connectivity/openssh/openssh/sshd_check_keys
b/meta/recipes-connectivity/openssh/openssh/sshd_check_keys
index 606d1894b55..fae2bc5d16c 100644
--- a/meta/recipes-connectivity/openssh/openssh/sshd_check_keys
+++ b/meta/recipes-connectivity/openssh/openssh/sshd_check_keys
@@ -8,7 +8,7 @@ generate_key() {
     mkdir -p "$DIR"
     rm -f ${FILE}.tmp
     ssh-keygen -q -f "${FILE}.tmp" -N '' -t $TYPE
-
+    chmod 0600 "$FILE.tmp"
     # Atomically rename file public key
     mv -f "${FILE}.tmp.pub" "${FILE}.pub"


On Wed, Oct 9, 2024 at 12:15=E2=80=AFAM Jean-Michel Papy via
lists.yoctoproject.org
<jean-michel.papy=3Dexail.com@lists.yoctoproject.org> wrote:
>
> Dear Yocto Community,
> I made a small dev image, which is perfectly booting (on a Enclustra card=
).
> However when I tried to connect to the machine using ssh it failed (conne=
ction reset by peer).
> After a quick look at how the socket-based activation works and the syste=
md service dependencies,
> I connected to the machine via a serial port and performed the individual=
 program calls manually.
> I noticed that the sshd service requires the sshd_check_keys shell script=
 to be executed.
> This script creates host keys if they are not provided, and the private (=
and public) keys are generated
> with default permissions (644). The problem appears when the ssh program =
checks the key file permissions and finds them "too open".
> I tweaked the shell script by adding a line  chmod 0600 "$FILE" just afte=
r the line mv "${FILE}.tmp" "$FILE" and this hack works perfectly.
> So finally, I just created a patch which adds this line.
>
> I might be wrong, but I tend to believe this should have worked without t=
his workaround.
> Does somebody have an idea of what could be incorrectly set up (a variabl=
e?) or what should be done in the image to prevent this from happening?
> Thank you in advance
> Regards,
> JM
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#63982): https://lists.yoctoproject.org/g/yocto/messag=
e/63982
> Mute This Topic: https://lists.yoctoproject.org/mt/108904954/1997914
> Mute #kirkstone:https://lists.yoctoproject.org/g/yocto/mutehashtag/kirkst=
one
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

