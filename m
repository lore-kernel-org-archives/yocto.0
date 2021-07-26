Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web12.31554.1627314017254600789
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Jul 2021 08:40:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=z3uI+xW9;
 spf=pass (domain: linaro.org, ip: 209.85.221.41, mailfrom: anibal.limon@linaro.org)
Received: by mail-wr1-f41.google.com with SMTP id n12so8073403wrr.2
        for <yocto@lists.yoctoproject.org>; Mon, 26 Jul 2021 08:40:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=m5x72TKM1Pv0fLhjHnvTRdsb7CNUixV0lhh16wGMaYY=;
        b=z3uI+xW9cbrn6Q895swbhA/8rEfufPTKSSmuweYzlkPvTsJhuKNY7e4VfNePTQIapR
         CJoRRrBxcLFOrM3l1Sn40sgzSAs3QHNXdaNsIpnISSm8AYnFCq2hsV8Tve/WpXP9ip+4
         86zMGNrX7TrYrUXekhK/cUGKF8MP4Ulg8S27yEJg4ZUlvELBYVVrwom7bxBu6SloxDxy
         sPwQm0te4X3Oofcqnjs5TGn11c6QdXlYiy/AFpBksPpJ7yWsvTQ7dv8J50mYLileminZ
         BHd/GnjHHIjdyTMWPqR2vKzYIjS/e3F0VT1vBw8uW/8F+6rKuUmN01kKTb09RvgWyjVZ
         qrLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=m5x72TKM1Pv0fLhjHnvTRdsb7CNUixV0lhh16wGMaYY=;
        b=rn7cJw36tH7iOMdZlkx+zxYmEVEhrVnnk+odFIzF7M2TEQBEN4hLtLnZgcPGF5eSD3
         zaCUSr3Gvu9Lwl0ExTBBuGZBLVVAIoucan6fXDzq5nCzkjHgIM6URbwWP3E5BCSxTuQD
         7e0pvEOBQRZoQ/iXSaCrnsiPwVPEnp5wShY0m3p0RRwvu8IYABCVz/Dwes++D4WA4uaN
         RQ1p54eBBrSIb2z/TP8NXS0KoCWNNnTHZ8sy08vcbvN3v7nbUuaapp6jrB3xeEMInLg/
         oxte3uB0Vxolt0W3SnmXJh2klTV6zVyUs31vgu9IfL51ri+CzYm41mGngKtfJ7rpZfwH
         v87w==
X-Gm-Message-State: AOAM531H4Rc9VfgNY3p1dXRtLJrMpbzqW8PbU8ypG4BWeo9HuMi0+MtN
	IODGjZzsPv5i+7i4AP3AUm/jsINPW8X0hpY418hZLA==
X-Google-Smtp-Source: ABdhPJy4Jqk4mDk8pQO8gWy7LAbxt3SqbxdTc85BIP9pwmfAeeE4uUNsOelQ0HwEIL5huNAFMGnjNbI7L68aP8vBXnU=
X-Received: by 2002:adf:fac7:: with SMTP id a7mr19720611wrs.384.1627314015799;
 Mon, 26 Jul 2021 08:40:15 -0700 (PDT)
MIME-Version: 1.0
References: <20210721094627.29833-6-lukma@denx.de> <14725.1627282818210503928@lists.yoctoproject.org>
In-Reply-To: <14725.1627282818210503928@lists.yoctoproject.org>
From: "Anibal Limon" <anibal.limon@linaro.org>
Date: Mon, 26 Jul 2021 10:40:05 -0500
Message-ID: <CA+_Aqisse_N1C27tXvBrcmYD6jLBHt1eehWkeUbdGYMwOx4OAQ@mail.gmail.com>
Subject: Re: [yocto] [ptest-runner 5/5] main: Do not return number of failed tests when calling ptest-runner
To: Tero Kinnunen <tero.kinnunen@vaisala.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d99f0405c80891e5"

--000000000000d99f0405c80891e5
Content-Type: text/plain; charset="UTF-8"

Hi all,

Just replied in other email about this situation, so yes for me is better
at least return 1 when any test fails to make it backwards compatible and
knows when some test fails.

Regards,
Anibal

On Mon, 26 Jul 2021 at 02:00, Tero Kinnunen <tero.kinnunen@vaisala.com>
wrote:

> I would favor to keep non-zero exit value if any tests failed. We have
> relied on exit value since ptest started to support it, others may be doing
> that as well. This would be backward incompatible change, making tests
> silently fail. It is somewhat clumsy to try to parse failed tests from
> output, so non-zero rc was very welcome change to me.
>
> Looking at other test runners, it is very common to return non-zero if any
> tests failed. (Some examples: pytest, python unittest, googletest, shunit2,
> robot framework.) See pytest exit codes for example:
> https://docs.pytest.org/en/latest/reference/exit-codes.html
>
> Indeed the failed count is not a good exit value though because of
> rollover, should be fixed. Could consider using own rc for "any tests
> failed" differentiating from other errors.
>
>     - Tero
> 
>
>

--000000000000d99f0405c80891e5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>Just replied in other email abo=
ut this situation, so yes for me is better at least return 1 when any test =
fails to make it backwards compatible and knows when some test fails.</div>=
<div><br></div><div>Regards,</div><div>Anibal</div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 26 Jul 2021 at 0=
2:00, Tero Kinnunen &lt;<a href=3D"mailto:tero.kinnunen@vaisala.com">tero.k=
innunen@vaisala.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">I would favor to keep non-zero exit value if any tests f=
ailed. We have relied on exit value since ptest started to support it, othe=
rs may be doing that as well. This would be backward incompatible change, m=
aking tests silently fail. It is somewhat clumsy to try to parse failed tes=
ts from output, so non-zero rc was very welcome change to me.<br><br>Lookin=
g at other test runners, it is very common to return non-zero if any tests =
failed. (Some examples: pytest, python unittest, googletest, shunit2, robot=
 framework.) See pytest exit codes for example:=C2=A0<a href=3D"https://doc=
s.pytest.org/en/latest/reference/exit-codes.html" target=3D"_blank">https:/=
/docs.pytest.org/en/latest/reference/exit-codes.html</a><br><br>Indeed the =
failed count is not a good exit value though because of rollover, should be=
 fixed. Could consider using own rc for &quot;any tests failed&quot; differ=
entiating from other errors.<br><br>=C2=A0 =C2=A0 - Tero
<br>
<br>
<br>
</blockquote></div>

--000000000000d99f0405c80891e5--
