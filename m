Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71339E006D2; Thu, 16 Aug 2018 09:32:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com
	[209.85.210.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDE61E006B3
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2018 09:32:04 -0700 (PDT)
Received: by mail-pf1-f181.google.com with SMTP id l9-v6so2249580pff.9
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2018 09:32:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=c7wqUDbqaaXBbAIg9I9Xtks5zi+mf63tuq3BwXRqEXU=;
	b=eTmWOcycx/VIELKoMHR1CEUfdG9pDwXn1QWMoNk+bdhXIFSw2P476prv0VVH/EQ5Zz
	57kRYK8ALzBIIqtqRwQAczPvabowp0wzTwRP9W4CTPssJinuPk2s9wXJ3zy9V5qy6ibz
	SG5r/AgDdVG5t6a3EdKXYaNzCZ+Z0Q6P3inGlgsiyZEnzDoRtJ9HCyStBwazLbdwNgQO
	+5MCNk1uLtzHi+xR+WbJCk4gr1aSPKysjcXx8DmpHK5ZENoCyA2cWXb0Z8VUOdzC+64z
	HuIlNX0+75Fj6sXCwnNnwXf5TYoKTC0x3YwP2/4R9OwFKriVaVE/rjuvtvAYtA8CYb1S
	1nAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=c7wqUDbqaaXBbAIg9I9Xtks5zi+mf63tuq3BwXRqEXU=;
	b=gNml+5OcubVxLjPwlJkJffyHbJska1P+I81r8FzjAsmcxbTTpJBCpIPjHzoFBQXmCK
	lRt39IuZULtSFdVUENAu0yYo0AMn9tIr5oixGQyCzNyPxjqKSv1HZs3j2cdEtByH2YAk
	JRwpkj3ww2C6/aXlMhi0TFwpwjYEK773+0E5BjxzowIhquPQgwb8lzClvso/h+VgdgHR
	XUYSHDd9ngPrK6Unb1kDJZe/enr2q6wQxMEe6YYwJGPCHj703DtFBJycxorhNMV4YUcX
	ap2gzZZxCUZA2/srcWwtlKUPsw3XSEmulvYBfmtjn5AFX1dEzUiMjACNwcrSFgJKwYQ4
	CMgQ==
X-Gm-Message-State: AOUpUlFTkK5avOeWzxBitDfVJE8iXQrHURO5SBImW1MivrREDI7LjemZ
	J76mNpQP12Nsav5YFT8LBMDzhFU0
X-Google-Smtp-Source: AA+uWPyeFDQrNjlYv0+sjVRuGTZRsvbH6q4syLQ+lzwvkf1JhHsmpR6sq/VI1Y3DNR6o3khICtUVcA==
X-Received: by 2002:a65:450a:: with SMTP id
	n10-v6mr4731314pgq.392.1534437124114; 
	Thu, 16 Aug 2018 09:32:04 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:a418:6f72:e730:e6e?
	([2601:202:4180:c33:a418:6f72:e730:e6e])
	by smtp.gmail.com with ESMTPSA id
	u83-v6sm87561906pfj.37.2018.08.16.09.32.03
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Aug 2018 09:32:03 -0700 (PDT)
To: Matthias Schoepfer <matthias.schoepfer@googlemail.com>,
	yocto@yoctoproject.org
References: <634408b8-bb9e-2f06-2633-9b53ff1c568a@googlemail.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <b491d4eb-ac8e-151f-0c56-2bd37a962d35@gmail.com>
Date: Thu, 16 Aug 2018 09:32:02 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <634408b8-bb9e-2f06-2633-9b53ff1c568a@googlemail.com>
Subject: Re: sumo missing recipe for kernel 4.4
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
X-List-Received-Date: Thu, 16 Aug 2018 16:32:05 -0000
Content-Type: multipart/alternative;
	boundary="------------3EDDBB867E2BBFFA13DA6A7C"
Content-Language: en-US

--------------3EDDBB867E2BBFFA13DA6A7C
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


Mattias,

On 08/16/2018 07:20 AM, Matthias Schoepfer wrote:
> Hi!
>
> I might be a little late to the party but ... what is the rational
> behind removing kernel recipe for kernel 4.4 from sumo (and later).

We typically support Mainline, latest stable and LTS. At the time of
Sumo, 4.4 was none of those. There are occasions=C2=A0 of an additional
version included, this is done at the desecration of the Yocto Kernel
maintainer and Yocto Architect. Supporting more versions not only in
Master but Master-1 and Master-n is a lot of work.

>  This
> is *the* kernel with the longest support as of now. When building an
> embedded system that needs updates for quite some years,=20
Well Sumo only has support for 1yr or little more.=C2=A0 The kernel is on=
ly
one component you need to worry about for longer term support beyond the
Sumo's=C2=A0 life.

- Armin
* Sumo maintainer

> I would go with
> 4.4 right now...
>
> Just wondering...
>
> Regards,
>
> =C2=A0=C2=A0 Matthias
>
>
>


--------------3EDDBB867E2BBFFA13DA6A7C
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    Mattias,<br>
    <br>
    <div class="moz-cite-prefix">On 08/16/2018 07:20 AM, Matthias
      Schoepfer wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:634408b8-bb9e-2f06-2633-9b53ff1c568a@googlemail.com">
      <pre wrap="">Hi!

I might be a little late to the party but ... what is the rational
behind removing kernel recipe for kernel 4.4 from sumo (and later).</pre>
    </blockquote>
    <br>
    We typically support Mainline, latest stable and LTS. At the time of
    Sumo, 4.4 was none of those. There are occasions  of an additional
    version included, this is done at the desecration of the Yocto
    Kernel maintainer and Yocto Architect. Supporting more versions not
    only in Master but Master-1 and Master-n is a lot of work.<br>
    <br>
    <blockquote type="cite"
      cite="mid:634408b8-bb9e-2f06-2633-9b53ff1c568a@googlemail.com">
      <pre wrap=""> This
is *the* kernel with the longest support as of now. When building an
embedded system that needs updates for quite some years, </pre>
    </blockquote>
    Well Sumo only has support for 1yr or little more.  The kernel is
    only one component you need to worry about for longer term support
    beyond the Sumo's  life.<br>
    <br>
    - Armin<br>
    * Sumo maintainer<br>
    <br>
    <blockquote type="cite"
      cite="mid:634408b8-bb9e-2f06-2633-9b53ff1c568a@googlemail.com">
      <pre wrap="">I would go with
4.4 right now...

Just wondering...

Regards,

   Matthias

</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------3EDDBB867E2BBFFA13DA6A7C--
