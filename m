Return-Path: <daiane.angolini@foundries.io>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D94CD3436
	for <webhook@archiver.kernel.org>; Wed,  6 May 2026 10:23:53 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.15347.1778063024479510794
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 May 2026 03:23:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@foundries.io header.s=google header.b=iZdqMgnS;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: foundries.io, ip: 205.220.168.131, mailfrom: daiane.angolini@foundries.io)
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6465quIm2581333
	for <yocto@lists.yoctoproject.org>; Wed, 6 May 2026 10:23:44 GMT
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dyyvw138s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Wed, 06 May 2026 10:23:43 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-36472c6a7d8so12793221a91.3
        for <yocto@lists.yoctoproject.org>; Wed, 06 May 2026 03:23:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778063023; cv=none;
        d=google.com; s=arc-20240605;
        b=dgu/DfSRp17wulxIvh0V0/ePawDU5lsfO2LXa8O20jsjqHfGHCGxWOWiz81j0Yo0Tr
         rbB27OEj24VkC3UaBBk6dqiyrjscwkDdepsCnRe/AqSn0e6bg7SdBZQBfI3426TUMKRQ
         RnIWH/F9KyhCPvaD/jzJGJS45gWWBEkmSgUrGnk114oZ4Hf0bXEXa9g1lYytjo+iTodV
         6hiBiK/t1SzU8l2nOaXHvnvaF/8z6/5soUVSRd48iTzVDkcYHmTtm7gQGT38UioN5cQg
         /HdlgFBnL4kQFmNrbE2Q5H5AuHoqNb3dSUxfkLnoWEDMLfeU4U/QgCBAC0qSh4RgIBa/
         J5Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=6zQ5jOrqv9e9iFAB7euxVylQyC3AoAMpSAGsWRs0nMw=;
        fh=TR8zu3NKpjAjhtoF8JLrwJ3lLC2QxahSYRHkywKg5h4=;
        b=hGTa1PXcaODJYfUOiSK5izn3K/udd5kM7UER7aGJNhQBhFmxFAbTAZeHGOoyXI4bpB
         du+WQJ1gAn2rOVosdfYi95Ik2yjaDU2Wz6CFEtiZko2PN+JUHgXZgTUMV1C09rItf/eZ
         s6CZ1zcWNR0SfWW5WUaDPgtuqmkeduoh9zYfdtG+mrpO8L4uVgb3a3hTf2UBVPLa52ps
         DF/4RwnAmLXbwyWFlUqtyhfjKgDcSJ/hF8wZVsnN7QgBOCQblGLTSYhaJoe+RUjRelH6
         VKJARp8Z0Icu0ByIrskan6wxRRZY+t8sSd4MhgEDvJvWtRlLroRlnPiy68lTpahJ6X1b
         DlFg==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=foundries.io; s=google; t=1778063023; x=1778667823; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6zQ5jOrqv9e9iFAB7euxVylQyC3AoAMpSAGsWRs0nMw=;
        b=iZdqMgnSaF5Bxiov007e52kcghwZLykOsSDrKf6XSDBkyMV7f+H0cZj47BgT+35o3X
         Gp+L+Fs9sL/iEIgo33iPSRKA3R77o+HU7x/pKPKW9pWd6ANhmfRlx6fMQBdfZBNqcoHC
         SfC6yCd6yJ89old4sF1rTyoEX/VRkJxbRdLXrHNb08xWQFK77VdE2EpZ2tOiKLmMVUAx
         Kt1zo2Ic8gGuxQ8aclNHpnjqFpg9GbTb2WTnTRpjyeme2CXjo6UxOeHVEA8mRPMRZhkC
         DqlgOkY41We2sLiNpnApCoalwgCxNWFR7zj0bPEvxS8zFmWMkYY3RCY0u3WK0qOMlJwp
         QQwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778063023; x=1778667823;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6zQ5jOrqv9e9iFAB7euxVylQyC3AoAMpSAGsWRs0nMw=;
        b=CgYUFkBiC90npMOCOKrzB0B9dolcSOpgJk6hXVki3YkkjvBHKaDA32J+t5AnqDP1aM
         9dmiHR/NQKqTqenhpXuIcn+KoFqWA1D9/0Bvr96DOenf/kE7TbWBPL/PILQhkQtxxDvN
         3vjjjeo01cxkD512eyc8Dsiv/W4DrArkt4E30ZYim26ZzOcRVXdHnqCj9bUPNavnBrbn
         pGoBO90cQMbWarMaFnZuoyIV3e5KkTbCavc/Bq7Uv8uknZpu0wqgViCJS3BLLV8AIsPj
         ahQ7J6vTjerP4FcKiEd9aLoLB6RDC/X7mjHfOB3NrkbJk1sjC3m3+y2VIvrY+ZAPGWH6
         b4dA==
X-Forwarded-Encrypted: i=1; AFNElJ/HQ58fuDRyAne3hC8/U/08G4ln7iCSSWsFjA41GBoKIb7lcbnHrN9aJyEiY0rJHeumX/4+IA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YyFMOk4xbBwjIwfEEfksyDZJPBrqwGERF6fZAbE9hxNSgUcWti9
	9rNhNeXmcqHfnVrr3RwIU7zADE7Jr3sA1gmFT8W1u9+j3xGIk7mi4UJWpesuUZEg2W2x8QdaR+4
	nQutwJOOCNUnyYvQSwy/u8yy6rA976h9CCXSwJ/AqlctLfq/KISUh8Z3Ui39yD/s3+MOc3OPsI6
	xGjpKR1ciELyK1EhLGzkfZMN/b9SR7O6laBSPS4x6e
X-Gm-Gg: AeBDiesJCZkAgp2Sy3Aaaql8NPRRonxjkD0zrp5tXTxLKqwX/gYmeYdsqHntL5PH5C4
	PrBsUOR8V7uUvNhSZbjbWrzKg8ZEhcKjwhB3I6HD2m5NS+8iMS39p9HfYUTc/FV2RIY0HUjHQ0o
	P2huDA6hDTNvNR6g9jtMnx4zwoGlQhmz0358ZVs6m5QFA3UT/HrH/PvWayENMPsh1VAWTnTH+C0
	ZLHl9NEbnXfUtl0UY5BboNCi4d9Ze9dQTKpFAy35yrWy1bydSjhz3mfztdcSGtpWnlIKN8EFHD5
	sP0=
X-Received: by 2002:a17:90b:2703:b0:35d:a861:36de with SMTP id 98e67ed59e1d1-365ac769f1cmr3126199a91.24.1778063023115;
        Wed, 06 May 2026 03:23:43 -0700 (PDT)
X-Received: by 2002:a17:90b:2703:b0:35d:a861:36de with SMTP id
 98e67ed59e1d1-365ac769f1cmr3126180a91.24.1778063022736; Wed, 06 May 2026
 03:23:42 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj-hrSdEoX5XRmM1MYhXMVkqpa0CBHHbMqVhjM034bKTDg@mail.gmail.com>
 <66b3dbc7-e6f0-4013-8d2e-d646f0fd8c9b@baylibre.com> <CANNYZj9dsi3XDGVBtEM4Hp8eqZfLtf9Jwa-0m8T5J9rt7V7skw@mail.gmail.com>
In-Reply-To: <CANNYZj9dsi3XDGVBtEM4Hp8eqZfLtf9Jwa-0m8T5J9rt7V7skw@mail.gmail.com>
From: Daiane Angolini <daiane.angolini@foundries.io>
Date: Wed, 6 May 2026 07:23:30 -0300
X-Gm-Features: AVHnY4Jyx1_2tCHKcpJEgEWTQLgZF8UD-4PLOvIOnd3o0WSLl5lYVomTXD7_R-k
Message-ID: <CA+HEL7_H1MJe3WGhdP3TMQho8u0M8g5OfUv2oFXxQjefAo6Hnw@mail.gmail.com>
Subject: Re: [Openembedded-architecture] proposal: build pipelines in bitbake-setup
To: alex.kanavin@gmail.com
Cc: Trevor Gamblin <tgamblin@baylibre.com>,
        openembedded-architecture <openembedded-architecture@lists.openembedded.org>,
        bitbake-devel <bitbake-devel@lists.openembedded.org>,
        Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Authority-Analysis: v=2.4 cv=YYCNIQRf c=1 sm=1 tr=0 ts=69fb16af cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10
 a=9UA2AVYIz8kA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=Um2Pa8k9VHT-vaBCBUpS:22 a=Q4-j1AaZAAAA:8 a=r_ZPwY8akaNxwzTECaEA:9
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=rl5im9kqc5Lf4LNbBjHf:22
 a=9H3Qd4_ONW2Ztcrla5EB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA2MDEwMSBTYWx0ZWRfX59ZRRKgBzpk7
 OYWOSrvOF4reg8QZsSUEAsGj3h4aZHSQxXRJDdEvo2H22pxjyv9nqh3GGZiSAiOBWTJH2I/0vLf
 6DS4/1kYJGWLv/kUJhjb9Z1khpGvotrYMqlOch/0j1x68IjbM4t5nlJTt8PL39jFMqtFBgXdF9u
 vK0IRMK/zHV9PFO+ofEIm23tsmYb1Eo0Q0UXDb4OmFoXAw+SuhShlzmt3wVBQk4Op6eXecVLELg
 05QL5rSCUfpesVkZ9s+iDkd7iGV8j4L+MWJvCJd2dIp6xVTbrQ6/hlEXcAMS9pyAA0K+zMSg+Jg
 zWUWWNif6apMwdbWvipq1xU8vZ5uZ2/UGtTWG5rvinIEEJiy6Sts8ZFDoHcMsQziQuISozKW9hV
 Faa7m/jVk23kzIzqTcgy/n5e3qTh9H0ZeuQ3g5Potf6xN4H/30E5Z5J7n3HMwA0nvb+LfgtjWcy
 ltMos7PupHHNfqIkHDQ==
X-Proofpoint-ORIG-GUID: RKeUvqs00b0ZzAdXo3nLu7a0lucIRWg2
X-Proofpoint-GUID: RKeUvqs00b0ZzAdXo3nLu7a0lucIRWg2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-05_03,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 impostorscore=0 malwarescore=0 clxscore=1011
 lowpriorityscore=0 priorityscore=1501 spamscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605060101
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 May 2026 10:23:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66487

On Tue, May 5, 2026 at 3:42=E2=80=AFPM Alexander Kanavin via
lists.openembedded.org <alex.kanavin=3Dgmail.com@lists.openembedded.org>
wrote:
>

> 6. Run a pipeline, stopping after a particular step:
> $ bitbake-setup build <pipeline-name> --stop-after <step-name>
>
> Etc. How's this looking?
>

I like the term `steps`. I would like to add that this should be
optional, not required. One can still decide to avoid creating a
pipeline.

Regarding a setup tool for builds, why not use `bitbake
<pipeline-name>` instead of `bitbake-setup build <pipeline-name>`?

Daiane
> Alex
>

