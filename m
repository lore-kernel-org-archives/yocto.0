Received: from mail-il1-f170.google.com (mail-il1-f170.google.com [209.85.166.170])
 by mx.groups.io with SMTP id smtpd.web10.945.1612573601796283063
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Feb 2021 17:06:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=oz/R+/gg;
 spf=pass (domain: gmail.com, ip: 209.85.166.170, mailfrom: gartnerd@gmail.com)
Received: by mail-il1-f170.google.com with SMTP id y15so7510194ilj.11
        for <yocto@lists.yoctoproject.org>; Fri, 05 Feb 2021 17:06:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=JfwXy2OZkyMvxna8/7B7ZRhXY081aH4pJPjIQmc8GwA=;
        b=oz/R+/ggJeasZCejKVWsd4afvaD8/BSTKHbF0uRfCV3KuW3vjxL5j6pAmaLD20pB5s
         giPqQe5Ey9C95KO6t+G8OokEJSefLuQSFvebzRrTO5qB/PCHo8CDl2GrSwghQCdAiMEW
         MU3VN+i3nf2rtfPl8vqK5w++xId30gKQExER8Mn1cQlwY0SA/mN+btxkjA4pcnYdzbMP
         5yWof+4yLvYatPOTs4q526CbVvy2RiUJc+j279+jlH9wJb95Qx6iwGp+qhRhtK+Sp5rR
         reJmqztI0fqhU42gxeJpmrB/oP2F5dCqH1QhFrt0yTfAjtyBw3yEtcm7sJWmVvKbXE/O
         0fGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=JfwXy2OZkyMvxna8/7B7ZRhXY081aH4pJPjIQmc8GwA=;
        b=I1GWlR2VVuMGaAABTVV6xCEFzHSoCCUGDlO5PIGQBpNKYn6kO2Z1hhkH6iL/YvPsVb
         aNLqQwB7SILdLgVIxtLvqW1EodKB87EtfZNZ/XeaMkF/xVvZGc0mFCAZl3YPBLHfvSQo
         EaD66ZaojFWDCNcI4ERPMKGyHJ0+Yf0DisvOtsKFadFkKjFT0f2JjgHivJbyksbey+dJ
         1nHaOe5W6wK9FYYH8c+VQ1JB48blx7EAhqW/nrAoRhOxqT1eIaJPCWxGTNmDR59TiQBC
         nREGYydjRANa+Se5W08V/u7gG2c4M2vsE3IF6xHJe0GwpbhzZx6WhIpvNUhzycKUhSzl
         X59Q==
X-Gm-Message-State: AOAM533CGkBpUB5J2WtrVheXNIlWIm3AGWXZ9pCYDGvj7f7xjGBtxbvx
	O8B1MvE3xhci06jH6yUc/WB610HIl6cdIrluAMEux6yDK5o=
X-Google-Smtp-Source: ABdhPJzjT3zLJ2XhVAk8OmCgcZMz7qXJOCCKQmB9VaHxRB/za2Sgf21b5cYtXew9t21msiNIupkG2xFt8KSPAAQUZ1I=
X-Received: by 2002:a92:c26f:: with SMTP id h15mr6029828ild.65.1612573601008;
 Fri, 05 Feb 2021 17:06:41 -0800 (PST)
MIME-Version: 1.0
From: gartnerd@gmail.com
Date: Fri, 5 Feb 2021 18:06:30 -0700
Message-ID: <CAMVSYA7KXo9ZwkZdTiUyVmcx+m-2cVCqbH8Oy48Qi+ry_ORv6w@mail.gmail.com>
Subject: devtool question/issue
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a98f9405baa08cf2"

--000000000000a98f9405baa08cf2
Content-Type: text/plain; charset="UTF-8"

Hi,

I've been following along on this youtube video created by a Yocto
developer:

https://youtu.be/nqHylLP2NmA?t=1592

I can reproduce everything presented until it comes to using devtool (as
shown at the time index in the link given above). When attempting to run:

devtool add git://blah-blah-gitrepo

I get the error:

ERROR: workspace layer not set up

My understanding from the documentation is that the "workspace" layer gets
created (if it doesn't exist) when running devtool with a command such as
add.

Since I'm new at using Yocto, it's likely that I"m missing something
fundamental here.

Any help/suggestions would be appreciated

--000000000000a98f9405baa08cf2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;ve been following along on th=
is youtube video created by a Yocto developer:</div><div><br></div><div><a =
href=3D"https://youtu.be/nqHylLP2NmA?t=3D1592" target=3D"_blank">https://yo=
utu.be/nqHylLP2NmA?t=3D1592</a><br></div><div><br></div><div>I can reproduc=
e everything presented until it comes to using devtool (as shown at the tim=
e index in the link given above). When attempting to run:</div><div><br></d=
iv><div>devtool add git://blah-blah-gitrepo</div><div><br></div><div>I get =
the error:</div><div><br></div><div><p style=3D"margin:0px;font-variant-num=
eric:normal;font-variant-east-asian:normal;font-stretch:normal;font-size:14=
px;line-height:normal;font-family:Menlo;color:rgb(0,0,0)"><span style=3D"fo=
nt-variant-ligatures:no-common-ligatures">ERROR: workspace layer not set up=
</span></p></div><div><br></div><div>My understanding from the documentatio=
n is that the &quot;workspace&quot; layer gets created (if it doesn&#39;t e=
xist) when running devtool with a command such as add.</div><div><br></div>=
<div>Since I&#39;m new at using Yocto, it&#39;s likely that I&quot;m missin=
g something fundamental here.=C2=A0</div><div><br></div><div>Any help/sugge=
stions would be appreciated</div></div>

--000000000000a98f9405baa08cf2--
