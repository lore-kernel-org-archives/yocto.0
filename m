Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07AA9E00D32; Mon, 15 Jul 2019 01:39:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.179 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com
	[209.85.208.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F011E00942
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2019 01:39:57 -0700 (PDT)
Received: by mail-lj1-f179.google.com with SMTP id z28so15332612ljn.4
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2019 01:39:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=nFNLurWYjTFCn+s6O8Zus1pGUdevgCsA3JgvSzEgvCc=;
	b=kCvC+AOgQD3oILRFmobc3jdZMPSboaToCAXx5yu2/47gsF5Qp3/g0MYHIydbP10pTO
	/5My0anJPCfJYnUxEV8jxUNKyV7YSFZh1xnfY8gH4W7I60/JgVxIUFBEKgsQHvW60u7A
	sogqglEvICALJlIAIGwZKHdm6glrhdnadiQhj3I9GRIAZF92le6xO5GnE15XBkaBZoHW
	PgYxUE27Zm0c3TcHPkQou4+MbhqKNnL1MKsXsFBVfIQJt5x9zvqEubFl7ahFkJTBuddC
	iZgTmVRqPpPIzQShs9yI7PM/9IR+HPXqRaUIhNReNf3yaiCviA5yWGmA5hBLM2qM4HJz
	EBLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=nFNLurWYjTFCn+s6O8Zus1pGUdevgCsA3JgvSzEgvCc=;
	b=TEyS8hXOXcTawRJbMEKQN53ZAsdIPTbQYyUc6SOqBnnJwfZm6Ao6tnWEbQRSZXFdrt
	gTtX6i2M66SBe1QziYNP1RBDVo2EEUixzJbzpfEUKbaHeRrWXN9CnIHjt/k+fVsO3d2N
	Z6LYOy5DyFaiwU+WQawvE6jImFfcrBh0nKOyhdGqjcCPoR2lxito4zIF6bDeqezqWwtD
	gCO5hD1KwE/OuK/evbbtWquXK0wJeDRQLz929MVgUOQYYO2MCRdUdk8c1dV7LrFiu+wr
	dLVc3ZB5F+hBBKMSsfMZHzLTSqa0wcep3KyTxOpTUak/sRS7Wa25NxYAdI93hmCWnpJD
	r3Og==
X-Gm-Message-State: APjAAAUNB1BZJdzxH8byTyBGFX/h4qtlkKg75d1Dcz0IcLon+buqSclA
	trD0l6INtptGipwzBdgQnljTJjmxpXHAFkpYMNk8jg==
X-Google-Smtp-Source: APXvYqzVTjVGzbJ/yLjLPJuDCltesAcvdTW02d43QPYwC9gZ8JZJX01Uj8NmNjLOVDzX3e0SyYJwAgnSN/8VTliIzIg=
X-Received: by 2002:a2e:98c9:: with SMTP id s9mr13550992ljj.176.1563179996069; 
	Mon, 15 Jul 2019 01:39:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWTkikzH-X=GxuJ3YgA9MBwRu0UCtnt-O0mZrbjOrELDgw@mail.gmail.com>
	<CAAx3WaD0FMBZDjT8eYBBVsvcFCD-S3wRR9hiR5ifB2cAJs8y_g@mail.gmail.com>
	<0f4cfe52-7b7a-145c-b8ac-fbefeeb51e6e@3mdeb.com>
In-Reply-To: <0f4cfe52-7b7a-145c-b8ac-fbefeeb51e6e@3mdeb.com>
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Mon, 15 Jul 2019 10:39:45 +0200
Message-ID: <CAAx3WaAY2REFJpV3ibOwMmmTHjZbiNsOXVX_eCkFVA5WgO_YzA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Where to add U-Boot argements bootargs and bootcmd?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 15 Jul 2019 08:39:58 -0000
Content-Type: multipart/alternative; boundary="00000000000062c2b6058db43495"

--00000000000062c2b6058db43495
Content-Type: text/plain; charset="UTF-8"

Yes, thanks Maciej for pointing that out! It may be a good starting point
for JH.

Gabriele

Il giorno lun 15 lug 2019 alle ore 10:29 Maciej Pijanowski <
maciej.pijanowski@3mdeb.com> ha scritto:

>
> On 15.07.2019 08:45, Gabriele Zampieri wrote:
>
> Hi,
>
> as far as I know, there is no mechanism to add custom bootargs and/or
> bootcmd to uboot via Yocto (correct me if I'm wrong). I usually patch the
> upstream uboot to achieve this task.
>
> I also haven't heard of any standardized way. It may depend on the target
> hardware
> and the BSP layer you are using. Apart from patching the U-Boot, there
> also might
> be boot.cmd script to modify or the config.txt in case of the RPI, for
> example.
>
>
> Best regards,
> Gabriele
>
> Il giorno lun 8 lug 2019 alle ore 22:43 JH <jupiter.hce@gmail.com> ha
> scritto:
>
>> Hi,
>>
>> Which Yocto files and which statement can I add my own U-Boot bootargs
>> and bootcmd?
>>
>> Thank you.
>>
>> - jupiter
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
> --
> Maciej Pijanowski
> Embedded Systems Engineerhttps://3mdeb.com | @3mdeb_com
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000062c2b6058db43495
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Yes, thanks Maciej for pointing that out! It may be a=
 good starting point for JH.</div><div><br></div><div>Gabriele<br></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il =
giorno lun 15 lug 2019 alle ore 10:29 Maciej Pijanowski &lt;<a href=3D"mail=
to:maciej.pijanowski@3mdeb.com">maciej.pijanowski@3mdeb.com</a>&gt; ha scri=
tto:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <p><br>
    </p>
    <div class=3D"gmail-m_-2109459241394343285moz-cite-prefix">On 15.07.201=
9 08:45, Gabriele Zampieri
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>Hi, <br>
        </div>
        <div><br>
        </div>
        <div>as far as I know, there is no mechanism to add custom
          bootargs and/or bootcmd to uboot via Yocto (correct me if I&#39;m
          wrong). I usually patch the upstream uboot to achieve this
          task.</div>
      </div>
    </blockquote>
    I also haven&#39;t heard of any standardized way. It may depend on the
    target hardware<br>
    and the BSP layer you are using. Apart from patching the U-Boot,
    there also might<br>
    be boot.cmd script to modify or the config.txt in case of the RPI,
    for example.<br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>Best regards, <br>
        </div>
        <div>Gabriele<br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">Il giorno lun 8 lug 2019 alle
          ore 22:43 JH &lt;<a href=3D"mailto:jupiter.hce@gmail.com" target=
=3D"_blank">jupiter.hce@gmail.com</a>&gt; ha
          scritto:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
          <br>
          Which Yocto files and which statement can I add my own U-Boot
          bootargs<br>
          and bootcmd?<br>
          <br>
          Thank you.<br>
          <br>
          - jupiter<br>
          -- <br>
          _______________________________________________<br>
          yocto mailing list<br>
          <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto=
@yoctoproject.org</a><br>
          <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"=
noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto=
</a><br>
        </blockquote>
      </div>
      <br>
      <fieldset class=3D"gmail-m_-2109459241394343285mimeAttachmentHeader">=
</fieldset>
    </blockquote>
    <pre class=3D"gmail-m_-2109459241394343285moz-signature" cols=3D"72">--=
=20
Maciej Pijanowski
Embedded Systems Engineer
<a class=3D"gmail-m_-2109459241394343285moz-txt-link-freetext" href=3D"http=
s://3mdeb.com" target=3D"_blank">https://3mdeb.com</a> | @3mdeb_com</pre>
  </div>

-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--00000000000062c2b6058db43495--
