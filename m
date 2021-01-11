Received: from mail-il1-f170.google.com (mail-il1-f170.google.com [209.85.166.170])
 by mx.groups.io with SMTP id smtpd.web10.37768.1610385930930987696
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Jan 2021 09:25:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GPYowgKe;
 spf=pass (domain: gmail.com, ip: 209.85.166.170, mailfrom: uppadaravi2511@gmail.com)
Received: by mail-il1-f170.google.com with SMTP id e7so295372ile.7
        for <yocto@lists.yoctoproject.org>; Mon, 11 Jan 2021 09:25:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=ppIRdizPON2KYQqhVIMzQ0iokjlDXO4hTVehV+FWfJI=;
        b=GPYowgKe97f3GCDPLW/98vOPBmBn+WltgyB7W48wSwUe+rpzVbQcNzpk75f0Jwph0k
         vy/y4htRnieTTLj0TRuPlQEec0J0xAqaHAyAdS5R3GbWHyxQfgxS+hqAuXSQO38iYXOO
         Kpw3XRvgkEf91IzO6QxHuGIpREVK8W7plsJfwWu3FL1hKG7uraMojW1LGv5abUqK6EoT
         JztFpxkJKSYLftQgKo7hgFREyj3yFW7DLgI0XfFuU5DwFuWROT1vyKAas12nYtjjHC5M
         B8M7BBu7idB//Ys+/2hUvBK+8bULlXAsjyC36oVst5f2JDenyJgSMjyqFGx5yl6SUHxQ
         Nk5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ppIRdizPON2KYQqhVIMzQ0iokjlDXO4hTVehV+FWfJI=;
        b=Hjqdtw3soCflP3yPBjSrUpRdjG6hGc+cMjtQ+srlyzy6CL5FM6xEXc6R9OyYoa627Z
         1j8u0GVnmey9razTg0ORq2giT6/cvCgSmiCvx/AQGevDtCp9b24MFVUlo5fItPy2ys0z
         /+RcukAqmS1TQYcDCNz7i2WFU3RjL7+5Z6KqtWQv6uaTxjOevRdoZcOzKkIqzSwSLf59
         7nFnrfrESvnCs62bklSFzNpnAhwWBVNw4vhoDP44DVyH0R8I8d9mqRVX8JtsoTAhmLNO
         HP6XGkQxcWHA/XEyvQEj6W2rnconL5WAvRxfUkTYyNpal0+HWsgTw1gWi11wy8DYmwg3
         xOMg==
X-Gm-Message-State: AOAM5337IVkXaci3dA8DU6DCbenjLiPFVCmu6oK7/7e/JxkFpP1MKqJ2
	v04qNImDCNoVKSALCd/bVVHKdpijimY6c4smwEIqtdaXVlE=
X-Google-Smtp-Source: ABdhPJz6jJfsEQ89SJVciuRVwps1AvUWY2DacJcb0A2aQ1GnVatQLD0Oiq8dLR+oEflwwxDim5LlyLXJlpESJ7dCIcg=
X-Received: by 2002:a05:6e02:1b8b:: with SMTP id h11mr222052ili.32.1610385929912;
 Mon, 11 Jan 2021 09:25:29 -0800 (PST)
MIME-Version: 1.0
From: "U RAVI KUMAR" <uppadaravi2511@gmail.com>
Date: Mon, 11 Jan 2021 22:55:18 +0530
Message-ID: <CACX=-dXasA=Q4vjDXza9N36K=yZ68REiSTXEtTitbta3E71aUQ@mail.gmail.com>
Subject: BITBAKE HANGS
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000004dc6e405b8a33155"

--0000000000004dc6e405b8a33155
Content-Type: text/plain; charset="UTF-8"

hi guys,

 I have encountered with a problem.I have built a custom linux for
raspberrypi and included
meta-openembedded,meta-raspberrypi,meta-qt5,meta-python2 layers and
compiled on the bitbake. it is working fine.
I have added recipe "qtwebengine" , here i have encountered an issue i.e
the system hangs. only while compiling qtwebengine system hangs.Can anyone
suggest me the solution.So that i canovercome and proceed fiurther..

Thanks and regards,
ravikumar

--0000000000004dc6e405b8a33155
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>hi guys,</div><div><br></div><div>=C2=A0I have encoun=
tered with a problem.I have built a custom linux for raspberrypi and includ=
ed meta-openembedded,meta-raspberrypi,meta-qt5,meta-python2 layers and comp=
iled on the bitbake. it is working fine. <br></div><div>I have added recipe=
 &quot;qtwebengine&quot; , here i have encountered an issue i.e the system =
hangs. only while compiling qtwebengine system hangs.Can anyone suggest me =
the solution.So that i canovercome and proceed fiurther..</div><div><br></d=
iv><div>Thanks and regards,</div><div>ravikumar<br></div></div>

--0000000000004dc6e405b8a33155--
