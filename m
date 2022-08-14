Return-Path: <glmeocci@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85DACC25B06
	for <webhook@archiver.kernel.org>; Sun, 14 Aug 2022 22:54:27 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com
 [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web10.10407.1660517665920365796
 for <yocto@lists.yoctoproject.org>;
 Sun, 14 Aug 2022 15:54:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=MIfPMBET;
 spf=pass (domain: gmail.com, ip: 209.85.167.47, mailfrom: glmeocci@gmail.com)
Received: by mail-lf1-f47.google.com with SMTP id o2so8516880lfb.1
        for <yocto@lists.yoctoproject.org>;
 Sun, 14 Aug 2022 15:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc;
        bh=R8WtJcNjuyfsH+oXIP52rQg0A5f62NuQTARwUhldfxQ=;
        b=MIfPMBETt+Ukt36TpZdzBaAs2gz8CWL2M5gvcfB5yYx2zIEw68/Umm5hxKvSJGrG6P
         DDu78c87hRTRwiS8nxbpZ9NWz0bFaK2ufyoj/vaavS2FFHE6WLZxEMt1Ztyve0IAM8b0
         21hAikbQUFsb9CgXjtAMFoiAK0hBClNeSqmoAX76TaOzK1six0enCN1C6KLafvzcaLBn
         JwWPtLC0xa6nSGgZBovkcc+hEsjurzKUCR61/fIbWSmFcrQekDDM0o+zwrsELaYQts1a
         w1re2U+99QjKe7Ekcn4Gj1L9anyLhvGcUnDypo2Ox2VNXdrapjjSDHXfU2uSoHiUe+L/
         1wYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc;
        bh=R8WtJcNjuyfsH+oXIP52rQg0A5f62NuQTARwUhldfxQ=;
        b=moDfmTJwAtwWYMBzQG/wZxdU7atxQeFRD2YErb2apaNMm5D0IC3Wu6SetBMBZi6p8e
         o0VQ9fs9qzVicuyKxv/aJf5R6JQepdDvUAJLzYtT8xKkPt3iIHbztfmrYtYkBA+Sm4f6
         dl9VXmLUEXtkXyW3gzoVGCLGOBrQR864Y7QAjz09WsIZl0aK3ZVm0oqqlHvq6+zdfeeB
         kjJkExs86V3ls7Vls1nFQAi1BwXgSHwshrVQIQvJ+f1ApOj52Y5/LJj15zMrC0zIsM6m
         xNmMscQ8BMBNcnkIAhclCnhcrdTezU8EvZMLa0RZqZVrAQSuy1/DRABPnIlw1RTJofvE
         m89Q==
X-Gm-Message-State: ACgBeo35qwMGpILN1zzgn/EKtszILp/45ukznemnHAQrLoU0Ckvj51Xg
	oxdk3U10iBpdhMks6rOQ5WgHtupNclsBhT2BmCdNTy8SJTE=
X-Google-Smtp-Source: 
 AA6agR7zJVlSZSJbMLs4D+xvSZcYWGaLG7svgimzYdS5dNaJR4LbrU4arxJoDSInHdOtEvvrkJbjcyMwMnMbESQBpe0=
X-Received: by 2002:a05:6512:1090:b0:492:5161:85d3 with SMTP id
 j16-20020a056512109000b00492516185d3mr1670691lfg.612.1660517663273; Sun, 14
 Aug 2022 15:54:23 -0700 (PDT)
MIME-Version: 1.0
From: Gian Lorenzo Meocci <glmeocci@gmail.com>
Date: Mon, 15 Aug 2022 00:54:11 +0200
Message-ID: 
 <CAAPjnHXq=vhtigPtjedD8d-Sac0s+D9E5jpEFmk0MicgZND8jg@mail.gmail.com>
Subject: do_install & RDEPENDS
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000076794205e63b6576"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 14 Aug 2022 22:54:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57840

--00000000000076794205e63b6576
Content-Type: text/plain; charset="UTF-8"

Inside the do_install I copy some files
but it seems that bitbake set those files in the RDEPENS.

In the log during the do_root_fs I see:
Requires(post): ... mylib.so

After that the commands fail with the error message:

Problem: conflicting
requests
 - nothing provides mylib.so needed by mypackage-0.10.14r0.core2_64

Is there a way to disable this behaviour?

-- 
GL
https://www.meocci.it <https://meox.github.io>

--00000000000076794205e63b6576
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PGRpdj5JbnNpZGUgdGhlIGRvX2luc3RhbGwgSSBjb3B5IHNvbWUgZmls
ZXM8L2Rpdj48ZGl2PmJ1dCBpdCBzZWVtcyB0aGF0IGJpdGJha2Ugc2V0IHRob3NlIGZpbGVzIGlu
IHRoZSBSREVQRU5TLjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+SW4gdGhlIGxvZyBkdXJpbmcg
dGhlIGRvX3Jvb3RfZnMgSSBzZWU6PGJyPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTptb25vc3Bh
Y2UiPjxzcGFuIHN0eWxlPSJjb2xvcjpyZ2IoMCwwLDApO2JhY2tncm91bmQtY29sb3I6cmdiKDI1
NSwyNTUsMjU1KSI+UmVxdWlyZXMocG9zdCk6IC4uLiBteWxpYi5zbzwvc3Bhbj48YnI+PC9zcGFu
PjwvZGl2PjxkaXY+PGRpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PkFmdGVyIHRoYXQgdGhlIGNvbW1h
bmRzIGZhaWwgd2l0aCB0aGUgZXJyb3IgbWVzc2FnZTo8L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2
PjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTptb25vc3BhY2UiPjxzcGFuIHN0eWxlPSJjb2xvcjpy
Z2IoMTc4LDI0LDI0KTtiYWNrZ3JvdW5kLWNvbG9yOnJnYigyNTUsMjU1LDI1NSkiPlByb2JsZW06
IGNvbmZsaWN0aW5nIHJlcXVlc3RzwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqA8L3NwYW4+PHNwYW4g
c3R5bGU9ImNvbG9yOnJnYigwLDAsMCk7YmFja2dyb3VuZC1jb2xvcjpyZ2IoMjU1LDI1NSwyNTUp
Ij4gPC9zcGFuPjxicj48c3BhbiBzdHlsZT0iY29sb3I6cmdiKDE3OCwyNCwyNCk7YmFja2dyb3Vu
ZC1jb2xvcjpyZ2IoMjU1LDI1NSwyNTUpIj4gwqAtIG5vdGhpbmcgcHJvdmlkZXMgbXlsaWIuc28g
bmVlZGVkIGJ5IG15cGFja2FnZS0wLjEwLjE0cjAuY29yZTJfNjQ8L3NwYW4+PC9zcGFuPjxicj48
L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PklzIHRoZXJlIGEgd2F5IHRvIGRpc2FibGUgdGhpcyBi
ZWhhdmlvdXI/PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj4tLSA8YnI+PGRpdiBkaXI9Imx0ciIg
Y2xhc3M9ImdtYWlsX3NpZ25hdHVyZSIgZGF0YS1zbWFydG1haWw9ImdtYWlsX3NpZ25hdHVyZSI+
PGRpdiBkaXI9Imx0ciI+PGRpdj48ZGl2IGRpcj0ibHRyIj48ZGl2PkdMPGJyPjxhIGhyZWY9Imh0
dHBzOi8vbWVveC5naXRodWIuaW8iIHRhcmdldD0iX2JsYW5rIj5odHRwczovL3d3dy5tZW9jY2ku
aXQ8L2E+PGJyPjwvZGl2PjwvZGl2PjwvZGl2PjwvZGl2PjwvZGl2PjwvZGl2PjwvZGl2PjwvZGl2
PjwvZGl2Pg0K
--00000000000076794205e63b6576--

