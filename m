Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.29399.1612154209769023771
 for <yocto@lists.yoctoproject.org>;
 Sun, 31 Jan 2021 20:36:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=M8SrIhl9;
 spf=permerror, err=parse error for token &{10 18 _spf.google.com}: limit exceeded (domain: mvista.com, ip: 198.145.29.25, mailfrom: mshah@mvista.com)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 0EA1E38C052B
	for <yocto@yoctoproject.org>; Mon,  1 Feb 2021 04:36:49 +0000 (UTC)
Received: by mail-ed1-f54.google.com with SMTP id j13so17366250edp.2
        for <yocto@yoctoproject.org>; Sun, 31 Jan 2021 20:36:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hdUKVf/ZLqHnQ665pWGhC+GYEUOxwd4C7eT/nSwxGrI=;
        b=M8SrIhl9ixWCmKIKUQt0banq/9hx/y1AMQudBEtlGixZnl0d5tN9e18llQlRo4OUDf
         CW73Jqp7iJLX5QSfykUHHJ9nu2KT9Xyphrvm4m8ZqMKoycHmFC+B1H8NyllRP4XXyaa7
         vsUHtErK4sWdVBkay4sYJtZvNa31EjeIqsD0TQG7EuRLDyA0RecSknW2b/GaieTBCJ3F
         A/bfY5gslMwzGHX/Uve6cS2RumOTQl6G9b6OTZHSofUzKvx7Bww1YckcqPuDMQUPD1dH
         9EMfIHJeEJVfYaF6DfWYb/GNA0yJplNW355dIgVRp0fApW3It23HPBOX0/74ObNNpKRE
         LIGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hdUKVf/ZLqHnQ665pWGhC+GYEUOxwd4C7eT/nSwxGrI=;
        b=VOG4m+heSSQzJZc0YjAKv+QXUPxRSjDAEPMyu+j6uXz1Lv97NP4zo328ZBQya3SFWB
         Ls3BFG1ltIJd/1W26SatzJhX6jg84I9pZ7anTenFTnnPSBFw5Fiozp8hSdFRnErJoL2v
         sWob5zghO01IbDWycFh+fBQRXQv/y37s/rSLv7Uw2a5bxQTbQMQCc7jDxSUHq0qANHns
         muNerpMhDqsJfeicUBElObwQGDdldjeKx0Hq0fyjrsBBe1wCBHko++Usu/jc6IhkC2kY
         SMX66bwektqowwoIbcuqru38h/aitC/d8JycY8IinNk5lFk6DQw0AJ6etyqjHfco/VhB
         VCHA==
X-Gm-Message-State: AOAM533mptlgzgpTsf3IQDLCNB2evF537NXcnwlz8QQNTtsCnyLmXZM2
	+HpA1HqVV6a0PJCzqbQ3dSdIMKgNaeNNqdtKrcrQpqZboGFtdg==
X-Google-Smtp-Source: ABdhPJx0Udx7XF8GswIzJYe4kyjGXcMh5ur08RduSY03vi9MMa2qfjbQ0YX4BiFllDjAUQuPF8x6SuIUoWLQOu0yKCQ=
X-Received: by 2002:a05:6402:2707:: with SMTP id y7mr16566556edd.5.1612154207270;
 Sun, 31 Jan 2021 20:36:47 -0800 (PST)
MIME-Version: 1.0
References: <1609940317-21943-1-git-send-email-mshah@mvista.com> <CA+=qD9M-rk13kgw0fVvn3ChzCVrO6VQk-uxWspE7PKUG_Y99Aw@mail.gmail.com>
In-Reply-To: <CA+=qD9M-rk13kgw0fVvn3ChzCVrO6VQk-uxWspE7PKUG_Y99Aw@mail.gmail.com>
From: "Milan Shah" <mshah@mvista.com>
Date: Mon, 1 Feb 2021 10:06:10 +0530
Message-ID: <CA+=qD9O1A-Cp=3z336qpeKgMCvdgbK=NATA8uqLuAPcbF=EPUw@mail.gmail.com>
Subject: Re: [error-report-web][PATCH] report-error.bbclass: Add layer and bitbake version info to error report
To: yocto@yoctoproject.org
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, Paul Barker <pbarker@konsulko.com>
Content-Type: multipart/alternative; boundary="000000000000d90bc705ba3ee6d5"

--000000000000d90bc705ba3ee6d5
Content-Type: text/plain; charset="UTF-8"

Hi All,

A gentle reminder to review this patch.

-----------------------
Thanks & Regards,
*Milan Shah*
MontaVista Software, Bangalore, India


On Mon, Jan 11, 2021 at 6:45 PM Milan Shah <mshah@mvista.com> wrote:

> Hi All,
>
> This is a Gentle Reminder to review this Patch.
>
> -----------------------
> Thanks & Regards,
> *Milan Shah*
> MontaVista Software, Bangalore, India
>
>
> On Wed, Jan 6, 2021 at 7:09 PM Milan Shah <mshah@mvista.com> wrote:
>
>> Instead of just providing local.conf info, add layer names and their
>> revisions with bitbake version information into error report
>> makes it easier to understand and reproduce failed build.
>>
>> [YOCTO #9700]
>>
>> Signed-off-by: Milan Shah <mshah@mvista.com>
>> ---
>>  meta/classes/report-error.bbclass | 4 ++++
>>  1 file changed, 4 insertions(+)
>>
>> diff --git a/meta/classes/report-error.bbclass
>> b/meta/classes/report-error.bbclass
>> index 1a12db1..9cb6b0b 100644
>> --- a/meta/classes/report-error.bbclass
>> +++ b/meta/classes/report-error.bbclass
>> @@ -6,6 +6,8 @@
>>  #
>>  # Licensed under the MIT license, see COPYING.MIT for details
>>
>> +inherit base
>> +
>>  ERR_REPORT_DIR ?= "${LOG_DIR}/error-report"
>>
>>  def errorreport_getdata(e):
>> @@ -64,6 +66,8 @@ python errorreport_handler () {
>>              data['failures'] = []
>>              data['component'] = " ".join(e.getPkgs())
>>              data['branch_commit'] = str(base_detect_branch(e.data)) + ":
>> " + str(base_detect_revision(e.data))
>> +            data['bitbake_version'] = e.data.getVar("BB_VERSION")
>> +            data['layer_version'] = get_layers_branch_rev(e.data)
>>              data['local_conf'] = get_conf_data(e, 'local.conf')
>>              data['auto_conf'] = get_conf_data(e, 'auto.conf')
>>              lock = bb.utils.lockfile(datafile + '.lock')
>> --
>> 2.7.4
>>
>>

--000000000000d90bc705ba3ee6d5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi All,</div><div><br></div><div>A gentle reminder to=
 review this patch.</div><div><div><div dir=3D"ltr" data-smartmail=3D"gmail=
_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><font face=3D"times new =
roman, serif"><br></font></div><div dir=3D"ltr"><font face=3D"times new rom=
an, serif">-----------------------<br></font></div><div dir=3D"ltr"><font f=
ace=3D"times new roman, serif">Thanks &amp; Regards,</font><div><font face=
=3D"times new roman, serif"><b>Milan Shah</b></font></div><div><span style=
=3D"background-color:rgb(255,255,255)"><font color=3D"#ff0000"><font face=
=3D"times new roman, serif">MontaVista Software, </font></font></span><span=
 style=3D"background-color:rgb(255,255,255)"><font color=3D"#ff0000"><font =
face=3D"times new roman, serif"><span style=3D"font-family:&quot;times new =
roman&quot;,serif">Bangalore</span></font><span style=3D"font-family:&quot;=
times new roman&quot;,serif">, India</span></font></span><br></div></div></=
div></div></div></div><br></div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Mon, Jan 11, 2021 at 6:45 PM Milan Shah =
&lt;<a href=3D"mailto:mshah@mvista.com" target=3D"_blank">mshah@mvista.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr"><div>Hi All,</div><div><br></div><div>This is a Gentle Remi=
nder to review this Patch.<br></div><div><div><div dir=3D"ltr"><div dir=3D"=
ltr"><div><div dir=3D"ltr"><font face=3D"times new roman, serif"><br></font=
></div><div dir=3D"ltr"><font face=3D"times new roman, serif">-------------=
----------<br></font></div><div dir=3D"ltr"><font face=3D"times new roman, =
serif">Thanks &amp; Regards,</font><div><font face=3D"times new roman, seri=
f"><b>Milan Shah</b></font></div><div><span style=3D"background-color:rgb(2=
55,255,255)"><font color=3D"#ff0000"><font face=3D"times new roman, serif">=
MontaVista Software, </font></font></span><span style=3D"background-color:r=
gb(255,255,255)"><font color=3D"#ff0000"><font face=3D"times new roman, ser=
if"><span style=3D"font-family:&quot;times new roman&quot;,serif">Bangalore=
</span></font><span style=3D"font-family:&quot;times new roman&quot;,serif"=
>, India</span></font></span><br></div></div></div></div></div></div><br></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Wed, Jan 6, 2021 at 7:09 PM Milan Shah &lt;<a href=3D"mailto:mshah@m=
vista.com" target=3D"_blank">mshah@mvista.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">Instead of just providing loca=
l.conf info, add layer names and their<br>
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
</blockquote></div>

--000000000000d90bc705ba3ee6d5--
