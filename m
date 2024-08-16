Return-Path: <joel.winarske@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F16E1C3DA4A
	for <webhook@archiver.kernel.org>; Fri, 16 Aug 2024 16:08:05 +0000 (UTC)
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web11.151719.1723824482677752868
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Aug 2024 09:08:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=VHEPwjp4;
 spf=pass (domain: gmail.com, ip: 209.85.215.173, mailfrom: joel.winarske@gmail.com)
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-7a18ba4143bso1651788a12.2
        for <yocto@lists.yoctoproject.org>; Fri, 16 Aug 2024 09:08:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723824482; x=1724429282; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=4JnRUrFEoYrn3M4vT0QYIw5TCTKdA1yP5UzzMWmuzbQ=;
        b=VHEPwjp46AEPKR0X84TZqaAOdyFZWuG1SeVQbcXZsAKyNFSdUDt83ZE/A55u3RWJ1/
         OAVdGpVUUvIGdVvNlUE+bpvOV+9U6HkQR0HpRtLv3S2kzECMINuENVbGBaTOmnqA7v+w
         1wHQiauxRcxk1NKi4yRkhkLAZuNLvBWr/WspoOtJrXQMNRb7PlVgb0oLiPdRot7oHocQ
         teq6HCPwD0MfB4whlCQ6h4/+IVCBMqGRnDrZoA6MsgHNsRvtfdjwCOBIwmqsmpBZcoQy
         2GABEhYp5XlvOS0Ih9VezMXANC5Ymz8TjC1fygOvPByd74SUVX4ljeiiFgUXNQiYXKzc
         jxVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723824482; x=1724429282;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4JnRUrFEoYrn3M4vT0QYIw5TCTKdA1yP5UzzMWmuzbQ=;
        b=Lvy+KQlPjJHywi0+FtKMmr3yj6c4mUc1YKYwbx1URzdjMwgOVq5Af7soN0KhrfXg3W
         CrYlHlEwCH6FWe/8UBJk6zsE/Xs0r6B+vTmzh0Pa6Gt6IEnBAl/U2k44fj+YC/ep7nGH
         J8zdJ7fyp3MAJe0D+sHSeMxIdw2u3L8G8dmfLHGIMN9VsyUAsG6/X/HrUI+AvPDInqrW
         POC12rljmknSNNsKkGfCYohxgxsFmDN4Q23O7+ym0asLGfJi90DUml8Wk0QGpFDyd0gH
         WrT3pJClhBP+ZDMdgB9PISkwOh335JfojtqAkONzb+1gA/dz2nPLhZJpndCzetyPehg/
         LnfA==
X-Gm-Message-State: AOJu0Ywa+HcOXeQ+oGcZ8J/U/Zg5FSLGKbXJBksPELZbM0cGUoFvBY5p
	h+Ptp7fmO2SfiCEotBDHXsyu33KSPKQsA/N7Mh8vbYw+XPZhEDGzjmN3KFvScGcruv6m7IV0mPl
	fUYug/8RhHyKwI7qKduYq1xuFnde9+EI3diA=
X-Google-Smtp-Source: AGHT+IGoAl4BOe1srRXPjBSyV2ifqFUkPa4wkwlgTQn1UCr8roesyOlcgK4zT66gHSIZXzIQmN1t6+r/igr97d6IdEI=
X-Received: by 2002:a17:90a:bc97:b0:2d3:c863:cf16 with SMTP id
 98e67ed59e1d1-2d3dfff5d4bmr3473985a91.33.1723824481450; Fri, 16 Aug 2024
 09:08:01 -0700 (PDT)
MIME-Version: 1.0
From: Joel Winarske <joel.winarske@gmail.com>
Date: Fri, 16 Aug 2024 09:08:03 -0700
Message-ID: <CABKMkPKUKGMp-KKaN40FzhN7yQpqD7D6typFmzrjGw9nT=vdOQ@mail.gmail.com>
Subject: python3-pycurl-native
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000df41b7061fcf2996"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Aug 2024 16:08:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63714

--000000000000df41b7061fcf2996
Content-Type: text/plain; charset="UTF-8"

Do anyone have `import pycurl` working in a task?

Running `python3 -m pip list` the line before `import pycurl` it lists
pycurl as an available module.

I'm thinking python3-pycurl-native is not installing all of the dependent
system libraries.

--000000000000df41b7061fcf2996
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Do anyone have `import pycurl` working in a task?</di=
v><div><br></div><div>Running `python3 -m pip list` the line before `import=
 pycurl` it lists pycurl as an available module.</div><div><br></div><div>I=
&#39;m thinking python3-pycurl-native is not installing all of the dependen=
t system libraries.</div></div>

--000000000000df41b7061fcf2996--

