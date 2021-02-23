Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.7691.1614073922718717637
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Feb 2021 01:52:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=BPLZGKNi;
 spf=permerror, err=parse error for token &{10 18 _spf.google.com}: limit exceeded (domain: mvista.com, ip: 198.145.29.25, mailfrom: mshah@mvista.com)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 137D838C0857
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2021 09:52:02 +0000 (UTC)
Received: by mail-vs1-f44.google.com with SMTP id l15so4204706vsq.4
        for <yocto@yoctoproject.org>; Tue, 23 Feb 2021 01:52:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gZJhjltVAryMJ2nQDwotu2TAXs7cvtLPbNrMwDPMPvY=;
        b=BPLZGKNiXMDjhumKwiVHOJcuPfulDiF3/+V9Az4bCCMrjNcUb6B3BqWnVppzzcgmQC
         43+0M3TAtyazXYMjFgOxJ8AN3upQDPNxrogzGcub8bbxjnwjZ4zwMZyxvExWK1L/fMi5
         EK2KbNYwKXZjgGNniK0Xr9vU532JW1FbLNVk6iSyH4+CG64zp8a99963q9+e1tcdBRJ3
         +BQu24ixvWBjdIiaj9GJhmN92Y2rlnedzrzbjaF4Aqqcm4y0bo56mcMzFhQCctHNb+A8
         NaKs8gR0nLdVw9BacOJAfYKN1XYbEJI69ojAHMuUHWcSEuw3dkGA0pegh4L6g0h9f5DE
         CAAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gZJhjltVAryMJ2nQDwotu2TAXs7cvtLPbNrMwDPMPvY=;
        b=NxZPNnLcSGRbzGlTMTTaCY3xthq5Un5zjivvQbMAR7NIqWTgs1K7+5kdsFyZmQwjGa
         Az9KR5g149x2U+qw4NkfQEjtdkeDHPEp9LPXUqSjAA/Htw/UnrRUvoe7F0vgaV+tFv09
         Qh3CfDduAAuRuzNpNFLH8FEHgcuhZ8+hWicspqga9YJU/DkdutfWwxvPxsTa9V/qxP9w
         1LQATZlZ+J9g9DYXALB1OisoX0tnwqboZC6aipqCz+TiY7I6S+fhB/H1IgrWieJPHEXA
         1HUxZgNtDcQBJaKW9ygTjNkjHzvRChe/5LYPrwYEzfWfIgwP1fx11JftAT6ersfh3gAA
         c5cA==
X-Gm-Message-State: AOAM532U5PjrfTOlBTs5pz/kfZxkWKRBTw3MWqPWvGGuC//ebZCV/KiS
	L8oApe0FueEM5l70mN+fEepT9QpNz8ebWsSaMfITdHdz4/Ztwg==
X-Google-Smtp-Source: ABdhPJzsfzqIN0KXYWjeMEFUajZ56krPiikZy0GrxHKvzRL28wCIs7eE9HPcW8LCeQFiQPQ2+nLJ8C5ljCNPFg0+64w=
X-Received: by 2002:a67:f991:: with SMTP id b17mr4601759vsq.37.1614073920625;
 Tue, 23 Feb 2021 01:52:00 -0800 (PST)
MIME-Version: 1.0
References: <1609940317-21943-1-git-send-email-mshah@mvista.com>
 <CA+=qD9M-rk13kgw0fVvn3ChzCVrO6VQk-uxWspE7PKUG_Y99Aw@mail.gmail.com> <CA+=qD9O1A-Cp=3z336qpeKgMCvdgbK=NATA8uqLuAPcbF=EPUw@mail.gmail.com>
In-Reply-To: <CA+=qD9O1A-Cp=3z336qpeKgMCvdgbK=NATA8uqLuAPcbF=EPUw@mail.gmail.com>
From: "Milan Shah" <mshah@mvista.com>
Date: Tue, 23 Feb 2021 15:21:24 +0530
Message-ID: <CA+=qD9N2mxJ55Aaz1ahNrrivgam0wBqMx5vk1duqM+Fd_ENZBQ@mail.gmail.com>
Subject: Re: [error-report-web][PATCH] report-error.bbclass: Add layer and bitbake version info to error report
To: yocto@yoctoproject.org
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, Paul Barker <pbarker@konsulko.com>
Content-Type: multipart/alternative; boundary="000000000000ae39cd05bbfddebe"

--000000000000ae39cd05bbfddebe
Content-Type: text/plain; charset="UTF-8"

Hi All,

This has not been reviewed yet and it is given since January 6th.
Please review it and provide review comments if any as soon as possible to
resolve this issue.

Thanks & Regards,
Milan Shah

<https://www.mvista.com/>
*Milan Shah* * | Software Engineer*
*a: * MontaVista Software, LLC | Bangalore, India
*e:* info@mvista.com | *w:* www.mvista.com/
*p:* +91-80-4939-5000


On Mon, Feb 1, 2021 at 10:06 AM Milan Shah <mshah@mvista.com> wrote:

> Hi All,
>
> A gentle reminder to review this patch.
>
> -----------------------
> Thanks & Regards,
> *Milan Shah*
> MontaVista Software, Bangalore, India
>
>
> On Mon, Jan 11, 2021 at 6:45 PM Milan Shah <mshah@mvista.com> wrote:
>
>> Hi All,
>>
>> This is a Gentle Reminder to review this Patch.
>>
>> -----------------------
>> Thanks & Regards,
>> *Milan Shah*
>> MontaVista Software, Bangalore, India
>>
>>
>> On Wed, Jan 6, 2021 at 7:09 PM Milan Shah <mshah@mvista.com> wrote:
>>
>>> Instead of just providing local.conf info, add layer names and their
>>> revisions with bitbake version information into error report
>>> makes it easier to understand and reproduce failed build.
>>>
>>> [YOCTO #9700]
>>>
>>> Signed-off-by: Milan Shah <mshah@mvista.com>
>>> ---
>>>  meta/classes/report-error.bbclass | 4 ++++
>>>  1 file changed, 4 insertions(+)
>>>
>>> diff --git a/meta/classes/report-error.bbclass
>>> b/meta/classes/report-error.bbclass
>>> index 1a12db1..9cb6b0b 100644
>>> --- a/meta/classes/report-error.bbclass
>>> +++ b/meta/classes/report-error.bbclass
>>> @@ -6,6 +6,8 @@
>>>  #
>>>  # Licensed under the MIT license, see COPYING.MIT for details
>>>
>>> +inherit base
>>> +
>>>  ERR_REPORT_DIR ?= "${LOG_DIR}/error-report"
>>>
>>>  def errorreport_getdata(e):
>>> @@ -64,6 +66,8 @@ python errorreport_handler () {
>>>              data['failures'] = []
>>>              data['component'] = " ".join(e.getPkgs())
>>>              data['branch_commit'] = str(base_detect_branch(e.data)) +
>>> ": " + str(base_detect_revision(e.data))
>>> +            data['bitbake_version'] = e.data.getVar("BB_VERSION")
>>> +            data['layer_version'] = get_layers_branch_rev(e.data)
>>>              data['local_conf'] = get_conf_data(e, 'local.conf')
>>>              data['auto_conf'] = get_conf_data(e, 'auto.conf')
>>>              lock = bb.utils.lockfile(datafile + '.lock')
>>> --
>>> 2.7.4
>>>
>>>

--000000000000ae39cd05bbfddebe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:tahoma,s=
ans-serif">Hi All,</div><div class=3D"gmail_default" style=3D"font-family:t=
ahoma,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-fami=
ly:tahoma,sans-serif">This has not been reviewed=C2=A0yet and it is given s=
ince January 6th. <br></div><div class=3D"gmail_default" style=3D"font-fami=
ly:tahoma,sans-serif">Please review it and provide review comments if any a=
s soon as possible to resolve this issue.<br></div><div><div dir=3D"ltr" cl=
ass=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"=
><div><br></div><div><span style=3D"font-family:tahoma,sans-serif"><font si=
ze=3D"2"><span style=3D"color:rgb(0,0,0)">Thanks &amp; Regards,</span></fon=
t></span></div><div><span style=3D"font-family:Arial,sans-serif;font-size:1=
1pt;color:#1793d2"><span style=3D"font-family:tahoma,sans-serif"><font size=
=3D"2"><span style=3D"color:rgb(0,0,0)">Milan Shah</span></font></span><br>=
</span></div><div><br></div><div>
<table style=3D"width:525px;font-size:11pt;font-family:Arial,sans-serif" ce=
llspacing=3D"0" cellpadding=3D"0">
<tbody>
 <tr>
  <td style=3D"font-size:10pt;font-family:Arial,sans-serif;border-right:1px=
 solid;border-right-color:#fb6303;width:125px;padding-right:10px;vertical-a=
lign:top" rowspan=3D"6" width=3D"125" valign=3D"top">
		<a href=3D"https://www.mvista.com/" target=3D"_blank"><img src=3D"https:/=
/docs.google.com/uc?export=3Ddownload&amp;id=3D1Qm7yQfvCvd_kh_U4m6GVByOdaJD=
PquiJ&amp;revid=3D0B4U1D7fiiJwsSjRjMWRWSnByanRKcyszUkE3TzNKcHVZTFlNPQ"></a>
		  =20
  </td>
   =20
 <td style=3D"padding-left:10px">
  <table cellspacing=3D"0" cellpadding=3D"0">
  <tbody>
    <tr>
      <td style=3D"font-size:10pt;color:#0079ac;font-family:Arial,sans-seri=
f;width:400px;padding-bottom:5px;padding-left:10px;vertical-align:top" vali=
gn=3D"top">
       <b><span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:=
#fb6303">Milan Shah</span></b>
       <b style=3D"font-family:Arial,sans-serif;font-size:11pt;color:#00000=
0"><span> | </span>Software Engineer</b>
      </td>
    </tr>=20
    <tr>
      <td style=3D"font-size:10pt;color:#444444;font-family:Arial,sans-seri=
f;padding-bottom:5px;padding-top:5px;padding-left:10px;vertical-align:top;l=
ine-height:17px" valign=3D"top">
	 =20
		<span>
			<span style=3D"color:#fb6303"><b>a: </b></span>
		</span>
		<span>
			<span style=3D"font-family:Arial,sans-serif;font-size:10pt;color:#000000=
">MontaVista Software, LLC</span>  =20
		</span>
		<span>
			<span style=3D"font-size:10pt;font-family:Arial,sans-serif;color:#000000=
"><span> | </span>Bangalore, India</span>
		=09
		</span>
	=09
		<span><br></span>
		<span><span style=3D"color:#fb6303"><b>e:</b></span><span style=3D"font-s=
ize:10pt;font-family:Arial,sans-serif;color:#000000"> <a href=3D"mailto:inf=
o@mvista.com" target=3D"_blank">info@mvista.com</a></span></span>
		<span><span> | </span><span style=3D"color:#fb6303"><b>w:</b></span><a hr=
ef=3D"http://www.mvista.com/" rel=3D"noopener" style=3D"text-decoration:non=
e" target=3D"_blank"><span style=3D"font-size:10pt;font-family:Arial,sans-s=
erif;color:#000000"> www.mvista.com/</span></a></span>
       =20
		<span><br></span>
	=09
        <span><span style=3D"color:#fb6303"><b>p:</b></span><span style=3D"=
font-size:10pt;font-family:Arial,sans-serif;color:#000000"> +91-80-4939-500=
0</span></span>
       =20
      </td>
    </tr>
   =20
   =20
  </tbody>
  </table>
 </td></tr>=20
</tbody>
</table>
</div></div></div></div><br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Feb 1, 2021 at 10:06 AM Milan Shah &l=
t;<a href=3D"mailto:mshah@mvista.com">mshah@mvista.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div=
>Hi All,</div><div><br></div><div>A gentle reminder to review this patch.</=
div><div><div><div dir=3D"ltr"><div dir=3D"ltr"><div><div dir=3D"ltr"><font=
 face=3D"times new roman, serif"><br></font></div><div dir=3D"ltr"><font fa=
ce=3D"times new roman, serif">-----------------------<br></font></div><div =
dir=3D"ltr"><font face=3D"times new roman, serif">Thanks &amp; Regards,</fo=
nt><div><font face=3D"times new roman, serif"><b>Milan Shah</b></font></div=
><div><span style=3D"background-color:rgb(255,255,255)"><font color=3D"#ff0=
000"><font face=3D"times new roman, serif">MontaVista Software, </font></fo=
nt></span><span style=3D"background-color:rgb(255,255,255)"><font color=3D"=
#ff0000"><font face=3D"times new roman, serif"><span style=3D"font-family:&=
quot;times new roman&quot;,serif">Bangalore</span></font><span style=3D"fon=
t-family:&quot;times new roman&quot;,serif">, India</span></font></span><br=
></div></div></div></div></div></div><br></div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jan 11, 2021 at 6:45=
 PM Milan Shah &lt;<a href=3D"mailto:mshah@mvista.com" target=3D"_blank">ms=
hah@mvista.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr"><div>Hi All,</div><div><br></div><div>This i=
s a Gentle Reminder to review this Patch.<br></div><div><div><div dir=3D"lt=
r"><div dir=3D"ltr"><div><div dir=3D"ltr"><font face=3D"times new roman, se=
rif"><br></font></div><div dir=3D"ltr"><font face=3D"times new roman, serif=
">-----------------------<br></font></div><div dir=3D"ltr"><font face=3D"ti=
mes new roman, serif">Thanks &amp; Regards,</font><div><font face=3D"times =
new roman, serif"><b>Milan Shah</b></font></div><div><span style=3D"backgro=
und-color:rgb(255,255,255)"><font color=3D"#ff0000"><font face=3D"times new=
 roman, serif">MontaVista Software, </font></font></span><span style=3D"bac=
kground-color:rgb(255,255,255)"><font color=3D"#ff0000"><font face=3D"times=
 new roman, serif"><span style=3D"font-family:&quot;times new roman&quot;,s=
erif">Bangalore</span></font><span style=3D"font-family:&quot;times new rom=
an&quot;,serif">, India</span></font></span><br></div></div></div></div></d=
iv></div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Wed, Jan 6, 2021 at 7:09 PM Milan Shah &lt;<a href=3D=
"mailto:mshah@mvista.com" target=3D"_blank">mshah@mvista.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Instead of just=
 providing local.conf info, add layer names and their<br>
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
</blockquote></div>

--000000000000ae39cd05bbfddebe--
