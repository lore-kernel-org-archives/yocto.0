Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.13647.1579539853185765203
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jan 2020 09:04:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tjOSFJp0;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: ticotimo@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9568BE01382; Mon, 20 Jan 2020 09:04:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,
	WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (ticotimo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.171 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58754E00CA1
	for <yocto@yoctoproject.org>; Mon, 20 Jan 2020 09:04:09 -0800 (PST)
Received: by mail-il1-f171.google.com with SMTP id t2so48499ilq.9
        for <yocto@yoctoproject.org>; Mon, 20 Jan 2020 09:04:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=h56WhaeW5G+DMUumyyjX6NUchgAh9sdB4bGhnT+SiJA=;
        b=tjOSFJp0kqR9CNwFCLHWppfoItqBlvY+U/dckl2+q2K1EV3+DqMzOUW+Mz8DlL5WtG
         gUilVoatG3oCg9mSJW9ECstJ8GP7igOlKmZVNsoDkjgMnBVCG3DIdBZoeNFMNd5UPBVo
         4UAfglupmtoTn2xZ0aSmiNErmp2nCZxbpuFqtSlemwiqiyz7kjddvo6+jiGPVNAiLZk7
         jK3faX0cUSLVMIox1I/k5UhlR+W4PPY/9cZ4oo9urgnbpwFAiSOHFDyJmpuv3n0c5doT
         Js1BUlPoZcYLi06yws2bQna+6f1rmgkGA/eukSSsPBZHNOL8fufe1UkoqQlATw+xLrm9
         siKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=h56WhaeW5G+DMUumyyjX6NUchgAh9sdB4bGhnT+SiJA=;
        b=NAJ5CjZtyqDQMfbBgdYPb/26wm1uk/MeCoKdeADGadLrWdhMh2xPYGob4+6t53ZDCF
         XLgbSCzPulb7H+PCA8s5w9savSvJOZIcFvDuw1weEF5Tr16FOEcUYErrhvQwTtgn2/Q8
         eWqYgnuIuiYyDrGLJSZPUXuol7/XbDBEovOGWQL/xxfxwsEwJHI35a95YTanjklYmi84
         q5G9K14Eom7nUGWEjqGZm1G6fyNfeyobPn1TzA3mTky/JuSpWODzdVTNHCIaziNH0tGi
         pSbnP176mjx1goOpQKmM3n3wUWCywimqjBbzGo9VJ2nm5KZsqw90T6S9i0P0tDJ83D96
         P9nQ==
X-Gm-Message-State: APjAAAUJvPcUEDJy/jsfzX/cu5wLsomIf5O0WtKhHojq5J8CMQ+7szz6
	NwnBJyow0LnIzJOvpWMf07I2O8n9QOOnC0c7CSM=
X-Google-Smtp-Source: APXvYqxnOk0woPeEbQqLSND5tI2g1MaWO0SfiULv6dG/aZ9B24510rqzB6RVNXY0IeAuDgDA7UTGSGJ44p22tIw7xhI=
X-Received: by 2002:a92:911b:: with SMTP id t27mr48024ild.142.1579539848718;
 Mon, 20 Jan 2020 09:04:08 -0800 (PST)
MIME-Version: 1.0
References: <20200120115132.3618-1-ross.burton@intel.com>
In-Reply-To: <20200120115132.3618-1-ross.burton@intel.com>
From: "Tim Orling" <ticotimo@gmail.com>
Date: Mon, 20 Jan 2020 09:03:57 -0800
Message-ID: <CANx9H-BBqLtyL3g9KmzyUw1ZasginK7eQzWA8AM05R_8KJqM+g@mail.gmail.com>
Subject: Re: [OE-core] [PATCH][meta-python2] python: add 2.7.17 from oe-core
To: Ross Burton <ross.burton@intel.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>, 
	"openembedded-devel@lists.openembedded.org" <openembedded-devel@lists.openembedded.org>, 
	openembedded-core <openembedded-core@lists.openembedded.org>
Content-Type: multipart/alternative; boundary="000000000000976e7f059c95473e"

--000000000000976e7f059c95473e
Content-Type: text/plain; charset="UTF-8"

First of all, a GREAT BIG THANK YOU for doing this.

ERROR: ParseError at
/home/ttorling/Projects/meta-python2/recipes-devtools/python/
python_2.7.17.bb:1: Could not include required file python.inc

Seems like python.inc is 2.7 specific and should also move? I grepped for
usage in poky and didn't find any.

On Mon, Jan 20, 2020 at 3:51 AM Ross Burton <ross.burton@intel.com> wrote:

> Python 2 ceased being maintained on the 1st January 2020.  All users of
> Python 2 in oe-core have already been ported to Python 3, so in oe-core
> 390f3eda Python 2 was finally removed from oe-core itself.
>
> The following are added to meta-python2 in this commit:
> - python and python-native 2.7.17
> - python-setuptools
> - The classes pythonnative, pythondir, distutils, setuptools
>
> Signed-off-by: Ross Burton <ross.burton@intel.com>
> ---
>  classes/distutils-base.bbclass                |    4 +
>  classes/distutils.bbclass                     |   87 ++
>  classes/python-dir.bbclass                    |    5 +
>  classes/pythonnative.bbclass                  |   27 +
>  classes/setuptools.bbclass                    |    3 +
>
> <snip>

> --
> 2.20.1
>
> --
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core
>

--000000000000976e7f059c95473e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>First of all, a GREAT BIG THANK YOU for doing this.</=
div><div><br></div><div dir=3D"ltr">ERROR: ParseError at /home/ttorling/Pro=
jects/meta-python2/recipes-devtools/python/<a href=3D"http://python_2.7.17.=
bb:1">python_2.7.17.bb:1</a>: Could not include required file python.inc</d=
iv><div dir=3D"ltr"><br></div><div>Seems like python.inc is 2.7 specific an=
d should also move? I grepped for usage in poky and didn&#39;t find any.<br=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Mon, Jan 20, 2020 at 3:51 AM Ross Burton &lt;<a href=3D"mailto:ross.bur=
ton@intel.com">ross.burton@intel.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">Python 2 ceased being maintained on the=
 1st January 2020.=C2=A0 All users of<br>
Python 2 in oe-core have already been ported to Python 3, so in oe-core<br>
390f3eda Python 2 was finally removed from oe-core itself.<br>
<br>
The following are added to meta-python2 in this commit:<br>
- python and python-native 2.7.17<br>
- python-setuptools<br>
- The classes pythonnative, pythondir, distutils, setuptools<br>
<br>
Signed-off-by: Ross Burton &lt;<a href=3D"mailto:ross.burton@intel.com" tar=
get=3D"_blank">ross.burton@intel.com</a>&gt;<br>
---<br>
=C2=A0classes/distutils-base.bbclass=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 4 +<br>
=C2=A0classes/distutils.bbclass=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A087 ++<br>
=C2=A0classes/python-dir.bbclass=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 5 +<br>
=C2=A0classes/pythonnative.bbclass=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A027 +<br>
=C2=A0classes/setuptools.bbclass=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 3 +<br><br></blockquote><div>&lt=
;snip&gt; <br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
-- <br>
2.20.1<br>
<br>
-- <br>
_______________________________________________<br>
Openembedded-core mailing list<br>
<a href=3D"mailto:Openembedded-core@lists.openembedded.org" target=3D"_blan=
k">Openembedded-core@lists.openembedded.org</a><br>
<a href=3D"http://lists.openembedded.org/mailman/listinfo/openembedded-core=
" rel=3D"noreferrer" target=3D"_blank">http://lists.openembedded.org/mailma=
n/listinfo/openembedded-core</a><br>
</blockquote></div></div>

--000000000000976e7f059c95473e--
