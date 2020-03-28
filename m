Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web11.16917.1585433560649348527
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Mar 2020 15:12:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BwgoQggr;
 spf=pass (domain: gmail.com, ip: 209.85.167.54, mailfrom: aehs29@gmail.com)
Received: by mail-lf1-f54.google.com with SMTP id u15so1720638lfi.3
        for <yocto@lists.yoctoproject.org>; Sat, 28 Mar 2020 15:12:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yhymswT5T+nLnjHzIzQyuI6yN9A7aEacOtBSSev1gqQ=;
        b=BwgoQggrhb7g2KZMq8Fep/1E21lZXMa0K6tQUDFwKZ4sBX905duscqw27ssH6024HC
         RGkthGQ9o1+zcUMQpMSVPx5OFFVv5uF13+WQ4wg6bXb1CFq6UZkJmI6f68VdOYfdMQoo
         2XCfGXsdYsO20nybNP9PWI3LkkrBQzOEitVFipBg7aTUQGU/3y98R0M4onIHX+GvnU81
         Dk19Axso4+HO27wo6Q5+ba83Ijo8mpqcygc8yM3DsCI+4fso60w975GPoWTj1OlBdGcP
         xR14x9mu7OgQ3vLIpokV6j2qkZsDqGgikTmJV2JIUVTfWyMsM5Fb/JaJfqNXLCU3VTWr
         w7FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yhymswT5T+nLnjHzIzQyuI6yN9A7aEacOtBSSev1gqQ=;
        b=CSGEhGEI/vgoqrRu4CU49TJ1cyNOs3yNhaaOYfeKXa9zDFyCto8gMYSe0nR6nfqv6X
         qWFxWpK/VuITWKuE2eUYtHzMv4qIiip9ejqM+yQWyXF8tlpbAqzVkh/Z5lZTIk/6ugZq
         dxF9eB7HiiR0qMxsbU3s75/XcXJsx27x7K8kcefnRux/6E2tELNk0Xzv/N/2U434J873
         yBbn/e7sRGu8OE7HBe60G12nHkNcCb88ck/I5FUdUjYU5yYgx9n2Z76XCEkJH4aSixZx
         TQvkPafF2e2DaUVzUaA6pzPHdeSLdYrUPupbbK9fhienImkdCbwAYGn4ImruARXnErCQ
         eDNg==
X-Gm-Message-State: AGi0PubQOOxP51qgMUKkpT9bvc58F4jMLXVVhmk3Tyc56NOvu3i//d3H
	Jfy7egYsaiTH9zXaNK8AS5wLPfbSDwzOc8S4ON0=
X-Google-Smtp-Source: APiQypK/tD0mdU996KMXB+ZMRzIAf8TPo3cvgkeTzNcSzJvYx4EfVbTb7uA4NkboXQ+QBPGVqfTMtQtg/z7E3ydNnl0=
X-Received: by 2002:ac2:5f52:: with SMTP id 18mr3568117lfz.133.1585433558804;
 Sat, 28 Mar 2020 15:12:38 -0700 (PDT)
MIME-Version: 1.0
References: <CADmsHKcYEineQpg5w7k=p8-ygVZji-RrOdWviMc8WP54p9RPVA@mail.gmail.com>
 <VI1PR05MB4286F209083FA6D3181A93DCA8CD0@VI1PR05MB4286.eurprd05.prod.outlook.com>
In-Reply-To: <VI1PR05MB4286F209083FA6D3181A93DCA8CD0@VI1PR05MB4286.eurprd05.prod.outlook.com>
From: "Alejandro Hernandez" <alejandro@enedino.org>
Date: Sat, 28 Mar 2020 15:12:27 -0700
Message-ID: <CAHMutrYMJSKNQ392bOMHuTG8=bjtYrd8T4-eTR-kr71KbDpNDw@mail.gmail.com>
Subject: Re: [yocto] patching an .inc file?
To: Konrad Weihmann <kweihmann@outlook.com>
Cc: Derek Dresser <dresser.net@gmail.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, jaewon@xilinx.com
Content-Type: multipart/alternative; boundary="000000000000166c2f05a1f18434"

--000000000000166c2f05a1f18434
Content-Type: text/plain; charset="UTF-8"

Hey Derek,

I would advise against this, inc files aren't supposed to be appended to,
priorities would work, adding TUNEVALID on your machine conf is also
possible, but I'd say those are both temporary solutions, you might also
just wait a little bit until they release their 2020.x releases already
compatible with Zeus.

Alejandro

On Sat, 28 Mar 2020 at 15:00, Konrad Weihmann <kweihmann@outlook.com> wrote:

> What you could do is to override the file in a layer with higher priority.
> Just create the same file under the same path (e.g.
> <your-layer>/conf/machine/include/microblaze/feature-microblaze-versions.inc)
> and apply the changes there - this should help for now.
>
> But be aware that this way could lead to trouble in case the overridden
> file does change on an update - so use with caution.
> Unfortunately you can't BBMASK the original inc file, you have to rely on
> layer prio.
> On 28.03.20 22:42, Derek Dresser wrote:
>
> Hello,
>
> I am trying to update a build for a custom board based on the Xilinx
> zcu102-zynqmp (using meta-xilinx)  to 'zeus' and am getting the following
> error message:
>
> Toolchain tunings invalid:
> Tuning 'microblaze' has the following errors:
> Feature 'v11.0' is not defined.
>
>
> I have tracked this down to the following file:
>
> poky/meta/conf/machine/include/microblaze/feature-microblaze-versions.inc
>
> Editing this file allows me to build without errors.  I'd like to apply a
> patch to this file (or override the file with an edited version.)
>
> diff --git
> meta/conf/machine/include/microblaze/feature-microblaze-versions.inc
> meta/conf/machine/include/microblaze/feature-microblaze-versions.inc
> index 955674fff9..3221e2aab7 100644
> --- meta/conf/machine/include/microblaze/feature-microblaze-versions.inc
> +++ meta/conf/machine/include/microblaze/feature-microblaze-versions.inc
> @@ -44,6 +44,7 @@ TUNEVALID[v9.4]  = "MicroBlaze version 9.4"
>  TUNEVALID[v9.5]  = "MicroBlaze version 9.5"
>  TUNEVALID[v9.6]  = "MicroBlaze version 9.6"
>  TUNEVALID[v10.0] = "MicroBlaze version 10.0"
> +TUNEVALID[v11.0] = "MicroBlaze version 11.0"
>
>  # Version conflict matrix
>  TUNECONFLICTS[v8.00] = ""
> @@ -60,6 +61,7 @@ TUNECONFLICTS[v9.4]  = "v8.00 v8.10 v8.20 v8.30 v8.40
> v8.50 v9.0 v9.1 v9.2 v9.3"
>  TUNECONFLICTS[v9.5]  = "v8.00 v8.10 v8.20 v8.30 v8.40 v8.50 v9.0 v9.1
> v9.2 v9.3 v9.4"
>  TUNECONFLICTS[v9.6]  = "v8.00 v8.10 v8.20 v8.30 v8.40 v8.50 v9.0 v9.1
> v9.2 v9.3 v9.4 v9.5"
>  TUNECONFLICTS[v10.0] = "v8.00 v8.10 v8.20 v8.30 v8.40 v8.50 v9.0 v9.1
> v9.2 v9.3 v9.4 v9.5 v9.6"
> +TUNECONFLICTS[v11.0] = "v8.00 v8.10 v8.20 v8.30 v8.40 v8.50 v9.0 v9.1
> v9.2 v9.3 v9.4 v9.5 v9.6 v10.0"
>
>  # Version flags
>  TUNE_CCARGS += "-mcpu=${@microblaze_current_version(d, True)}"
>
> I know how to apply a patch against a recipe source file, but not this
> toolchain tuning include file.   How can I accomplish this without editing
> the files in openembedded-core?   I'd like to override or patch this in my
> own layer.
>
> Thanks,
> Derek
>
> 
>

--000000000000166c2f05a1f18434
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e;font-size:small"><div class=3D"gmail_default">Hey Derek,</div><div class=
=3D"gmail_default"><br></div><div class=3D"gmail_default">I would advise a=
gainst this, inc files aren&#39;t supposed to be appended to, priorities wo=
uld work, adding TUNEVALID on your machine conf is also possible, but I&#39=
;d say those are both temporary solutions, you might also just wait a littl=
e bit until they release their 2020.x releases already compatible with Zeus=
.</div><div class=3D"gmail_default"><br></div><div class=3D"gmail_default">=
Alejandro</div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Sat, 28 Mar 2020 at 15:00, Konrad Weihmann &lt;<a h=
ref=3D"mailto:kweihmann@outlook.com">kweihmann@outlook.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">

  
  <div>
    <p>What you could do is to override the file in a layer with higher
      priority.<br>
      Just create the same file under the same path (e.g.
&lt;your-layer&gt;/conf/machine/include/microblaze/feature-microblaze-vers=
ions.inc)
      and apply the changes there - this should help for now.<br>
      <br>
      But be aware that this way could lead to trouble in case the
      overridden file does change on an update - so use with caution.<br>
      Unfortunately you can&#39;t BBMASK the original inc file, you have t=
o
      rely on layer prio.<br>
    </p>
    <div>On 28.03.20 22:42, Derek Dresser wrote:<br>
    </div>
    <blockquote type=3D"cite">
      
      <div dir=3D"ltr">Hello,
        <div><br>
        </div>
        <div>I am trying to update a build for a custom board based on
          the Xilinx zcu102-zynqmp (using meta-xilinx)=C2=A0 to &#39;zeus&=
#39; and am
          getting the following error message:</div>
        <div><br>
        </div>
        <blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0=
px">
          <div>Toolchain tunings invalid:</div>
          <div>Tuning &#39;microblaze&#39; has the following errors:</div>
          <div>Feature &#39;v11.0&#39; is not defined.</div>
        </blockquote>
        <br>
        <div>I have tracked this down to the following file:</div>
        <div><br>
        </div>
        <div>
          <blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding=
:0px">
            <div>poky/meta/conf/machine/include/microblaze/feature-microbl=
aze-versions.inc</div>
            <div><br>
            </div>
          </blockquote>
          Editing this file allows me to build without errors.=C2=A0 I&#39=
;d like
          to apply a patch to this file (or override the file with an
          edited version.)</div>
        <div><br>
        </div>
        <blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0=
px">
          <div>diff --git
            meta/conf/machine/include/microblaze/feature-microblaze-versio=
ns.inc
meta/conf/machine/include/microblaze/feature-microblaze-versions.inc</div>
          <div>index 955674fff9..3221e2aab7 100644</div>
          <div>---
            meta/conf/machine/include/microblaze/feature-microblaze-versio=
ns.inc</div>
          <div>+++
            meta/conf/machine/include/microblaze/feature-microblaze-versio=
ns.inc</div>
          <div>@@ -44,6 +44,7 @@ TUNEVALID[v9.4] =C2=A0=3D &quot;MicroBlaz=
e version
            9.4&quot;</div>
          <div>=C2=A0TUNEVALID[v9.5] =C2=A0=3D &quot;MicroBlaze version 9.=
5&quot;</div>
          <div>=C2=A0TUNEVALID[v9.6] =C2=A0=3D &quot;MicroBlaze version 9.=
6&quot;</div>
          <div>=C2=A0TUNEVALID[v10.0] =3D &quot;MicroBlaze version 10.0&qu=
ot;</div>
          <div>+TUNEVALID[v11.0] =3D &quot;MicroBlaze version 11.0&quot;</=
div>
          <div><br>
          </div>
          <div>=C2=A0# Version conflict matrix</div>
          <div>=C2=A0TUNECONFLICTS[v8.00] =3D &quot;&quot;</div>
          <div>@@ -60,6 +61,7 @@ TUNECONFLICTS[v9.4] =C2=A0=3D &quot;v8.00=
 v8.10
            v8.20 v8.30 v8.40 v8.50 v9.0 v9.1 v9.2 v9.3&quot;</div>
          <div>=C2=A0TUNECONFLICTS[v9.5] =C2=A0=3D &quot;v8.00 v8.10 v8.20=
 v8.30 v8.40
            v8.50 v9.0 v9.1 v9.2 v9.3 v9.4&quot;</div>
          <div>=C2=A0TUNECONFLICTS[v9.6] =C2=A0=3D &quot;v8.00 v8.10 v8.20=
 v8.30 v8.40
            v8.50 v9.0 v9.1 v9.2 v9.3 v9.4 v9.5&quot;</div>
          <div>=C2=A0TUNECONFLICTS[v10.0] =3D &quot;v8.00 v8.10 v8.20 v8.3=
0 v8.40
            v8.50 v9.0 v9.1 v9.2 v9.3 v9.4 v9.5 v9.6&quot;</div>
          <div>+TUNECONFLICTS[v11.0] =3D &quot;v8.00 v8.10 v8.20 v8.30 v8.=
40
            v8.50 v9.0 v9.1 v9.2 v9.3 v9.4 v9.5 v9.6 v10.0&quot;</div>
          <div><br>
          </div>
          <div>=C2=A0# Version flags</div>
          <div>=C2=A0TUNE_CCARGS +=3D &quot;-mcpu=3D${@microblaze_current_=
version(d,
            True)}&quot;</div>
          <div><br>
          </div>
        </blockquote>
        I know how to apply a patch against a recipe source file, but
        not this toolchain tuning include file.=C2=A0 =C2=A0How can I acco=
mplish
        this without editing the files in openembedded-core?=C2=A0 =C2=A0I=
&#39;d like
        to override or patch this in my own layer.
        <div><br>
        </div>
        <div>Thanks,</div>
        <div>Derek</div>
      </div>
      <br>
      <fieldset></fieldset>
      <pre></pre>
    </blockquote>
  </div>

<br>
</blockquote></div>

--000000000000166c2f05a1f18434--
