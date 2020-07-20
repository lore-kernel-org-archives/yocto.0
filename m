Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
 by mx.groups.io with SMTP id smtpd.web10.2975.1595272653352875820
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jul 2020 12:17:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=W+Y+xxBx;
 spf=pass (domain: gmail.com, ip: 209.85.208.45, mailfrom: martin.jansa@gmail.com)
Received: by mail-ed1-f45.google.com with SMTP id by13so13586038edb.11
        for <yocto@lists.yoctoproject.org>; Mon, 20 Jul 2020 12:17:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ikS7c1YhdVCQdd/N7WkVkeeezK4jtJG8uWBXnrgttKw=;
        b=W+Y+xxBxOuRJlEOLr34idauYcrB/dKWU+qYos/Deic0HOlg+Hs1+Vbi3X6EgYIr9/X
         r3ymuTsID++nGuoCg5Nn9/AwdRr4H5BaY3Vd8KcpCE7R02Fb/T4HAueyTGpYtNFZSO8p
         p94TwrxxCZwgNw+IKmNRnz9gn8mQvciu7B3cn57nTN46tAwaB9W07hk6miy2bHZd1woU
         9m5fYkXTO7gaNKp8q9OnGhSmU69ntXLsF0NIvIOp7Jzy6hN1ZynU7EN598q+kbWKjNxF
         wbUdB0b0xRamIQhDyTKT0yR2oFtU3qeeO1xFmtVIDkhr/0VbTFTaVRRua0bvzQ1v/dHD
         UD9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ikS7c1YhdVCQdd/N7WkVkeeezK4jtJG8uWBXnrgttKw=;
        b=I3m6bTyhIDC2LfXOBFYNuB50DyZ5YDj4NcDDjDHCutNelmKHl3/zXC/1icLk9bI3/Q
         oD+X7ZqUHZ+bxkZVkGpO+KbTvKd2XCJf5eLUEetm/g/L2PEib98feZtT4bjRKY98Ebu4
         ZEBt6xLsK3Nws9sBTF81bfNCfOE2oA0LjmAMCigLdDcGovndDVGMahjEa+NP+yMerQd+
         w+v4a3Jp46yW4L960r7yADFz/4Ahr24wAu8eBr6nJfDY1EBgZS1egHvj1Egr7nTprzl8
         kxdu7z3zemFaSiAc1JTX+egmOlQvDQ7UwgQC++uZgXrzziO4rMjGPBt7ThwlugzOvkqg
         BEeg==
X-Gm-Message-State: AOAM532vzSkYcLeMewzluMY2CDFo/wCXBw3XQ0uA7CpQYQT8LOZqbov/
	Uvbh6XoFoGLOIjMlglLNciqOI7oxGyYXYJgO7rc=
X-Google-Smtp-Source: ABdhPJxZcR36/e0lCusY+CrLPjiamTiy/o478S+6JagzXhbgmzoUfe6jFkS9vv22soVd7WNtMAgFudYbcnOfQRwe8E4=
X-Received: by 2002:aa7:d1c8:: with SMTP id g8mr23044523edp.337.1595272651771;
 Mon, 20 Jul 2020 12:17:31 -0700 (PDT)
MIME-Version: 1.0
References: <8d0258be3275bc76159bdd096d75c8c7984ff6d3.camel@linuxfoundation.org>
 <9865.1595268898261627258@lists.yoctoproject.org>
In-Reply-To: <9865.1595268898261627258@lists.yoctoproject.org>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Mon, 20 Jul 2020 21:17:20 +0200
Message-ID: <CA+chaQcp+gvTxxwxXcMtUL1OnpERhD3TAr3jLFLi+J1sq7qXeA@mail.gmail.com>
Subject: Re: [yocto] Offline Build #yocto
To: "Amrun Nisha.R" <amrunnishar@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ba93dd05aae45be5"

--000000000000ba93dd05aae45be5
Content-Type: text/plain; charset="UTF-8"

/opt/yocto_downloads or /opt/downloads?

On Mon, Jul 20, 2020 at 8:15 PM Amrun Nisha.R <amrunnishar@gmail.com> wrote:

> I have updated the DL_DIR to the current build directory's downloads
> folder using sed command.
>
> sed -i 's/DL_DIR ?= "${BSPDIR}\/downloads/DL_DIR = "\/opt\/yocto_downloads/g' conf/local.conf
>
>  in place of /opt/downloads, I have provided the downloads location. It
> takes the newly provided downloads location. It will do the do_fetch after
> identifying the source code packages from the downloads folder. In
> downloads, the source code for each package is there. Normally when we try
> to bitbake, it will execute as do_unpack, do_patch, do_configure,
> do_compile, do_install, do_package and do_package_write in order. I have
> tried to copy the buildstats from the old location build/tmp/buildstats tp
> new build location. It compiles the source code from the downloads by
> do_compile but ends with the error with do_fetch error for ncurses
> packages. I don't know, where the compilation packages will be located.
> 
>

--000000000000ba93dd05aae45be5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">/opt/yocto_downloads or /opt/downloads?</div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jul 20, 202=
0 at 8:15 PM Amrun Nisha.R &lt;<a href=3D"mailto:amrunnishar@gmail.com">amr=
unnishar@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">I have updated the DL_DIR to the current build directory&=
#39;s downloads folder using sed command.<br><br>
<pre style=3D"font-family:SFMono-Regular,Menlo,Monaco,Consolas,&quot;Liber=
ation Mono&quot;,&quot;Courier New&quot;,monospace;color:rgb(0,0,0);backgro=
und-color:rgb(241,241,241);border-width:0px 0px 0px 4px;border-top-style:in=
itial;border-right-style:initial;border-bottom-style:initial;padding:1em 1e=
m 1em 2rem;font-size:12.6667px;margin-bottom:1rem;overflow-y:hidden">sed -i=
 &#39;s/DL_DIR=C2=A0?=3D &quot;${BSPDIR}\/downloads/DL_DIR =3D &quot;\/opt\=
/yocto_downloads/g&#39; conf/local.conf</pre>
=C2=A0in place of /opt/downloads, I have provided the downloads location. =
It takes the newly provided downloads location. It will do the do_fetch aft=
er identifying the source code packages from the downloads folder. In downl=
oads, the source code for each package is there. Normally when we try to bi=
tbake, it will execute as do_unpack, do_patch, do_configure, do_compile, do=
_install, do_package and do_package_write in order. I have tried to copy th=
e buildstats from the old location build/tmp/buildstats tp new build locati=
on. It compiles the source code from the downloads by do_compile but ends w=
ith the error with do_fetch error for ncurses packages. I don&#39;t know, w=
here the compilation packages will be located.
<br>
</blockquote></div>

--000000000000ba93dd05aae45be5--
