Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1855EFC6166
	for <webhook@archiver.kernel.org>; Fri,  2 Jan 2026 23:52:22 +0000 (UTC)
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.16434.1767397936590978522
 for <yocto@lists.yoctoproject.org>;
 Fri, 02 Jan 2026 15:52:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=Lbf1gEt9;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.181, mailfrom: steve@sakoman.com)
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-78fb5764382so94884337b3.0
        for <yocto@lists.yoctoproject.org>; Fri, 02 Jan 2026 15:52:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1767397936; x=1768002736; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hLS30UbpD2++7USZdzBItp1sGQdACED56XCuecS6r4k=;
        b=Lbf1gEt9Kgroh+XZztEJ+aDVZrhJ1HowmhdmtmI+sJ73dkcs8GB8Ma3S1Te1kuQNfN
         cXqlrYEHtM1o4iO73ocQWqXTzKVMYz697hG/+vrBMYOXzDShAcjDaLsx06SQddoUiApd
         H81u+eIxZwrHYUk6lksEQfB+8zFFxBwQlw72fQBmwPRYjeufRDA9TMFZ2itlJxHJpXPq
         R70t6Q+E6+iemJh2o3Zb7l8tJjBlPJ/wjqTYmFMaC9uOj1eGARq07mWEX55LarLK29Mt
         yFqfUVi1DDtF4SPYzZlJUKdsD9OOf2shThUxI+LHn7bFGTTYEjeZZWvylhl7iimnkL8q
         DbWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767397936; x=1768002736;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hLS30UbpD2++7USZdzBItp1sGQdACED56XCuecS6r4k=;
        b=UoSSYs8N9YdJwVZJRy8id+Syr7/aj1lTBybGKXTQ0N4ub1Wi74rP9VYZzjmU2H/+Tz
         +qW5zWBFbxGPk0DjAbt+e4PktQuh6xa2Bd+yMLVgbC1R1GzVTcNdnZfC7qvnGmlbOg8v
         /+rRd38o+u9ByQ3yq7+BFBfSfqugwJ0fzeFsHBJbPcIdcdUWUgppmT9+u2F6DRfm0uRA
         TXaiGduxolUp/mZG8UCAjyvEcKT/B2fEsmqxOp71JtK1Tqkgj1+Ana1stlKLSTjKH6Cg
         YU0I9Kd3Lb1bfI4nq45uHaegRBMvEL2onnb7xsKZNvDXVrX65MuoEeC+PvGAXoYP+YE1
         P5lA==
X-Gm-Message-State: AOJu0Yw/jvuHNZvgt6Y73xnv8ZkDEz7rB7HaRflhWJRiLe5JScXBFsas
	JNCbcz/Zv2awt6y6qTcEt5YchOR6Axay46lLUVXIFC3EGXiiOOKaT3JWrS/tpEdvTpW291bEKaZ
	xuWpl7XHAMu7s7svEJzJpmNVGoW2NHDRTkJj6FcPChMGDY/aGsZAH
X-Gm-Gg: AY/fxX7lw/owAnw3W6bfUUrkpEV6IV8GSJlXNj0t2NQHfb1BVre8Bxn4rVMlcnVAeUF
	SzwK6qVpCAXIQ0rrzuPYipoVtS4weLdAv67vfDMq8Bz11WAtVRZPuF1QRZ3KSRrxUpaFrx4o6/q
	Mwht26aUL8i7PQ36ANgPMm/cFV9vv6nWJarjhblhFqIcrEk46/9gw7MavKG2vkMm05U9fCTCUxD
	7Jh5xdzBQY5dtdRkHgJplVkFi+1aBFpt7O1LBH7E9aSC0qbg88aDHJ0kH9at4Abc4Pmiv+TKG9R
	jykxq5+9kGAa8eQuCq85w2jvw/E=
X-Google-Smtp-Source: AGHT+IGprkF1EnCMPGHOiNyu0GPbVmWNNLc1KHI135RDG2SqxyOdpnkdkY1E9s+RukapAXOhl31LwrDfUGcEgGAXpnk=
X-Received: by 2002:a05:690c:6284:b0:78f:bede:57f9 with SMTP id
 00721157ae682-78fbede7429mr353050327b3.62.1767397935616; Fri, 02 Jan 2026
 15:52:15 -0800 (PST)
MIME-Version: 1.0
References: <0101019b80f7b70d-d05b6299-1830-45e3-8485-4a9d8975e890-000000@us-west-2.amazonses.com>
In-Reply-To: <0101019b80f7b70d-d05b6299-1830-45e3-8485-4a9d8975e890-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Fri, 2 Jan 2026 15:52:04 -0800
X-Gm-Features: AQt7F2o_2Wxt6zIwzD0FBSgqkg8KL_hFz4oPFmDSD9CRK4hVWK4_txEdEi2DEj0
Message-ID: <CAOSpxdY_RiATC3Ow7b+c0HZjYYD4Z3RkkOTY5WE+iFdMytzfyg@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-5.0.15.rc3)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 02 Jan 2026 23:52:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66130

This was an "all green" build, so OK to proceed with QA

Steve

On Fri, Jan 2, 2026 at 3:07=E2=80=AFPM Pokybuild User via
lists.yoctoproject.org
<pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> wrote:
>
>
>     A build flagged for QA (yocto-5.0.15.rc3) was completed on the autobu=
ilder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-5.0.15.rc3
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/2972
>
>     Build hash information:
>
>     bitbake: 8dcf084522b9c66a6639b5f117f554fde9b6b45a
> meta-agl: f6e9692bd2974dc390400e8ded06a381b057fa4a
> meta-arm: a81c19915b5b9e71ed394032e9a50fd06919e1cd
> meta-aws: f23599da431e566ecae7535b3c8240f3419af8ed
> meta-clang: 5c602337ea1a80fb7217eeda04e396cf90587dca
> meta-intel: 6fc37057c7f0293a2345e303588901889df8b937
> meta-mingw: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
> meta-openembedded: 2b26d30fc7f478f5735d514f0c1bc28f6a4148b6
> meta-virtualization: 17ac21e7d7f6f40a87618b22278b63bcfa14dbf2
> meta-yocto: e1363aa3333cda3a4ae4706ce6577b987ba3a815
> oecore: 6988157ad983978ffd6b12bcefedd4deaffdbbd1
> poky: 72983ac391008ebceb45edc7a8f0f6d5f4fe715c
> yocto-docs: d84d916d4fc505e8386693306b6a90b0064c0518
>
>
>
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#636): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/636
> Mute This Topic: https://lists.yoctoproject.org/mt/117049492/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

