Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
 by mx.groups.io with SMTP id smtpd.web11.47084.1590483724520549113
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 May 2020 02:02:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=L7FALPX/;
 spf=pass (domain: gmail.com, ip: 209.85.222.173, mailfrom: lefevre.da@gmail.com)
Received: by mail-qk1-f173.google.com with SMTP id c185so5681804qke.7
        for <yocto@lists.yoctoproject.org>; Tue, 26 May 2020 02:02:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=mnXe9XQVFV9vb+N/FVS8y7dWReuRsQg4kJXISZ3+BpA=;
        b=L7FALPX/+Nl1rEVSBilzV42YS5oU/bc06oswuynOvBbnot+Fce4iFDhLfmbkqe1AZG
         a+q/Q1FxH+bUXKILUN8Jbxyx4XuJA8qGSZGKIO8jkeQb+H3txEjr3DJY8o3KUtqfVIrE
         nGXxb9a8cfsvwNsLmgR1NEsXpkDnmscfCJ9Aa/M3lqugHsxUvkIOcXh9pZ2PTzwhfGr+
         of3SB0R/jFJmJ0E333AGE1WCs6hjaCbhUuZptjU3VxBcaLjajGMJG8uk+OZNvufzGvzV
         1uvX/YZ9dLNieEn8bH3qWEAxl3Xecn2m+FauVamiFWtAAy5XOwvXCIqkKsY8uQzO9vqX
         Jv8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=mnXe9XQVFV9vb+N/FVS8y7dWReuRsQg4kJXISZ3+BpA=;
        b=KuQ/DQIKPydnYd2Pl6SNg0daNuo00M9uBUHRWAYy0Iwx33w4WiXxwX4VJWHapyAecq
         96QQMHfLD7nDBBtpNV625IOJpxDSqvIP/2jrze6NYBfODgNAwU7Y7kqEOyA4z+Ve0Xpl
         FCQhDN3+22lk5xdJG9DAmCwHh5VwBQmmyPWtvfxsUowQRPIbrFJfNE7qdDTboXmjb8eL
         qpnAIW184IbY8Y5BLhXagVRu+03kF6g7Iis/eKPdh2k2Fgysub9SNp4gocFMK4aSs+nq
         D3B9n9ob7XdDxuG0JfpYdJYhv2OZX3FxHAORr8Z2LWKT0ZM4MhGqeaToGZB3HFFjxFAm
         Na0A==
X-Gm-Message-State: AOAM533EAm6CsbfWaMgsCC66pjDqVfmBheQeNrLh/jXgjKoGaXM7KH1d
	MTFSUDURGP/FtPsLcls2fr4+oh44sqS8dC8ZDQlkREs=
X-Google-Smtp-Source: ABdhPJzGOgxRoJh4zOTkhiNlL/7VTpI9IVpK/Vg7gPlEHzGMuSSd2IFndOqTXz1apxNZmJLLnRQE7L/KchMu9rzUWSc=
X-Received: by 2002:a05:620a:15da:: with SMTP id o26mr204349qkm.304.1590483723524;
 Tue, 26 May 2020 02:02:03 -0700 (PDT)
MIME-Version: 1.0
From: "Damien LEFEVRE" <lefevre.da@gmail.com>
Date: Tue, 26 May 2020 12:01:52 +0300
Message-ID: <CA+FhBv8=d9doBMqQ2CL6bfet01i-4fAL_SDHVx7vgLTcoMxZcw@mail.gmail.com>
Subject: Re: gpg: can't connect to the agent: File name too long
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000005c9f9605a689593c"

--0000000000005c9f9605a689593c
Content-Type: text/plain; charset="UTF-8"

I think my problem is that the do_image_* are running as fakeroot/pseudo.

Is there a way to run this task as a normal local user.

I read that I should create the socket when not running under local user
with
gpgconf --create-socketdir

But this fails too although I set permissions for all on the gpg files and
directories:
'''
| gpgconf: socketdir is
'/test-warrior/build-jetson-xavier/tmp/work/jetson_xavier-poky-linux/test-image/1.0-r0/my_img/home'
| gpgconf: no /run/user dir
| gpgconf: using homedir as fallback
| gpgconf: error creating socket directory
| gpgconf: fatal error (exit status 1)
'''

Basically I need to, as a normal user, run gpg after do_image_tegra.

Any hint?

--0000000000005c9f9605a689593c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I think my problem is that the do_image_* are running as f=
akeroot/pseudo.<div><br></div><div>Is there a way to run this task as a nor=
mal local user.</div><div><br></div><div>I read that I should create the so=
cket when not running under local user with</div><div>gpgconf --create-sock=
etdir<br></div><div><br></div><div>But this fails too although I set permis=
sions for all on the gpg files and directories:</div><div>&#39;&#39;&#39;</=
div><div>| gpgconf: socketdir is &#39;/test-warrior/build-jetson-xavier/tmp=
/work/jetson_xavier-poky-linux/test-image/1.0-r0/my_img/home&#39;<br>| gpgc=
onf: 	no /run/user dir<br>| gpgconf: 	using homedir as fallback<br>| gpgcon=
f: error creating socket directory<br>| gpgconf: fatal error (exit status 1=
)<br></div><div>&#39;&#39;&#39;</div><div><br></div><div>Basically I need t=
o, as a normal user, run gpg after=C2=A0do_image_tegra.</div><div><br></div=
><div>Any hint?</div></div>

--0000000000005c9f9605a689593c--
