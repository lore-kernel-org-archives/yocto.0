Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.8468.1625821008321691633
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Jul 2021 01:56:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=0cvbkWw/;
 spf=permerror, err=parse error for token &{10 18 _spf.google.com}: limit exceeded (domain: mvista.com, ip: 198.145.29.25, mailfrom: mshah@mvista.com)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by mail.yoctoproject.org (Postfix) with ESMTPS id E921538C02B9
	for <yocto@yoctoproject.org>; Fri,  9 Jul 2021 08:56:47 +0000 (UTC)
Received: by mail-ej1-f42.google.com with SMTP id ga42so14848768ejc.6
        for <yocto@yoctoproject.org>; Fri, 09 Jul 2021 01:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dg356upzO5i8AN8Es+MAY2lbPnVspatH+jX4cn++B5Q=;
        b=0cvbkWw/RRTcsAXXOWwZ1fvCikRSmUpgRSZY1khmkMD73YymL2ScQV5qUUEfiiF++T
         ekRmRzNMmfH76K04jqcoHqauaZEHO5khOfxCU6UIDZJt6Qphm88z42WDl8eLzw92E1fK
         op3WQtuWaDmGwtTRaLglsMcJZzvMSraHRlkpRioxjahfJRRcWF9RNSolwCo8az51HukA
         206a1JYim5lz3nrUxv7BqkcR96BTReyl+n8nDG7X8KGG2IX8pcJf0c2nPGLW8kSEycuw
         FK80+4VKt8RBmUAy6apzaaRFWwrEZ/7Dw13NZjvT1gG19kevpgMrDq6zPQ8O5kdYAUCy
         /H3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dg356upzO5i8AN8Es+MAY2lbPnVspatH+jX4cn++B5Q=;
        b=h4J1pjgyjM4GqBRpuP82e3l+HjaNNxYrrM2YIu7IgiYVoGpYz9whZfBsQMKnOwTyUn
         Fobh4pyiIbAG+5tgD0CLTNzfPxbyv2XI1CsVIgvcJ8W3oYeTZOvNBSE6eL0guX50icZ9
         23NK5soihRBplilWiKyoyXp7beCZzBAnQUmlP2BlTK+w9bHHMOpnb9DafUWTW6S9SOCV
         2l/uOunu3bACCmTHNU1Xmbz7d5UvPnXYKnoB5WJ9/YrOWQ3uspgoJVKiJ53co+Dnuo5X
         WlQLXvqb6nMTr9i6Bc/oIVNfZRdd9iLakAwPmVPU0sNdLgEVebZZNpR+7HFg2bjmB3TU
         r22Q==
X-Gm-Message-State: AOAM532K6J+MgyjuUdmVOkDH46An6Pz2Aur6hFFZv/RKght2QaMUNfPY
	Lno0ssEsFaHi+IVMAn9+FbMCQ/oxW3in9MVZAasGBA==
X-Google-Smtp-Source: ABdhPJwW5ws0VtvOfciHTgfkISTWZr/VQxxjaIjtndCszuv+cYfUsRJlaO/7LEv9fnKkAtxJDV3K7lJ8PDR1dhWnoSI=
X-Received: by 2002:a17:907:c08:: with SMTP id ga8mr35485144ejc.314.1625821006425;
 Fri, 09 Jul 2021 01:56:46 -0700 (PDT)
MIME-Version: 1.0
References: <1609940317-21943-1-git-send-email-mshah@mvista.com>
 <CA+=qD9M-rk13kgw0fVvn3ChzCVrO6VQk-uxWspE7PKUG_Y99Aw@mail.gmail.com>
 <CA+=qD9O1A-Cp=3z336qpeKgMCvdgbK=NATA8uqLuAPcbF=EPUw@mail.gmail.com>
 <CA+=qD9N2mxJ55Aaz1ahNrrivgam0wBqMx5vk1duqM+Fd_ENZBQ@mail.gmail.com>
 <CA+=qD9O1gf9quyPuQ9JBbR79=hL=aQ0gMCtke92Kp0uHt-w2hg@mail.gmail.com>
 <CA+=qD9NoNqBWv+ATf_tw-cc+Vz0xaDO6biCMFmx_M2Xq0LpA2A@mail.gmail.com>
 <7b5173bb8a6359a3c7597341c60ec2726d8f6108.camel@linuxfoundation.org>
 <166FE1E7B1DE5E9C.21604@lists.yoctoproject.org> <CA+=qD9N42rg5_Vdj6H5SV-YKYV=NPREG-6yA0yGAJHTP47+sZA@mail.gmail.com>
 <31be281c79720bda006e4c6bc5746aabb1a3e2ab.camel@linuxfoundation.org>
 <CA+=qD9Ph2-HR=iKmf6FZFC5+Xks2B7YN1FUq_-CjxcBmSXPh1Q@mail.gmail.com> <2f192033ffa0404be7a26fd6577ddced4d566ee5.camel@linuxfoundation.org>
In-Reply-To: <2f192033ffa0404be7a26fd6577ddced4d566ee5.camel@linuxfoundation.org>
From: "Milan Shah" <mshah@mvista.com>
Date: Fri, 9 Jul 2021 14:26:10 +0530
Message-ID: <CA+=qD9NQU=MscKujX2e_yqk_eyiE2Yab896hLZrUG304q8m9TA@mail.gmail.com>
Subject: Re: [yocto] [error-report-web][PATCH] report-error.bbclass: Add layer and bitbake version info to error report
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@yoctoproject.org, Paul Barker <pbarker@konsulko.com>, 
	Armin Kuster <akuster@mvista.com>
Content-Type: multipart/alternative; boundary="0000000000008e854d05c6acf30a"

--0000000000008e854d05c6acf30a
Content-Type: text/plain; charset="UTF-8"

Thanks, Richard

Closed the Bug as *Resolved Fixed* Status and commit link as a Comment.

Thanks & Regards,
Milan Shah

<https://www.mvista.com/>
*Milan Shah* * | Software Engineer*
*a: * MontaVista Software, LLC | Bangalore, India
*e:* info@mvista.com | *w:* www.mvista.com/
*p:* +91-80-4939-5000


On Fri, Jul 9, 2021 at 2:23 PM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Fri, 2021-07-09 at 14:07 +0530, Milan Shah wrote:
> > Well, there was no update on the bug as well as on the patch so I was
> > not aware of it.
> >
> > Thanks, Richard for responding. I'll definitely follow your suggestion
> > next time.
>
> We'd normally expect the bug owner to update the status of the bug since it
> isn't really possible for me or the triage team to track and update them
> all.
> We can close this one with a link to the commit:
>
>
> http://git.yoctoproject.org/cgit.cgi/poky/commit/meta/classes/report-error.bbclass?id=8b299a62c55aa8d1583aff4b8428f16def7231b7
>
> Happy for you to, or I can...
>
> Cheers,
>
> Richard
>
>
>

--0000000000008e854d05c6acf30a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:tahoma,s=
ans-serif">Thanks, Richard</div><div class=3D"gmail_default" style=3D"font-=
family:tahoma,sans-serif"><br></div><div class=3D"gmail_default" style=3D"f=
ont-family:tahoma,sans-serif">Closed the Bug as <b>Resolved Fixed</b> Statu=
s and commit link as a Comment.</div><div><div dir=3D"ltr" class=3D"gmail_s=
ignature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><br></di=
v><div><span style=3D"font-family:tahoma,sans-serif"><font size=3D"2"><span=
 style=3D"color:rgb(0,0,0)">Thanks &amp; Regards,</span></font></span></div=
><div><span style=3D"font-family:Arial,sans-serif;font-size:11pt;color:#179=
3d2"><span style=3D"font-family:tahoma,sans-serif"><font size=3D"2"><span s=
tyle=3D"color:rgb(0,0,0)">Milan Shah</span></font></span><br></span></div><=
div><br></div><div>
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
=3D"ltr" class=3D"gmail_attr">On Fri, Jul 9, 2021 at 2:23 PM Richard Purdie=
 &lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@l=
inuxfoundation.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">On Fri, 2021-07-09 at 14:07 +0530, Milan Shah wrote:<br>
&gt; Well, there was no update on the bug as well as on the patch so I was=
=C2=A0<br>
&gt; not aware of it.<br>
&gt; <br>
&gt; Thanks, Richard for responding. I&#39;ll definitely follow your sugges=
tion=C2=A0<br>
&gt; next time.<br>
<br>
We&#39;d normally expect the bug owner to update the status of the bug sinc=
e it<br>
isn&#39;t really possible for me or the triage team to track and update the=
m all.<br>
We can close this one with a link to the commit:<br>
<br>
<a href=3D"http://git.yoctoproject.org/cgit.cgi/poky/commit/meta/classes/re=
port-error.bbclass?id=3D8b299a62c55aa8d1583aff4b8428f16def7231b7" rel=3D"no=
referrer" target=3D"_blank">http://git.yoctoproject.org/cgit.cgi/poky/commi=
t/meta/classes/report-error.bbclass?id=3D8b299a62c55aa8d1583aff4b8428f16def=
7231b7</a><br>
<br>
Happy for you to, or I can...<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
<br>
</blockquote></div>

--0000000000008e854d05c6acf30a--
