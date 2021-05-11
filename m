Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.10237.1620726282553308239
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 May 2021 02:44:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=oEIjy5hg;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: balazovic.peter@gmail.com)
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 43FC038C06A1
	for <yocto@yoctoproject.org>; Tue, 11 May 2021 09:44:41 +0000 (UTC)
Received: by mail-yb1-f178.google.com with SMTP id v188so25508979ybe.1
        for <yocto@yoctoproject.org>; Tue, 11 May 2021 02:44:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=7G34AsAwQ2XXtPK+IEVtCQC4XzRPyZrUJPAUznAiKDk=;
        b=oEIjy5hge9OYWZp2No+rvTLpcSly2qdrXO/djhIwZh2cSswKUOdabymOnweOs7YpWm
         jHPdfxAp7II4GtSxL4njtXYflgJ0Y2me4ABcV3mVXhd2CfVHdSdpMPoNzMqesyCqrvqX
         3ewK8htb6t39lWf2gK0CJm/gVBrJezLKDNRjGtnmZ1045jCanr6AGILqPqyHSYX4+dQU
         MVe0LknYxyKUlgZJd/PQRs9I9evJjdEogrxoQ+Sb0Um7B/3qBXsQCBClln6yAhJfe1PZ
         kL2BFey832cDaZ6xR0Ot2e7cdzwfzpubXbQA5Xa5xUNWla3QcEFIQPlPlvyXGC1k2e4I
         LP4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=7G34AsAwQ2XXtPK+IEVtCQC4XzRPyZrUJPAUznAiKDk=;
        b=IGp2aw4hl7bRk9ZJpOpdd4uYAgAKghhlH7ZER6R8+fn8vv087CfUhrFVMG3vsjCarn
         OUGJL0AV7vryA0eMAQDgfCPDBEMc0CjCqsLloX1Sg0aeqM5gOTjurjJckuGSJ5TmNmH6
         4N/meZmB603SdT63WnLv1BYbGkkOcXw9U1T5rL9im2mQYVBkTmAa9K3Qo7AgBB1CPeLD
         BM0S782lNUkTn6hjX0wUZ3e0kPH5J0i0xSBcPfzb3I7RbJCt1kPUUUKS/HdqeKwHh/46
         oID1bL1BT4LVSuJ7IKqXdI+XwjoqMLKRQiL2H/tdzzQqgahImljb4/5OBOXOJYw9gniN
         or6w==
X-Gm-Message-State: AOAM5302FwwMF+WZw1s7C/8u0TiCJo/5zp9k5O9jamtIqTpVmP/Bfh4c
	s7jJS9yMN6EZyO/Yp9JrjVrEgcG2vyESyuHw/1YLQSM/BHo=
X-Google-Smtp-Source: ABdhPJwqj44WCCBydLPO0H6aYEax3taq7SNDX+kTJLyePRfZRPnZloOu3HT26sGs4P8kFRoy1drAkocjAaFQwNn89Bg=
X-Received: by 2002:a5b:5c3:: with SMTP id w3mr43538968ybp.498.1620726279844;
 Tue, 11 May 2021 02:44:39 -0700 (PDT)
MIME-Version: 1.0
From: "Peter Balazovic" <balazovic.peter@gmail.com>
Date: Tue, 11 May 2021 11:44:29 +0200
Message-ID: <CAFq4t4g2zGTYwKYp+=uM-6aRqPHYzVK72Wpc0X=R--WF91_OLg@mail.gmail.com>
Subject: How to use xtensa/gcc
To: Yocto list discussion <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000030367705c20abe9c"

--00000000000030367705c20abe9c
Content-Type: text/plain; charset="UTF-8"

Hello All,

I wonder if there is a chance to use xtensa compiler within Yocto to run
the code at DSP/IP?
I would like to ask you if there are some examples to compile and run such
example code or recommendation to do so?

Thank you.

--00000000000030367705c20abe9c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello All,<div><br></div><div>I wonder if there is a chanc=
e to use xtensa compiler=C2=A0within Yocto to run the code at DSP/IP?</div>=
<div>I would like to ask you if there are some examples to compile and run =
such example code or recommendation=C2=A0to do so?</div><div><br></div><div=
>Thank you.=C2=A0</div></div>

--00000000000030367705c20abe9c--
