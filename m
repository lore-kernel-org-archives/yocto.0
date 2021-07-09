Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.7153.1625808102105468376
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Jul 2021 22:21:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=hGRinXuS;
 spf=permerror, err=parse error for token &{10 18 _spf.google.com}: limit exceeded (domain: mvista.com, ip: 198.145.29.25, mailfrom: mshah@mvista.com)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by mail.yoctoproject.org (Postfix) with ESMTPS id D22D738C084A
	for <yocto@yoctoproject.org>; Fri,  9 Jul 2021 05:21:41 +0000 (UTC)
Received: by mail-ej1-f50.google.com with SMTP id hc16so13900686ejc.12
        for <yocto@yoctoproject.org>; Thu, 08 Jul 2021 22:21:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6H1bjncDo/G529qinK41/8/htE30BDqbBlOwizPmEXo=;
        b=hGRinXuS99fJVPAg3+erCseLnH0RyuLedl52+g3YPzjmrEjFlwsDrQMR0U0MkQx9+T
         xlrm3iQrmVywD2VCqpDqSbnOflyNChPSZhbV3IzbJGMjkxeDiSxXCcRah9HESoQzrZnG
         PsCme7nVZ0veudLZFZdHI04T/N1Sz39OcZlySYbMReC03cz/NcQCXSe9C7PrrTUd0Rfp
         bfMZTnWKIBbzr4r2wPI8AxavGM/5POazKZyS2gK14Bi7CfOF0NHQNmnBlnr+uxpHa0x4
         F995oAkXH9EtYDa2r3+Xo6L5PK11rOi/PUNG0Cv7dl8ty120hs0HXzLGNiJk2LHEyZ7F
         0n/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6H1bjncDo/G529qinK41/8/htE30BDqbBlOwizPmEXo=;
        b=bJVUiwZ4C2/AMCmhVJM/E7cDgQ1mng8FM5fXSS/n84t37Hurd2X903Cfn/M2MCh9cg
         5vZpWQvENV6snCFwaAbfAPJbV9ycXhc2D3vznpbdV9Y4dpG9m+x2PFIqj80+cXQzWGqY
         AlbdNbIInmp5GsXTvIzik+Sv+e9cuqDUCoQ57LgxxPqp28BxXzXQJ+98G3oG8rtQHFjV
         GoKOLC7LyXOqyyhpAkP2ZMSb+zjKPxdE7r1ie1lDe4vuoEsiuPOANU4mz2lzNJ50DU5J
         S3kb5qamwuMaX3BmrefVhpuyzJNpPej2vBF6z1lxIv+Z1eB0N7Ib4yEhM+LrFKMM5KI2
         38WA==
X-Gm-Message-State: AOAM5309f0KmXKfxI8vdkuR9NKFnROvUzaMgAZY0DoQ4sEwT6Pg5xpw4
	mVo39HiaJGYkrqusQdQ9xLnLy1epNQ/83LZOEUPO1g==
X-Google-Smtp-Source: ABdhPJw10uAFoGzuwt0fTGiE7fgVDPIstaEyTbaDKyTqqwFkdHJ0ksxzV1hvvw3/W79MHAvmjnUB6qEgDZy4ni6n360=
X-Received: by 2002:a17:906:3acb:: with SMTP id z11mr11982863ejd.0.1625808100339;
 Thu, 08 Jul 2021 22:21:40 -0700 (PDT)
MIME-Version: 1.0
References: <1609940317-21943-1-git-send-email-mshah@mvista.com>
 <CA+=qD9M-rk13kgw0fVvn3ChzCVrO6VQk-uxWspE7PKUG_Y99Aw@mail.gmail.com>
 <CA+=qD9O1A-Cp=3z336qpeKgMCvdgbK=NATA8uqLuAPcbF=EPUw@mail.gmail.com>
 <CA+=qD9N2mxJ55Aaz1ahNrrivgam0wBqMx5vk1duqM+Fd_ENZBQ@mail.gmail.com>
 <CA+=qD9O1gf9quyPuQ9JBbR79=hL=aQ0gMCtke92Kp0uHt-w2hg@mail.gmail.com>
 <CA+=qD9NoNqBWv+ATf_tw-cc+Vz0xaDO6biCMFmx_M2Xq0LpA2A@mail.gmail.com>
 <7b5173bb8a6359a3c7597341c60ec2726d8f6108.camel@linuxfoundation.org> <166FE1E7B1DE5E9C.21604@lists.yoctoproject.org>
In-Reply-To: <166FE1E7B1DE5E9C.21604@lists.yoctoproject.org>
From: "Milan Shah" <mshah@mvista.com>
Date: Fri, 9 Jul 2021 10:51:04 +0530
Message-ID: <CA+=qD9N42rg5_Vdj6H5SV-YKYV=NPREG-6yA0yGAJHTP47+sZA@mail.gmail.com>
Subject: Re: [yocto] [error-report-web][PATCH] report-error.bbclass: Add layer and bitbake version info to error report
To: Milan Shah <mshah@mvista.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, yocto@yoctoproject.org, 
	Paul Barker <pbarker@konsulko.com>, Armin Kuster <akuster@mvista.com>
Content-Type: multipart/alternative; boundary="0000000000004b4a0605c6a9f2e8"

--0000000000004b4a0605c6a9f2e8
Content-Type: text/plain; charset="UTF-8"

Hello All,

My Patch has not been reviewed for the past 7 months. Looking forward to
see some updates on this.

Please find related links below.
https://lists.yoctoproject.org/g/yocto/message/51891
https://bugzilla.yoctoproject.org/show_bug.cgi?id=9700


Thanks & Regards,
Milan Shah

<https://www.mvista.com/>
*Milan Shah* * | Software Engineer*
*a: * MontaVista Software, LLC | Bangalore, India
*e:* info@mvista.com | *w:* www.mvista.com/
*p:* +91-80-4939-5000


On Fri, Mar 26, 2021 at 5:16 PM Milan Shah via lists.yoctoproject.org
<mshah=mvista.com@lists.yoctoproject.org> wrote:

> Thanks, Richard for responding.
>
> I completely understood your point and appreciate the effort you people
> make to maintain these repositories.
>
> But as a contributor, It encourages me to contribute more when my work
> gets noticed/criticized/accepted by the community.
>
> Anyways, I hope that the community resolves these issues as soon as
> possible so that there won't be much delay in updating the patches sent by
> the contributors.
>
> Thanks & Regards,
> Milan Shah
>
> <https://www.mvista.com/>
> *Milan Shah* * | Software Engineer*
> *a: * MontaVista Software, LLC | Bangalore, India
> *e:* info@mvista.com | *w:* www.mvista.com/
> *p:* +91-80-4939-5000
>
>
> On Fri, Mar 26, 2021 at 4:21 PM Richard Purdie <
> richard.purdie@linuxfoundation.org> wrote:
>
>> On Fri, 2021-03-26 at 16:04 +0530, Milan Shah wrote:
>> > It seems like patches sent for error-report-web are not much important
>> to the community as this patch has
>> > not been reviewed/commented on by anyone since 6th January 2021 (more
>> than 2.5 months).
>> >
>> > Still, I'm sending a reminder one last time for [YOCTO #9700].
>> > https://lists.yoctoproject.org/g/yocto/message/51891
>> >
>> > Please review/comment on it so that things can move further.
>>
>> Sorry, that isn't true, they are important and appreciated. We're
>> just struggling to handle everything.
>>
>> The challenge/problem has been that there are much older patches which
>> were half merged and broke things. People have rightly been complaining
>> about those issues and Khem for example has been carrying a patch for 3
>> years to work arond that problem. I did figure out a fix for that which
>> has now been merged.
>>
>> We also needed to migrate the service from py2 to py3 and deal with a
>> set of patches that had been applied locally that we had been unaware of
>> until very recently but which complicate things. The people who wrote
>> them are no longer around to help with that.
>>
>> The original authors of this code are no longer around, the people who
>> stepped up to try and help also haven't had time so the support/review
>> has struggled. The service is in daily use however so it is important
>> and that is why I'm now trying to unravel and fix things.
>>
>> I do want to get to your patch but you can appreciate that adding it
>> directly on top of an already failing set of changes wouldn't be good
>> for anyone.
>>
>> We are making progress in resolving the issues so I hope to get some
>> kind of better answer to you soon.
>>
>> Cheers,
>>
>> Richard
>>
>>
>>
> 
>
>

--0000000000004b4a0605c6a9f2e8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:tahoma,s=
ans-serif">Hello All,</div><div class=3D"gmail_default" style=3D"font-famil=
y:tahoma,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-f=
amily:tahoma,sans-serif">My Patch has not been reviewed for the past 7 mont=
hs. Looking forward to see some updates on this.</div><div class=3D"gmail_d=
efault" style=3D"font-family:tahoma,sans-serif"><br></div><div class=3D"gma=
il_default" style=3D"font-family:tahoma,sans-serif">Please find related lin=
ks below.</div><div class=3D"gmail_default" style=3D"font-family:tahoma,san=
s-serif"><a href=3D"https://lists.yoctoproject.org/g/yocto/message/51891">h=
ttps://lists.yoctoproject.org/g/yocto/message/51891</a></div><div><div dir=
=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div=
 dir=3D"ltr"><div><div style=3D"font-family:tahoma,sans-serif" class=3D"gma=
il_default"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
9700">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9700</a></div><br=
></div><div><br></div><div><span style=3D"font-family:tahoma,sans-serif"><f=
ont size=3D"2"><span style=3D"color:rgb(0,0,0)">Thanks &amp; Regards,</span=
></font></span></div><div><span style=3D"font-family:Arial,sans-serif;font-=
size:11pt;color:#1793d2"><span style=3D"font-family:tahoma,sans-serif"><fon=
t size=3D"2"><span style=3D"color:rgb(0,0,0)">Milan Shah</span></font></spa=
n><br></span></div><div><br></div><div>
<table style=3D"width:525px;font-size:11pt;font-family:Arial,sans-serif" c=
ellspacing=3D"0" cellpadding=3D"0">
<tbody>
 <tr>
  <td style=3D"font-size:10pt;font-family:Arial,sans-serif;border-right:1p=
x solid;border-right-color:#fb6303;width:125px;padding-right:10px;vertical-=
align:top" rowspan=3D"6" width=3D"125" valign=3D"top">
	=09<a href=3D"https://www.mvista.com/" target=3D"_blank"><img src=3D"http=
s://docs.google.com/uc?export=3Ddownload&amp;id=3D1Qm7yQfvCvd_kh_U4m6GVByOd=
aJDPquiJ&amp;revid=3D0B4U1D7fiiJwsSjRjMWRWSnByanRKcyszUkE3TzNKcHVZTFlNPQ"><=
/a>
	=09  =20
  </td>
    
 <td style=3D"padding-left:10px">
  <table cellspacing=3D"0" cellpadding=3D"0">
  <tbody>
    <tr>
      <td style=3D"font-size:10pt;color:#0079ac;font-family:Arial,sans-ser=
if;width:400px;padding-bottom:5px;padding-left:10px;vertical-align:top" val=
ign=3D"top">
       <b><span style=3D"font-size:11pt;font-family:Arial,sans-serif;color=
:#fb6303">Milan Shah</span></b>
       <b style=3D"font-family:Arial,sans-serif;font-size:11pt;color:#0000=
00"><span> | </span>Software Engineer</b>
      </td>
    </tr>=20
    <tr>
      <td style=3D"font-size:10pt;color:#444444;font-family:Arial,sans-ser=
if;padding-bottom:5px;padding-top:5px;padding-left:10px;vertical-align:top;=
line-height:17px" valign=3D"top">
	 =20
	=09<span>
	=09	<span style=3D"color:#fb6303"><b>a: </b></span>
	=09</span>
	=09<span>
	=09	<span style=3D"font-family:Arial,sans-serif;font-size:10pt;color:#000=
000">MontaVista Software, LLC</span>  =20
	=09</span>
	=09<span>
	=09	<span style=3D"font-size:10pt;font-family:Arial,sans-serif;color:#000=
000"><span> | </span>Bangalore, India</span>
	=09=09
	=09</span>
	=09
	=09<span><br></span>
	=09<span><span style=3D"color:#fb6303"><b>e:</b></span><span style=3D"fon=
t-size:10pt;font-family:Arial,sans-serif;color:#000000"> <a href=3D"mailto:=
info@mvista.com" target=3D"_blank">info@mvista.com</a></span></span>
	=09<span><span> | </span><span style=3D"color:#fb6303"><b>w:</b></span><a=
 href=3D"http://www.mvista.com/" rel=3D"noopener" style=3D"text-decoration:=
none" target=3D"_blank"><span style=3D"font-size:10pt;font-family:Arial,san=
s-serif;color:#000000"> www.mvista.com/</span></a></span>
        
	=09<span><br></span>
	=09
        <span><span style=3D"color:#fb6303"><b>p:</b></span><span style=3D=
"font-size:10pt;font-family:Arial,sans-serif;color:#000000"> +91-80-4939-50=
00</span></span>
        
      </td>
    </tr>
    
    
  </tbody>
  </table>
 </td></tr>=20
</tbody>
</table>
</div></div></div></div><br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, Mar 26, 2021 at 5:16 PM Milan Shah v=
ia <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt=
;mshah=3D<a href=3D"mailto:mvista.com@lists.yoctoproject.org">mvista.com@li=
sts.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"=
font-family:tahoma,sans-serif">Thanks, Richard for responding.</div><div cl=
ass=3D"gmail_default" style=3D"font-family:tahoma,sans-serif"><br></div><di=
v class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif">I complet=
ely understood your point and appreciate the effort you people make to main=
tain these repositories.</div><div class=3D"gmail_default" style=3D"font-fa=
mily:tahoma,sans-serif"><br></div><div class=3D"gmail_default" style=3D"fon=
t-family:tahoma,sans-serif">But as a contributor, It encourages me to contr=
ibute more when my work gets noticed/criticized/accepted by the community.<=
/div><div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif"><=
br></div><div class=3D"gmail_default" style=3D"font-family:tahoma,sans-seri=
f">Anyways, I hope that the community resolves these issues as soon as poss=
ible so that there won&#39;t be much delay in updating the patches sent by =
the contributors. <br clear=3D"all"></div><div><div dir=3D"ltr"><div dir=3D=
"ltr"><div><br></div><div><span style=3D"font-family:tahoma,sans-serif"><fo=
nt size=3D"2"><span style=3D"color:rgb(0,0,0)">Thanks &amp; Regards,</span>=
</font></span></div><div><span style=3D"font-family:Arial,sans-serif;font-s=
ize:11pt;color:rgb(23,147,210)"><span style=3D"font-family:tahoma,sans-seri=
f"><font size=3D"2"><span style=3D"color:rgb(0,0,0)">Milan Shah</span></fon=
t></span><br></span></div><div><br></div><div>
<table style=3D"width:525px;font-size:11pt;font-family:Arial,sans-serif" c=
ellspacing=3D"0" cellpadding=3D"0">
<tbody>
 <tr>
  <td style=3D"font-size:10pt;font-family:Arial,sans-serif;border-right:1p=
x solid rgb(251,99,3);width:125px;padding-right:10px;vertical-align:top" ro=
wspan=3D"6" width=3D"125" valign=3D"top">
	=09<a href=3D"https://www.mvista.com/" target=3D"_blank"><img src=3D"http=
s://docs.google.com/uc?export=3Ddownload&amp;id=3D1Qm7yQfvCvd_kh_U4m6GVByOd=
aJDPquiJ&amp;revid=3D0B4U1D7fiiJwsSjRjMWRWSnByanRKcyszUkE3TzNKcHVZTFlNPQ"><=
/a>
	=09  =20
  </td>
    
 <td style=3D"padding-left:10px">
  <table cellspacing=3D"0" cellpadding=3D"0">
  <tbody>
    <tr>
      <td style=3D"font-size:10pt;color:rgb(0,121,172);font-family:Arial,s=
ans-serif;width:400px;padding-bottom:5px;padding-left:10px;vertical-align:t=
op" valign=3D"top">
       <b><span style=3D"font-size:11pt;font-family:Arial,sans-serif;color=
:rgb(251,99,3)">Milan Shah</span></b>
       <b style=3D"font-family:Arial,sans-serif;font-size:11pt;color:rgb(0=
,0,0)"><span> | </span>Software Engineer</b>
      </td>
    </tr>=20
    <tr>
      <td style=3D"font-size:10pt;color:rgb(68,68,68);font-family:Arial,sa=
ns-serif;padding-bottom:5px;padding-top:5px;padding-left:10px;vertical-alig=
n:top;line-height:17px" valign=3D"top">
	 =20
	=09<span>
	=09	<span style=3D"color:rgb(251,99,3)"><b>a: </b></span>
	=09</span>
	=09<span>
	=09	<span style=3D"font-family:Arial,sans-serif;font-size:10pt;color:rgb(=
0,0,0)">MontaVista Software, LLC</span>  =20
	=09</span>
	=09<span>
	=09	<span style=3D"font-size:10pt;font-family:Arial,sans-serif;color:rgb(=
0,0,0)"><span> | </span>Bangalore, India</span>
	=09=09
	=09</span>
	=09
	=09<span><br></span>
	=09<span><span style=3D"color:rgb(251,99,3)"><b>e:</b></span><span style=
=3D"font-size:10pt;font-family:Arial,sans-serif;color:rgb(0,0,0)"> <a href=
=
=3D"mailto:info@mvista.com" target=3D"_blank">info@mvista.com</a></span></=
span>
	=09<span><span> | </span><span style=3D"color:rgb(251,99,3)"><b>w:</b></s=
pan><a href=3D"http://www.mvista.com/" rel=3D"noopener" style=3D"text-decor=
ation:none" target=3D"_blank"><span style=3D"font-size:10pt;font-family:Ari=
al,sans-serif;color:rgb(0,0,0)"> www.mvista.com/</span></a></span>
        
	=09<span><br></span>
	=09
        <span><span style=3D"color:rgb(251,99,3)"><b>p:</b></span><span st=
yle=3D"font-size:10pt;font-family:Arial,sans-serif;color:rgb(0,0,0)"> +91-8=
0-4939-5000</span></span>
        
      </td>
    </tr>
    
    
  </tbody>
  </table>
 </td></tr>=20
</tbody>
</table>
</div></div></div></div><br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, Mar 26, 2021 at 4:21 PM Richard Purd=
ie &lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org" target=3D"_bla=
nk">richard.purdie@linuxfoundation.org</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">On Fri, 2021-03-26 at 16:04 +0530, Mi=
lan Shah wrote:<br>
&gt; It seems like patches sent for error-report-web are not much importan=
t to the community as this patch has<br>
&gt; not been reviewed/commented on by anyone since 6th January 2021 (more=
 than 2.5 months).<br>
&gt; <br>
&gt; Still, I&#39;m sending a reminder one last time for [YOCTO #9700].<br=
>
&gt; <a href=3D"https://lists.yoctoproject.org/g/yocto/message/51891" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/m=
essage/51891</a><br>
&gt; <br>
&gt; Please review/comment on it so that things can move further.<br>
<br>
Sorry, that isn&#39;t true, they are important and appreciated. We&#39;re=
=C2=A0<br>
just struggling to handle everything.<br>
<br>
The challenge/problem has been that there are much older patches which<br>
were half merged and broke things. People have rightly been complaining<br=
>
about those issues and Khem for example has been carrying a patch for 3<br=
>
years to work arond that problem. I did figure out a fix for that which<br=
>
has now been merged.<br>
<br>
We also needed to migrate the service from py2 to py3 and deal with a<br>
set of patches that had been applied locally that we had been unaware of<b=
r>
until very recently but which complicate things. The people who wrote=C2=
=A0<br>
them are no longer around to help with that.<br>
<br>
The original authors of this code are no longer around, the people who<br>
stepped up to try and help also haven&#39;t had time so the support/review=
<br>
has struggled. The service is in daily use however so it is important<br>
and that is why I&#39;m now trying to unravel and fix things.<br>
<br>
I do want to get to your patch but you can appreciate that adding it <br>
directly on top of an already failing set of changes wouldn&#39;t be good<=
br>
for anyone.<br>
<br>
We are making progress in resolving the issues so I hope to get some<br>
kind of better answer to you soon.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
<br>
</blockquote></div>
<br>
<br>
<br>
</blockquote></div>

--0000000000004b4a0605c6a9f2e8--
