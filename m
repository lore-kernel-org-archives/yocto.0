Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.34113.1610370946098556232
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Jan 2021 05:15:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=pHOEAZGG;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: limit exceeded (domain: mvista.com, ip: 198.145.29.25, mailfrom: mshah@mvista.com)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by mail.yoctoproject.org (Postfix) with ESMTPS id EB6C038C04D7
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2021 13:15:45 +0000 (UTC)
Received: by mail-ej1-f48.google.com with SMTP id ga15so24683097ejb.4
        for <yocto@yoctoproject.org>; Mon, 11 Jan 2021 05:15:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=Rll8zC8VQV+punKd16x0giGQ0YNVIeOPf3x1uBn/bug=;
        b=pHOEAZGGuY4kJ6NnpVU9xmDTAKxTLteMtpfB7QzwmtnSRmNljB3UnWModBtMwGZ6ni
         T/25j6KEGVCYOybKJdCeQPrKfPsReMmY6vh0K6OyfoNC3EUObVDNK2y9Bz+zvst03uWL
         BATbiWgg/JzdasqaZeHEDCfo0YH5lv1MUxx59gIx/XKC0N5fsQ/Cl0WV1MKHL7h9plFr
         KqDH9+Lrvx/A4kAjMRuxVzQKzTjWOpUeUtIreUXQ0R1mpJjCYFQVM19pWr+UzgOq8bWB
         OSrK4Gn5YsYmt5AGSqHhywWjpeL5/MpD2iPKW7E2cTJvX9eiryQCG9ZJaSTQGWfBiLFc
         ULiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=Rll8zC8VQV+punKd16x0giGQ0YNVIeOPf3x1uBn/bug=;
        b=ZfRtqoV5t6dtzH8w9mwvxaR/Z2eho7y83QBhy81YwjsogKduvcYI2JvgNmiWH2TQgK
         d0ArfsGI9yPlgxW5x12dYtY5lKdfyHsFKywcjYPJ+drQaBOqx6hXijBSvDMsO8NbwYkU
         ehIMHRFBI44jIA1vLT2pgYoklBRFJhsCm3pj/FCgjsxmjdHmXF2qrutC1nhVny7DHfdR
         7ZwPCLVnAlI1jusoAuekKdoUtOynEbzNRS25hb+Y5Sem0tQTOnHyQ6RLEQst75eyMRWA
         nHsNZp+oRLKshsHoFoRkp7l07A3RG/xe3tDbyyYdY8Bf5InrV97evv/pNdJyNaKa0+Fi
         yLcA==
X-Gm-Message-State: AOAM533hpZNe2g/cmMe1LuicgCivhutCGN1V8jHc6VDZjPVNXVY3scle
	wyDbzp0w5G5uYHYu1052UG5VQ/5Gsx1gEMCw3F+zaBA9zrtBKw==
X-Google-Smtp-Source: ABdhPJzlC7arNMCmwJnzSr/X/Fc33x0w87RrA/sZ64VMm8A8wKnLF8G/7qm5oOEbHD49fQGGeusqp6GQ/DYBOM9bvRc=
X-Received: by 2002:a17:906:6c94:: with SMTP id s20mr10824684ejr.0.1610370944382;
 Mon, 11 Jan 2021 05:15:44 -0800 (PST)
MIME-Version: 1.0
References: <1609940317-21943-1-git-send-email-mshah@mvista.com>
In-Reply-To: <1609940317-21943-1-git-send-email-mshah@mvista.com>
From: "Milan Shah" <mshah@mvista.com>
Date: Mon, 11 Jan 2021 18:45:08 +0530
Message-ID: <CA+=qD9M-rk13kgw0fVvn3ChzCVrO6VQk-uxWspE7PKUG_Y99Aw@mail.gmail.com>
Subject: Re: [error-report-web][PATCH] report-error.bbclass: Add layer and bitbake version info to error report
To: yocto@yoctoproject.org, paul.eggleton@linux.intel.com, 
	richard.purdie@linuxfoundation.org, joshua.g.lock@intel.com, 
	leonardo.sandoval.gonzalez@intel.com, juan.m.cruz.alcaraz@intel.com
Content-Type: multipart/alternative; boundary="00000000000018d1c805b89fb47a"

--00000000000018d1c805b89fb47a
Content-Type: text/plain; charset="UTF-8"

Hi All,

This is a Gentle Reminder to review this Patch.

-----------------------
Thanks & Regards,
*Milan Shah*
MontaVista Software, Bangalore, India


On Wed, Jan 6, 2021 at 7:09 PM Milan Shah <mshah@mvista.com> wrote:

> Instead of just providing local.conf info, add layer names and their
> revisions with bitbake version information into error report
> makes it easier to understand and reproduce failed build.
>
> [YOCTO #9700]
>
> Signed-off-by: Milan Shah <mshah@mvista.com>
> ---
>  meta/classes/report-error.bbclass | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/meta/classes/report-error.bbclass
> b/meta/classes/report-error.bbclass
> index 1a12db1..9cb6b0b 100644
> --- a/meta/classes/report-error.bbclass
> +++ b/meta/classes/report-error.bbclass
> @@ -6,6 +6,8 @@
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
>
> +inherit base
> +
>  ERR_REPORT_DIR ?= "${LOG_DIR}/error-report"
>
>  def errorreport_getdata(e):
> @@ -64,6 +66,8 @@ python errorreport_handler () {
>              data['failures'] = []
>              data['component'] = " ".join(e.getPkgs())
>              data['branch_commit'] = str(base_detect_branch(e.data)) + ":
> " + str(base_detect_revision(e.data))
> +            data['bitbake_version'] = e.data.getVar("BB_VERSION")
> +            data['layer_version'] = get_layers_branch_rev(e.data)
>              data['local_conf'] = get_conf_data(e, 'local.conf')
>              data['auto_conf'] = get_conf_data(e, 'auto.conf')
>              lock = bb.utils.lockfile(datafile + '.lock')
> --
> 2.7.4
>
>

--00000000000018d1c805b89fb47a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi All,</div><div><br></div><div>This is a Gentle Rem=
inder to review this Patch.<br></div><div><div><div dir=3D"ltr" data-smartm=
ail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><font face=
=3D"times new roman, serif"><br></font></div><div dir=3D"ltr"><font face=3D=
"times new roman, serif">-----------------------<br></font></div><div dir=
=3D"ltr"><font face=3D"times new roman, serif">Thanks &amp; Regards,</font>=
<div><font face=3D"times new roman, serif"><b>Milan Shah</b></font></div><d=
iv><span style=3D"background-color:rgb(255,255,255)"><font color=3D"#ff0000=
"><font face=3D"times new roman, serif">MontaVista Software, </font></font>=
</span><span style=3D"background-color:rgb(255,255,255)"><font color=3D"#ff=
0000"><font face=3D"times new roman, serif"><span style=3D"font-family:&quo=
t;times new roman&quot;,serif">Bangalore</span></font><span style=3D"font-f=
amily:&quot;times new roman&quot;,serif">, India</span></font></span><br></=
div></div></div></div></div></div><br></div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 6, 2021 at 7:09 PM =
Milan Shah &lt;<a href=3D"mailto:mshah@mvista.com" target=3D"_blank">mshah@=
mvista.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">Instead of just providing local.conf info, add layer names and t=
heir<br>
revisions with bitbake version information into error report<br>
makes it easier to understand and reproduce failed build.<br>
<br>
[YOCTO #9700]<br>
<br>
Signed-off-by: Milan Shah &lt;<a href=3D"mailto:mshah@mvista.com" target=3D=
"_blank">mshah@mvista.com</a>&gt;<br>
---<br>
=C2=A0meta/classes/report-error.bbclass | 4 ++++<br>
=C2=A01 file changed, 4 insertions(+)<br>
<br>
diff --git a/meta/classes/report-error.bbclass b/meta/classes/report-error.=
bbclass<br>
index 1a12db1..9cb6b0b 100644<br>
--- a/meta/classes/report-error.bbclass<br>
+++ b/meta/classes/report-error.bbclass<br>
@@ -6,6 +6,8 @@<br>
=C2=A0#<br>
=C2=A0# Licensed under the MIT license, see COPYING.MIT for details<br>
<br>
+inherit base<br>
+<br>
=C2=A0ERR_REPORT_DIR ?=3D &quot;${LOG_DIR}/error-report&quot;<br>
<br>
=C2=A0def errorreport_getdata(e):<br>
@@ -64,6 +66,8 @@ python errorreport_handler () {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0data[&#39;failures&#39;] =
=3D []<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0data[&#39;component&#39;] =
=3D &quot; &quot;.join(e.getPkgs())<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0data[&#39;branch_commit&#39=
;] =3D str(base_detect_branch(e.data)) + &quot;: &quot; + str(base_detect_r=
evision(e.data))<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 data[&#39;bitbake_version&#39;] =
=3D e.data.getVar(&quot;BB_VERSION&quot;)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 data[&#39;layer_version&#39;] =
=3D get_layers_branch_rev(e.data)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0data[&#39;local_conf&#39;] =
=3D get_conf_data(e, &#39;local.conf&#39;)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0data[&#39;auto_conf&#39;] =
=3D get_conf_data(e, &#39;auto.conf&#39;)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lock =3D bb.utils.lockfile(=
datafile + &#39;.lock&#39;)<br>
-- <br>
2.7.4<br>
<br>
</blockquote></div>

--00000000000018d1c805b89fb47a--
