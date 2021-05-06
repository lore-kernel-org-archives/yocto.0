Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
 by mx.groups.io with SMTP id smtpd.web11.7650.1620297861414567391
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 May 2021 03:44:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Icf5WDC4;
 spf=pass (domain: gmail.com, ip: 209.85.218.53, mailfrom: martin.jansa@gmail.com)
Received: by mail-ej1-f53.google.com with SMTP id zg3so7553835ejb.8
        for <yocto@lists.yoctoproject.org>; Thu, 06 May 2021 03:44:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XB8s4uHd36YjMKC4HpPei1PQOkWxPgrqCAQTqYwEDm0=;
        b=Icf5WDC48uxrZGoF0FreDvhBVq3Ary4Y1R74QVmqn6DFlymv224gRYA0WvhVd6xY4l
         5Erk6SaEkPC9sMDMTPOiVugkimN9AzNeIuO//2XUqIz9o1HSOIBi8I5Vt4hGT4Cj4EQj
         ZfSWtxb7LgjNC+Ao0crL4n7o/fdVRVAIuMZsHzj5KR4IjmzKERqq8dhehVlfjsjTDDw2
         u7xhUndvTtWjP1BuxomczHcT8Vi2SER5QwtlYZn5RvrX+UpTz9kfj5PHf/v7vxh1oxWo
         Vdfx1O817c/TTlOmHSasYhkdZaxbL8W5+5bSAtsT6KeyEvE4x+v8HjSu5/gQpNCWFYmP
         9PDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XB8s4uHd36YjMKC4HpPei1PQOkWxPgrqCAQTqYwEDm0=;
        b=MecytjIUYzO+gbGbyGB4aYh8yp5PxwrI1s/4/Df+RY4yTX/B6S/7WswTZGatrRcQGn
         OhefSYIsLwbuPOoq4ELw+phcEuToLSgjM6lUQ1cq42OSp1N74DpwIS1WPp/CbQEr/GAn
         NC/vbOzK6QdXtXw4XP/ikQoz+SJaDqYJb0YHyWI+Djrt+aET1S/s+ZfwkueXAGzx3UHl
         BdCx8UJNGkmU3daYhCv65tK1z/wz+I4fQIm/qSP3x3UugcV/4bDxeRV0pLKppvDgb2P1
         D5bKlOTKvgcIDJIcadW1zHbUIUHdQcDdn9wvsfQLaZ1YDhQ4mr6hxw/IsgLoLV+/6Wz/
         pjSg==
X-Gm-Message-State: AOAM531yNlLcXtjQy28pxaHQQLZAr6NYVOPzTyBK5g6KNhoM+L0aHXUH
	nRNn24fGKPbh0jmyH4OO1FDhN8qbB1/NGIUlvSE=
X-Google-Smtp-Source: ABdhPJyiO7QvX5s4YUNSMOc/7DDgANMCa7qVahuGvVidueFR7i2tejkGHXCJ6vpxMbUwIv2A9das3WCfL8JNaxLDBXc=
X-Received: by 2002:a17:906:32d1:: with SMTP id k17mr3733397ejk.94.1620297859809;
 Thu, 06 May 2021 03:44:19 -0700 (PDT)
MIME-Version: 1.0
References: <CA+chaQdQgTp=CxNrj1BOB60ra4PakJoHNNC7euZzt4pH-J_=hA@mail.gmail.com>
 <636.1620291448346580381@lists.yoctoproject.org>
In-Reply-To: <636.1620291448346580381@lists.yoctoproject.org>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Thu, 6 May 2021 12:44:08 +0200
Message-ID: <CA+chaQde1hy1g1Jbx5kQUFxxR+9XVKxG8dq=5vLdaiNY_kVY9A@mail.gmail.com>
Subject: Re: [yocto] KeyError: 'getpwuid(): uid not found: 1000' in do_package phase
To: tom.hill@inbox.lv
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000005d439f05c1a6fe80"

--0000000000005d439f05c1a6fe80
Content-Type: text/plain; charset="UTF-8"

On Thu, May 6, 2021 at 10:57 AM Thomas Hill via lists.yoctoproject.org
<tom.hill=inbox.lv@lists.yoctoproject.org> wrote:

> Hi Martin!
>
> On Mon, Nov 16, 2020 at 02:28 PM, Martin Jansa wrote:
>
>
> https://github.com/webOS-ports/meta-webos-ports/commit/9fd17a67cdbed92df13a14b002a189b4c6c2d442
>
> is an example where it triggers this error, but doesn't trigger the more
> common host-user-contaminated QA error (unless you happened to use UID 1001
> on host for the user running bitbake).
>
> I have here a similar problem with one of my own packages. It happens that
> my bitbake user uses UID 1001. Do you have more information why this is a
> problem? Should it be enough to change the UID to 1002 to get everything
> running?
>

No, you should chown the files to be owned by the expected user which
exists in the image (probably root like in my commit). Changing the UID of
the user on host is very bad work around (as it will fail for the next
person building the same image with host user 1001.

--0000000000005d439f05c1a6fe80
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, May 6, 2021 at 10:57 AM Thomas Hi=
ll via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a>=
 &lt;tom.hill=3D<a href=3D"mailto:inbox.lv@lists.yoctoproject.org">inbox.lv=
@lists.yoctoproject.org</a>&gt; wrote:<br></div><div class=3D"gmail_quote">=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">Hi Martin!<br><br>On Mon,=
 Nov 16, 2020 at 02:28 PM, Martin Jansa wrote:<br>
<blockquote>
<div dir=3D"ltr"><a href=3D"https://github.com/webOS-ports/meta-webos-ports=
/commit/9fd17a67cdbed92df13a14b002a189b4c6c2d442" target=3D"_blank">https:/=
/github.com/webOS-ports/meta-webos-ports/commit/9fd17a67cdbed92df13a14b002a=
189b4c6c2d442</a><br>
<div>=C2=A0</div>
<div>is an example where it triggers this error, but doesn&#39;t trigger th=
e more common host-user-contaminated QA error (unless you happened=C2=A0to =
use UID 1001 on host for the user running bitbake).</div>
</div>
</blockquote>
I have here a similar problem with one of my own packages. It happens that =
my bitbake user uses UID 1001. Do you have more information why this is a p=
roblem? Should it be enough to change the UID to 1002 to get everything run=
ning?<br></blockquote><div><br></div><div>No, you should chown the files to=
 be owned by the expected user which exists in the image (probably root lik=
e in my commit). Changing the UID of the user on host is very bad work arou=
nd (as it will fail for the next person building the same image with host u=
ser 1001.</div></div></div>

--0000000000005d439f05c1a6fe80--
