Return-Path: <me.ramprakash@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEBB3C43334
	for <webhook@archiver.kernel.org>; Mon, 25 Jul 2022 19:44:38 +0000 (UTC)
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com
 [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.web11.335.1658778273855577745
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Jul 2022 12:44:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=FO1UuHj6;
 spf=pass (domain: gmail.com, ip: 209.85.216.45,
 mailfrom: me.ramprakash@gmail.com)
Received: by mail-pj1-f45.google.com with SMTP id
 g5-20020a17090a290500b001f2ea602563so464495pjd.4
        for <yocto@lists.yoctoproject.org>;
 Mon, 25 Jul 2022 12:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=aYRgCWp3bs6e8bEHZm/TezakGF7xbATXsNSZbm3tFRw=;
        b=FO1UuHj63mxsZUk2f5FJztCpogOthDvvh0CfKf0KDr4XppLyGtHq0ZtpWsiNfEU8m0
         DyrKAUrX8q9qYkMjNR/1IxDX/bDsgESGuwe5rF/IC3jTgQMyVfuINuQa+/CGgru9kbkq
         3T7ZjtmS/O/udzWJTSqjmRU4wtpUSHIrp2IE6CP7QgCegpHuOQfNSFxWySkIjFmQKU4o
         Sl6ezLhOFz/NXszs2nTyzwMScaLtxKEPDC0sPWT1Q8OfQtdTRqfZ2IWh0BePEXdbWpUS
         SK92W5NJ4nk8puxkWmtF18BWy3LTu7/1bsTy0BuTJ53Im3y8arwlZFJ4C5rdMbIbnyqd
         lqaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=aYRgCWp3bs6e8bEHZm/TezakGF7xbATXsNSZbm3tFRw=;
        b=RfDUcqFt4ewX+xHKbejVCR5Bk48mNDB0I4ygHPwM8pG3cLd408J8tRR6Z6v5Y1ut6i
         lDG2ylgFSSPTUr9adseYkRexqFFMB3Z60IeX+HhLuGoOAMBLxmjvS8YdwZbrepFlqN/7
         DNZBTxK0MjO4Z+HuVV50C3/J+6rIGaVQtpmVLph1ObbJoo6CKmHr9nMDKHgV4sHi13sw
         SDpfRfTsGcCek8+64evC7B6+O2Tb3szQQedHRdvS3W6zTmz4TE9Uyhn/37wa+AZq7JMb
         DPO8F7cK8l+/eZcuXElDZ60Txbpm4J8Os+pKdq56+f+ahWxR61PDdjar55QkCGwyuuWo
         FUXQ==
X-Gm-Message-State: AJIora/DW96cmaggEuKBzmMQME5oOYSTmZxuTYbMKw/VgOgCyNyr4PfK
	AmhQb1mYPgDU/2xq1eio3CE3Efs/ZQ6HaeO0jmaLtbvs/4UKyw==
X-Google-Smtp-Source: 
 AGRyM1uHEVL4w9ZFW+iqW5emGSHF5+LwT/YRUJzuVmD66TCczthOqSnbnIo5H2cCpgCmJMeL5p3aqucYODHm3QLPP5o=
X-Received: by 2002:a17:90a:4809:b0:1f0:59d7:7ee2 with SMTP id
 a9-20020a17090a480900b001f059d77ee2mr15960475pjh.240.1658778272774; Mon, 25
 Jul 2022 12:44:32 -0700 (PDT)
MIME-Version: 1.0
From: ram prakash <me.ramprakash@gmail.com>
Date: Mon, 25 Jul 2022 12:44:21 -0700
Message-ID: 
 <CACGj75_sBbiUzSOPaT-VJAajGs0mw=Rdr5c9P6M-2Hpy5ARsjQ@mail.gmail.com>
Subject: Issue with the setting up internal repo for packages
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b5c39405e4a6690a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Jul 2022 19:44:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57637

--000000000000b5c39405e4a6690a
Content-Type: text/plain; charset="UTF-8"

Hi All,

I'm trying to get my yocto build system to get the necessary packages for
building from an internal artifactory repository instead of fetching from
online every time.

I have set up the SOURCE_MIRROR_URL="https://<artifactory>;  and got my
credentials setup under ~/.netrc. But when I run the `bitbake -c fetch foo`
for any packages I'm not able to fetch the packages from the artifactory.
The fetcher fails to parse the credentials and pass it to the artifactory
location.

Can someone help me with how to parse the netrc file of any yocto build
system?

Thanks and regards.
Ramprakash

--000000000000b5c39405e4a6690a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<div><br></div><div>I&#39;m trying to get my yocto =
build system to=C2=A0get the necessary packages for building from an intern=
al artifactory repository instead of fetching from online every time.=C2=A0=
</div><div><br></div><div>I have set up the SOURCE_MIRROR_URL=3D&quot;https=
://&lt;artifactory&gt;;=C2=A0 and got my credentials setup under ~/.netrc. =
But when I run the `bitbake -c fetch foo` for any packages I&#39;m not able=
 to fetch the packages from the artifactory. The fetcher fails to parse the=
 credentials and pass it to the artifactory location.=C2=A0</div><div><br><=
/div><div>Can someone help me with how to parse the netrc file of any yocto=
 build system?</div><div><br></div><div>Thanks=C2=A0and regards.</div><div>=
Ramprakash</div></div>

--000000000000b5c39405e4a6690a--

