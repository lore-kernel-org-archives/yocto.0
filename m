Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.10482.1580652552613913128
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Feb 2020 06:09:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gv234WYu;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: alex.kanavin@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AAE0DE014B6; Sun,  2 Feb 2020 06:09:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,MIME_QP_LONG_LINE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (alex.kanavin[at]gmail.com)
	*  0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.128.43 listed in list.dnswl.org]
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C56BE00726
	for <yocto@yoctoproject.org>; Sun,  2 Feb 2020 06:09:10 -0800 (PST)
Received: by mail-wm1-f43.google.com with SMTP id p9so13077565wmc.2
        for <yocto@yoctoproject.org>; Sun, 02 Feb 2020 06:09:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=tc/UD15kWWSAkLoZSr4ERU48FdXE/DENC89DmlP2YFM=;
        b=gv234WYuu3qiJ04M0NDKdy2HlVUt7xAxTCFm5gHr5nIthr6JUZkap9mzCCAI8AauOv
         mnvsm+eYjH1jruFoe6yBw1DIjEu/ppYPdNOMmzbBXo/UrPSfyULliiEG9wWyfxyKsxBn
         WOfDYI2ANbFCpc/iaX5JxqTy2jMThFIx8Wl6Rv7c259D32bKv9HM1k6ISCv144M+qsBI
         go3xaof8pzkgzQgdTwyiI+mXRqv7tUeuqWuch64KXSZXXuNJ65f2QiE97wHl2M4IiyDo
         ay5kha02xOmICSgW8vDjwMkvjTsLTrUIh9C7jx+orYB9EXgOxnhchAoNGYsV+ZZiTXBQ
         V2fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=tc/UD15kWWSAkLoZSr4ERU48FdXE/DENC89DmlP2YFM=;
        b=Bt94s3AzMoZtz1Mr/SRMu4BE7g5jeXJ6LIPkXJkUfwGwf6GEIdzWAvPF3HcMNYW/v1
         AhXLT9Kts7Q93QPPHj3SLFXqdPZe+ORGe+JqkVS5xRzvG1pNMqo6C3TpA0JOPgP6gCQ0
         jaRyEBwO8W/TAmMF0J4wzBqLz7235sjvm+DaLxYk01Ux2osqZuFPy+o/Y34dmbLGr96g
         R6EyYfAQg30BIqUW59XxZGzTu6BjWy+X9QsdfOiGsI3JEvvEzXZ0Jbc2C0v45HfByfoj
         oaPHgQs43ZaVrK3Lm8INstTxuURDGzwj2l0vCGZGh3un7Is7gvCzhqNmkN4V4fFisdmw
         TCwQ==
X-Gm-Message-State: APjAAAX4wS8bMdyYc8z6hG7g3VT9iUpGODNDYPeXb6fkYUzA4zP/E4+C
	h1AK3m5/pMbY4uchvGYgfrFc6v62
X-Google-Smtp-Source: APXvYqzlbRHe02Uoi1jnhQRh1eMWmjRrbNK7ueE+Ago+EZLjISmy/sK45JYosUShOFK5ZpWsXeNKug==
X-Received: by 2002:a1c:6588:: with SMTP id z130mr23476979wmb.0.1580652549165;
        Sun, 02 Feb 2020 06:09:09 -0800 (PST)
Received: from ?IPv6:2a01:598:b10d:af82:9dad:6022:9130:4cb4? ([2a01:598:b10d:af82:9dad:6022:9130:4cb4])
        by smtp.gmail.com with ESMTPSA id a1sm20909162wrr.80.2020.02.02.06.09.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Feb 2020 06:09:08 -0800 (PST)
Mime-Version: 1.0 (1.0)
Subject: Re: [yocto] Yocto Project Status WW04'20
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
X-Mailer: iPhone Mail (16G102)
In-Reply-To: <20200202132840.GA6805@localhost>
Date: Sun, 2 Feb 2020 15:09:07 +0100
Cc: Stephen Jolley <sjolley.yp.pm@gmail.com>, yocto@yoctoproject.org
Message-Id: <5FE54648-B93A-4C10-A41B-22593E37625D@gmail.com>
References: <086201d5d5f4$307b2150$917163f0$@gmail.com> <20200202132840.GA6805@localhost>
To: Adrian Bunk <bunk@stusta.de>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Why separate them? I=E2=80=99d rather have newbies and experts in the same =
room.

Alex

> On 2 Feb 2020, at 14.28, Adrian Bunk <bunk@stusta.de> wrote:
>=20
>> On Tue, Jan 28, 2020 at 08:01:23AM -0800, Stephen Jolley wrote:
>> ...
>> *    We have created a "documentation" list and a "licensing" list on t=
he
>> yocto project mailing list infrastructure. We believe these topics woul=
d
>> benefit from dedicated discussions, the people involved usually aren't
>> interested in bulk email as would be found on other lists. The new list=
s can
>> be found at:  <https://lists.yoctoproject.org/g/licensing/join>
>> https://lists.yoctoproject.org/g/licensing/join and
>> <https://lists.yoctoproject.org/g/docs/join>
>> https://lists.yoctoproject.org/g/docs/join=20
>> ...
>=20
> Would it be possible to also create a yocto-devel or yocto-core
> mailing list for discussing development of Yocto?
>=20
> Currently the yocto list is a mixture of core development list and forum=
=
=20
> for newbie user questions, with no easy way to have them separate.
>=20
> Thanks
> Adrian
>=20
