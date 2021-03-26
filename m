Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.11300.1616759176096078401
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Mar 2021 04:46:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=MELYghzG;
 spf=permerror, err=parse error for token &{10 18 _spf.google.com}: limit exceeded (domain: mvista.com, ip: 198.145.29.25, mailfrom: mshah@mvista.com)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by mail.yoctoproject.org (Postfix) with ESMTPS id ACD5E38C06B0
	for <yocto@yoctoproject.org>; Fri, 26 Mar 2021 11:46:15 +0000 (UTC)
Received: by mail-ej1-f52.google.com with SMTP id u5so7950703ejn.8
        for <yocto@yoctoproject.org>; Fri, 26 Mar 2021 04:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fRrqnlGm/yx2mZ0d5nLkmXd1NyqaEALmsuoiJUMLz7w=;
        b=MELYghzGBARptagvc6dVvOiLeXGYDClHqcGX8lmvtg6SBd2GHm4VF/TAc05AReWWiJ
         0SgnhX+VKTm5f/3Oz24WkO8nq4IchLFX6ilpUgxi3O6VajSlpNWVoOsInFwF/Iu9rQzC
         KWT4MXdY9FaK/cMazNVtjx4ezB51L19YXtqKXUm53pNSCD/J5xusFhDpoUl+YvAgOmi9
         f0cHlIMOyaIwBgGBaMmZaKB+/RZ5xcc6J+clgIB8tADSG6U6pAaNPqvh9Fn2z+knjFpB
         WAyICnv2W4hwsb0YfjVFg1+yjmgfjU5sa9Q77ZO9WnhXk28H6zDXQIKJM7jLP8ZD8A0q
         4VWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fRrqnlGm/yx2mZ0d5nLkmXd1NyqaEALmsuoiJUMLz7w=;
        b=jKaCqOT8TEmNKmlQmxrUZls1SDk3Hnqzp4dmShCK4HWunaq65RbdNPwnaKlaRqQi6R
         J1aQ/nnwDlvj5ODQz1n/5C/M2BvOEZWcwkMnH9xSBObVmBCwaUNgPujrmQTQLGnJaZYM
         n8dbBGOx6LBeuxKveZDIrsO3BBCxhw0/UpnTXP17FKBP1M06GxJirVlksDlembGRkB+N
         SVYUURCAeKRqam37onhwvSyZr6zJ3KL5sAz76zWOr/C9y3KJ8YQ7TmDixCoMJhjsrvGN
         cu6HACBNx2rO3BPntUc83zF8/9Q60uv+q6rhHSwVA8nhA3l4ebMkaKnmyYw75bPTt+9/
         i78w==
X-Gm-Message-State: AOAM532aT3+roy+LFUJY8bDV3rk3JN02jiQd+fFq00ssaLMOpNHHijON
	BosdopqWcw9jEvMHCQqWfzJge7ewSWyd5m68UvgXAA==
X-Google-Smtp-Source: ABdhPJxjThe0FKWW1Xm0wvbOSA3DflGWHfp0Q0hmJZqrYQn75360oxr+vr/7oMeL5KkjvxGXyZN84k8l5A8B3FSmoiY=
X-Received: by 2002:a17:906:dbd0:: with SMTP id yc16mr14731458ejb.71.1616759174408;
 Fri, 26 Mar 2021 04:46:14 -0700 (PDT)
MIME-Version: 1.0
References: <1609940317-21943-1-git-send-email-mshah@mvista.com>
 <CA+=qD9M-rk13kgw0fVvn3ChzCVrO6VQk-uxWspE7PKUG_Y99Aw@mail.gmail.com>
 <CA+=qD9O1A-Cp=3z336qpeKgMCvdgbK=NATA8uqLuAPcbF=EPUw@mail.gmail.com>
 <CA+=qD9N2mxJ55Aaz1ahNrrivgam0wBqMx5vk1duqM+Fd_ENZBQ@mail.gmail.com>
 <CA+=qD9O1gf9quyPuQ9JBbR79=hL=aQ0gMCtke92Kp0uHt-w2hg@mail.gmail.com>
 <CA+=qD9NoNqBWv+ATf_tw-cc+Vz0xaDO6biCMFmx_M2Xq0LpA2A@mail.gmail.com> <7b5173bb8a6359a3c7597341c60ec2726d8f6108.camel@linuxfoundation.org>
In-Reply-To: <7b5173bb8a6359a3c7597341c60ec2726d8f6108.camel@linuxfoundation.org>
From: "Milan Shah" <mshah@mvista.com>
Date: Fri, 26 Mar 2021 17:15:37 +0530
Message-ID: <CA+=qD9MZuzJTor-rJPi-nbSeXn+ewKkdSxN8eMDKtT4TMuLxXw@mail.gmail.com>
Subject: Re: [error-report-web][PATCH] report-error.bbclass: Add layer and bitbake version info to error report
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@yoctoproject.org, Paul Barker <pbarker@konsulko.com>, 
	Armin Kuster <akuster@mvista.com>
Content-Type: multipart/alternative; boundary="00000000000047446f05be6f147f"

--00000000000047446f05be6f147f
Content-Type: text/plain; charset="UTF-8"

Thanks, Richard for responding.

I completely understood your point and appreciate the effort you people
make to maintain these repositories.

But as a contributor, It encourages me to contribute more when my work gets
noticed/criticized/accepted by the community.

Anyways, I hope that the community resolves these issues as soon as
possible so that there won't be much delay in updating the patches sent by
the contributors.

Thanks & Regards,
Milan Shah

<https://www.mvista.com/>
*Milan Shah* * | Software Engineer*
*a: * MontaVista Software, LLC | Bangalore, India
*e:* info@mvista.com | *w:* www.mvista.com/
*p:* +91-80-4939-5000


On Fri, Mar 26, 2021 at 4:21 PM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Fri, 2021-03-26 at 16:04 +0530, Milan Shah wrote:
> > It seems like patches sent for error-report-web are not much important
> to the community as this patch has
> > not been reviewed/commented on by anyone since 6th January 2021 (more
> than 2.5 months).
> >
> > Still, I'm sending a reminder one last time for [YOCTO #9700].
> > https://lists.yoctoproject.org/g/yocto/message/51891
> >
> > Please review/comment on it so that things can move further.
>
> Sorry, that isn't true, they are important and appreciated. We're
> just struggling to handle everything.
>
> The challenge/problem has been that there are much older patches which
> were half merged and broke things. People have rightly been complaining
> about those issues and Khem for example has been carrying a patch for 3
> years to work arond that problem. I did figure out a fix for that which
> has now been merged.
>
> We also needed to migrate the service from py2 to py3 and deal with a
> set of patches that had been applied locally that we had been unaware of
> until very recently but which complicate things. The people who wrote
> them are no longer around to help with that.
>
> The original authors of this code are no longer around, the people who
> stepped up to try and help also haven't had time so the support/review
> has struggled. The service is in daily use however so it is important
> and that is why I'm now trying to unravel and fix things.
>
> I do want to get to your patch but you can appreciate that adding it
> directly on top of an already failing set of changes wouldn't be good
> for anyone.
>
> We are making progress in resolving the issues so I hope to get some
> kind of better answer to you soon.
>
> Cheers,
>
> Richard
>
>
>

--00000000000047446f05be6f147f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:tahoma,s=
ans-serif">Thanks, Richard for responding.</div><div class=3D"gmail_default=
" style=3D"font-family:tahoma,sans-serif"><br></div><div class=3D"gmail_def=
ault" style=3D"font-family:tahoma,sans-serif">I completely understood your =
point and appreciate the effort you people make to maintain these repositor=
ies.</div><div class=3D"gmail_default" style=3D"font-family:tahoma,sans-ser=
if"><br></div><div class=3D"gmail_default" style=3D"font-family:tahoma,sans=
-serif">But as a contributor, It encourages me to contribute more when my w=
ork gets noticed/criticized/accepted by the community.</div><div class=3D"g=
mail_default" style=3D"font-family:tahoma,sans-serif"><br></div><div class=
=3D"gmail_default" style=3D"font-family:tahoma,sans-serif">Anyways, I hope =
that the community resolves these issues as soon as possible so that there =
won&#39;t be much delay in updating the patches sent by the contributors. <=
br clear=3D"all"></div><div><div dir=3D"ltr" class=3D"gmail_signature" data=
-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><br></div><div><span s=
tyle=3D"font-family:tahoma,sans-serif"><font size=3D"2"><span style=3D"colo=
r:rgb(0,0,0)">Thanks &amp; Regards,</span></font></span></div><div><span st=
yle=3D"font-family:Arial,sans-serif;font-size:11pt;color:#1793d2"><span sty=
le=3D"font-family:tahoma,sans-serif"><font size=3D"2"><span style=3D"color:=
rgb(0,0,0)">Milan Shah</span></font></span><br></span></div><div><br></div>=
<div>
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
=3D"ltr" class=3D"gmail_attr">On Fri, Mar 26, 2021 at 4:21 PM Richard Purdi=
e &lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@=
linuxfoundation.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">On Fri, 2021-03-26 at 16:04 +0530, Milan Shah wrote:<br>
&gt; It seems like patches sent for error-report-web are not much important=
 to the community as this patch has<br>
&gt; not been reviewed/commented on by anyone since 6th January 2021 (more =
than 2.5 months).<br>
&gt; <br>
&gt; Still, I&#39;m sending a reminder one last time for [YOCTO #9700].<br>
&gt; <a href=3D"https://lists.yoctoproject.org/g/yocto/message/51891" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/me=
ssage/51891</a><br>
&gt; <br>
&gt; Please review/comment on it so that things can move further.<br>
<br>
Sorry, that isn&#39;t true, they are important and appreciated. We&#39;re=
=C2=A0<br>
just struggling to handle everything.<br>
<br>
The challenge/problem has been that there are much older patches which<br>
were half merged and broke things. People have rightly been complaining<br>
about those issues and Khem for example has been carrying a patch for 3<br>
years to work arond that problem. I did figure out a fix for that which<br>
has now been merged.<br>
<br>
We also needed to migrate the service from py2 to py3 and deal with a<br>
set of patches that had been applied locally that we had been unaware of<br=
>
until very recently but which complicate things. The people who wrote=C2=A0=
<br>
them are no longer around to help with that.<br>
<br>
The original authors of this code are no longer around, the people who<br>
stepped up to try and help also haven&#39;t had time so the support/review<=
br>
has struggled. The service is in daily use however so it is important<br>
and that is why I&#39;m now trying to unravel and fix things.<br>
<br>
I do want to get to your patch but you can appreciate that adding it <br>
directly on top of an already failing set of changes wouldn&#39;t be good<b=
r>
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

--00000000000047446f05be6f147f--
