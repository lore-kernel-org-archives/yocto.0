Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.1980.1576578991396851530
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Dec 2019 02:36:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.ro header.s=google header.b=SNyaiCPp;
 spf=none, err=SPF record not found (domain: gherzan.ro, ip: 140.211.169.56, mailfrom: andrei@gherzan.ro)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C54B1E0125E; Tue, 17 Dec 2019 02:36:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.217.65 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f65.google.com (mail-vs1-f65.google.com [209.85.217.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CD22E00736
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2019 02:36:30 -0800 (PST)
Received: by mail-vs1-f65.google.com with SMTP id g15so6168196vsf.1
        for <yocto@yoctoproject.org>; Tue, 17 Dec 2019 02:36:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gherzan.ro; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=99sRR9rHbQA6aFoOJ2Px8+CsL1mXdtL73it8y5gVGck=;
        b=SNyaiCPpi13iSfcsnfpuEKkveyPFTksAgCDTDRDeUaPBrx0AAZqjldhnB5cZa9InLx
         9YAQ1YBw4JIEJXpuASaO+aTAUK2nfAuqN6nq+WyE5GAf/NPcFUA9xI+qsC2GNh6Vyw31
         U1bhjY+eNDCljJIgiZLr25V6S0XeBbnhlY3svidhAssn9a7Z2qFf71J92aMvEJ+cWUL0
         n6cAf1Tpb0/vEVXelnByb/Wm8PVASX7/n+BUbeXFpj46LJM8YtvxtPlejtCoqQQtoHo1
         os3Y7yC9BHqnfRoMJrGCiuF4rklzuVgReER65Ts3IKU5m8iZIVWkgvK+ddYAcqQixjzg
         lV0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=99sRR9rHbQA6aFoOJ2Px8+CsL1mXdtL73it8y5gVGck=;
        b=NYtK45qm3D0fMc8q4Iuu9MmGhuXhXmw50hfi0PDVviG4VlowbpP0ujGIhSI6dajXdE
         XRsybdZsXg+SDwKgTBrYiJBzhoIZqsbPjdt7Xln7sBIAArMSKeKBJmkU5YvhQEwbyVnB
         b3lHm5R/qndSavj2jXUXzVRHfq0GPE0pBq6j7hE3cQld8Oha1EcoUlbhoIUxNinyQjZ7
         jGuvrMxsVhhW6kef+Y7pJDXi8uCccqn8vno+UwsFANp0RPNw++na39FfwE9CaRofXCg9
         IyfWPc+8eEgas0TetfkmyqYS5SK7yk/H5gGVFr8xlJ+269teGuOH81tXNIGfF6botZya
         bqfA==
X-Gm-Message-State: APjAAAWgZwjL706iSyRwsLoNMrx27EdMxy2ZCJuLouzqBM2eT1602QWM
	xSyASCWAi9IFIYd3vf4BAm1k837Mq5JsfD5TqJqSU85p
X-Google-Smtp-Source: APXvYqwAl8CHCW7CzxqpJq1QPvnL/yg+7wWFdb6BP8wTqk7TMJCMbp/D3gGIwnZ/NTarJKOMEjsxpIXARwzAfJt+Quk=
X-Received: by 2002:a05:6102:5f7:: with SMTP id w23mr2425691vsf.122.1576578989529;
 Tue, 17 Dec 2019 02:36:29 -0800 (PST)
MIME-Version: 1.0
References: <20191217101917.29395-1-andrei@gherzan.ro>
In-Reply-To: <20191217101917.29395-1-andrei@gherzan.ro>
From: "Andrei Gherzan" <andrei@gherzan.ro>
Date: Tue, 17 Dec 2019 10:35:53 +0000
Message-ID: <CAK18fxGQ=CwV43ETPOQXW1YYi=5tw2Z6fG1vYw4UsAOGwDkLgg@mail.gmail.com>
Subject: Re: [PATCH 1/3] Support --with-font configure option to use other font headers
To: yocto@yoctoproject.org
Cc: David Steinberg <david@sonabuzz.com>
Content-Type: multipart/alternative; boundary="000000000000a1b2f80599e3e61a"

--000000000000a1b2f80599e3e61a
Content-Type: text/plain; charset="UTF-8"

Hello,

On Tue, Dec 17, 2019 at 10:19 AM <andrei@gherzan.ro> wrote:

> From: David Steinberg <david@sonabuzz.com>
>
> Signed-off-by: David Steinberg <david@sonabuzz.com>
>

Please ignore this series. I've re-sent it with the correct "psplash" email
subject tag. Sorry for the extra noise.

Regards,
Andrei

--000000000000a1b2f80599e3e61a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr"><br></div><div dir=3D"ltr" class=3D"gmail_attr">On =
Tue, Dec 17, 2019 at 10:19 AM &lt;<a href=3D"mailto:andrei@gherzan.ro">andr=
ei@gherzan.ro</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">From: David Steinberg &lt;<a href=3D"mailto:david@sonabuzz.com=
" target=3D"_blank">david@sonabuzz.com</a>&gt;<br>
<br>
Signed-off-by: David Steinberg &lt;<a href=3D"mailto:david@sonabuzz.com" ta=
rget=3D"_blank">david@sonabuzz.com</a>&gt;<br></blockquote><div><br></div><=
div>Please ignore this series. I&#39;ve re-sent it with the correct &quot;p=
splash&quot; email subject tag. Sorry for the extra noise.</div><div><br></=
div><div>Regards,</div><div>Andrei<br></div></div></div>

--000000000000a1b2f80599e3e61a--
