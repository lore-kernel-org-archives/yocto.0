Return-Path: <daiane.angolini@foundries.io>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE71FF8855
	for <webhook@archiver.kernel.org>; Wed,  6 May 2026 14:03:06 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.19148.1778076183795062099
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 May 2026 07:03:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@foundries.io header.s=google header.b=JB6z937u;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: foundries.io, ip: 205.220.180.131, mailfrom: daiane.angolini@foundries.io)
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6468BXGQ1434851
	for <yocto@lists.yoctoproject.org>; Wed, 6 May 2026 14:03:02 GMT
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dyuqdtp0q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Wed, 06 May 2026 14:03:02 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-365290bc5adso1990108a91.1
        for <yocto@lists.yoctoproject.org>; Wed, 06 May 2026 07:03:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778076181; cv=none;
        d=google.com; s=arc-20240605;
        b=BJNC9z99ziJTd+KPYVZtGhJyfBQvD4ycPr7C9ahDzppNG8juwBuKgsHLstpCz0DvJb
         Ye/YQ+OH3f0SpeMPlXFwE/sbLiHsWjlu3pJ0os1EFetqos6I25vdCCfzp1j8zY2wz43w
         jpskRbuyGhd8xmMmc1H7++EVPKXHUn2pJ5LXdoY8CeVZylG8AcDcVrt0N53/MIu00lhD
         v5lPJs0PpJCESyCCPQVAoJqHIhsFt5Idr05dRehRFASvLGeBEQL3zzI9XWN2/slfD4SE
         qqSAIlz4e79H4jJKD85tqyYF9qfHSUEz1R1zObQESPgW4PwD3yfCShMAOBJVUt8+D9lp
         5Juw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=IOO0fROWfBOULb40izKwzZ607kz4/2jI/bzhOQuqEAQ=;
        fh=HfL9luFNvv8LwiESMn6eAqBPHNuVGnXL1ayQV4qBeK0=;
        b=IgqojY0dWAwg5MjbsK8dKT+E0rwBVpoSQTNT9cxKNcL9axDu6YuHTwWl3hOklil+m2
         3OhCHeRNCwyDoxieT5zPRhHWkPVdLAt3sRG5MBdG5adW+mB7fIQca+xxMmxWaVMiqrW7
         orAlWK02AqubXq6pmM4Z1juZQUsbmK2BKwv2lxxUpb312T0CUyHi5CbKezAq7bxzYYAY
         ZW97PtbMMpdXY3LtKoyKNsgy9Pa+E052VqY/UWLBZ7G1PO9SnAEUWer6pWzZc1CHku6e
         9YsUNKkZOryvpZIJD5RVdHmjEmG9ObiZzp7/yshzMzDr+OEcGDo623VHBloVyDdSL/jv
         OtHA==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=foundries.io; s=google; t=1778076181; x=1778680981; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IOO0fROWfBOULb40izKwzZ607kz4/2jI/bzhOQuqEAQ=;
        b=JB6z937uWdskTmffvtXtUg4xfEZ6jGx9yzJPHuqwhULXhigI0SVJCjMNCxRxUm13Zx
         zPtlLkPRkRrbIX1JBeUeGwH2grKq+jkGzgDZW6xBwc+vSSOiCaRtyVvhwnXctA3bxOTJ
         ++BOJI8UbrlvDsp0pN0blTf8FfItLRKQWWyWfRBBaFvKTVPNRh9qFte8Bdb3/zL5jp/m
         TJLoLKgc8IR0GI+AqaweIHCvBtt1/I2sVC+qfRQXqfuWv6tQaNsVwReJT4WUnRMFZnxY
         dm32jaNvJWUbbJ3d+yoLRjyjY6Bm7V5uvWgPuXEB+KiZX6PjIWGWaQpEVo1NRhCSsYlm
         Vnhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778076181; x=1778680981;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IOO0fROWfBOULb40izKwzZ607kz4/2jI/bzhOQuqEAQ=;
        b=blo9FVyqbtPL7Ni3UtuBIt3YoblDn2Thh/aKCSDrvs63z85vywTPm2+SK30HLh/C9Y
         SIW1qPZzhhpeh+MQeg2/2ExsmpHBahvuRxHPuSzAfAvw8SQpN1C+SsPuoQrI04KUIDY1
         ZOvsoAzppSXam7JysZmuqAV01c8KvM9sYA1pkdTEKVNHB+PfUo0p9pdMvoKIv4gKUQM3
         wYZ9ShdwPXDH+zlYfkPZpCmtTiC7L0lxJjBGV9/pk3r4I5BzO0Bx1nc7FDu9ZmQntaH/
         bMi0m6snfYWT6RRQMDbjT3qmgr1i/gq7wIjLAsW2rOxuWsguzJNcNbkmcuxt9q/oaESJ
         S0kQ==
X-Forwarded-Encrypted: i=1; AFNElJ8uUaDjSldRV0JVu+8hidDNaETopG/ASA8grbg/e/ifXj7vnSF56U29k8il9tXocg3/jmLmtw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yx0mqDXG50LGu+LmobnzMbesRaQVipiGYK+//9aqwPtBvBZ9z88
	mrzSrXQTMSDZKvBQsJl5hJOgJzNQ7J70Vk/xWlcNZvCpiPZGD/hKR8fQ0sZIK/aSPdCo/PrkrPO
	Ajvxi3oXahOPtz9Dn+AgiAPH+hUVyYEiLPhScYhn3RHk60sAl89Y+CSvml6cJMgx89KwpX1pcaJ
	vtlxogFiz8Ldl8tV66voWVKne9UiUn35HWasTjPkGs
X-Gm-Gg: AeBDiesXJU6eYHR19ZMAKEVeOSYING2hFBNnmm23f1y62D5xLfvbhxrWJvg4a+jF1NX
	txUhQunx4gscKLtdFaJfFbhdRTKNv1VLdL0xLAn3X8iqSECelb5U2SrFWuJsFh09Xr8w9/HDqSZ
	YeMO1VmFr5YCcywr1zSLgPwMWcU6L3XxZzMhqeiYex6LS+Y7/6H+yRlvnvjiGEhAw4evfCTEPIW
	tl/2ognrrkK7PwLg894dRi6fY5j+W81wsdOUKqHGiEZxnvmrif1qkRhcn0EJfC0Lg2KcQTWv00a
	4Hw=
X-Received: by 2002:a17:90a:d60d:b0:362:e7e5:a20a with SMTP id 98e67ed59e1d1-365ab9b8e52mr3403946a91.4.1778076181131;
        Wed, 06 May 2026 07:03:01 -0700 (PDT)
X-Received: by 2002:a17:90a:d60d:b0:362:e7e5:a20a with SMTP id
 98e67ed59e1d1-365ab9b8e52mr3403863a91.4.1778076180345; Wed, 06 May 2026
 07:03:00 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj-hrSdEoX5XRmM1MYhXMVkqpa0CBHHbMqVhjM034bKTDg@mail.gmail.com>
 <66b3dbc7-e6f0-4013-8d2e-d646f0fd8c9b@baylibre.com> <CANNYZj9dsi3XDGVBtEM4Hp8eqZfLtf9Jwa-0m8T5J9rt7V7skw@mail.gmail.com>
 <CA+HEL7_H1MJe3WGhdP3TMQho8u0M8g5OfUv2oFXxQjefAo6Hnw@mail.gmail.com>
 <CANNYZj9=Qap1AsWfgFgEforE17Gz8ft8fNz4hJcU4Y=zmTKDZA@mail.gmail.com> <58d89d74-bca7-49eb-8591-5c5e1a0a40fe@baylibre.com>
In-Reply-To: <58d89d74-bca7-49eb-8591-5c5e1a0a40fe@baylibre.com>
From: Daiane Angolini <daiane.angolini@foundries.io>
Date: Wed, 6 May 2026 11:02:48 -0300
X-Gm-Features: AVHnY4IPzPgtjHXq_QDpGMKJyEAlLL0SQrLluI7pAG0AhB3OdQGXppNiny5ycaw
Message-ID: <CA+HEL7_pJqDsKUn2OL3Kqhiy4y_H7LRoQTWuVJ-EbOH7k8NymA@mail.gmail.com>
Subject: Re: [Openembedded-architecture] proposal: build pipelines in bitbake-setup
To: Trevor Gamblin <tgamblin@baylibre.com>
Cc: alex.kanavin@gmail.com,
        openembedded-architecture <openembedded-architecture@lists.openembedded.org>,
        bitbake-devel <bitbake-devel@lists.openembedded.org>,
        Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Authority-Analysis: v=2.4 cv=W4sIkxWk c=1 sm=1 tr=0 ts=69fb4a16 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10
 a=9UA2AVYIz8kA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=yx91gb_oNiZeI1HMLzn7:22 a=Q4-j1AaZAAAA:8 a=IpJZQVW2AAAA:8
 a=l2JSiykuDEm4BzqryJ4A:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
 a=9H3Qd4_ONW2Ztcrla5EB:22 a=IawgGOuG5U0WyFbmm1f5:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA2MDEzOCBTYWx0ZWRfXyPUE4plzKBo+
 bUeVizz6ZCWaD4kICyb5G5xTMO4S4qd0xHZ42JRESNqRfhVr+rOgAD2ihMjyGdppUi7HD/ccPJd
 roCh0q75VhuKDzJ2ez0RZH54ZMD8zt/XD8UwAwS5a3X1em7l2MEW56e02qJZce0/cLy93SXxheo
 Im64jUUjizShLXZHEcumKXresGtQe30dKxdKhutQY6qJ63DNwRxvcmzu3UW9DCmJk4Dj6DTZC7p
 p5Od9bL+/cVytml5KgneJNOBNVMzXPSAZ0N7xzowj21gXI7km8SsdgENxGzAwJzw9UBtNasYdJG
 Pd0zapgCWQAfgnGoNCqo2VlOb4fUmJZmRAxl0BqvgqPj6Fk23REiqdpLje0v3/CW7Wn8pYijijC
 KSW8ROujGk/Jek1drTDsV8B2CiT5hFgzv39284/BDp+tAvF9m9V+GEE3P3Nutcf+W/F1raas22Y
 ApHw1MrtChTF3si+nvw==
X-Proofpoint-ORIG-GUID: 3X6LaLgdIH-TW_CVNICBu60B0KJPpzyJ
X-Proofpoint-GUID: 3X6LaLgdIH-TW_CVNICBu60B0KJPpzyJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-05_03,2026-05-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 malwarescore=0 impostorscore=0 lowpriorityscore=0
 clxscore=1015 priorityscore=1501 suspectscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605060138
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 May 2026 14:03:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66490

On Wed, May 6, 2026 at 10:29=E2=80=AFAM Trevor Gamblin <tgamblin@baylibre.c=
om> wrote:
>
> I do like this version of the proposal better. Having read the responses
> from the two of you, I think 'bitbake-setup run' might be a reasonable
> compromise for running steps and pipelines. What do you think?

To be honest, I think that we download bitbake to install bitbake
(using bitbake-setup) so we can use another tool (bitbake-pipeline) to
build bitbake. Although I understand why, it looks confusing.

Why not:
$ bitbake-setup --non-interactive <all your choices>
$ ./<pipeline-name> all/step1/from-step15

Can I pip install bitbake-pipeline? For example.

I understand `bitbake <pipeline-name>` is not what we want because
some of the steps will not be bitbake dependable (such as a deploy
which is only cp a image to a storage), that's why this pipeline isn't
strictly a Yocto recipe (even though a Yocto recipe is just a list of
steps). So the pipeline is a list of steps that may or may not depend
on bitbake, which is kinda bash script for example?

I like that the bitbake configuration template may provide a set of
usable steps, but I don't understand what this other tool does (other
than wrapping the build script)

Daiane
> >
> > Alex
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#2328): https://lists.openembedded.org/g/openembedde=
d-architecture/message/2328
> > Mute This Topic: https://lists.openembedded.org/mt/119158252/7611679
> > Group Owner: openembedded-architecture+owner@lists.openembedded.org
> > Unsubscribe: https://lists.openembedded.org/g/openembedded-architecture=
/unsub [tgamblin@baylibre.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >

