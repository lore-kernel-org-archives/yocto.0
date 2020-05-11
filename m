Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.8577.1589187821600471844
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 May 2020 02:03:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qZsYyk/b;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: mhm.dawod@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EEC3E01B33; Mon, 11 May 2020 02:03:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (mhm.dawod[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.214.169 listed in list.dnswl.org]
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF19BE01AF2
	for <yocto@yoctoproject.org>; Mon, 11 May 2020 02:03:38 -0700 (PDT)
Received: by mail-pl1-f169.google.com with SMTP id t7so3682366plr.0
        for <yocto@yoctoproject.org>; Mon, 11 May 2020 02:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=YKJ4OuSzTwfZ9XSiqFON8yU1nASmUyKwYR/fQBgmTFU=;
        b=qZsYyk/bC6Y3j3cmmy2u/nufj3RprV47xhKjpLI56RNqi4Jxm3rGLoRtCbhUGNodXE
         uXrrQ9Ghg5U57MEQQJynR4nN/ApKtvnNDnWF07zE88gfAQAYpiaSNzWkFcAuniS5XbWn
         W25pB5fE/lMeBTVxpMQU9k6TQKxsjLLXDHSDdQMlgmnKzAzQMFwvrPR9GQxMfGkv4Sw4
         8OnHM6O79C1epn8QjTjUvSHlwUknvVPrH3+PRAoay5bKQHDjr30OVqQQUtFxnxf9qXMR
         CyOsLFopPhczC2BFv8DV4tvt3OPbb9wKf3ecdVv8DF9uK3vtRTio1DlbgCUBrXdcmssn
         s/JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=YKJ4OuSzTwfZ9XSiqFON8yU1nASmUyKwYR/fQBgmTFU=;
        b=A1aLaKFpqPNtKgJWkzNEltBDXu1V8/IEBPItkw6yKazQ2gwC2E8C2D6SE3FDz5PEhM
         lvjT4Q0jxWKkNG387BkGnPGaQbDHcoUNyAVdAhxRz2YkrqjbvHlG5XmY8yomIbcn8qGj
         ypksNOeuRcousEqKntPgSG3TcDy3zeqEVOB3OekEUHsJq8rGhhsDeOi6b81a/3+0JUMe
         rsRZU9Et48agZe6dEZJ/z1Sh77AiaHZC8dmr+whG709K5jp1jq1/B35Wd90ygvVZHViA
         x9VtG6QknGGQUnLLMPlpM2vhMqdSIGEKZ4lBNy86nLvhHLuEKCD+gOaVQ5grmnAeNYtG
         pMsg==
X-Gm-Message-State: AGi0Pub/h7UHq5MyST8OaMWfak3sjonUFTaLF/dO4HBrUtXdGu3+gEvX
	ovrZmE5TMPV79XJPYTE5+3d1i9lpPxTAWKA5VF4eX8aJ
X-Google-Smtp-Source: APiQypIwIYHbJGHML2x5wvzEMOzs9XVLUhJDqDtlAuTZGzA7onZr7Us8Az5nRJZCTVwYXGLh3CPphTw9tXeoausG/NQ=
X-Received: by 2002:a17:902:c3d3:: with SMTP id j19mr13679834plj.340.1589187817537;
 Mon, 11 May 2020 02:03:37 -0700 (PDT)
MIME-Version: 1.0
From: "Dawod" <mhm.dawod@gmail.com>
Date: Mon, 11 May 2020 11:03:26 +0200
Message-ID: <CAGCTLNQW1WWHmy1zaE+LF-AKBQa-UpY8sfOy=HH3tt0rJLJFLg@mail.gmail.com>
Subject: [oe][yocto][bitbake] Fetching source using different protocols
To: openembedded-core@lists.openembedded.org, yocto@yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000005885ae05a55b9f37"

--0000000000005885ae05a55b9f37
Content-Type: text/plain; charset="UTF-8"

Hello,

I need to fetch a git repo using 2 different protocols ( ssh & https )
So that when I run bitbake, It will fetch using ssh protocol first and if
it fails to fetch, It will try to fetch using https protocol.

can I do some thing like that or I will have to change it manually every
time ?

Thank you,
-- 

Mohamed Dawod
Computer Engineer

--0000000000005885ae05a55b9f37
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I need to fetch a git=
 repo using 2 different protocols ( ssh &amp; https )<br></div><div>So that=
 when I run bitbake, It will fetch using ssh protocol first and if it fails=
 to fetch, It will try to fetch using https protocol.<br></div><div><br></d=
iv><div>can I do some thing like that or I will have to change it manually =
every time ?<br></div><div><br></div><div>Thank you,</div><div>-- <br><div =
dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><d=
iv dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div>=C2=A0<br>M=
ohamed Dawod<br></div><div>
Computer Engineer<br><br></div></div></div></div></div></div></div></div></=
div>

--0000000000005885ae05a55b9f37--
