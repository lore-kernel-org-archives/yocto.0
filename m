Return-Path: <thomas.isaacson@motorolasolutions.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3BD19C3DA61
	for <webhook@archiver.kernel.org>; Wed, 24 Jul 2024 05:08:17 +0000 (UTC)
Received: from mx0b-0019e102.pphosted.com (mx0b-0019e102.pphosted.com [67.231.149.242])
 by mx.groups.io with SMTP id smtpd.web10.3908.1721797696390484626
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Jul 2024 22:08:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@motorolasolutions.com header.s=PPS--2020-03-17 header.b=hpQ7LJDn;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: motorolasolutions.com, ip: 67.231.149.242, mailfrom: prvs=293530f799=thomas.isaacson@motorolasolutions.com)
Received: from pps.filterd (m0074412.ppops.net [127.0.0.1])
	by mx0a-0019e102.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 46O2ZXdG010740
	for <yocto@lists.yoctoproject.org>; Wed, 24 Jul 2024 05:08:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=motorolasolutions.com;
 h=content-type : date : from : message-id : mime-version : subject : to;
 s=PPS--2020-03-17; bh=E2Rxnr5EK600gRGGP/ErmyXomnNNZ9x33OA/V+wwofU=;
 b=hpQ7LJDnTVghSIpaf3MHH1ePvJ7X7WC4/hujoSya7y+UMSN6eME1br1uJszcD9BuxbVM
 Luredrsq4VgVxX3rDKNECHnqzFMVvOHVAe+ewq17koUAMgtYeDkcLMq4Zm1HsLmu5fQ0
 uUhv6Z/NtPy3WcMxnGEJa5cF6QaPI3dMiR/fCbaTsyqw8r1RN+O/6G/Vsfoap6YGq6pt
 dxJe7fHuvpYA5Wpw6dXZqXnQQi12HAGzqYfDkj5kaVW792w92v/MY3fe8D4scOrTgrDw
 pXkki0qQZ5IhGfvj5dCydYb3LRwfT4QkPCsDzRx9BIiPhnDWjnWuXLmdgEP9Zj2fO6hr 0Q== 
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0019e102.pphosted.com (PPS) with ESMTPS id 40jd0gdw8a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=OK)
	for <yocto@lists.yoctoproject.org>; Wed, 24 Jul 2024 05:08:15 +0000
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-2cb4e6725ccso7273892a91.1
        for <yocto@lists.yoctoproject.org>; Tue, 23 Jul 2024 22:08:15 -0700 (PDT)
X-Gm-Message-State: AOJu0YxTlmiMgdH1/AcA/s4l/pzS0kjc8pEh5IQEDrGVKGXXxMHW6wsw
	drIbAq2Zm8QqECubt8Zqqpmuv8udYPvlKJZxevQhKHjD1N3w92QC0ot9nFD9R+msP2XeaT/GE33
	+bLNdWUgHpEQuJi3++WPiryOcIrJlbGL0PKeJIQxE6f/PTbfgTyenmni1oyOyVk+zn1CDL7XRMz
	xGFZVn1nXXKLdz3q2NarfVOeO5kLEt2hoBttvMmQbmJLz7jK4=
X-Received: by 2002:a17:90a:c0f:b0:2c9:5c63:29f4 with SMTP id 98e67ed59e1d1-2cdb515745amr1384340a91.25.1721797694607;
        Tue, 23 Jul 2024 22:08:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGfBOI6TdikOMDBzfQ0ay/DDXzPNEXg3D7QReRqw8/scHDDQvKez4KtJ3yyu8gtr093S6j4hP6cw/d3I8+w7fE=
X-Received: by 2002:a17:90a:c0f:b0:2c9:5c63:29f4 with SMTP id
 98e67ed59e1d1-2cdb515745amr1384316a91.25.1721797693925; Tue, 23 Jul 2024
 22:08:13 -0700 (PDT)
MIME-Version: 1.0
From: Tom Isaacson <thomas.isaacson@motorolasolutions.com>
Date: Wed, 24 Jul 2024 17:08:02 +1200
Message-ID: <CAMp_5HaLZnjOEyajTmbiqEM2khxu0NpYjpRWTSabs462L=Z7=w@mail.gmail.com>
Subject: SPDX for dependency checks
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-ORIG-GUID: -7PmHq2b3iactBvJcyczCUKwByAbZKz5
X-Proofpoint-GUID: -7PmHq2b3iactBvJcyczCUKwByAbZKz5
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 impostorscore=0 phishscore=0
 priorityscore=1501 spamscore=0 adultscore=0 suspectscore=0 clxscore=1011
 mlxscore=0 bulkscore=0 malwarescore=0 lowpriorityscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2407110000
 definitions=main-2407240035
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Jul 2024 05:08:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63563

We're using Kirkstone and wanted to take advantage of the SPDX support
to use for dependency checking. The two apps we have access to are:
1. Github Dependabot
(https://docs.github.com/en/code-security/getting-started/dependabot-quickstart-guide)
2. Mend (https://www.mend.io/)

We generate the SPDX in a Github Action then tried uploading it using:
* https://github.com/marketplace/actions/spdx-dependency-submission-action
* https://pypi.org/project/mend-import-sbom/
but so far we haven't been able to get it to work. Has anyone else tried this?

Thanks,

Tom Isaacson

-- 


*For more information on how and why we collect your personal 
information, please visit our Privacy Policy 
<https://www.motorolasolutions.com/en_us/about/privacy-policy.html?elqTrackId=8980d888905940e39a2613a7a3dcb0a7&elqaid=2786&elqat=2#privacystatement>.*

