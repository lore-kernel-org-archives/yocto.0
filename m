Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
 by mx.groups.io with SMTP id smtpd.web12.7417.1631076512644533388
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Sep 2021 21:48:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=cAvJlB94;
 spf=pass (domain: gmail.com, ip: 209.85.167.177, mailfrom: arun.sivakumaran@gmail.com)
Received: by mail-oi1-f177.google.com with SMTP id w19so1513106oik.10
        for <yocto@lists.yoctoproject.org>; Tue, 07 Sep 2021 21:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=XY8l4dcFYdLHgtRh2dT7GHN14BWFoRGsJyk/4Gu6Hh8=;
        b=cAvJlB94K4jh4z8xzTNLwNP58IxqqNai5e8GbfeifaqeU6OL6Tr8bCLhoeJhWOH3vJ
         qIYH8CMxKLNVVeeAGtt9vEVpjFFzerZ8wc6h/f6FzWms6WrxC14X4Ba0CJkW0Xuoa0BJ
         bpNqI+qSWUzKhPmUHWLty299vZ4UVBbqz0NMfp7lJbfrI/r/IGOy0Cjx2r9EJaC/TduT
         Bdjo5iaElGi+NdFQAnCkkpmASzf0FrKt12KkQMroQ2CILRlhSIMwLKorigzPvlEQWzdO
         ef69s3CsDZKYIS7eV7h6NwlAlYqr8jjcE+SH7V/iNRMau2JJYWQk/oe+lLtEpa/PXrga
         o6fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=XY8l4dcFYdLHgtRh2dT7GHN14BWFoRGsJyk/4Gu6Hh8=;
        b=jir2Us2oy+/mjEQzx0+Nu3HLAAlf04ezPSBHbxX/0hahwUL63vCELeEQEZfGL6rWEL
         Q1DPkuuiumG06u1sJjMUzxbxGu+IXwBC6UAEhDFGBk1NjqThHOAtcfHqve5mtAHZg+sz
         cnC8YeHzOXdjVfhqvqcJmab3w1gDioJKJRQD09LX24HfWoqrFT8M/Nez4/sZZauzWvf3
         Mo96OC1nMgLicWdKUNaIlmB9bq/XQO10EtZpysPvNuAOXLHpUxyNI9i3F9jAOT/tuPWy
         1jWprs3GG2q1HRURNKSXr3UJoP6qwPLpgY9N7721IQl7cRgqVjrAPDF0ddi4PCFiMdNn
         wzvw==
X-Gm-Message-State: AOAM532ByUQ/GlEvXRVg30u9wyJymrWyGLXNC11QAhQkT3tVGulc+pXI
	Em3Q4FehdDh4K5YF/FcT3Pudg3qhE1NhBsR3r838eQE3u0g=
X-Google-Smtp-Source: ABdhPJztmOy9v+MSHyogMhpcvVryxMVYqG+Ia3twly3LifQsjDYwQOi1vAZsSDPcw3JDyo7WAC8z9/B4FOZXwHna3Lw=
X-Received: by 2002:a54:4389:: with SMTP id u9mr1100627oiv.132.1631076511738;
 Tue, 07 Sep 2021 21:48:31 -0700 (PDT)
MIME-Version: 1.0
From: "Arun" <arun.sivakumaran@gmail.com>
Date: Tue, 7 Sep 2021 21:48:21 -0700
Message-ID: <CADphxr35hhr-1JT7YCYz-eG3RxsHv5ATA8AKJy5H9NPENo_q=Q@mail.gmail.com>
Subject: multilib SDK
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000156d5405cb7498dd"

--000000000000156d5405cb7498dd
Content-Type: text/plain; charset="UTF-8"

I have a custom project where I am building for 64-bit kernel and 32-bit
userspace using multilib config

*# for 32bit userspace build*


*require conf/multilib.confMULTILIBS =
"multilib:lib32"DEFAULTTUNE_virtclass-multilib-lib32 = "armv7athf-neon"*

I am successfully able to build the target image as
*MACHINE=<custom_machine> bitbake lib32-<custom_target>*

However, when I try to build the SDK, I am noticing that the userspace
recipes are being built for  both 64-bit and 32-bit. I am running into
errors for 64-bit. I have no need for 64-bit, *is there any way I can
disable 64-bit build for SDK?*

note: I am building SDK via this command without lib32- prefix for target,
following details from this commit message
<http://git.openembedded.org/openembedded-core/commit/?id=77144bc808be02deb3351c9c1bf5b4f2b8c3a6ec>
stating that lib32- prefix is not required
*MACHINE=<custom_machine> bitbake -c populate_sdk <custom_target>*

thanks
-Arun

--000000000000156d5405cb7498dd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have a custom project where I am building for 64-bit ker=
nel and 32-bit userspace using multilib config<div><br></div><div><i># for =
32bit userspace build</i><br><b style=3D"">require conf/multilib.conf<br>MU=
LTILIBS =3D &quot;multilib:lib32&quot;<br>DEFAULTTUNE_virtclass-multilib-li=
b32 =3D &quot;armv7athf-neon&quot;</b><br></div><div><br></div><div>I am su=
ccessfully able to build the target image as</div><div><b><i>MACHINE=3D&lt;=
custom_machine&gt; bitbake lib32-&lt;custom_target&gt;</i></b></div><div><b=
r></div><div>However, when I try to build the SDK, I am noticing that the u=
serspace recipes are being built for=C2=A0 both 64-bit and 32-bit. I am run=
ning into errors for 64-bit. I have no need for 64-bit, <b>is there any way=
 I can disable 64-bit build for SDK?</b></div><div><br></div><div>note: I a=
m building SDK via this command without lib32- prefix for target, following=
=C2=A0details from <a href=3D"http://git.openembedded.org/openembedded-core=
/commit/?id=3D77144bc808be02deb3351c9c1bf5b4f2b8c3a6ec">this commit message=
</a> stating that lib32- prefix is not required</div><div><i><b>MACHINE=3D&=
lt;custom_machine&gt; bitbake -c populate_sdk &lt;custom_target&gt;</b></i>=
</div><div><i><b><br></b></i></div><div>thanks</div><div>-Arun</div></div>

--000000000000156d5405cb7498dd--
