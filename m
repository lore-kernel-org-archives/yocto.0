Received: from mail-io1-f48.google.com (mail-io1-f48.google.com [209.85.166.48])
 by mx.groups.io with SMTP id smtpd.web12.21230.1596209720281538157
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Jul 2020 08:35:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=ZUVc0LGa;
 spf=pass (domain: linaro.org, ip: 209.85.166.48, mailfrom: ryan.harkin@linaro.org)
Received: by mail-io1-f48.google.com with SMTP id g19so19976621ioh.8
        for <yocto@lists.yoctoproject.org>; Fri, 31 Jul 2020 08:35:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=3WON6TB+AyDwednyLhLlxtJFoPB0mJCppKHDVWcF0wI=;
        b=ZUVc0LGaeFtTfYq3NX+TEOUVORdinqwAKwVLF4K3ucQeIyMyrp3zFFQwPsVuJS+R0v
         6K7OL+AEHzL3q+wRl6+ZbL/LaOwoV97hlNi8r0PPagiftx1U1uV6ve3PDBJqkNv7Natd
         UJJ/PSTrXFQJoSctyF72V29jemurPeIWiH7y+hjMuRIuZ3Jrhf6XLn5bCBqGPYbOL6Kj
         ixv8DnMqqmMrn5ou+M0ZtEMnexGJCjNVfgR2rK5EK33K9QBDP+3Rt1W5eicT13YGkp3C
         GDqEu3xJb1YeoZ1l8aNTilFDfjA+7WHyVTjYjczSiAndvMhhHVNqXTPgwzVPLP78broR
         THlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=3WON6TB+AyDwednyLhLlxtJFoPB0mJCppKHDVWcF0wI=;
        b=tluYzTMQPgaXzw80zyscnNPgbH8iG2BVvqSGvGC+vZ9ARyhz46yn0lIuLUF4TsWpx2
         BHvePFByicQxWUAlE0FzjWhb3gYxXqmg+vhbgM7y815ZqjPRk0S4xMWm+XWFrtUrA5jX
         WLCoe5Ny/Nk7SLCXOY2rzCUr5WV31pYT3Z5pC8M+G30zAiUOG5I6bO+pHIHEhz7gdIJL
         23+RoXTsBXGZQeTOSzxhuG+2QaREElPo//6TBQU7PVq/Ui5j/WZEDfAaeU9zzwZkDE8V
         05PW1j8tuYXWV/puAhwLutX+tMixikB9jW7roHpipib3j4n15FsVO0j5G+i+0h/K8tNK
         +kCQ==
X-Gm-Message-State: AOAM531hl4uJgcqtrheasFUsMd/5ctNG8nxnBVwr0RFkc9U6jWAUIpDk
	Obd1rx1APEcvAbXctAngNZbrW23FOrsEAUkVAxVMfJypZ6w=
X-Google-Smtp-Source: ABdhPJwJKEKmPYmhnTYj1msVvoNUgC7Lbgp9BNxs6z1DDEmd6A9ERLWDvflNOWw5H0G1NI5Tz2EriK++5l3gNGWhCns=
X-Received: by 2002:a5e:d90a:: with SMTP id n10mr4161068iop.50.1596209719436;
 Fri, 31 Jul 2020 08:35:19 -0700 (PDT)
MIME-Version: 1.0
From: "Ryan Harkin" <ryan.harkin@linaro.org>
Date: Fri, 31 Jul 2020 16:35:08 +0100
Message-ID: <CAD0U-hK2euAfxe2EZ2QhWa+QQ0cVMNmSh6SUMbKy9GnB7BVHUQ@mail.gmail.com>
Subject: dunfell gcc-sanitizers-arm-8.3 fails to build
To: yocto@lists.yoctoproject.org
Cc: Sumit Garg <sumit.garg@linaro.org>, Ralph Siemsen <ralph.siemsen@linaro.org>, Jon.Mason@arm.com, 
	Nicolas Dechesne <nicolas.dechesne@linaro.org>, openembedded <openembedded@lists.linaro.org>
Content-Type: multipart/alternative; boundary="00000000000050798205abbe8944"

--00000000000050798205abbe8944
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm migrating from Warrior to Dunfell and I'm getting a curious build
failure in gcc-sanitizers.

Here's the full gory detail:
    https://pastebin.ubuntu.com/p/nh4cDKMvgS/

However, the main error is this:

| In file included from
../../../../../../../../../work-shared/gcc-arm-8.3-r2019.03/git/libsanitizer/sanitizer_common/sanitizer_platform_limits_posix.cc:193:
|
../../../../../../../../../work-shared/gcc-arm-8.3-r2019.03/git/libsanitizer/sanitizer_common/sanitizer_internal_defs.h:317:72:
error: size of array 'assertion_failed__1152' is negative
|      typedef char IMPL_PASTE(assertion_failed_##_, line)[2*(int)(pred)-1]

I have no idea where to begin with this. I don't even know why
gcc-sanitizers is included in the build, what it does, or why I need it.
I'm building an image with dev packages and gcc, so I guess that's why.

I've hacked meta-arm to patch sanitizer_platform_limits_posix.cc to null
out the macros and that builds fine. I'm sure it won't work, should someone
want to use it, mind you.

Is there something obvious that I should be doing as part of a Warrior ->
Dunfell migration to get this to work?

note: Warrior used meta-linaro-toolchain and for Dunfell, it's moved to
meta-arm-toolchain.

Regards,
Ryan.

--00000000000050798205abbe8944
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I&#39;m migrating fro=
m Warrior to Dunfell and I&#39;m getting a curious build failure in gcc-san=
itizers.</div><div><br></div><div>Here&#39;s the full gory detail:</div>=C2=
=A0 =C2=A0=C2=A0<a href=3D"https://pastebin.ubuntu.com/p/nh4cDKMvgS/">https=
://pastebin.ubuntu.com/p/nh4cDKMvgS/</a><br><div><br></div><div>However, th=
e main error is this:</div><div><br></div><div>| In file included from ../.=
./../../../../../../../work-shared/gcc-arm-8.3-r2019.03/git/libsanitizer/sa=
nitizer_common/sanitizer_platform_limits_posix.cc:193:<br>| ../../../../../=
../../../../work-shared/gcc-arm-8.3-r2019.03/git/libsanitizer/sanitizer_com=
mon/sanitizer_internal_defs.h:317:72: error: size of array &#39;assertion_f=
ailed__1152&#39; is negative<br>| =C2=A0 =C2=A0 =C2=A0typedef char IMPL_PAS=
TE(assertion_failed_##_, line)[2*(int)(pred)-1]<br></div><div><br></div><di=
v>I have no idea where to begin with this. I don&#39;t even know why gcc-sa=
nitizers is included in the build,=C2=A0what it=C2=A0does, or why I need=C2=
=A0it. I&#39;m building an image with dev packages and gcc, so I guess that=
&#39;s why.</div><div><br></div><div>I&#39;ve hacked meta-arm to patch=C2=
=A0sanitizer_platform_limits_posix.cc to null out the macros and that build=
s fine. I&#39;m sure it won&#39;t work, should someone want to use it, mind=
 you.</div><div><br></div><div>Is there something obvious that I should be =
doing as part of a Warrior -&gt; Dunfell migration to get this to work?</di=
v><div><br></div><div>note: Warrior used meta-linaro-toolchain and for Dunf=
ell, it&#39;s moved to meta-arm-toolchain.</div><div><br></div><div>Regards=
,</div><div>Ryan.</div></div>

--00000000000050798205abbe8944--
