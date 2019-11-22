Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.6519.1574429900191649804
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Nov 2019 05:38:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=e6zbOLGr;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: pawan4749@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11EF5E00BA1; Fri, 22 Nov 2019 05:38:20 -0800 (PST)
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
	*      (pawan4749[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.214.178 listed in list.dnswl.org]
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9D04E007D4
	for <yocto@yoctoproject.org>; Fri, 22 Nov 2019 05:38:18 -0800 (PST)
Received: by mail-pl1-f178.google.com with SMTP id az9so3118275plb.11
        for <yocto@yoctoproject.org>; Fri, 22 Nov 2019 05:38:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=zr7wLGV4+8QAheC/2A4nN/FOm84LF6meg1iN5INYz0s=;
        b=e6zbOLGrevQg2eTpQNtbGsE0GNuBmQryowOP5/oXKiiXaylzCOvD1fruqJ47K4ToRM
         hwbrtUsWCbbfivzm0d0EhPqFlGkFfOKmmx/SqnLsEyjeN8cKfXvbN6o8FPMoahVPXUaA
         lRGdraFq3GQq/TmJynXwJ1T21w7Lt4LCpXqbHjLARzdKwdJZPuCv7LPXXV/cLiM86BVd
         /wxPa9uKwYeJMuv81Q1XIl8Llxr65Djri/WZxBxevzzHnEviFsYJajh+Bi1PEfCnKUfG
         bdyJsEsJkDr2ILfw78RmoFM7KZe0taF5on7MFB7i3EN61yxDOsoYeDQZLZ4Nw4xbifw3
         wtpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=zr7wLGV4+8QAheC/2A4nN/FOm84LF6meg1iN5INYz0s=;
        b=GGtjqFadyYHlQDor+m9+CvSiWxozZyjeyquDUn5pWmdP9ohb3MBS8VSta5tuEPN6d0
         UQLxU3vcis0lblmTs1Kexy+Q/jHG3HQA6mAcoLzBWwfW7LETKiqgXTaxowdVr+O7Hf4A
         ovbNCUO0GPTMoBgKGG37u48/u2tDOaEC+CdQ/A5TNcZhHSbdeV9Zd9LKutsHABNj7joe
         SAa/diX1iPajZiT2mH8OCMZJQqawx/K+0VlPL3pmKfly+nh8VIKyXxS4Ei0LUXHqOb87
         /JGfPDIJgrVmFnbS394I3o3Us4Ln65tgtmBUqDpxG49EI3H8/2Q+9R/6BXzogRmJYvyG
         nJGw==
X-Gm-Message-State: APjAAAUitlnAGwMmLdVqEJ6uohaNqIeMtM119rzCQ5M5HAUauIvYmrI4
	WbQHHswOXNnCkLHMQJMhOo+KpG6V/xKCM4sDyhmMbA==
X-Google-Smtp-Source: APXvYqy5SBlSw9RvNq83SUxvGgRDGzdMvr1HqAF6btAMhv/sc/010VyD/HATNoWFXY9nZhJdZq+cVxgJo8IdEPi2oIY=
X-Received: by 2002:a17:902:d891:: with SMTP id b17mr14427005plz.256.1574429897530;
 Fri, 22 Nov 2019 05:38:17 -0800 (PST)
MIME-Version: 1.0
From: "pavan" <pawan4749@gmail.com>
Date: Fri, 22 Nov 2019 21:38:05 +0800
Message-ID: <CALd6x_siiqxqhC4n4Ynf45tT0LiaTUdy-T48mTuGZT=e9mDsXw@mail.gmail.com>
Subject: Warning message after building recipe:
To: yocto@yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000c420a40597ef8602"

--000000000000c420a40597ef8602
Content-Type: text/plain; charset="UTF-8"

Hi All,

After building the recipe, I'm getting warning message:
"Warning: do_package_qa QA Issue: <recipe-dbg>: found library in wrong
location.
Any suggestion to resolve this issue?


Regards,
Pavan

--000000000000c420a40597ef8602
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi All,<div dir=3D"auto"><br></div><div dir=3D"auto">Afte=
r building the recipe, I&#39;m getting warning message:=C2=A0</div><div dir=
=3D"auto">&quot;Warning: do_package_qa QA Issue: &lt;recipe-dbg&gt;: found =
library in wrong location.</div><div dir=3D"auto">Any suggestion to resolve=
 this issue?</div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div><=
div dir=3D"auto">Regards,</div><div dir=3D"auto">Pavan</div></div>

--000000000000c420a40597ef8602--
