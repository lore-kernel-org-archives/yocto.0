Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
 by mx.groups.io with SMTP id smtpd.web12.2501.1602185588477460386
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Oct 2020 12:33:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bc+btbxA;
 spf=pass (domain: gmail.com, ip: 209.85.222.169, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f169.google.com with SMTP id a23so8187950qkg.13
        for <yocto@lists.yoctoproject.org>; Thu, 08 Oct 2020 12:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=m8x9xxlzS/uxxXWBh6m5Lxl44S7/Jf/e4QuPAb9ZRwY=;
        b=Bc+btbxA73svOv4/sEtsDgn4bb7gK98XvQHVUU8ZAIIBJh4B5+klFivASj9SqQysLe
         Dtu4UQyt1MrTFBWz4AAFdOYNpImInGrYJ2ysJEKU3I0e6A2Huq+0E4PyPA8PJX5lkRR1
         L4Yx6Q/Rd36Xb9QbWGAcHxfGAuaY6Or1tDaIbnurCHbua/hQl2SjM/mpiXT4Gm7nvoh7
         EpgTqJ298QZZTMMdY96j4hm3t10t4fplzi379ZjzoDzyOZMc9s/Pl9wloPycyuzHzS70
         y895eh6V+TBBbWsYibsPMMTIewLPX+iSKFJHY2E62vc4i3jmpUrljTZ/Pbe+ybuafDk6
         XFhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=m8x9xxlzS/uxxXWBh6m5Lxl44S7/Jf/e4QuPAb9ZRwY=;
        b=GqeFYNO8gWT2bbo/z5kwPDBnRT1OktvQ5V6HFd95u4lx2xGW38IKNvK4UWp3q98Hr0
         b/gSIRkwfkBSPxQeSZG56TKGs9FlQhA3WPocynjKhX3ftA2zIN1j6U9/aez+IR97yZpH
         YieJekNIO1t28wRVvWfP92sdPtILdPfLCTbVgSh4EynJMf809mID9Gt73CW7iP94tO/c
         dbE4lCOISUdZBcZJ5Y0rtIMaN/Zd6D4pQc3OznFwnRq8+svNW+JqoGLBU5un4CMYXxB/
         c9W8KyOu8hczd23c/W70q8KcQysZJryXl6+xjeG+n02NcVuBHOQD/1nRBtO8Z7m+pJUt
         lrVw==
X-Gm-Message-State: AOAM531q+x+QuxkExljUHH8ZQU6BqB5abGh/pFLzsvsJwaJxs4A14uAP
	THOAAsQEp55s8gTVmaK4VYSXHvPmMWwTPDxWD44=
X-Google-Smtp-Source: ABdhPJx07xkF+kIJ4bjSucMewY5Wct2YSXwUtkfpQgN/3t94DMFq5bHCRX/6tSXdEmTu+o9zOfmDEyYhwKqkRqTqcdQ=
X-Received: by 2002:a05:620a:7f6:: with SMTP id k22mr9802263qkk.337.1602185587534;
 Thu, 08 Oct 2020 12:33:07 -0700 (PDT)
MIME-Version: 1.0
References: <5Waq.1602183057748215216.nbB5@lists.yoctoproject.org>
In-Reply-To: <5Waq.1602183057748215216.nbB5@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 8 Oct 2020 12:32:41 -0700
Message-ID: <CAMKF1srMYjjD2xhRv28mf6FHO=kYr0Md8ng3-_j2i2uOT2LEGA@mail.gmail.com>
Subject: Re: [yocto] Introduction #yocto #python
To: akhilathota499@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Welcome to this amazing community Akhila

On Thu, Oct 8, 2020 at 11:51 AM <akhilathota499@gmail.com> wrote:
>
> Hello Team,
> I am Akhila, outreachy applicant and I'm new to opensource projects. I'm excited to contribute to yocto project. I hope you guys would help me with this.
> 
>
