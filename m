Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.9993.1584090920667413210
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Mar 2020 02:15:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=WbWKvEyn;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F8F2E01835; Fri, 13 Mar 2020 02:15:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (jupiter.hce[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.175 listed in list.dnswl.org]
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B54EE017EE
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2020 02:15:19 -0700 (PDT)
Received: by mail-il1-f175.google.com with SMTP id j69so8194933ila.11
        for <yocto@yoctoproject.org>; Fri, 13 Mar 2020 02:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=DXqRe6nYP+So5WsU+jHP5ksvh7PwoNFTprdtU+YFZZk=;
        b=WbWKvEynYil2yX6KsiHfHPRuYBX538Vix0nu2lM/SFcmmf6d9S+bRhoy7weCC8b49w
         96GkNlGJp/R1Nm/EhpNrIr0S4kseClEbort9GozTsoDXVh4qyKqvXHtEXjKAI2v4oh6v
         JhOejP8yZw8YER1XH3yEjTbawVDAgnTMZPfowv4mXqZMCyyWoEdCKW/YKHg8VusRXPV4
         +YUqeiacHtgdAsimCFwHVDBEy3wOuWxT0y+Er03AFulZ7tT3Yq2FU0ghscf7SIAGk37O
         5psv6FcMYzDaUaNfvbJ1HXm6S16jzF+R9L1MXZ/cE3gFuyhNp7jRTXoZevSNz6nTmM98
         8WIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=DXqRe6nYP+So5WsU+jHP5ksvh7PwoNFTprdtU+YFZZk=;
        b=MuVTQchnxuxD6SxNL0pGZbKZRDDWgzuf/eb+Dxr5xFCMoKUxQpFewVRp5JBBYu8/Qj
         ruZEAUsEbu99aeC4Mow3SZ9KCiyf0V4xJlmT5ghx1RvyocCN3OJ5MRk2WMBSV3HZU3/m
         L/vq74nfgiemW0dfdKkmt7BzzpzdFD77E8DHMdTgYmylj04eF+Q6wxPW0wZp6WVvOm3w
         yetZ2qyFF4zmTCnOK+ZTrB7q883EB/0pcI0U6+Tnte/UNTpxkhLJkE0kBt5HH0oVa5Kn
         EhaFIQyuOxkUf8iIHcuBCwQNMtEJs+W03CWwp2Mv/g3+XHjTFOSVWfGxBa82cHoRjmhX
         cL/g==
X-Gm-Message-State: ANhLgQ1GBe5ctWP7EeFsvOhfrELD7HD5Nm7AOY8Nh9p3Qpb0CDzj45+I
	CuOTmnhPbRUD+uzr7HeTinrVqs6v9EcD70gJFLKBbxzF
X-Google-Smtp-Source: ADFU+vsWglJviqfTHbwzUV82XvHHUF+qwsR8gnr4Erk+C+Wo/4Gfqz5ftlHJkUaruyCbGjbgYu57DgQ9tDRaMwTxxr0=
X-Received: by 2002:a92:216:: with SMTP id 22mr12564037ilc.53.1584090918350;
 Fri, 13 Mar 2020 02:15:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:ed34:0:0:0:0:0 with HTTP; Fri, 13 Mar 2020 02:15:17
 -0700 (PDT)
From: "JH" <jupiter.hce@gmail.com>
Date: Fri, 13 Mar 2020 20:15:17 +1100
Message-ID: <CAA=hcWSGmz-GRFac-UR6AcTRyUYjvf1buRaYQvvCMrr__OuV_g@mail.gmail.com>
Subject: menuconf u-boot
To: Yocto discussion list <yocto@yoctoproject.org>
Cc: Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I tried to run bitbake -c menuconfig u-boot, it popped up a terminal
u-boot-imx configuration:

make: *** No rule make target 'menuconfig'. Stop.
Command failed.
Press any key to continue...

How can I  run menuconfig u-boot?

Thank you.

Kind regards,

- jh
