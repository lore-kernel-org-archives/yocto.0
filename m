Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E37CC02198
	for <webhook@archiver.kernel.org>; Wed, 12 Feb 2025 09:38:45 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
 by mx.groups.io with SMTP id smtpd.web11.11333.1739353117533674261
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Feb 2025 01:38:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GCWWfsBn;
 spf=pass (domain: gmail.com, ip: 209.85.219.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-6dcd4f1aaccso100881596d6.2;
        Wed, 12 Feb 2025 01:38:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739353116; x=1739957916; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1Ax/VPM0gAQJojqfI1ksPsGjVAyrCjPGpUb3HzHg9Tk=;
        b=GCWWfsBngvst7m9rJZ3Qk77uo1pUQ6ZtofnGSujEWr9Uiu9q1eOTGLEX3Rady8qIlb
         krQve2VkDwhj46cfxGjvudQAZ8KHcX4OdJel7WU+AHYuORAfsRFqU8jcGwTo7KHTOORM
         44K6JP2zqXNyxhE9OJ74QVV2bTOWaZ0i9/KPV2frBMZ8PMKo3/7OO1ZjyrutXqSoDRnU
         7n/BkI7z3mzpPBKM6JuDQbO6fwcyGh657+ksu8XikcbiPNzbdOv2oXldXi0z5YplUhPv
         9KTQFHO2H0nke27BVuaX3UDtqwVqPBsMtgmlxAWgBg19i0Te9vbrn0oE3nbNKawyflas
         ypaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739353116; x=1739957916;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1Ax/VPM0gAQJojqfI1ksPsGjVAyrCjPGpUb3HzHg9Tk=;
        b=s2KGhIauBXULkKmbUZI4mikP+4mwflrNIBtKxeBrkR02u72RFNpqaOI6i838LYtEoH
         lszJOx0diB5827fkIZAfiBTtvRe87QGB6QUjJeiaWv+gndo2XyoE7j++firZRbg6HrJs
         PocCI8hkHgATnbYd1cWFeiB2n0YLFuTc3g4LlR07kMOetWVYnXb4d6FrRz3+K/0Rq9xO
         EZflY/lh4LKDAHo7p5NfUMTB5qHOX5PMRobFGhzZFQDRYNB19FFoKJ3x0lVd3xz0Wwoa
         4pHBRAx4RGYrIxIQGcPCQiFPDsKlYaacYBJ3FJHYHjIYeXbnOiMElkEFqcfMSumWlONV
         FjxQ==
X-Forwarded-Encrypted: i=1; AJvYcCWtvBHz2PL2LjcUGZob/BGoZK/uRH9YqbjPF8jEHk4hhLNXFe116+I3TBV6ccCeyQ74CcrIhvyUNazClSI=@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwqcuC9kO2JCj3BrXq85H2t/SpYeD3MR3gFeXlXdZmki3tJpm83
	lbqTa39ai2IM+Gi0+fqiTEwAyl3w1Xyr9CXmEsQRsPdWnQ3Jer87Pa9NTkB2/yZCYqqQdHhCHCk
	w0NtGs4eIjmJQZ6pDPL8L5r8iVl8=
X-Gm-Gg: ASbGncuQtM2HUDZWbpnBX54ukjWMcqdX+5pEvfDwlDh9Us2QXjL9sRnSORaX/NTqlZS
	nBGsImU6ayHyNRFPzlOf7+KnCdPe3NKGVvXRc2QrpZRw/5LPqjB2CL3lSaRjQv589njqHciemw7
	+6rrz4KTCNqLCD6dLG1Cc/GygTfrGWTF0=
X-Google-Smtp-Source: AGHT+IFP9b+wG9R4fgq9e+3s7nnZPw1Se8c2YvTnVe3+istfcMv617bjEqT/DVlXPBEYiUv6+yfPf1iiSns6q5COS8Y=
X-Received: by 2002:a05:6214:482:b0:6e4:4484:f358 with SMTP id
 6a1803df08f44-6e46edad857mr42408156d6.33.1739353116459; Wed, 12 Feb 2025
 01:38:36 -0800 (PST)
MIME-Version: 1.0
References: <CAK5yBb9Fr9MFy5uub2_pTRWmVbt96OWBJ5ty+eAB9Qn+LYa_Wg@mail.gmail.com>
 <CANNYZj-PbWQDa5hAc5X6sqHVMvJ0QE01XXwytya8rprwvSsqag@mail.gmail.com>
 <d22a4cec5e317e62f1f44d8d9a810cf4745ccb48.camel@linuxfoundation.org> <CAMSfU+6d7gvYkjC5sbUPu6D_hOOF43ZUnM_NMEwmLUxZn6ysSA@mail.gmail.com>
In-Reply-To: <CAMSfU+6d7gvYkjC5sbUPu6D_hOOF43ZUnM_NMEwmLUxZn6ysSA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 12 Feb 2025 10:38:25 +0100
X-Gm-Features: AWEUYZmrCFLBvJxisVCKQn8vMjQFb1nuK0rm34bHn3Mr2BZXbwQcx0JWJyimo30
Message-ID: <CANNYZj-ijxTudoYuU5g=_QH5D5ce4zC=EW2rNbiMKY3iBktisw@mail.gmail.com>
Subject: Re: [yocto] [OE-core] Yocto Project Status 11 Feb. 2025 (WW07)
To: Yoann Congal <yoann.congal@smile.fr>
Cc: yocto@lists.yoctoproject.org, richard.purdie@linuxfoundation.org, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>, 
	yocto-status@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Feb 2025 09:38:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64779

On Wed, 12 Feb 2025 at 09:08, Yoann Congal <yoann.congal@smile.fr> wrote:

> We can try things to push users out of github :
> * using the PR template (the text pre-filled for the new PR description) to convey the same info

I think this is the best option, and shouldn't be hard to add as it's
a standard github setting? Once we have that, I'd take a look at
what's open, but not before.

I also do dislike that all of this discussion around creating those
mirrors happened behind closed doors, at least I have no recollection
of it.

Alex

