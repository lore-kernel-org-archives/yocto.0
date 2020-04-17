Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com [209.85.221.172])
 by mx.groups.io with SMTP id smtpd.web12.5833.1587110903553322534
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Apr 2020 01:08:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=B3fyKEx4;
 spf=pass (domain: gmail.com, ip: 209.85.221.172, mailfrom: mabnhdev@gmail.com)
Received: by mail-vk1-f172.google.com with SMTP id p123so351987vkg.1
        for <yocto@lists.yoctoproject.org>; Fri, 17 Apr 2020 01:08:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vxKIN0GVL5U75PrwxPPKK1Vm/0d4WnVqgwYWO2tG6sE=;
        b=B3fyKEx45+nz/Ty0oM8NIiwhG2s7cm39+f88NafM4j3DlACteD6P8fMa2RtnoEandq
         6IQKc5uXXF4jq7U5nSJIlCzrO5nN2P2fgw94nUOQ34lqGllWHp1Q3TBiPxAHuFg1RXsB
         2DZvevedDJ0PlU2dUIMlFmn7hgFfyzOo0HAhRrGfqVlcFby4C0wiz6vD4/B+wzJA7QE6
         vOwKvvAgDo87b6IoOBaHh70WfisAHn9h+dVYVObDUmdu6GbJK4vT0X4Sv0U5EkgY9Su2
         ZduePQ/KWffAnmqHZ94BpVxRqXkhYkJP+jwQwiY8SIIQkbSzs3nQAxYTqShN+4AJKbbJ
         Zp3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vxKIN0GVL5U75PrwxPPKK1Vm/0d4WnVqgwYWO2tG6sE=;
        b=jEVIyW4DVelt/p+jN+PLm3GvPkvHbv5Smlq0nGSalKLzF9AZH9wOxj3eNxyilxUMhS
         lvX57fGfDuoWgl1O+z2vAMNkIyXZQSi3CA1Pww5VkeGXWu0prWM9Kn+t7ZqQHriSlxHh
         wm05Wxn/y9xSBhzK4EAYjVZVl4isKVx6t6RUr4d15JNwNFwfLgIiS+MGVROmQPglx1ne
         mGXR92LIj+4OfLIwWU+tVF9gDB8uUtT3tCyrH1Y41oY0iBf2BJlzwwVrfY0gu6Ra53TD
         Sny33omv76ETdN557NoiDRu48Zkk8SO3gZTNROZa+erwcFZasLUqWwpYglptXDDxdqbr
         llFw==
X-Gm-Message-State: AGi0PubvdQrRvLjZSqkQ3kz7cNLzYSfq54szbEwQAWJVnZDUKoHxoEbd
	4gtHBvSplLAZZn9YHmJfU2ZyLvDuww9wqMmd+wc=
X-Google-Smtp-Source: APiQypIMjx9Fc+tCya6NLVxkRX0H4O66El7CBCG1/Vn64OuP2YUtSw6ey2DzQjtpdI0FzSEiaXpoVQ+rWdOon0bjAvA=
X-Received: by 2002:a1f:2ac4:: with SMTP id q187mr1510322vkq.6.1587110901743;
 Fri, 17 Apr 2020 01:08:21 -0700 (PDT)
MIME-Version: 1.0
References: <US9q.1586967370403874617.w9z2@lists.yoctoproject.org>
 <27a5f0a8-25db-839a-64e8-c8481dd3fea5@gmail.com> <TU4PR8401MB11510284CDD2B3644DC4788882DB0@TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM>
In-Reply-To: <TU4PR8401MB11510284CDD2B3644DC4788882DB0@TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM>
From: "MikeB" <mabnhdev@gmail.com>
Date: Fri, 17 Apr 2020 04:08:11 -0400
Message-ID: <CAAuRgKAPotgJ9co0Cp00Nv++8wmDAqeMAuAkCPGUzHT3GxVmFA@mail.gmail.com>
Subject: Re: [yocto] Guidance Downgrading Python2 in Zeus #python
To: "McKay, Sean" <sean.mckay@hpe.com>
Cc: akuster <akuster808@gmail.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000084840705a3780d2d"

--00000000000084840705a3780d2d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you all.  The new layer did the trick for me also.

Regards, Mike

On Wed, Apr 15, 2020 at 12:33 PM McKay, Sean <sean.mckay@hpe.com> wrote:

> FYI, we=E2=80=99re doing the same internally (vendor supplied FIPS suppor=
ted
> openssl 1.0.2), and the layer Armin suggests worked for us on zeus with
> minimal additional tweaking.
>
>
>
> Good luck!
>
> -Sean
>
>
>
> *From:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> *On
> Behalf Of *akuster
> *Sent:* Wednesday, April 15, 2020 9:23 AM
> *To:* MikeB <mabnhdev@gmail.com>; yocto@lists.yoctoproject.org
> *Subject:* Re: [yocto] Guidance Downgrading Python2 in Zeus #python
>
>
>
>
>
> On 4/15/20 9:16 AM, MikeB wrote:
>
> I'm working on a set of platforms that have a FIPs certified OpenSSL.  We
> are at version 1.0.2l.
>
> I've found that the new version of python in Zeus (2.7.17) requires a
> newer version of OpenSSL (1.1).
>
> We really don't want to go through a new round of certification, so we
> want to keep our current OpenSSL (1.0.2l).
>
> I think the easiest solution is to downgrade python 2 back to the version
> used by Sumo (2.7.15).
>
> I know how to downgrade simple recipes, but python is far from simple.
>
> Can someone give me some guidance on how to approach the downgrade of
> python2 in Zeus?
>
>
> Have had a chance to look at this layer?
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-openssl102-fips/
>
> - armin
>
>
> Thanks, Mike
>
>
>
>
>

--00000000000084840705a3780d2d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:tahoma,s=
ans-serif;font-size:small">Thank you all.=C2=A0 The new layer did the=C2=A0=
trick for me also.</div><div class=3D"gmail_default" style=3D"font-family:t=
ahoma,sans-serif;font-size:small"><br></div><div class=3D"gmail_default" st=
yle=3D"font-family:tahoma,sans-serif;font-size:small">Regards, Mike</div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Wed, Apr 15, 2020 at 12:33 PM McKay, Sean &lt;<a href=3D"mailto:sean.mckay=
@hpe.com">sean.mckay@hpe.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_3346731708546716415WordSection1">
<p class=3D"MsoNormal">FYI, we=E2=80=99re doing the same internally (vendor=
 supplied FIPS supported openssl 1.0.2), and the layer Armin suggests worke=
d for us on zeus with minimal additional tweaking.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Good luck!<u></u><u></u></p>
<p class=3D"MsoNormal">-Sean<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(225,225,225);padding:3pt 0in 0in">
<p class=3D"MsoNormal"><b>From:</b> <a href=3D"mailto:yocto@lists.yoctoproj=
ect.org" target=3D"_blank">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"=
mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lists.yoctopro=
ject.org</a>&gt;
<b>On Behalf Of </b>akuster<br>
<b>Sent:</b> Wednesday, April 15, 2020 9:23 AM<br>
<b>To:</b> MikeB &lt;<a href=3D"mailto:mabnhdev@gmail.com" target=3D"_blank=
">mabnhdev@gmail.com</a>&gt;; <a href=3D"mailto:yocto@lists.yoctoproject.or=
g" target=3D"_blank">yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] Guidance Downgrading Python2 in Zeus #python<u>=
</u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><u></u>=C2=A0<u></u></p=
>
<div>
<p class=3D"MsoNormal">On 4/15/20 9:16 AM, MikeB wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<p class=3D"MsoNormal">I&#39;m working on a set of platforms that have a FI=
Ps certified OpenSSL.=C2=A0 We are at version 1.0.2l.<br>
<br>
I&#39;ve found that the new version of python in Zeus (2.7.17) requires a n=
ewer version of OpenSSL (1.1).<br>
<br>
We really don&#39;t want to go through a new round of certification, so we =
want to keep our current OpenSSL (1.0.2l).<br>
<br>
I think the easiest solution is to downgrade python 2 back to the version u=
sed by Sumo (2.7.15).<br>
<br>
I know how to downgrade simple recipes, but python is far from simple.<br>
<br>
Can someone give me some guidance on how to approach the downgrade of pytho=
n2 in Zeus?<u></u><u></u></p>
</blockquote>
<p class=3D"MsoNormal"><br>
Have had a chance to look at this layer?<br>
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-openssl102-fips/"=
 target=3D"_blank">http://git.yoctoproject.org/cgit/cgit.cgi/meta-openssl10=
2-fips/</a><br>
<br>
- armin<br>
<br>
<u></u><u></u></p>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<p class=3D"MsoNormal"><br>
Thanks, Mike <br>
<br>
<u></u><u></u></p>
<pre><u></u>=C2=A0<u></u></pre>
</blockquote>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

</blockquote></div>

--00000000000084840705a3780d2d--
