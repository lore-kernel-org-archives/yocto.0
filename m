Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.1226.1578511823859474332
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jan 2020 11:30:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GTolU3Z/;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: chuckwolber@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F320E014C4; Wed,  8 Jan 2020 11:30:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (chuckwolber[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.222.170 listed in list.dnswl.org]
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3088BE01405
	for <yocto@yoctoproject.org>; Wed,  8 Jan 2020 11:30:20 -0800 (PST)
Received: by mail-qk1-f170.google.com with SMTP id x129so3702726qke.8
        for <yocto@yoctoproject.org>; Wed, 08 Jan 2020 11:30:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=qRJgU3NekCbLuikw1b9Ao5ytgMarRB31dKmjc7XDdw0=;
        b=GTolU3Z/s6sjJk/XBq1bo6Qwg/NrUpaYBMz0DfO1AeJIMFcU1j3gB8XvNw53IFVCu6
         rvHa0SvZq1ckU3L77J206gJGT7McQzRfTLHZplnwD+X4rowxXf7H4fVnHsyKhGVSbTre
         5k1B1KLmDrn/GNAdmNjPpHn7O67xpe6IQbrP29LJPELX2+GfSNUdzqdg4CAWDfOvRJaw
         0pjPTAgh2acD6mwNmShq/2IlSlcJ/eem8KcYNeVZUwWi5Scqc010Jy4MpWRqnJYZlRcu
         +ZXtTCAxv6fn56Qo1xDHiizyJ5VHIK+vMR/2A8SLf0+Z2a6XVo3qaOC/9K1CL1M+YMsP
         LisQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=qRJgU3NekCbLuikw1b9Ao5ytgMarRB31dKmjc7XDdw0=;
        b=qQOS195YNYo7jsaZRQRaX6ws7QTHtG+3/+z3qLsHJRzrOaX8GNEgJEiuQjCxlaxDTG
         ZFi4tjY6V3yvcq2no4jHL9PhOr6AS0/3964el+iGFsBZqmVqP7lGSN+2OrqckzvboWzX
         r1nqbN6Du3KhFEvr8pSoPMR4h3xIYoEYOC+45HT7AnSgK8nS/QhVJ7uOaUzYWTP42Bhf
         WwOGz2F0ws/mg0HYZOqCljVworbsKaG9juWt/yfzdSspaKLA/zjS4wlsvYTk0mZxBHlv
         7a7QfrQpXwSncZ6zi+H9ST5TH3He322hRAbFNAEhbmE9XUEBKJOtEkJi/KCKjmtZvfqB
         a8Ag==
X-Gm-Message-State: APjAAAV8/J2Av5KaQD9It2N1ImXp6zGtSFB4hxOebYKDRYbA9YCrHuhC
	TBptANMiEBsU6PD2aMPNGRtrFhU5nrcYCQZIyefQ4hjr
X-Google-Smtp-Source: APXvYqy4k198k8RT3b7oTBRFXJv74d4t/RqQj/1J0dWP/qsc88KNTZ8yQVq3Zl8jN9QTkhHQUfI2THd7TR0GBzef/DI=
X-Received: by 2002:a37:4b8b:: with SMTP id y133mr5811311qka.210.1578511819997;
 Wed, 08 Jan 2020 11:30:19 -0800 (PST)
MIME-Version: 1.0
From: "Chuck Wolber" <chuckwolber@gmail.com>
Date: Wed, 8 Jan 2020 11:30:09 -0800
Message-ID: <CAB=6tBTZp=nd9ZLfnKp_9Gu=oXrz81Ht+Wv6zTRThn_O2Uc+7w@mail.gmail.com>
Subject: patchutils bitbake recipe
To: Yocto-mailing-list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000004e0a6a059ba5ec2c"

--0000000000004e0a6a059ba5ec2c
Content-Type: text/plain; charset="UTF-8"

Hi,

I checked the layer index (and google) and I find no references to a
bitbake recipe for patchutils. Was there a conscious decision to not
maintain a recipe for patchutils? Or is this something that simply needs a
maintainer to step up and make it happen?

Thank you,

..Ch:W..

--0000000000004e0a6a059ba5ec2c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div>I checked the layer index (an=
d google) and I find no references to a bitbake recipe for patchutils. Was =
there a conscious decision to not maintain a recipe for patchutils? Or is t=
his something that simply needs a maintainer=C2=A0to step up and make it ha=
ppen?<div><br></div><div>Thank you,<br><div><br></div><div>..Ch:W..</div></=
div></div>

--0000000000004e0a6a059ba5ec2c--
