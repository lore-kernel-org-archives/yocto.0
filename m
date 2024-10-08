Return-Path: <mtownsend1973@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60D32CFA754
	for <webhook@archiver.kernel.org>; Tue,  8 Oct 2024 09:00:10 +0000 (UTC)
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
 by mx.groups.io with SMTP id smtpd.web10.4492.1728378005333642346
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Oct 2024 02:00:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=fvi9g6lP;
 spf=pass (domain: gmail.com, ip: 209.85.161.49, mailfrom: mtownsend1973@gmail.com)
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-5e5a0519d00so1949481eaf.3
        for <yocto@lists.yoctoproject.org>; Tue, 08 Oct 2024 02:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728378004; x=1728982804; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=BQw588kcanDmRf3q4WDyhDAY0Y5sBWPNa3MmZUZXtzw=;
        b=fvi9g6lPk6xXP6J0ggjK94J/mdke9mX1+wxJwiFDJB15n+g1D8CaYcGE6wNsSCUieS
         1EKknvJW19uVfp9H5v5AOmKMtvyWr6sTZdlUqShOJhKT9SKb8ec8yka0c6nCBf0HQmaF
         HQhTGXcK0AZET+6HELYcY2/xqnfzz2KZT/kNNS+hRS9meLOGKW9nPGGehdsDHdlvoKzJ
         KCdERqhc1XlPcIjTfPWz4G204p5D/n7ev9/wBHhe2S54rZCon+UrR4CSVttyhM/pQzsV
         CEAhkRXS8tuXIiBTIfJ+C7vR6JpU297iufxoT9gigdDgI9DJ2hbKb+slTdpYuCdD+HId
         HFUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728378004; x=1728982804;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BQw588kcanDmRf3q4WDyhDAY0Y5sBWPNa3MmZUZXtzw=;
        b=CMdCwVpRVx+/R/+yhCz+K7kT+tggs2K8Od3n9NHfyx+mecvQuQCCliZFa1k5ulQ0cN
         bQlB4yO8u64hYkLzgPLM3iEX45md4sNZsjfJaar5/OU6AwfT9PcxYL7qnbmXkGRJgYVJ
         mJPcs+4ObKSLKJSaaZmeETFyF9zKWTU5oh+H33sH2VD+qaRUV5AViwrBeFLjJGINeBIq
         NGlKn/7oj1zUxy2iTQL31CGaauT5JJ/dsWgS5iobcf3yPnbrln1NGJbjkMkNnCQjgaDF
         zrUn+op4RoAkFfFp4StUBl7+7ENKm6rsKXo1TQvEmHy+96MuRVo3mQ9595S/GgojfmcL
         UwgQ==
X-Gm-Message-State: AOJu0YyOP2fwvJUD5vFn75XZ5x6Ot6g609cvCmsALIYv2NxfojRvdmXF
	yNaO6W2YbiTk6nCnk01fzt8wbumuhvwOfcyiWihq5XguYC19IzHDiFRTeAu+ZZdPDO9taSHAkMK
	lCcwzmxORwVI4RK8a1D7RvUPAWx0MQlFy
X-Google-Smtp-Source: AGHT+IFybF9WTYFO2Ekf12/Dvn3RQRtusvXcdYuIBB3Dsx+C4KB950YPOupf0Sy+StnHyo8c+D9YqssvGK3lhxKXKZY=
X-Received: by 2002:a05:6870:55cd:b0:287:0:9ecc with SMTP id
 586e51a60fabf-287c2007bd3mr8903799fac.33.1728378004091; Tue, 08 Oct 2024
 02:00:04 -0700 (PDT)
MIME-Version: 1.0
From: Martin Townsend <mtownsend1973@gmail.com>
Date: Tue, 8 Oct 2024 09:59:52 +0100
Message-ID: <CABatt_y=r7PznrwL1Mc6kcigZcmpcLQPmCuxCP4kzv81ObBXOg@mail.gmail.com>
Subject: Scarthgap: rust-native: install error cannot find -lc++
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f8bfe50623f35cd7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Oct 2024 09:00:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63960

--000000000000f8bfe50623f35cd7
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm currently upgrading to Scarthgap and I have one outstanding issue in
that rust-native is not installing.  The error message I see is

 = note: /ws//build/tmp/hosttools/ld: cannot find -lc++
|           collect2: error: ld returned 1 exit status

I'm using clang by default, I have the following in local.conf
TOOLCHAIN = "clang"
TC_CXX_RUNTIME = "llvm"
LIBCPLUSPLUS = "-stdlib=libc++

and the following in a distro conf

PREFERRED_PROVIDER_llvm = "clang"
PREFERRED_PROVIDER_llvm-native = "clang-native"
PREFERRED_PROVIDER_nativesdk-llvm = "nativesdk-clang"
PROVIDES:pn-clang = "llvm"
PROVIDES:pn-clang-native = "llvm-native"
PROVIDES:pn-nativesdk-clang = "nativesdk-llvm"

I've tried the head of Scarthgap for poky and also the 5.0_M3 tag.

Any help greatly appreciated,

Many Thanks,
Martin.

--000000000000f8bfe50623f35cd7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>I&#39;m currently upgrading to Scarthgap and I =
have one outstanding issue in that rust-native is not installing.=C2=A0 The=
 error message I see is<br><br>=C2=A0=3D note: /ws//build/tmp/hosttools/ld:=
 cannot find -lc++<br>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 collect2: error:=
 ld returned 1 exit status<br><br>I&#39;m using clang by default, I have th=
e following in local.conf<br>TOOLCHAIN =3D &quot;clang&quot;<br>TC_CXX_RUNT=
IME =3D &quot;llvm&quot;<br>LIBCPLUSPLUS =3D &quot;-stdlib=3Dlibc++<br><br>=
and the following in a distro conf<br><br>PREFERRED_PROVIDER_llvm =3D &quot=
;clang&quot;<br>PREFERRED_PROVIDER_llvm-native =3D &quot;clang-native&quot;=
<br>PREFERRED_PROVIDER_nativesdk-llvm =3D &quot;nativesdk-clang&quot;<br>PR=
OVIDES:pn-clang =3D &quot;llvm&quot;<br>PROVIDES:pn-clang-native =3D &quot;=
llvm-native&quot;<br>PROVIDES:pn-nativesdk-clang =3D &quot;nativesdk-llvm&q=
uot;<br><br>I&#39;ve tried the head of Scarthgap for poky and also the 5.0_=
M3 tag.<br><br>Any help greatly appreciated,<br><br>Many Thanks,<br>Martin.=
<br></div>

--000000000000f8bfe50623f35cd7--

