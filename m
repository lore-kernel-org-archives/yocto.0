Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com [209.85.222.54])
 by mx.groups.io with SMTP id smtpd.web11.7546.1603357371396352771
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Oct 2020 02:02:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=lDHjrlVh;
 spf=pass (domain: gmail.com, ip: 209.85.222.54, mailfrom: nikhilvp29@gmail.com)
Received: by mail-ua1-f54.google.com with SMTP id f15so250956uaq.9;
        Thu, 22 Oct 2020 02:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=rtF/OzMLuhObUQDtkBjYaNkomAzqh4gmZUBikzwQYVI=;
        b=lDHjrlVhRpRkFGtEJlrXHrlS/5qMvXCOAZWuvU9qEhb+LrQkOpKPfRDb0awqEoufdy
         RHCbvzeoTqyzP1jSk8TuMCHdqLnXfEKTKhWs/2yUppza4LNizH54oV7JLugXCNZ65C+D
         ulLLng2KsOdE4O/ILrmGPVJOUzHoboKr/Fhe5vV/WQmyyKVw5UgE10BksecbCp8cGaYd
         sNRYzD+xsVgVpL/Awp23xjH/O02gzh1wKoWuVov+WKPsyzBe8fWoS0vX1D71FfGG4EdA
         Of4bCfy9hG8OtWsKYLspQpJcvzzLlq0zDBY2IpYCt0xeCEKYVN76LQ4RhyL4UVXlDKQs
         oU6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=rtF/OzMLuhObUQDtkBjYaNkomAzqh4gmZUBikzwQYVI=;
        b=KDy5pFmqLL0cVLjaa7K9EZtCIRoIONvNH6mrxo6m2Tjrv8rno/XyQdOZPU8CwM8ede
         NQO4JiuPGAXCkfRkVgLnj4yn4AM6HTkIxOvQ7w1dC7mtZJJ3a4c3qwPFZsXeJRlk7Xle
         J1J3bx5So8m0ZlHEmZHdo/56toNDiUT+TUZKHZh0tvF6RgJTFszbVIVavmcQtLINGqP1
         P2zYJZ2wfh3yZ8e0UFmBtNAUQ7cqlakfKDN6n7O+rQe/umy+go+IaP4RBwvLccXf2uSg
         7WFxFGEebTp2+HXjmSyhFjt+EQmjRDlyGgsjZPv92oLAzeLZ5HQc3YfuM/s68sIxeftg
         pQ1Q==
X-Gm-Message-State: AOAM532UIvEfhCFSINfHsantqh3fqiLJXbNAVpTvni+JaBl6vb9UTUr2
	xsH59c4tI42/Gg6Jdip+r4RwL7BQ664aoOQgNwF66mTquF4=
X-Google-Smtp-Source: ABdhPJwzckKFXNjXsFADah1vls5r0jBentP/DBSmE3WROdRPbPEYv1S4e4CcEOkgwiHNYWgdK39oQC3EUuQ+2UlHSKk=
X-Received: by 2002:ab0:658c:: with SMTP id v12mr590749uam.39.1603357370115;
 Thu, 22 Oct 2020 02:02:50 -0700 (PDT)
MIME-Version: 1.0
From: "NIKHIL PATIL" <nikhilvp29@gmail.com>
Date: Thu, 22 Oct 2020 14:32:38 +0530
Message-ID: <CAJw=dJ_LgOdKN8OLccHU8+37m_zfTYxoQ3ev93DYiqxog6Z9gQ@mail.gmail.com>
Subject: Included conf files in our receipes.
To: yocto+help@lists.yoctoproject.org, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000007e6a5c05b23eba17"

--0000000000007e6a5c05b23eba17
Content-Type: text/plain; charset="UTF-8"

Hi Team ,
       We are using yocto sdk for intel leafhill board. For our development
purpose we are changing in local.conf. (for eg.  if i want minicom package
means we are doing IMAGE_INSTALL_APPEND += "minicom" ).
       But , As per requirement we dont want these ( means adding in
local.conf and bblayer.conf ) , so every needed packages (eg. minicom)  how
we can add packages in our meta-layer (like eg. meta-test ) . so all
required packages will come with our core image .

   *how we can achieve these ?*

--0000000000007e6a5c05b23eba17
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Team ,<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0We are using yoct=
o sdk for intel leafhill board. For our development purpose we are changing=
 in local.conf. (for eg.=C2=A0 if i want minicom package means we are doing=
 IMAGE_INSTALL_APPEND +=3D &quot;minicom&quot; ).</div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0But , As per requirement we dont=C2=A0want these ( means addin=
g in local.conf and bblayer.conf ) , so every needed packages (eg. minicom)=
=C2=A0 how we can add packages in our meta-layer (like eg. meta-test ) . so=
 all required packages will come with our core image .=C2=A0</div><div>=C2=
=A0</div><div>=C2=A0 =C2=A0<b>how we can achieve these ?</b></div></div>

--0000000000007e6a5c05b23eba17--
