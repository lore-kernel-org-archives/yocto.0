Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.1750.1616437485935303462
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Mar 2021 11:24:46 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=XN9Dr+Tm;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: jpewhacker@gmail.com)
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7DF0D38C03DF
	for <yocto@yoctoproject.org>; Mon, 22 Mar 2021 18:24:45 +0000 (UTC)
Received: by mail-oi1-f181.google.com with SMTP id f9so14083456oiw.5
        for <yocto@yoctoproject.org>; Mon, 22 Mar 2021 11:24:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=c4F8GtjDCHWeFRI9LNHqNeGlQ4GolLW8x2ZnutaAWe8=;
        b=XN9Dr+TmOr+NfJhsMNjVbd1B1g73oS1YjOEC/zgbBpOtlv/zIKBceZJZTkiSZ+2cGJ
         ehkawfwRai1dfeomf1JwIyUPxbEf2APpnr82FFgze8T6t5NTvfEwVx2AUpx5TgZkLIxB
         yBhnUWI3kyxhUURGsU99GOpsKrmGQxNQDQtzfRWae7MxgQ1jaulAwHUHzm31lK3zzrxA
         g9lBasKxmcLL2GDGvsvxcmDMcmID6M4M97Ky+CC2SVUzcbOfop0ZEbFAtfd+Kyx3GOd8
         vJ6C+5Vj22HwjcCbhT1pob8Bg5WuHs7SPek9vTXu0arBGzyz2Sj/Fb4ELK9J4BeY5sDy
         YNzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=c4F8GtjDCHWeFRI9LNHqNeGlQ4GolLW8x2ZnutaAWe8=;
        b=DttN0QNQPqDDXPGC3s6Xf214x91LrzvKxjnXARlGiFccj/9211c8DJP1VRhxZsc1kg
         YMzZOJE1s9qJKbKcOZMiHShCBY3jMoYQrxOnoMomzLo5ZlmVP7OOW0FZiKHs+wILG0rj
         BwroI4p69Dr+hU9Nlm0ZAxNXRokwuWvHnJTTuqichdDE8T7D9oh+aond7tqA2huiXho9
         GSeAd4xoce5ai1vtl2rp6sgvR7J8AJKyeBUEj3Zrj9qMBxHD7gDhGpVdnGI2R8jhd9Zt
         0P0AepWG9bHc8sZQE8NPZgI6sr3k/fjbNN83kAipP2fX+bRShcJhgOvnhjWqaLHqoWME
         XSDw==
X-Gm-Message-State: AOAM5324Itru/UsyDfohAYEfdqg3fQbIcmqKRYA8K9VsbCOaIa1qyhaK
	YA7Eiae52F5xcer/iwkluDE=
X-Google-Smtp-Source: ABdhPJwC5SsZ/GXXQ6MtLjtRqdPicrJ8ipbbfoDix5YZKrXL9XKFlLz/5gha/FO4dK8OTyGnU0iUzA==
X-Received: by 2002:aca:dd86:: with SMTP id u128mr254538oig.155.1616437484527;
        Mon, 22 Mar 2021 11:24:44 -0700 (PDT)
Received: from ?IPv6:2605:a601:ac3d:c100:e3e8:d9:3a56:e27d? ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id l191sm3325325oih.16.2021.03.22.11.24.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Mar 2021 11:24:43 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] Add machine definitions for NanoPi-M4 boards
To: Yann Dirson <yann.dirson@blade-group.com>,
 Trevor Woerner <twoerner@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
 Yann Dirson <yann@blade-group.com>
References: <20210322134212.576790-1-yann@blade-group.com>
 <20210322144753.GA33662@localhost>
 <CA+4=imbkwhhbPF6UPEuBQ7qAraCPy7v-edWJdX00UVrBzW2B_g@mail.gmail.com>
Message-ID: <55dc5940-fb02-4db0-75bb-835f70ff908b@gmail.com>
Date: Mon, 22 Mar 2021 13:24:43 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CA+4=imbkwhhbPF6UPEuBQ7qAraCPy7v-edWJdX00UVrBzW2B_g@mail.gmail.com>
Content-Type: multipart/alternative;
 boundary="------------7BA978F66B326DA72DE94E4D"
Content-Language: en-US

--------------7BA978F66B326DA72DE94E4D
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable


On 3/22/21 9:59 AM, Yann Dirson wrote:
> Hi Trevor,
>
> Le lun. 22 mars 2021 =C3=A0 15:47, Trevor Woerner <twoerner@gmail.com> a=
 =C3=A9crit :
>> On Mon 2021-03-22 @ 02:42:12 PM, yann.dirson@blade-group.com wrote:
>>> This supports both the 2GB and 4GB versions of the board.  This is not
>>> done with 2 different machine definitions since only u-boot has to
>>> change between those two configurations, but with a NANOPIM4_HW variab=
le
>>> to set in local.conf.
>> Traditionally in meta-rockchip this is done using two separate machine =
files
>> with all the common things factored into a common include file. See
>> tinker-board and tinker-board-s as well as all the rock-pi-4* definitio=
ns for
>> examples.
>>
>> I would prefer if the same thing was done here.
> Damned that was how I did my first patch, I just felt it was much
> better this way :(
>
> Digging up that original commit re rerolling.
>
>
> Wouldn't it be useful to have a standard way to specify such hardware
> variants, that
> would be recognized as such by the layer index ?

FWIW, I'd rather u-boot could automatcially detect what variant of the=20
board it's running on and do the right thing (usually, just selecting=20
the proper DTB from the FIT image). The only reason I did not do this on=
=20
the rock-pi-4 is because there doesn't appear to be a way for u-boot to=20
detect which variant it's on :/

>
>
>
>
>=20
>

--------------7BA978F66B326DA72DE94E4D
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 3/22/21 9:59 AM, Yann Dirson wrote:<=
br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CA+4=3DimbkwhhbPF6UPEuBQ7qAraCPy7v-edWJdX00UVrBzW2B_g@mail.gma=
il.com">
      <pre class=3D"moz-quote-pre" wrap=3D"">Hi Trevor,

Le lun. 22 mars 2021 =C3=A0 15:47, Trevor Woerner <a class=3D"moz-txt-link=
-rfc2396E" href=3D"mailto:twoerner@gmail.com">&lt;twoerner@gmail.com&gt;</a=
> a =C3=A9crit :
</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">On Mon 2021-03-22 @ 02:42:1=
2 PM, <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yann.dirson@blad=
e-group.com">yann.dirson@blade-group.com</a> wrote:
</pre>
        <blockquote type=3D"cite">
          <pre class=3D"moz-quote-pre" wrap=3D"">This supports both the 2G=
B and 4GB versions of the board.  This is not
done with 2 different machine definitions since only u-boot has to
change between those two configurations, but with a NANOPIM4_HW variable
to set in local.conf.
</pre>
        </blockquote>
        <pre class=3D"moz-quote-pre" wrap=3D"">
Traditionally in meta-rockchip this is done using two separate machine fil=
es
with all the common things factored into a common include file. See
tinker-board and tinker-board-s as well as all the rock-pi-4* definitions =
for
examples.

I would prefer if the same thing was done here.
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
Damned that was how I did my first patch, I just felt it was much
better this way :(

Digging up that original commit re rerolling.


Wouldn't it be useful to have a standard way to specify such hardware
variants, that
would be recognized as such by the layer index ?</pre>
    </blockquote>
    <p>FWIW, I'd rather u-boot could automatcially detect what variant
      of the board it's running on and do the right thing (usually, just
      selecting the proper DTB from the FIT image). The only reason I
      did not do this on the rock-pi-4 is because there doesn't appear
      to be a way for u-boot to detect which variant it's on :/<br>
    </p>
    <blockquote type=3D"cite"
cite=3D"mid:CA+4=3DimbkwhhbPF6UPEuBQ7qAraCPy7v-edWJdX00UVrBzW2B_g@mail.gma=
il.com">
      <pre class=3D"moz-quote-pre" wrap=3D"">



</pre>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">


</pre>
    </blockquote>
  </body>
</html>

--------------7BA978F66B326DA72DE94E4D--
