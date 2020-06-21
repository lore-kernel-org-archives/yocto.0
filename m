Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182])
 by mx.groups.io with SMTP id smtpd.web11.15886.1592748295818398382
 for <yocto@lists.yoctoproject.org>;
 Sun, 21 Jun 2020 07:04:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=eR30WrD3;
 spf=pass (domain: gmail.com, ip: 209.85.221.182, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f182.google.com with SMTP id x126so584443vkb.1
        for <yocto@lists.yoctoproject.org>; Sun, 21 Jun 2020 07:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lZAnIKn3GjAgjJRqqPxgdAe3Yeznju7aNziACyLFEb0=;
        b=eR30WrD37d13FihTLd98uWIaI2l3qIb8Fp+O5RBr33VBs9Jhz/mVfc3+X/kL0EeS49
         v+YEOK78hTmpA4B7SKaSbZHi0JPrxTxjGdtFGaYvGEpWqJqsKc3iv3nHUef9XLmV4P65
         wdvrsXdQm3ZOzOZfzRJOLKuIEyXpqQU2WyGvaOOUxTqBtMXu8J7Jp8uUkVe2Ewea2yq2
         b9qNYEmUixhyv0/em70eMFBMVEIlzr6o7BJb5UDIzkF7SZIGhkXN0Cz3uaZRuvWIBxln
         OcMh8HTQLG8MOPtss9rYWhjQDdMQc4wynsKOOVXP4imlMfIZ/UY5hONGOwpT6/HF0hRQ
         /btw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lZAnIKn3GjAgjJRqqPxgdAe3Yeznju7aNziACyLFEb0=;
        b=Ikm0PoOtWDU5AUGkYyVjyZTQMM2p9iUzZyFISjPfMp0Fim83sMT1zp7g+AnjKfTP47
         uQ1HPrQuLE6JbQji0JzZOSGYlqgkaZnlvEE+JOD9p+bvhbtEoSh9tSMmSY1w320Gx0xR
         S2dtbxPfKEyGEMDqUCmcLL34S6WkKgXc28yktekcigEQImnxkLBuwScdaeskYDS9oVmW
         p8rHUHWMHTj5kw2ncgHNH5GLYqGLRvrMmllVHHw17kSIhdK78jQOVjCn9+kweXkV/kb5
         9SrCjt8MgCoIT2EnNUxMhghAinIDdKlYPYyvJ/T09Q24nz5bnEgvcH10PryIeAlab6X5
         UFAw==
X-Gm-Message-State: AOAM530G4hyddDPT9KHjOo6aho8XzFELL9oPekuhr3wUSYYPp8w2wL9C
	4gDmfrpjLnTlPXF/rIXpheZAbYBdSxsa9qk5tu8=
X-Google-Smtp-Source: ABdhPJz/ZPmULGBGQgXdPLDcLetyL0ERJP+4Gh9ljwjHoDBy3B09JN6SaA9FdNm5ZsV3gCDp3lszjUXXLb33o7cJ1wg=
X-Received: by 2002:a1f:5f0d:: with SMTP id t13mr1238477vkb.29.1592748294978;
 Sun, 21 Jun 2020 07:04:54 -0700 (PDT)
MIME-Version: 1.0
References: <BL0PR11MB3268E2BB9A442B0890DA3C9DAE980@BL0PR11MB3268.namprd11.prod.outlook.com>
 <CANNYZj_0BYuNgmO3MHm0vEgu6qQut2vk984fRFPQGuRCy+=W1Q@mail.gmail.com>
 <4f66cf05-c142-188c-0661-8e446c81c67f@2net.co.uk> <20200621071150.GC6921@localhost>
 <28338870-464a-0f9b-71f2-5802cb4a7330@denx.de> <20200621134637.GD6921@localhost>
In-Reply-To: <20200621134637.GD6921@localhost>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Sun, 21 Jun 2020 16:04:43 +0200
Message-ID: <CANNYZj_0Ttc=npufxew0C+jyq-WLYfo8JZNn1ELQOTVO+3v6ng@mail.gmail.com>
Subject: Re: [yocto] Distro upgrade strategies
To: Adrian Bunk <bunk@stusta.de>
Cc: Stefano Babic <sbabic@denx.de>, csimmonds <chris@2net.co.uk>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000056be7905a8989c7b"

--00000000000056be7905a8989c7b
Content-Type: text/plain; charset="UTF-8"

On Sun, 21 Jun 2020 at 15:46, Adrian Bunk <bunk@stusta.de> wrote:

>
> With "atomic where they have to be" I meant the normal fsync+rename
> that ensures that you can never end up with a half-written file
> after a power-cut.
>

What about half-installed packages? Does dpkg guarantee atomicity on that
level, and if so, how? The situation where the system boots with a core
package being a mix of old and upgraded version isn't acceptable. And same
for the overall package set, where some packages are old and others are new.

Alex

--00000000000056be7905a8989c7b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Sun, 21 Jun 2020 at 15:46, Adrian Bunk=
 &lt;<a href=3D"mailto:bunk@stusta.de">bunk@stusta.de</a>&gt; wrote:<br></d=
iv><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><br>
With &quot;atomic where they have to be&quot; I meant the normal fsync+rena=
me<br>
that ensures that you can never end up with a half-written file<br>
after a power-cut.<br></blockquote><div><br></div><div>What about half-inst=
alled packages? Does dpkg guarantee atomicity on that level, and if so, how=
? The situation where the system boots with a core package being a mix of o=
ld and upgraded version isn&#39;t acceptable. And same for the overall pack=
age set, where some packages are old and others are new.<br></div><div><br>=
</div><div>Alex<br></div></div></div>

--00000000000056be7905a8989c7b--
