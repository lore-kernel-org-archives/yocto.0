Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
 by mx.groups.io with SMTP id smtpd.web11.12698.1586774774220575359
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Apr 2020 03:46:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=j7WEjRFp;
 spf=pass (domain: linaro.org, ip: 209.85.219.173, mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-yb1-f173.google.com with SMTP id e17so5045735ybq.0
        for <yocto@lists.yoctoproject.org>; Mon, 13 Apr 2020 03:46:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BTSUxaT3Ain0GT4y9p3bV8nIArlWMOMBc8ZC6+0Vebs=;
        b=j7WEjRFpPdB5ho5Lh0ZtFoNZD3MVJwdOQZ6M9KVd90CdyKUuYlKr7QTr5Xk8b8qWZL
         qhnzi1Ku+rb7tsCtLZsySexutYGdjBVrLckOQqICJsCOp8mHX5iI88hdIB6/AkNnp+kR
         olUFCT/oCthj5z9mDIcLltcwVHDgWRU8hC91QK7qHRsJYvmWAFLunkWiV4UxcKu6q6Eq
         koon1K0RSxtv/p7dWsOwoRa9TtgaoTb7J9QYXanjNK8h+TjrIa1wVdXsaXRUxhClw5DL
         oVKOiNHiJSXrWnCixsALUuS9w55nyki3/YYknpN1xzC2dLZZ368o8JGScjguK6IvR+zf
         hrJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BTSUxaT3Ain0GT4y9p3bV8nIArlWMOMBc8ZC6+0Vebs=;
        b=o8VL/o9qQukmrjlQERKKOwQCO3dTsgB3H3vUq865OMN35P8/fWH0AIVmlfhQuMzTh3
         pCIsUudzpeJF3sAFUNurS6AzymNq0YgAqSxzQ6g1IN9+JT0+B4qDEVA9V9BUkGXoAtvD
         BjNjYsK8pTsxniqIdQc/edQdb3pwCXDAecNfHX4QYR0kxMCxYpw+5kzq+bBuj7EJRh1R
         fCufo4rVMfsHwyTtLAmFQzaB+5Oeq0LXOy4/ROvK/3GxLCsoR5lnHm1r8ZwYACrLo5vi
         0VhKq5I7cmEAJH8EqT8Yp79MiQSRu0Jj60G6+5MKr5Tqcgub7HccC5EHg/tZyKak3T4p
         +8WA==
X-Gm-Message-State: AGi0PubbXnRzgd0r95qU+QcUjL2Dxw5FPXMvOZ/V99VQmyP/OJfGuQoQ
	uJKH/JCxvStPnO5/0hTl9H7qdFhgesssKKrZy0tPuQ==
X-Google-Smtp-Source: APiQypJk+vjOI3satXUmoVggiSGQIohaHDPODvCCHJHf+PTaIpLcV6QO4gCVKNCQdajXoiXF5+Fb0ZEL3EgmoFtjY18=
X-Received: by 2002:a25:ec1:: with SMTP id 184mr25648005ybo.373.1586774773276;
 Mon, 13 Apr 2020 03:46:13 -0700 (PDT)
MIME-Version: 1.0
References: <1bc0fffb.3be7.17171a9737f.Coremail.nus1998@yeah.net>
In-Reply-To: <1bc0fffb.3be7.17171a9737f.Coremail.nus1998@yeah.net>
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Mon, 13 Apr 2020 12:46:02 +0200
Message-ID: <CAP71WjwiHBSZaGkGrPJmdgKeTQK+5TgckVF86S50yEmWObR1LA@mail.gmail.com>
Subject: Re: [yocto] What is the recommended method to patch a recipe?
To: nus1998 <nus1998@yeah.net>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b343d305a329cad3"

--000000000000b343d305a329cad3
Content-Type: text/plain; charset="UTF-8"

On Mon, Apr 13, 2020 at 10:20 AM nus1998 <nus1998@yeah.net> wrote:

> Hi All,
>
> I googled some topics on how to patch a recipe, most of them recommend to
> generate a corresponding <foo>.bbappend to apply the patch, I wonder if
> there is already a bbappend file, shall I modify the bbappend file
> directly, or create another layer to overwrite the bbappend file (and
> including the patchs in original bbappend file)?
>

A good rule of thumb is to never modify a metadata that is not yours. That
applies to everything:
* if you need to modify a bb file from a 3rd party library, create a
bbappend file in your layer
* if you need to modify a bbappend from a 3rd party, then create another
bbappend in your layer

And by 3rd party i mean any layer/tree which is not yours (OE-core, or any
other layer your are using).


> Thanks in advance
> Nus
> 
>

--000000000000b343d305a329cad3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 13, 2020 at 10:20 AM nus1=
998 &lt;<a href=3D"mailto:nus1998@yeah.net">nus1998@yeah.net</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div style=3D"l=
ine-height:1.7;color:rgb(0,0,0);font-size:14px;font-family:Arial"><div styl=
e=3D"margin:0px">Hi All,</div><div style=3D"margin:0px"><br></div><div styl=
e=3D"margin:0px">I googled some topics on how to patch a recipe, most of th=
em recommend to generate a corresponding &lt;foo&gt;.bbappend to apply the =
patch, I wonder if there is already a bbappend file, shall I modify the bba=
ppend file directly, or create another layer to overwrite the bbappend file=
 (and including the patchs in original bbappend file)?</div></div></blockqu=
ote><div><br></div><div>A good rule of thumb is to never modify a metadata =
that is not yours. That applies to everything:</div><div>* if you need to m=
odify a bb file from a 3rd party library, create a bbappend file in your la=
yer</div><div>* if you need to modify a bbappend from a 3rd party, then cre=
ate another bbappend in your layer</div><div><br></div><div>And by 3rd part=
y i mean any layer/tree which is not yours (OE-core, or any other layer you=
r are using).</div><div><br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div style=3D"line-height:1.7;color:rgb(0,0,0);font-size:14px;f=
ont-family:Arial"><div style=3D"margin:0px"><br></div><div style=3D"margin:=
0px">Thanks in advance</div><div style=3D"margin:0px">Nus<br></div></div><b=
r>
</blockquote></div></div>

--000000000000b343d305a329cad3--
