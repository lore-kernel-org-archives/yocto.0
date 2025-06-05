Return-Path: <juan.aguirre@omron.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F133FC5AE59
	for <webhook@archiver.kernel.org>; Thu,  5 Jun 2025 22:05:34 +0000 (UTC)
Subject: Re: [yocto] Problem with package task, getting error "Cannot change ownership to uid 0, gid 0: Operation not permitted"
To: "Juan Aguirre" <juan.aguirre@omron.com>, yocto@lists.yoctoproject.org
From: "Juan Aguirre" <juan.aguirre@omron.com>
X-Originating-Location: Nuevo Laredo, Tamaulipas, MX (165.225.218.100)
X-Originating-Platform: Windows Chrome 137
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 05 Jun 2025 15:05:26 -0700
References: <U3go.1749155584659822733.jcQ5@lists.yoctoproject.org>
In-Reply-To: <U3go.1749155584659822733.jcQ5@lists.yoctoproject.org>
Message-ID: <15723.1749161126204922642@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="aikAJIl5vCRuGGjnTLfF"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Jun 2025 22:05:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65484

--aikAJIl5vCRuGGjnTLfF
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Just for testing the use of fakeroot I tried to override the perform_packag=
ecopy function with the command that I previously mentioned, but got the fo=
llowing error:

>=20
> Exception: subprocess.CalledProcessError: Command 'fakeroot sh -c "tar
> --exclude=3D./sysroot-only -cf - -C
> /mnt/data/build/tmp-glibc/work/aarch64-oe-linux/angular-cli/15.1.2/image
> -p -S . | tar -xf - -C
> /mnt/data/build/tmp-glibc/work/aarch64-oe-linux/angular-cli/15.1.2/packag=
e"'
> returned non-zero exit status 127.
> Subprocess output:
> /bin/sh: 1: fakeroot: not found
>=20

Why this command work in devshell but seems like the implementation inside =
perform_packagecopy can't find fakeroot?

--aikAJIl5vCRuGGjnTLfF
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Just for testing the use of fakeroot I tried to override the perform_p=
ackagecopy function with the command that I previously mentioned, but got t=
he following error:&nbsp;</div>
<div>&nbsp;</div>
<blockquote>
<div>
<div>Exception: subprocess.CalledProcessError: Command 'fakeroot sh -c "tar=
 --exclude=3D./sysroot-only -cf - -C /mnt/data/build/tmp-glibc/work/aarch64=
-oe-linux/angular-cli/15.1.2/image -p -S . | tar -xf - -C /mnt/data/build/t=
mp-glibc/work/aarch64-oe-linux/angular-cli/15.1.2/package"' returned non-ze=
ro exit status 127.</div>
<div>Subprocess output:<br />/bin/sh: 1: fakeroot: not found</div>
</div>
</blockquote>
<div>&nbsp;</div>
<div>Why this command work in devshell but seems like the implementation in=
side perform_packagecopy can't find fakeroot?</div>

--aikAJIl5vCRuGGjnTLfF--

