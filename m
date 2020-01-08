Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.2889.1578518071347313927
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jan 2020 13:14:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=iQaN/M2G;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: chuckwolber@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39375E014C8; Wed,  8 Jan 2020 13:14:31 -0800 (PST)
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
	*      (chuckwolber[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.160.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD695E01405
	for <yocto@yoctoproject.org>; Wed,  8 Jan 2020 13:14:29 -0800 (PST)
Received: by mail-qt1-f177.google.com with SMTP id j5so4014842qtq.9
        for <yocto@yoctoproject.org>; Wed, 08 Jan 2020 13:14:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CsH5w5HYb0QNQ+aqDR9v+rjc6GCjCnovyUXqADUBhDU=;
        b=iQaN/M2GKN3R4YaikrUK135mrD1xlavvbj9Hw6cQTgf6gcQMQrGhnxl5mMaz8ZHh77
         NQMFyc5tpTBj8d6LzzBa2Z90dnfsNI0+d8DNo1L7SkNpI+6uuC1hAoLfVyHy+vbplY9s
         W7GOOzEi+1ndPwHH3I+CNQ5kYoLBx77494imYpUOvFil6+c//+xlMZFHP7LNTRBHONKj
         oA8CYCQXQdsotsJqa8S6XGMmS09hgeS4lvq0kY3lVRmMLH9XHP7i+0tt8J2FJSVoMBcT
         6CpTsP57nPc/hiLOc4zB8eHLkorWVtvIFy0GJP5evB3IOmZfFhVx0c0KhBzkxG4zcV+i
         nGtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CsH5w5HYb0QNQ+aqDR9v+rjc6GCjCnovyUXqADUBhDU=;
        b=aGntw8QKb312YE5b+pXK7L1ziU9FF9iy2hy5iqA98j38qtE+GTgFLomKMrY7rFJn0H
         T3VrijNQEgZZYzLMR2382quhahtAsvXTLjsIu/vTFVnWF92UBWXAHU+Uw1LC9DNCmx31
         hZDsQrsh6xQRUy2cFnR86Na8m+qcD4rReMKbmVj+xd3gR+0qg2XejLNUdfKF8pxcn4Bo
         UMJKt1/F55LG0Hp6kaJsNxqOErR5tCBZMcwxZ4434Yxw9VVKz/vcqYKLwUsg2NGSuLAx
         WZ15U/O08FQS2gn3gst0ENM+cl0/OmTt/RWFJhvG3M5Wa0gsXZEQcgOL1zdF8MteRgfk
         dvlw==
X-Gm-Message-State: APjAAAVSBXk++q78f9tv6fL2uNdDyTjAkpuuSpbogbJqojPoKKWMGDFp
	zizzs2G311WehMyx7qhE0zCl9C13S3/TSvSILidBIvqL
X-Google-Smtp-Source: APXvYqzpzgJwRIdYdF6xu69cX7r3QOUvto8KWNoXii3pSvR3MGO+ZZqnXe3VrpeRFdVkaI1Wa2ZvsT9OMy5QIoMkBRc=
X-Received: by 2002:ac8:4657:: with SMTP id f23mr4054568qto.378.1578518068916;
 Wed, 08 Jan 2020 13:14:28 -0800 (PST)
MIME-Version: 1.0
References: <CAB=6tBTZp=nd9ZLfnKp_9Gu=oXrz81Ht+Wv6zTRThn_O2Uc+7w@mail.gmail.com>
 <20200108194750.6tfneqdmfv6y67tp@jholzmayr.localdomain>
In-Reply-To: <20200108194750.6tfneqdmfv6y67tp@jholzmayr.localdomain>
From: "Chuck Wolber" <chuckwolber@gmail.com>
Date: Wed, 8 Jan 2020 13:14:17 -0800
Message-ID: <CAB=6tBTdryvjAA3wJGGJSPTkmt6yLa4tn6o8XSMs9_RW9fBhJg@mail.gmail.com>
Subject: Re: [yocto] patchutils bitbake recipe
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c4f7b0059ba7602c"

--000000000000c4f7b0059ba7602c
Content-Type: text/plain; charset="UTF-8"

>
> Write a recipe and submit :) I don't think there was ever a "conscious
> decision" to not support a specific package for non-technical reasons.
> And this one doesn't also look like it has any noteworthy implications -
> its autotoolized and GPLv2. So a good one to get involved for sure.
>

Thanks! It sounds like I am not stepping into an historical tarpit then.
There
are so many references to patchutils in the Yocto ecosystem that I figured
there just had to be some reason for the non-existence of a recipe.

Indeed such a recipe looks fairly simple. I will check the appropriate layer
README for patch submission details.


The only thing that *could* theoretically happen, is that if no usecase
> other than a very specific one of yours can be seen, that you are asked
> to keep it in a layer of your own instead of being accepted into
> meta-openembedded (because thats where it would have to go).
>

Well, while I have your mind on that topic... I spent a great deal of time
building a self hosting/building yocto environment. I started with an
Ubuntu install, built an image that met all of our internal development
needs, and then discarded the Ubuntu install. This development image
inherits from the image that builds the embedded OS we deliver as a
product.

Our developers now work from our Yocto built environment to do their
development. Updates are built within that image and all developers
move on to the next one as needed. This approach ensures that application
development done for our embedded OS is guaranteed to be consistent.
Over the last few years it has resulted in a lot of tangible benefits.

There are many more details, of course (Virtual machines are used, etc),
but that should set the stage.

As we embark on our next version, it occurs to me that Richard Purdie's
excellent combo-layer tool is a better way of managing all of the upstream
repos. As I was experimenting with it, I found that patchutils is nowhere
to be found in the yocto ecosystem.

So... is "building a self-hosting" environment a decent use case? I think
as it becomes easier to do this, it will become de rigeur to work from an
environment like that.

And sorry in advance if I opened any cans of worms :)


Thanks,

..Ch:W..

--000000000000c4f7b0059ba7602c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">Write a recipe and submit :) I don&#39;t think there was=
 ever a &quot;conscious<br>
decision&quot; to not support a specific package for non-technical reasons.=
<br>
And this one doesn&#39;t also look like it has any noteworthy implications =
-<br>
its autotoolized and GPLv2. So a good one to get involved for sure.<br></bl=
ockquote><div><br></div><div>Thanks! It sounds like I am not stepping into =
an historical tarpit then. There</div><div>are so many references to patchu=
tils in the Yocto ecosystem that I figured</div><div>there just had to be s=
ome reason for the non-existence of a recipe.</div><div><br></div><div>Inde=
ed such a recipe looks fairly=C2=A0simple. I will check the appropriate lay=
er</div><div>README for patch submission details.</div><div><br></div><div>=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
The only thing that *could* theoretically happen, is that if no usecase<br>
other than a very specific one of yours can be seen, that you are asked<br>
to keep it in a layer of your own instead of being accepted into<br>
meta-openembedded (because thats where it would have to go).<br></blockquot=
e><div><br></div><div>Well, while I have your mind on that topic... I spent=
 a great deal of time=C2=A0</div><div>building a self hosting/building yoct=
o environment. I started with an=C2=A0</div><div>Ubuntu install, built an i=
mage that met all of our internal development</div><div>needs, and then dis=
carded the Ubuntu install. This development image</div><div>inherits from t=
he image that builds the embedded OS we deliver as a</div><div>product.</di=
v><div><br></div><div>Our developers now work from our Yocto built environm=
ent to do their</div><div>development. Updates are built within that image =
and all developers</div><div>move on to the next one as needed. This approa=
ch ensures that application</div><div>development done for our embedded OS =
is guaranteed to be consistent.</div><div>Over the last few years it has re=
sulted in a lot of tangible benefits.</div><div><br></div><div>There are ma=
ny more details, of course (Virtual machines are used, etc),</div><div>but =
that should set the stage.</div><div><br></div><div>As we embark on our nex=
t version, it occurs to me that Richard Purdie&#39;s</div><div>excellent co=
mbo-layer tool is a better way of managing all of the upstream</div><div>re=
pos. As I was experimenting with it, I found that patchutils is nowhere</di=
v><div>to be found in the yocto ecosystem.<br><br>So... is &quot;building a=
 self-hosting&quot; environment a decent use case? I think</div><div>as it =
becomes easier to do this, it will become de rigeur to work from an</div><d=
iv>environment like that.<br><br></div><div>And sorry in advance if I opene=
d any cans of worms :)</div><div><br></div><div><br></div><div>Thanks,</div=
><div><br></div><div>..Ch:W..</div><div><br></div><div><br></div></div></di=
v>

--000000000000c4f7b0059ba7602c--
