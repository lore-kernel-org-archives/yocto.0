Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.8348.1625819872777409802
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Jul 2021 01:37:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=IwqAHyC/;
 spf=permerror, err=parse error for token &{10 18 _spf.google.com}: limit exceeded (domain: mvista.com, ip: 198.145.29.25, mailfrom: mshah@mvista.com)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 521D738C027C
	for <yocto@yoctoproject.org>; Fri,  9 Jul 2021 08:37:52 +0000 (UTC)
Received: by mail-ed1-f51.google.com with SMTP id m17so12641811edc.9
        for <yocto@yoctoproject.org>; Fri, 09 Jul 2021 01:37:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SBm+spno6OkzvUFkQmSynh4WevefPh53tYWB86jFSq0=;
        b=IwqAHyC/ZRSnyq/UJtEaXES7NsmMywxLUGJnSzHa2tdI30SoXoz83VD6xPkzlBlQLk
         zzjo4OOpnfIm9zpmKYSwyF9Y5WvKCxMatpXQ9AMbKNoXPuYrO+bX5MJx3ZK3aflNg78A
         IgxnaUNO0UOYMSSQhrXEYSJ8TvsejMAoZiFyCVPbXDU4gO6Dy0+Cpz6yhGpY7zEoJPxB
         aZtXf/VXJUcnogOMI9rwK2MGO0Wf+yRii1cTxnQEi/LeCm2TFAbG9KEFr0T1u8PkjTxk
         +QQITddEK1boc9+dAEZ37/0oHGt8P4tX6JlcoPPOXgsBqqslKSy85Nr+T/J+bdEVmwbt
         1+aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SBm+spno6OkzvUFkQmSynh4WevefPh53tYWB86jFSq0=;
        b=cJsWKKH7LBxROO9z+Zub18SvaYbslwbODAHb3W1GEt9ijIe8nd297TIwD+dLAiqH0C
         qVFmJkm5cy9igRkRjsEHAYBCKFd80CiP1bWWOaXW+iV+LuIwe0xakF5clcrWDcSm7gnJ
         V6H9Pn6j/VLAQ5TQJ/6IJ/sNm4lEZ8T7VnQkZCHfoEHY4/2TElfFEp0dDCD27f9ZzGR8
         z1vLRljrCFK8E8s0WuEWmwSOTKfXHsz98E/Y0+5v02igYs8WzUBwf3sT6pCup4+mcPfe
         znD5ZSsOm3UaNDeNiUY5KajJITFsfxaKZTObOgy1nmMuVOmmzpUUlStM7/+BXeNog2D5
         TZvg==
X-Gm-Message-State: AOAM530gnbJArMYr3UuHpJ7bHwH+nmURMFW7tUElJjeSGNsqnDrKwqUG
	a65+aJX++m0uye/2q8PBZuVFhdZMkrfPBI0yUe/5Jg==
X-Google-Smtp-Source: ABdhPJz4uDL5ziQpf1KLgGu2ENf7HhDHWNJkKq000VUV4NyzWXOcJDwzxh3S7bJcYXjhBp7uHYc48EKh+I05/FPcRKc=
X-Received: by 2002:a05:6402:451:: with SMTP id p17mr43994378edw.332.1625819870891;
 Fri, 09 Jul 2021 01:37:50 -0700 (PDT)
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
In-Reply-To: <31be281c79720bda006e4c6bc5746aabb1a3e2ab.camel@linuxfoundation.org>
From: "Milan Shah" <mshah@mvista.com>
Date: Fri, 9 Jul 2021 14:07:14 +0530
Message-ID: <CA+=qD9Ph2-HR=iKmf6FZFC5+Xks2B7YN1FUq_-CjxcBmSXPh1Q@mail.gmail.com>
Subject: Re: [yocto] [error-report-web][PATCH] report-error.bbclass: Add layer and bitbake version info to error report
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@yoctoproject.org, Paul Barker <pbarker@konsulko.com>, 
	Armin Kuster <akuster@mvista.com>
Content-Type: multipart/alternative; boundary="000000000000dfa2e905c6acaf36"

--000000000000dfa2e905c6acaf36
Content-Type: text/plain; charset="UTF-8"

Well, there was no update on the bug as well as on the patch so I was not
aware of it.

Thanks, Richard for responding. I'll definitely follow your suggestion next
time.

Thanks & Regards,
Milan Shah

<https://www.mvista.com/>
*Milan Shah* * | Software Engineer*
*a: * MontaVista Software, LLC | Bangalore, India
*e:* info@mvista.com | *w:* www.mvista.com/
*p:* +91-80-4939-5000


On Fri, Jul 9, 2021 at 2:03 PM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Fri, 2021-07-09 at 10:51 +0530, Milan Shah wrote:
> > Hello All,
> >
> > My Patch has not been reviewed for the past 7 months. Looking forward
> > to see some updates on this.
> >
> > Please find related links below.
> > https://lists.yoctoproject.org/g/yocto/message/51891
> > https://bugzilla.yoctoproject.org/show_bug.cgi?id=9700
> >
>
>
> http://git.yoctoproject.org/cgit.cgi/poky/commit/meta/classes/report-error.bbclass?id=8b299a62c55aa8d1583aff4b8428f16def7231b7
>
> It appears to have merged 5 months ago?
>
> Also, looking at the patch that inherit base should not be there and needs
> to be removed since everything always inherits base.
>
> In the future please send OE-Core changes to the openembedded-core mailing
> list as that will speed up review and patch handling (as per the repo's
> README).
>
> Cheers,
>
> Richard
>
>

--000000000000dfa2e905c6acaf36
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:tahoma,s=
ans-serif">Well, there was no update on the bug as well as on the patch so =
I was not aware of it.</div><div class=3D"gmail_default" style=3D"font-fami=
ly:tahoma,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-=
family:tahoma,sans-serif">Thanks, Richard for responding. I&#39;ll definite=
ly follow your suggestion next time.<br clear=3D"all"></div><div><div dir=
=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div =
dir=3D"ltr"><div><br></div><div><span style=3D"font-family:tahoma,sans-seri=
f"><font size=3D"2"><span style=3D"color:rgb(0,0,0)">Thanks &amp; Regards,<=
/span></font></span></div><div><span style=3D"font-family:Arial,sans-serif;=
font-size:11pt;color:#1793d2"><span style=3D"font-family:tahoma,sans-serif"=
><font size=3D"2"><span style=3D"color:rgb(0,0,0)">Milan Shah</span></font>=
</span><br></span></div><div><br></div><div>
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
=3D"ltr" class=3D"gmail_attr">On Fri, Jul 9, 2021 at 2:03 PM Richard Purdie=
 &lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@l=
inuxfoundation.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">On Fri, 2021-07-09 at 10:51 +0530, Milan Shah wrote:<br>
&gt; Hello All,<br>
&gt; <br>
&gt; My Patch has not been reviewed for the past 7 months. Looking forward=
=C2=A0<br>
&gt; to see some updates on this.<br>
&gt; <br>
&gt; Please find related links below.<br>
&gt; <a href=3D"https://lists.yoctoproject.org/g/yocto/message/51891" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/me=
ssage/51891</a><br>
&gt; <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9700" r=
el=3D"noreferrer" target=3D"_blank">https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D9700</a><br>
&gt; <br>
<br>
<a href=3D"http://git.yoctoproject.org/cgit.cgi/poky/commit/meta/classes/re=
port-error.bbclass?id=3D8b299a62c55aa8d1583aff4b8428f16def7231b7" rel=3D"no=
referrer" target=3D"_blank">http://git.yoctoproject.org/cgit.cgi/poky/commi=
t/meta/classes/report-error.bbclass?id=3D8b299a62c55aa8d1583aff4b8428f16def=
7231b7</a><br>
<br>
It appears to have merged 5 months ago?<br>
<br>
Also, looking at the patch that inherit base should not be there and needs<=
br>
to be removed since everything always inherits base.<br>
<br>
In the future please send OE-Core changes to the openembedded-core mailing<=
br>
list as that will speed up review and patch handling (as per the repo&#39;s=
 README).<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
</blockquote></div>

--000000000000dfa2e905c6acaf36--
