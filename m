Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2242FC369D1
	for <webhook@archiver.kernel.org>; Tue, 22 Apr 2025 10:48:35 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
 by mx.groups.io with SMTP id smtpd.web11.36954.1745318912346691506
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Apr 2025 03:48:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TEa+vu8n;
 spf=pass (domain: gmail.com, ip: 209.85.219.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-6e8f06e13a4so59750846d6.0
        for <yocto@lists.yoctoproject.org>; Tue, 22 Apr 2025 03:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745318911; x=1745923711; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H21UydIUbDFi2D5d2Apjd+tXzeVqcMV6VlOqbY19Zm8=;
        b=TEa+vu8nRwRjt96nkcO6TDvkQc4bQkq3m9EhDJNJ0SH3PhRGJLvwbUnwDXdkKPyuhb
         mF/U/1W+WsyLmeVrCBS8HvQV0bxhTqp37jcrgmxv14NsH+Pv2RZjCZdDHSVBmL01jFBs
         S7edsekuvYuemZ93BPhKnvXOZO4UfeszGQudbeiezu0XCWczIXYqhpwNOJ6GsXpHt/0l
         2Qin+m0QzzT0L3v9ViGqJpxucu4howivk+aF2IjF3XCKaBUNbSi1Dh1rYyenPYtB8yRO
         tIROWKpTENmphiPWjDMxcGLJLyFGhRbJ1uDq0N0IrKBvlwziQ4Xhlec/M10Wb2sAzq18
         IAdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745318911; x=1745923711;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H21UydIUbDFi2D5d2Apjd+tXzeVqcMV6VlOqbY19Zm8=;
        b=lXcLaK3fP9Sln1rdCMy4SMmtfrYS6ydplBlflgBZCxqwIT8oOsl3t3vXkwEpd2VYvQ
         xXtl70AT8w4V9luELuR+2KmrgqpEu9BCjxdGJENXePMjyVym5hY38ATANhO3458qV8lP
         1TBHA6yCdjYqhPE5qWNVmNG0Vt4nn6FJsOaEIki56WnWrEA4SJSB9PKCJm5ey5sIQwpu
         sMa9lzrJD24Uta7K3cQXhBmizE9XGySCbp7oIrBg3GIuH2M79xIM/cy7FMoHYAhlMh5I
         W5JOFGi2NQVN7gsKoon5uZgA7XXFj7DICWFQ3mXafyIm4pFuycZt2T3PLXWvgVv6csoX
         0ouw==
X-Gm-Message-State: AOJu0Yz7UtuqAApLJagLljzMaDERSNP9yoSucY17viTuHNPwxsn0BklR
	QUINqfnCbDfFgWA3/o4iL91F04waUiGC6vw25rM/oV2LTt8f8xi7oi0/uLiye5bGUElxAR4Xngc
	F+rw4ConSwk5vGVFBKc10i7Neq6bUAw==
X-Gm-Gg: ASbGncuvA16c7yqnoe7+Zr6MSF7hI87o+FCMUQCh7bJ42xQ9poabmbqU+Q11THs2H+8
	ifQsrtOUUi89rz8YSkDdhsHZD1DRsn/Hn2+81N9kleAq/UqcYDlHvtckTOGiJ1FYptHro57SR+j
	N1GfOrvgVn0/1H8CJInARy8aaSX+C8/wbmrQRGrYMFzTtYRjKQJ9clhP69
X-Google-Smtp-Source: AGHT+IGTp0CGnv8dKFM2BdomhJt7ogK2dYlwF0jiiZSOkxL2zVgZDDz3ETL4npBtJ7TxOnquakkFul3V64eI4foSI0k=
X-Received: by 2002:a05:6214:19ee:b0:6e4:5971:135d with SMTP id
 6a1803df08f44-6f2c27b207emr281540936d6.18.1745318911380; Tue, 22 Apr 2025
 03:48:31 -0700 (PDT)
MIME-Version: 1.0
References: <1572b957-1e36-442b-885f-a4d575afcca2@denx.de> <918.1717162801361364915@lists.yoctoproject.org>
 <a738afa77c76f1214e8cee06f3915931d7b13589.camel@linuxfoundation.org> <AM8PR10MB4625642EA199728C718B868BABBC2@AM8PR10MB4625.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <AM8PR10MB4625642EA199728C718B868BABBC2@AM8PR10MB4625.EURPRD10.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 22 Apr 2025 12:48:20 +0200
X-Gm-Features: ATxdqUF2Mntx0AJgYM9PMI3nKTwhj6Gk4gabXqzjOFJl8mjc5wAcBllGmUBMC3I
Message-ID: <CANNYZj_h6TW6+A4S_CM-JVXXgxNzfw+JfRRbRzz0zn0OcKdjJQ@mail.gmail.com>
Subject: Re: [yocto] GPL License Compliance - Automatically detect linking
 against GPL libraries
To: yocto@lists.yoctoproject.org, fabian.hanke@bosch.com
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	"vinhtruong.huynh@stud.h-da.de" <vinhtruong.huynh@stud.h-da.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Apr 2025 10:48:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65224

On Thu, 17 Apr 2025 at 13:14, Hanke Fabian (DC/PAR) via
lists.yoctoproject.org <fabian.hanke=3Dbosch.com@lists.yoctoproject.org>
wrote:
> I would like to pick up this topic. We want to invest more time and effor=
t trying to solve the linking compliance withing Yocto which we would also =
be very happy to contribute. @vinhtruong.huynh@stud.h-da.de  wants to resea=
rch and implement a solution as part of his master thesis.
>
> We were wondering if there is some further documentation or helpful mater=
ial about the architecture design of bitbake? Is there someone Hunyh could =
contact about this topic?

You don't need to study bitbake's architecture design for this. What
you need is to:

- learn basic yocto (e.g. set up a build and run it, and learn what is
happening and where inputs and outputs are)
- learn the particular tasks that are relevant to the subject:
package, packagedata, package_qa, package_write_*, what they take as
input, what they do, and what is their output and where it goes.

Then you can start thinking about extending them with the linking check.

Also, let's state this upfront: this is an open source project, and no
one owes you answers. Source is available, study it, and ask specific
questions here in the public forums. Never direct them at particular
people involved in the project, until they had previously agreed to
help you, or you are in a commercial support contract with them.

Cheers,
Alex

