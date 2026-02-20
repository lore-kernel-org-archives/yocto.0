Return-Path: <jmeyron@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C916C5518F
	for <webhook@archiver.kernel.org>; Fri, 20 Feb 2026 10:23:32 +0000 (UTC)
Received: from mail-yx1-f47.google.com (mail-yx1-f47.google.com [74.125.224.47])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.35434.1771583010520131908
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Feb 2026 02:23:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=IjQ5LRVi;
 spf=pass (domain: gmail.com, ip: 74.125.224.47, mailfrom: jmeyron@gmail.com)
Received: by mail-yx1-f47.google.com with SMTP id 956f58d0204a3-649dbff9727so1959066d50.3
        for <yocto@lists.yoctoproject.org>; Fri, 20 Feb 2026 02:23:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771583009; cv=none;
        d=google.com; s=arc-20240605;
        b=TleEoxDsBn6U5d3u3amFr4JzhoSK9/CxFMGwvjNCUTKt/q2mHNW8IDD+odxTvZ3CiS
         0tNclrR3ZsVU2UHaCyO9HmTEeD16iAxDOjH/j4KNxSr1hTO120zVB97bVMN03vpgJfHx
         e2A3Zw1CmVPuFgxLOLJ0HV75CBjAnwaLPYa0YB9XIIThLpGhmFMTgGdiZ0tnbzFeyaCL
         ScImE9mgMGDhhP5wR6eIujtLRHMBJTmhSZBIAbgcbaB3wSliP38/gDLOCIL6aSSipUhG
         Ro0pOBIIPILnmIakKVbdvba0r+pkaWoVTBwTP/parUL3xWfhY4Stp8S0MaatD0k/76d7
         nGkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=QtyCjGjRaZAoWgRSdeEDy87OrnMrLZtrO+lElX3sHXg=;
        fh=gaHWFzVtu3p+JfCKPQnio9n4RIZglU7QiF7v1QFcvSI=;
        b=UzDyUw1SBLbZTMhO97DZV1sHxLVkB3Hb3KX53VCcwcG401FD0ZrH1c5IjF/wC3hEEv
         n8yroWJQRAkFmLPRE42VAdOK0+LidWOCPZ3vA8+QkloF0EaZPYasHx2jqReiuv/WOoKb
         qBdfe6fjxCt7lbPiLsAf5vFd1/DVeaKOX5DRisrGXqtotZ9UNQ8vGpRziuBwim8m9Mre
         R0t5k+m3+fukEtfuM+bUHuL4cB7gy/N1XMtpVMOnoEBSw9iapXWDW97OGB4gu0tVUVi/
         cHB4bsFCEfqjMUzCmL8OvCYodu+hAYf0zHVg3AZJVlyVqdln9RN/nSsLyZ9whwWfUnpW
         m5Iw==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771583009; x=1772187809; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=QtyCjGjRaZAoWgRSdeEDy87OrnMrLZtrO+lElX3sHXg=;
        b=IjQ5LRViDrReKgEGgP9lYd8q9OGAP3yoWmIPwUY3Cbri8baQ62LL3Xht8GI2WGwA2U
         fvx4UCflJ+pGl3jMhlm/32sz3A0QrnX4jrXxQUJNfGk4pkEZPKkpO/fpKssjkMAOife/
         GfZ20Gsf7rH34Uj80b8Mjf0zFjVzEkTCKWRDc7wO3tjBuGEfuMLEtRXULFk6LBKjHwHH
         OTxvQ0/bQtAW63UOxw3FSrq7/EucpLpB0Z9NFymtyFDh46+kwHVL25eMh540FIgYY4nj
         Tz30TsYjRUuGJ06ztx0bsBMf+h+ZAPr5/Q8hTyjPvMsoCF4p4kuhBAGdvo8M6A2viqCG
         R3Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771583009; x=1772187809;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QtyCjGjRaZAoWgRSdeEDy87OrnMrLZtrO+lElX3sHXg=;
        b=Q1mekWCfhz6UFKdC4VNsJmKRPTw6xIGXCwXBp3wLs4rsrgz10eE/7tTZVpQXrYqkal
         el4qGrsyX/npAWuHJ1OHEmXmPj9qmcgq0yXRmyz5NdarnT9PIPRITzQVlnRj47qePCiw
         i6Coi1MkDCBmxy3bHMrXjLAhkz/8sSVcO/GSun6gVMLsC/Frvy5dXD6afO7zLuHkUAx3
         S49BJsvNuZuWZ9UZoPNR7W/7q0igkOwPZc1mbPumVw7Bim7QyYdZNWiNEuTT8RwDcgmO
         EVhnPxqEl+yp+aLp1jDRV4ORkqEpes+JmOA2HwcENLS0vmz9hkmoK6WCMeM5HtiKFGdU
         WJ6Q==
X-Gm-Message-State: AOJu0YyFcJyMk/4gLjEUBXp92f3RUa5hlqESb8sBADhxfyL9LKSdXZ1X
	A53jBU5deIwdXC8oKKHXUPmHoMSGm/XJLZv6ZdiPalmM1XlNahHpf7//C2u9QB+eGlwvibyUn52
	5zGHvn2+6iomj/MMYurO2Dce9vJKAOTEhNnVBPrakAA==
X-Gm-Gg: AZuq6aJzkbeKTJ4szCYFNcE0IYxdCTIlzaZjP0TQHsIHWPNh6EuOswRni6cK9gk3rhu
	C6fe2znFGtu0QFd9tDDOnBT3yQ/gsNlw/rvaHGAUyqdPw1iN7yxmw7ZSWn0BeQafIwn85F7/mTV
	Qz3Nzwu3DH7i9+xkIOP8eXDTqU3B0PxAS5zkgPg/1PchqbnINB/ZgNpazAI6ZAwNcLOmfC9LyDJ
	RPROONBjNUT3JIlTfAoDqNR+4cl2fFPyXIK9X59DdzXMdrBVw9r2U/Q/VaDkpONiTBUQHo50LBc
	ZXbEaEGP
X-Received: by 2002:a53:d843:0:b0:64a:d5e6:b376 with SMTP id
 956f58d0204a3-64c21a974dcmr12150329d50.36.1771583009433; Fri, 20 Feb 2026
 02:23:29 -0800 (PST)
MIME-Version: 1.0
From: Jocelyn Meyron <jmeyron@gmail.com>
Date: Fri, 20 Feb 2026 11:22:52 +0100
X-Gm-Features: AaiRm51XFPl5QID4r_uINXX9cUa8XJDI6o1DGkJltLFRMF930SgvZPUbv9BreuA
Message-ID: <CAJ0N1+STAk7So1vRHp=BRZ5rpmtwHUmkTeeZW-m-tBEXab_f5g@mail.gmail.com>
Subject: How to properly use the script to improve the kernel cve report?
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f7aac8064b3ecfaf"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 Feb 2026 10:23:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66259

--000000000000f7aac8064b3ecfaf
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

I want to use this script
https://github.com/yoctoproject/poky/blob/scarthgap/scripts/contrib/improve_kernel_cve_report.py
that was recently merged (to mark the CVEs impacting files I don't compile
as not applicable).

My platform is based on a STM32MP1 MCU and I'm using the layer provided by
ST https://github.com/STMicroelectronics/meta-st-stm32mp

I have added
SPDX_INCLUDE_COMPILED_SOURCES = "1"
inherit create-spdx

in the bbappend of my kernel recipe and I now run the following command:
./layers/openembedded-core/scripts/improve_kernel_cve_report.py --spdx
build/tmp/deploy/spdx/2.2/<MACHINE>/recipes/recipe-linux-stm32mp.spdx.json
--kernel-version 6.6.78 --datadir ./vulns

And the output is:
[improve_kernel_cve_report.py:419] Total compiled files 82017
[improve_kernel_cve_report.py:93] CVE-2024-0000 doesn't have good metadata
[improve_kernel_cve_report.py:93] CVE-2024-0053 doesn't have good metadata
[improve_kernel_cve_report.py:199] Total CVEs ignored due to not applicable
config: 37
[improve_kernel_cve_report.py:200] Total CVEs not vulnerable due
version-not-in-range: 8453
[improve_kernel_cve_report.py:201] Total vulnerable CVEs: 1950
[improve_kernel_cve_report.py:203] Total CVEs already backported in 6.6:
1618
[improve_kernel_cve_report.py:454] Total kernel cves from kernel CNA: 10720
[improve_kernel_cve_report.py:456] Total kernel before processing cves: 0
[improve_kernel_cve_report.py:464] Total kernel cves after processing: 10720

I see that some CVEs were ignored but for the majority of the other non
applicable ones they were not. I digged a bit in the code and found out
that the spdx file generated by my kernel contained basically all source
files and not only the compiled ones. Did I miss any configuration to have
the proper SPDX report?

Thanks in advance.

--000000000000f7aac8064b3ecfaf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello everyone,<div><br></div><div>I want to use this scri=
pt <a href=3D"https://github.com/yoctoproject/poky/blob/scarthgap/scripts/c=
ontrib/improve_kernel_cve_report.py">https://github.com/yoctoproject/poky/b=
lob/scarthgap/scripts/contrib/improve_kernel_cve_report.py</a> that was rec=
ently merged (to mark the CVEs impacting files I don&#39;t compile as not a=
pplicable).</div><div><br></div><div>My platform is based on a STM32MP1 MCU=
 and I&#39;m using the layer provided by ST=C2=A0<a href=3D"https://github.=
com/STMicroelectronics/meta-st-stm32mp">https://github.com/STMicroelectroni=
cs/meta-st-stm32mp</a></div><div><br></div><div>I have added</div><div>SPDX=
_INCLUDE_COMPILED_SOURCES =3D &quot;1&quot;<br>inherit create-spdx<br></div=
><div><br></div><div>in the bbappend of my kernel recipe and I now run the =
following command:</div><div>./layers/openembedded-core/scripts/improve_ker=
nel_cve_report.py --spdx build/tmp/deploy/spdx/2.2/&lt;MACHINE&gt;/recipes/=
recipe-linux-stm32mp.spdx.json --kernel-version 6.6.78 --datadir ./vulns=C2=
=A0</div><div><br></div><div>And the output is:</div><div>[improve_kernel_c=
ve_report.py:419] Total compiled files 82017<br>[improve_kernel_cve_report.=
py:93] CVE-2024-0000 doesn&#39;t have good metadata<br>[improve_kernel_cve_=
report.py:93] CVE-2024-0053 doesn&#39;t have good metadata<br>[improve_kern=
el_cve_report.py:199] Total CVEs ignored due to not applicable config: 37<b=
r>[improve_kernel_cve_report.py:200] Total CVEs not vulnerable due version-=
not-in-range: 8453<br>[improve_kernel_cve_report.py:201] Total vulnerable C=
VEs: 1950<br>[improve_kernel_cve_report.py:203] Total CVEs already backport=
ed in 6.6: 1618<br>[improve_kernel_cve_report.py:454] Total kernel cves fro=
m kernel CNA: 10720<br>[improve_kernel_cve_report.py:456] Total kernel befo=
re processing cves: 0<br>[improve_kernel_cve_report.py:464] Total kernel cv=
es after processing: 10720</div><div><br></div><div>I see that some CVEs we=
re ignored but for the majority of the other non applicable ones they were =
not. I digged a bit in the code and found out that the spdx file generated =
by my kernel contained basically all source files and not only the compiled=
 ones. Did I miss any configuration to have the proper SPDX report?<br><br>=
Thanks in advance.</div></div>

--000000000000f7aac8064b3ecfaf--

