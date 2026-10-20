Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.2837.1792520329499521455
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Oct 2026 11:18:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20251104.gappssmtp.com header.s=20251104 header.b=Xy3/H5R4;
 spf=pass (domain: smile.fr, ip: 209.85.221.44, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-48e20edd106so785620f8f.1
        for <yocto@lists.yoctoproject.org>; Tue, 20 Oct 2026 11:18:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20251104.gappssmtp.com; s=20251104; t=1792520327; x=1793125127; darn=lists.yoctoproject.org;
        h=in-reply-to:references:from:subject:to:message-id:date:content-type
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=BBY9NxFLFPYNS0DyHRTCT7BulR/BCSOsXDtu657nhRk=;
        b=Xy3/H5R4Ug181swUk2Uy/BNKIrAofEh75013nQxlS4aRR0ZM2fezS+g32pdxpyNmj+
         5quNSkZNW5g1+Pt6lyDPlGXyX53AC7VIH7caP05J6RPRCbYefb5IjuL5j1tC+mLFG6Su
         2e0YS/Kpm7INLiOejX0orDFkCoeeO0Y6qCM2AG2/qGNuwZMn6MC0pgz5QQKtAwZ2KkCc
         Pcmwf9L3krxnI6ZzhvL0sSGcq0x1kJ6JF0iTJTNn6Me/9SIawIwDZPp67m3qjawFOUQX
         ilTm4IUNT0cboNlCDHKMYGmIuQlzc1gzFOuLRdHbIKsbutQhhOVzL+gSbkmXDmjiIlUQ
         GvaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792520327; x=1793125127;
        h=in-reply-to:references:from:subject:to:message-id:date:content-type
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=BBY9NxFLFPYNS0DyHRTCT7BulR/BCSOsXDtu657nhRk=;
        b=i9XNm6mLPBERVy9znn1tYtJPas1oymDTArGZbLkjaBXYQk0sBrKpwKi2r4Q0dpO8Mf
         2jv6VoeboEnW/V8tnv93dNOaTAJqfIFc1r/4hIbHzCe2PubNtIqnrgyJUJFPXF69xzEi
         IzjZkQKNip4d6jyxUIYD2CSPS2Iz7nXy0lcF+D2PheAh3n5PwyhXazxwejj3pfpgvHiL
         j6dZ/eG59jRcLlXWQ1/x/LASxAig4+PE0OnA0l3ZYtrSPYZLlO538fGEnYISlkBlTyeB
         xOvHNapv/wBWrph3s2KoegKvLKltIosn9SZrkX4TqJ13ZhLVPtOFXV/mZqV0Z99osaub
         duqA==
X-Gm-Message-State: AFq9FYLFCdR+wrrqOxZMHMo/SJE1Qo2KOsaHQqnAVhGYmjes2c0wlAXp
	s2hYf2MR0oIxK8K7ZhqFjAb3N0BcZqH1/cV05TFDgzIlR630sDVB90D+xFeDsW0mLpg67CR4vyV
	vP6TEER0=
X-Gm-Gg: AYBFou3nb8ZcZiFxr6DySeRzZUHzmzEo++10ym9ZNmLAwm7R0Ow1MwWtDxiG+13lgtr
	7TNsxvZeicK2S04xq86mHARAe9W1T3zN1CZfTICEe5loiNDyqCDzaY+xO4+TqkNKBRUIa9Rt/wO
	pZxquY4rS6R8OgTljsmelGy5SE18zNlSdZ/i6r0Xh6M2jkifc1X/nmutmBXGIBn/c5cNjnrO+ar
	lvJwml4Frv8cyx0TmoFG4Vt+UKNI29y60+DUB0DBpuq268CePQUHawI3sgbXcKKxmwaep5GFbqv
	yudmDzsDh3ChFgz0fr4IRexjsbVitfi/37iSHDPze66g5tJKc8Jl6CjIMbarFP/8dOC1+YN/HTR
	AGTk490laA+rgHhNl515jyKsivXgutRDLIteB7VXGB/y/7Lz4GpeBUEJ7/xsT/NHPOpeEhDOZ2G
	YC1TOc6cDQs0XrrbagYBjgJ/XC1bLuUWiS8vGsEFA/QS9G6pfF4gyOzRVqDDIH30qCaLoM8UjbT
	kRZB3D+4TB8X4AgWmon4H9mJf5i/WxrzhKhelDGTS6Of2vZrUH8sUNF8tJI3Q==
X-Received: by 2002:a5d:4103:0:b0:488:5af8:eabc with SMTP id ffacd0b85a97d-48e07f99139mr18218985f8f.26.1792520327442;
        Tue, 20 Oct 2026 11:18:47 -0700 (PDT)
Return-Path: <yoann.congal@smile.fr>
Received: from localhost (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e254ef1bfsm140511f8f.6.2026.10.20.11.18.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2026 11:18:47 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 20 Oct 2026 20:18:46 +0200
Message-Id: <DM9VF9OJMDIB.1KZKR8SY4Q9NP@smile.fr>
To: <yocto@lists.yoctoproject.org>, <Anders.Montonen@iki.fi>
Subject: Re: [yocto] SPDX 3 generation broken in Scarthgap?
From: "Yoann Congal" <yoann.congal@smile.fr>
X-Mailer: aerc 0.20.0
References: <C31FFA20-728D-442B-9229-10914FD47639@iki.fi>
In-Reply-To: <C31FFA20-728D-442B-9229-10914FD47639@iki.fi>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <yocto@lists.yoctoproject.org>; Tue, 20 Oct 2026 18:18:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66770

Hello,

On Tue Oct 20, 2026 at 7:08 PM CEST, Anders Montonen via lists.yoctoproject=
.org wrote:
> 1. Clone the scarthgap branch of the poky repository (HEAD and 5.0.20 see=
ms to work identically)
> 2. Run "source oe-init-build-env"
> 3. Add the lines listed in the documentation to local.conf:
> 	INHERIT_DISTRO:remove =3D "create-spdx"
> 	INHERIT_DISTRO:append =3D " create-spdx-3.0=E2=80=9D
> 4. Run =E2=80=9Cbitbake -k core-image-minimal=E2=80=9D

This is the SPDX30Check.test_core_image_minimal testcase that runs as
part of the regular oe-selftest builds: eg:
https://autobuilder.yoctoproject.org/valkyrie/?#/builders/48/builds/4875/st=
eps/18/logs/stdio (line 1764)

But the test does not use INHERIT_DISTRO but :
INHERIT:remove =3D "create-spdx"
INHERIT +=3D "create-spdx-3.0"

I think this is an issue because the poky DISTRO adds create-spdx to
INHERIT (not INHERIT_DISTRO) in poky.conf. This means that in your
config you have both create-spdx and create-spdx-3.0 in INHERIT, and
that would explain the below issue.

Does changing to INHERIT modification fixes you issue?

> I get an endless stream of error messages like the following:
> ERROR: zstd-native-1.5.5-r0 do_create_runtime_spdx: Error executing a pyt=
hon function in exec_func_python() autogenerated:                          =
 =20
>                                                                          =
                                                                           =
 =20
> The stack trace of python calls that resulted in this exception/failure w=
as:                                                                        =
 =20
> File: 'exec_func_python() autogenerated', lineno: 2, function: <module>  =
                                                                           =
 =20
>      0001:                                                               =
                                                                           =
 =20
>  *** 0002:sstate_task_postfunc(d)                                        =
                                                                           =
 =20
>      0003:                                                               =
                                                                           =
 =20
> File: '/home/anders/work/yocto/spdx/poky/meta/classes-global/sstate.bbcla=
ss', lineno: 792, function: sstate_task_postfunc                           =
 =20
>      0788:                                                               =
                                                                           =
 =20
>      0789:    sstateinst =3D d.getVar("SSTATE_INSTDIR")                  =
                                                                           =
   =20
>      0790:    d.setVar('SSTATE_FIXMEDIR', shared_state['fixmedir'])      =
                                                                           =
 =20
>      0791:                                                               =
                                                                           =
 =20
>  *** 0792:    sstate_installpkgdir(shared_state, d)                      =
                                                                           =
 =20
>      0793:                                                               =
                                                                           =
 =20
>      0794:    bb.utils.remove(d.getVar("SSTATE_BUILDDIR"), recurse=3DTrue=
)                                                                          =
   =20
>      0795:}                                                              =
                                                                           =
 =20
>      0796:sstate_task_postfunc[dirs] =3D "${WORKDIR}"                    =
                                                                           =
   =20
> File: '/home/anders/work/yocto/spdx/poky/meta/classes-global/sstate.bbcla=
ss', lineno: 408, function: sstate_installpkgdir                           =
 =20
>      0404:        oe.path.remove(dir)                                    =
                                                                           =
 =20
>      0405:                                                               =
                                                                           =
 =20
>      0406:    for state in ss['dirs']:                                   =
                                                                           =
 =20
>      0407:        prepdir(state[1])                                      =
                                                                           =
 =20
>  *** 0408:        bb.utils.rename(sstateinst + state[0], state[1])       =
                                                                           =
 =20
>      0409:    sstate_install(ss, d)                                      =
                                                                           =
 =20
>      0410:                                                               =
                                                                           =
 =20
>      0411:    for plain in ss['plaindirs']:                              =
                                                                           =
 =20
>      0412:        workdir =3D d.getVar('WORKDIR')                        =
                                                                           =
   =20
> File: '/home/anders/work/yocto/spdx/poky/bitbake/lib/bb/utils.py', lineno=
: 1791, function: rename                                                   =
 =20
>      1787:        if err.errno =3D=3D 18:                                =
                                                                           =
     =20
>      1788:            # Invalid cross-device link error                  =
                                                                           =
 =20
>      1789:            shutil.move(src, dst)                              =
                                                                           =
 =20
>      1790:        else:                                                  =
                                                                           =
 =20
>  *** 1791:            raise err                                          =
                                                                           =
 =20
>      1792:                                                               =
                                                                           =
 =20
>      1793:@contextmanager                                                =
                                                                           =
 =20
>      1794:def environment(**envvars):                                    =
                                                                           =
 =20
>      1795:    """                                                        =
                                                                           =
 =20
> File: '/home/anders/work/yocto/spdx/poky/bitbake/lib/bb/utils.py', lineno=
: 1785, function: rename                                                   =
 =20
>      1781:# Wrapper around os.rename which can handle cross device proble=
ms                                                                         =
 =20
>      1782:# e.g. from container filesystems
>      1783:def rename(src, dst):
>      1784:    try:
>  *** 1785:        os.rename(src, dst)=20
>      1786:    except OSError as err:
>      1787:        if err.errno =3D=3D 18:=20
>      1788:            # Invalid cross-device link error
>      1789:            shutil.move(src, dst)
> Exception: FileNotFoundError: [Errno 2] No such file or directory: '/home=
/anders/work/yocto/spdx/poky/build/tmp/work/x86_64-linux/zstd-native/1.5.5/=
sstate-build-create_runtime_spdx/runtime-deploy' -> '/home/anders/work/yoct=
o/spdx/poky/build/tmp/work/x86_64-linux/zstd-native/1.5.5/spdx/3.0.1/runtim=
e-deploy'
>
> ERROR: Logfile of failure stored in: /home/anders/work/yocto/spdx/poky/bu=
ild/tmp/work/x86_64-linux/zstd-native/1.5.5/temp/log.do_create_runtime_spdx=
.73188
> ERROR: Task (virtual:native:/home/anders/work/yocto/spdx/poky/meta/recipe=
s-extended/zstd/zstd_1.5.5.bb:do_create_runtime_spdx) failed with exit code=
 =E2=80=981'
>
> Any hints or advice? I assume it=E2=80=99s meant to work.
>
> Regards,
> Anders Montonen


--=20
Yoann Congal
Smile ECS

