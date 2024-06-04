Return-Path: <saswatinayak2010@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A392C25B78
	for <webhook@archiver.kernel.org>; Tue,  4 Jun 2024 10:18:00 +0000 (UTC)
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
 by mx.groups.io with SMTP id smtpd.web10.18045.1717496271781856981
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Jun 2024 03:17:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=nNuMWJvO;
 spf=pass (domain: gmail.com, ip: 209.85.160.43, mailfrom: saswatinayak2010@gmail.com)
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-24c9f2b7b19so483701fac.0
        for <yocto@lists.yoctoproject.org>; Tue, 04 Jun 2024 03:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717496271; x=1718101071; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=IOhZhwUn4SH5ETmHASG++IE8ywRHfS9poRRndYSugQE=;
        b=nNuMWJvOnL4osC0gcroEdUUwKQsFvnTxrriPm3V8pkV6cadljwP7iXwIpUI/Dv9LDQ
         u8EKYWpVRzFBprxGgq7KRnYBarutDJ75rWhrk5VbGKqNHdIyRL66c8NRM5CUsRh/CkAV
         yrIYbF3hoCz3+Ys9oQ57RBBBEV7Dm4eZBiU2ER8rco2v8co8i/owInF+dADnfA2XARCw
         k8P0RH/0nreI9frdFbxqUE+s8fEjdqkgJPeGsnSYyIj9+HvBfLisgqdOT2SvLqYn2ql0
         crLo7hrogxFODDPD22np8F+ewjyaO11Her+hUi/0oi7GM1aZxHFVBpQjKdfVhcIhypcF
         g6HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717496271; x=1718101071;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IOhZhwUn4SH5ETmHASG++IE8ywRHfS9poRRndYSugQE=;
        b=DXAfF1XiJPRdRSVhgavWR19P6FIqNa0IN0DoCmxp2BW/07fJPKkmprL17eK9ndGxz2
         /NsVPOqY+8iGbZFt80/fI47+5Y27bwzofSb15Q3d4kSEj5KRr5i0cSJ8ZfB3NRyXfpwF
         QGKL4HPeigaclgN4+gPI2lXgQ+cySiBRdRnXGOMo8U6c/XohhTz84yFLA70GGV2s9Qff
         ob++PJCuysIfFzqOB5fG9+x0zsBgUQjjjrXhrbTkay8ynXFOdx9OEusjUK1na48BM7qP
         RbHec6CGiH2pDeE9fR/WNIUt4OeVMU9OZhbvUswxRe03kBDWkaM+er/l4JTu882uKnrB
         jttQ==
X-Gm-Message-State: AOJu0Yyu175raXRDDdqX3oGaM7Zume4WQuTmo0J0qYGgGx8UXz9eRLc8
	+aKaWLOcHef+UUU/eyGB94lbII8OKfGOGOweVv4YIpbNVfUibFOk0A7zIogb0NJK/l+uiWwfkFM
	rPojtuo50x/iJfLEUuP8ANyKXbvbpjw==
X-Google-Smtp-Source: AGHT+IFiCQBz0fm+6ZADOGoWW5+4t/qO9DrOL9CUlQxgJA0MFnxHPf0U5GVT9IeFyOSJT3MZLJGAvSQNla13aAbwyZU=
X-Received: by 2002:a05:6870:80cd:b0:24f:eada:e32 with SMTP id
 586e51a60fabf-2508bd77641mr13285216fac.17.1717496270473; Tue, 04 Jun 2024
 03:17:50 -0700 (PDT)
MIME-Version: 1.0
From: Saswati Nayak <saswatinayak2010@gmail.com>
Date: Tue, 4 Jun 2024 15:47:39 +0530
Message-ID: <CAKe-BNoRfMiza5Mf691s7h8DP1+BN38-0sx7-rdiSTJhfSkA1g@mail.gmail.com>
Subject: Need to add TEMPLATECONF in Custom layer.
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000001ad1e5061a0dc3c8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Jun 2024 10:18:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63270

--0000000000001ad1e5061a0dc3c8
Content-Type: text/plain; charset="UTF-8"

Hello All,

I want to add a custom templateconf in my build directory.
Can anyone help me how to create Templateconf from our local source so that
it will point in the build/conf/templateconf.cfg .

Thanks & Regards
Saswati

--0000000000001ad1e5061a0dc3c8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello All,=C2=A0<div><br></div><div>I want to add a custom=
=C2=A0templateconf in my build directory.</div><div>Can anyone help me how =
to create Templateconf from our local source so that it will point in the b=
uild/conf/templateconf.cfg .</div><div><br></div><div>Thanks &amp; Regards<=
/div><div>Saswati</div></div>

--0000000000001ad1e5061a0dc3c8--

