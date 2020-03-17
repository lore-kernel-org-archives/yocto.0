Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.1012.1584479590629591603
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Mar 2020 14:13:10 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=Q8DnguBn;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: akuster808@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 403C8E0187D; Tue, 17 Mar 2020 14:13:10 -0700 (PDT)
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
	*      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.215.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8949E0187B;
	Tue, 17 Mar 2020 14:13:08 -0700 (PDT)
Received: by mail-pg1-f177.google.com with SMTP id b22so6409806pgb.6;
        Tue, 17 Mar 2020 14:13:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=gEzqbPMZYlaXOIEd44OYPIAmGMCpDp+KgWtldYzBw/c=;
        b=Q8DnguBnIoQASDcKSNJgcv+vFqv9xgpI7Q2Iigo0t5LU2X8RP7KnqgpF4t6o8Mhwff
         t+Cx4MkkuFsL297JfzHUy9SLT5XBON0qnCmfcw8QRnsN8e+EnLLz5GpGwTAGZLHzGGOg
         +mnn9cO6VNPqXEHubO7ye/dz9nNF8a9CfVqS8KdHz8k0Ui7062TgTy4zoyBE2lgPAoHm
         EQIiJE4asCBJHfyFhERDZWYeZjM6ewvt04nPhNScVFQlYcpCRA4P8qZspUfWgn6jp6BK
         tcetey5oxccQnhPhe1S5XrxJf83K3ocW7W7EXXW31GgShJYv1OaPsUiFHA3iea0xa68b
         EIZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language;
        bh=gEzqbPMZYlaXOIEd44OYPIAmGMCpDp+KgWtldYzBw/c=;
        b=PyCZM5PkTPZQ6otk7p91Tu1MVAKpevWbMmBqL+Yxx8GeQIAVYnwqxyLWF35/x+Qp30
         gux8mjxWARHucFCAM7u18nW/m60edZ66nEJQ/fmRS64uxjubwwudIP6K4YBD4BbWJ81R
         ecBWHpzmSLZBFmzlvyGBa8Ty4l1nIygZ8NdcvThgH2RM65bKgFdk9fXSU9EmeegTwH7/
         dZm5pa4zJYwGsJMuI+WnCu8dv8V2/jbJwvhE1P7go+NjJb9eXrOJ7ggffrS+j7mQokLr
         XRzTZ7Endt9yxV9pslqv0uWgZya2KoFax6Zn6EmF5vzYH1D29OeBv6ABJ0Gg7G472Qb4
         1tKw==
X-Gm-Message-State: ANhLgQ0twrB7f0Q1dzoILyHZn5Ja/Pg82zTKRx7mkwB2/4xibMzmjppw
	/AnChGpwwCLav24BRyhbarg=
X-Google-Smtp-Source: ADFU+vsQCo6jZ1mavi6V8VWed7mif2mxeBpRfihsjQD4E/gUES3emPXR+dxK6p9MC4D98tkQD9EaYg==
X-Received: by 2002:a62:1894:: with SMTP id 142mr757511pfy.27.1584479587851;
        Tue, 17 Mar 2020 14:13:07 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:8879:dca4:8dd7:7b83? ([2601:202:4180:a5c0:8879:dca4:8dd7:7b83])
        by smtp.gmail.com with ESMTPSA id r13sm3579171pgf.1.2020.03.17.14.12.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2020 14:13:01 -0700 (PDT)
Subject: Re: [poky] Thud community support
To: Patches and discussions about the oe-core layer
 <openembedded-core@lists.openembedded.org>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
 "poky@yoctoproject.org" <poky@yoctoproject.org>,
 "bitbake-devel@lists.openembedded.org" <bitbake-devel@lists.openembedded.org>
Cc: poky@lists.yoctoproject.org
References: <15FBEF1FC40D189D.8114@lists.yoctoproject.org>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <81fb73b4-f683-5356-ff07-1ac909afb97d@gmail.com>
Date: Tue, 17 Mar 2020 14:12:54 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <15FBEF1FC40D189D.8114@lists.yoctoproject.org>
Content-Type: multipart/alternative;
 boundary="------------19E5ED9D72DA0BCF347BA809"
Content-Language: en-US

--------------19E5ED9D72DA0BCF347BA809
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 3/13/20 11:03 AM, akuster via Lists.Yoctoproject.Org wrote:
> The Poky thud branch is now under 'Community support' and is seeking a
> maintainer to continue supporting the following repos for the thud relea=
se:
>
> bitbake, core, meta-yocto and yocto-docs.
>
>
> There will be no more point releases.
>
> see
> https://wiki.yoctoproject.org/wiki/Stable_Release_and_LTS#Maintainer_Pro=
cedures=C2=A0
> to get an idea on what is expected.
>
> The one thing we (YP) don't know is if there will be AutoBuilder
> resources available.=C2=A0 Please contact me or Richard regarding that s=
tatement.
>
> If no one steps up by April 24th (six weeks -ish from now), Thud will be
> moved to EOL status.

It was pointed out to me that there is no Maintainer selection process
or criteria defined.=C2=A0 This=C2=A0 will have to be sorted out before we=
 move
forward on this transition.


- armin

> - Armin
>
>
>
>
>=20


--------------19E5ED9D72DA0BCF347BA809
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <br>
    <br>
    <div class=3D"moz-cite-prefix">On 3/13/20 11:03 AM, akuster via
      Lists.Yoctoproject.Org wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:15FBEF1FC40D189D.8114@lists.yoctoproject.org">
      <pre class=3D"moz-quote-pre" wrap=3D"">
The Poky thud branch is now under 'Community support' and is seeking a
maintainer to continue supporting the following repos for the thud release=
:

bitbake, core, meta-yocto and yocto-docs.


There will be no more point releases.

see
<a class=3D"moz-txt-link-freetext" href=3D"https://wiki.yoctoproject.org/w=
iki/Stable_Release_and_LTS#Maintainer_Procedures">https://wiki.yoctoproject=
.org/wiki/Stable_Release_and_LTS#Maintainer_Procedures</a>=C2=A0
to get an idea on what is expected.

The one thing we (YP) don't know is if there will be AutoBuilder
resources available.=C2=A0 Please contact me or Richard regarding that sta=
tement.

If no one steps up by April 24th (six weeks -ish from now), Thud will be
moved to EOL status.
</pre>
    </blockquote>
    <br>
    It was pointed out to me that there is no Maintainer selection
    process or criteria defined.=C2=A0 This=C2=A0 will have to be sorted o=
ut
    before we move forward on this transition.<br>
    <br>
    <br>
    - armin<br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:15FBEF1FC40D189D.8114@lists.yoctoproject.org">
      <pre class=3D"moz-quote-pre" wrap=3D"">
- Armin



</pre>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------19E5ED9D72DA0BCF347BA809--
