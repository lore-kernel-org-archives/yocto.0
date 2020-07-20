Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web11.38013.1595253280519535432
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jul 2020 06:54:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=A7GPU+SG;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f53.google.com with SMTP id f7so17966526wrw.1
        for <yocto@lists.yoctoproject.org>; Mon, 20 Jul 2020 06:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=PmMEjp+Gqcs9Di0l30FXxA5BviUGPXJ84HshjJmP3z4=;
        b=A7GPU+SG0K+U7xEBdrHwAXpNBUfMRqAsjxCDFj2+ehKd4Z6QfvKTIXkDvQaRrz5QH8
         AheUEoNe0yrxvnAU+5Tx/qhE7KSdQLkSas7/4VpLobdlRa0IqgFlOLRhXbTWjQWGGxLy
         t4B1t4LiVkUCkK2Fcvd+Sp6EtvfdICJJ93uVc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=PmMEjp+Gqcs9Di0l30FXxA5BviUGPXJ84HshjJmP3z4=;
        b=WUjs7JQKtB20DED+sjuAxajaTAnlWwthilzCqBKCjj+72H+1behJXVfMkpxfmvQE0h
         oAVj0hNx77GP2YfxCY4qLhvGu/GChVvIMli0BhQV6eEKSUc5kWcX9cIZkPyGsgHV9Vlc
         t9IWpa0tCXnmjX+HANwWL+4tShI5UORL1IINI/pK69P+CRnd9mccPreCtice94edfM7R
         vXW+SRKkvN4NI50t8WUVxzpZqWbLDo4YfUGvGb+4n363Hto2GvQRO84tUe1tPnqM5NUt
         ETSOhc3Moo6eDh24LZiZBqBsZm5GRaQr489Vmg+zxt7NN9Rh1FYio0taKKRIuHF4XU2r
         kFGQ==
X-Gm-Message-State: AOAM533+K1phQ/ZzKkWmdtCFWV4Eelf5UZ+GzvhG5em8wiaWJ24BkE1f
	KFjxFRTlcMN20R6/GHuvSBdKkA==
X-Google-Smtp-Source: ABdhPJy+RdEoakI9OjK6F/qAPjb608uOww6dSUuR+/dz3wkG0CfD0H6ANz1qCxehdrShL+J+4Sp8kw==
X-Received: by 2002:adf:d0d0:: with SMTP id z16mr23502545wrh.95.1595253278754;
        Mon, 20 Jul 2020 06:54:38 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 5.f.a.a.6.6.c.6.8.7.0.3.0.b.c.1.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (5.f.a.a.6.6.c.6.8.7.0.3.0.b.c.1.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:1cb0:3078:6c66:aaf5])
        by smtp.gmail.com with ESMTPSA id z1sm33573318wru.30.2020.07.20.06.54.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2020 06:54:38 -0700 (PDT)
Message-ID: <f7fc0973c145bd10b5196d42b8b2903a624d4c20.camel@linuxfoundation.org>
Subject: Re: [yocto] Offline Build #yocto
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "Amrun Nisha.R" <amrunnishar@gmail.com>, yocto@lists.yoctoproject.org
Date: Mon, 20 Jul 2020 14:54:35 +0100
In-Reply-To: <O27O.1595225107952785470.PzJ1@lists.yoctoproject.org>
References: <O27O.1595225107952785470.PzJ1@lists.yoctoproject.org>
User-Agent: Evolution 3.36.3-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, 2020-07-19 at 23:05 -0700, Amrun Nisha.R wrote:
> I want to create a offline build using yocto.=20
>=20
> I have sources and downloads packages directory in which i can able to cr=
eate a successful bitbake. I have transferred those files to another system=
 and tried to build them in offline but it is not working. During Bitbake, =
I got the below error.
> =20
> ERROR: gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0 do_unpack: Fet=
cher failure: Fetch command export PSEUDO_DISABLED=3D1; export DBUS_SESSION=
_BUS_ADDRESS=3D"unix:abstract=3D/tmp/dbus-g7k0CS09Dd,guid=3D12ec7c389f454ed=
f56e65e9a5f1271ce"; export SSH_AGENT_PID=3D"1474"; export SSH_AUTH_SOCK=3D"=
/tmp/ssh-uwTL38C6OxLZ/agent.1310"; export PATH=3D"/home/admin/Platform_Buil=
d/yocto/sources/poky/scripts/native-intercept:/home/admin/Platform_Build/yo=
cto/sources/poky/scripts:/home/admin/Platform_Build/yocto/build/tmp/work/x8=
6_64-linux/gnu-config-native/20150728+gitAUTOINC+b576fa87c1-r0/recipe-sysro=
ot-native/usr/bin/x86_64-linux:/home/admin/Platform_Build/yocto/build/tmp/w=
ork/x86_64-linux/gnu-config-native/20150728+gitAUTOINC+b576fa87c1-r0/recipe=
-sysroot-native/usr/bin:/home/admin/Platform_Build/yocto/build/tmp/work/x86=
_64-linux/gnu-config-native/20150728+gitAUTOINC+b576fa87c1-r0/recipe-sysroo=
t-native/usr/sbin:/home/admin/Platform_Build/yocto/build/tmp/work/x86_64-li=
nux/gnu-config-native/20150728+gitAUTOINC+b576fa87c1-r0/recipe-sysroot-nati=
ve/usr/bin:/home/admin/Platform_Build/yocto/build/tmp/work/x86_64-linux/gnu=
-config-native/20150728+gitAUTOINC+b576fa87c1-r0/recipe-sysroot-native/sbin=
:/home/admin/Platform_Build/yocto/build/tmp/work/x86_64-linux/gnu-config-na=
tive/20150728+gitAUTOINC+b576fa87c1-r0/recipe-sysroot-native/bin:/home/admi=
n/Platform_Build/yocto/sources/poky/bitbake/bin:/home/admin/Platform_Build/=
yocto/build/tmp/hosttools"; export HOME=3D"/home/admin"; git -c core.fsynco=
bjectfiles=3D0 clone -s -n /home/admin/Platform_Build/pltswcode/Yocto/Linux=
/downloads//git2/git.savannah.gnu.org.config.git/ /home/admin/Platform_Buil=
d/yocto/build/tmp/work/x86_64-linux/gnu-config-native/20150728+gitAUTOINC+b=
576fa87c1-r0/git/ failed with exit code 128, output:
> fatal: repository '/home/admin/Platform_Build/pltswcode/Yocto/Linux/downl=
oads//git2/git.savannah.gnu.org.config.git/' does not exist
> =20
> ERROR: gnu-config-native-20150728+gitAUTOINC+b576fa87c1-r0 do_unpack: Fun=
ction failed: base_do_unpack
> ERROR: Logfile of failure stored in: /home/admin/Platform_Build/yocto/bui=
ld/tmp/work/x86_64-linux/gnu-config-native/20150728+gitAUTOINC+b576fa87c1-r=
0/temp/log.do_unpack.619
> ERROR: Task (virtual:native:/home/admin/Platform_Build/yocto/sources/poky=
/meta/recipes-devtools/gnu-config/gnu-config_git.bb:do_unpack) failed with =
exit code '1'
> NOTE: Tasks Summary: Attempted 68 tasks of which 63 didn't need to be rer=
un and 1 failed.
> =20
> Summary: 1 task failed:
>   virtual:native:/home/admin/Platform_Build/yocto/sources/poky/meta/recip=
es-devtools/gnu-config/gnu-config_git.bb:do_unpack
> Summary: There was 1 WARNING message shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit cod=
e.
>=20
> I want to know :
> 1. Why the bitbake command is not taking the downloads directory as it is=
 ?
> 2. Is there any other way to create the offline build without downloading=
 the yocto packages?

In theory what you're describing should work. Could you share the
do_fetch and do_unpack logs for the failing recipe so what we can see
why it thinks it needs to download this again.

gnu-config-native-20150728 suggests this is an older yocto project
release too (between 2015 and 2018), its possible the issue was fixed
in master or later release branches.

Cheers,

Richard


