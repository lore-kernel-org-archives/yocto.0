Return-Path: <diego.sueiro@gmail.com>
Received: from mail-ie0-f173.google.com (mail-ie0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0699E005A2
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2013 04:35:07 -0800 (PST)
Received: by mail-ie0-f173.google.com with SMTP id to1so5500047ieb.18
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2013 04:35:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=GemwIE2YVgNuOGmJ8ug8mK69ODMARfRcBz7KEMhBmLg=;
	b=oIHN2vDUQjUaPLejhXj7wvz6D2MoQCJGzCv6/iNRRmMFOfodYHxXBlzxEtr7gUW5AO
	P3wA2z+AeFyfksTEU8p1cv2huE8IdbVfetoikQptAODdO+hU2AT/kYAdazFuLK15LdF/
	T5ftPlQkK+F7colW2cs0RzzJhGQ6J9SKt/U/RGZ5Sj5AvAdJ/98ttFmDicTqRkIASYi3
	+j3jZfoVO3cAaYKOHLuZRtGYseDzRivVEXzdlzvkjj+p8NxLmSLxcUYfpg/NvWqu4EUJ
	gJlv2lPGFv+sjYygBVE/HFl6G86C6Hy9NknwPWSZCwa64k9rLXjZ4CZagPC0aNaGMLoZ
	I+3A==
X-Received: by 10.50.30.66 with SMTP id q2mr5126723igh.17.1385037306695; Thu,
	21 Nov 2013 04:35:06 -0800 (PST)
MIME-Version: 1.0
Received: by 10.64.26.233 with HTTP; Thu, 21 Nov 2013 04:34:46 -0800 (PST)
In-Reply-To: <528DF846.9050306@denx.de>
References: <528DF846.9050306@denx.de>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Thu, 21 Nov 2013 10:34:46 -0200
Message-ID: <CAMCfZKE1fv=ZGB=HMe-4BmG-XRKMb_kaOADESwe-6mD1wp_hDw@mail.gmail.com>
To: Stefano Babic <sbabic@denx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Deploying Yocto build images
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 21 Nov 2013 12:35:11 -0000
Content-Type: multipart/alternative; boundary=047d7bdc0fb4aaa2b404ebaf20df

--047d7bdc0fb4aaa2b404ebaf20df
Content-Type: text/plain; charset=ISO-8859-1

Stefano,

This is a really great tool. I'm always developing a new software update
tool for each new project, since there are different requirements.
As I can see you are dealing with different scenarios, and this is really
amazing.

I'm already cloning meta-swupdate to test it.
Looking at recipes I realized that swupdate is initialized in an sysVinit
environment.
Did you plan to use systemd too?
Maybe I can contribute to this.

Thanks for sharing.

Regards,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/


2013/11/21 Stefano Babic <sbabic@denx.de>

> Hi everybody,
>
> in the last ELCE, David point out in his presentation that we should
> improve how to deploy Yocto images on the target.
>
> I did some work this year to provide a reliable way for some customers
> of us to install Yocto's images in field, and I have published last week
> the sources. Here the link of the announcement:
>
>         http://comments.gmane.org/gmane.comp.embedded.eldk/2397
>
> Mainly, it is a tool that can be stored in the rootfs or will be put in
> a separate initrd image and whose goal is only to update the system. I
> have tried to describe pros and cons of several different solutions
> (updating via bootloader ? single copy against dual copy ?) - you can
> find details in the doc directory in the swupdate repository.
>
> Maybe someone of you can find this helpful, and I will be happy if I
> could get some feedback.
>
> Best regards,
> Stefano Babic
>
> --
> =====================================================================
> DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
> =====================================================================
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--047d7bdc0fb4aaa2b404ebaf20df
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Stefano,<div><br></div><div style>This is a really great t=
ool. I&#39;m always developing a new software update tool for each new proj=
ect, since there are different requirements.</div><div style>As I can see y=
ou are dealing with different scenarios, and this is really amazing.</div>

<div style><br></div><div style>I&#39;m already cloning meta-swupdate to te=
st it.<br></div><div style>Looking at recipes I realized that swupdate is i=
nitialized in an sysVinit environment.</div><div style>Did you plan to use =
systemd too?<br>

</div><div style>Maybe I can contribute to this.</div><div style><br></div>=
<div style>Thanks for sharing.</div><div class=3D"gmail_extra"><br clear=3D=
"all"><div><div dir=3D"ltr"><div>Regards,</div><div><br></div>--<br>*dS<br>=
Diego Sueiro<br>

<br>/*long live rock &#39;n roll*/</div></div>
<br><br><div class=3D"gmail_quote">2013/11/21 Stefano Babic <span dir=3D"lt=
r">&lt;<a href=3D"mailto:sbabic@denx.de" target=3D"_blank">sbabic@denx.de</=
a>&gt;</span><br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">

Hi everybody,<br>
<br>
in the last ELCE, David point out in his presentation that we should<br>
improve how to deploy Yocto images on the target.<br>
<br>
I did some work this year to provide a reliable way for some customers<br>
of us to install Yocto&#39;s images in field, and I have published last wee=
k<br>
the sources. Here the link of the announcement:<br>
<br>
=A0 =A0 =A0 =A0 <a href=3D"http://comments.gmane.org/gmane.comp.embedded.el=
dk/2397" target=3D"_blank">http://comments.gmane.org/gmane.comp.embedded.el=
dk/2397</a><br>
<br>
Mainly, it is a tool that can be stored in the rootfs or will be put in<br>
a separate initrd image and whose goal is only to update the system. I<br>
have tried to describe pros and cons of several different solutions<br>
(updating via bootloader ? single copy against dual copy ?) - you can<br>
find details in the doc directory in the swupdate repository.<br>
<br>
Maybe someone of you can find this helpful, and I will be happy if I<br>
could get some feedback.<br>
<br>
Best regards,<br>
Stefano Babic<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
DENX Software Engineering GmbH, =A0 =A0 MD: Wolfgang Denk &amp; Detlev Zund=
el<br>
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany<br>
Phone: <a href=3D"tel:%2B49-8142-66989-53" value=3D"+4981426698953">+49-814=
2-66989-53</a> Fax: <a href=3D"tel:%2B49-8142-66989-80" value=3D"+498142669=
8980">+49-8142-66989-80</a> Email: <a href=3D"mailto:sbabic@denx.de">sbabic=
@denx.de</a><br>


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div></div>

--047d7bdc0fb4aaa2b404ebaf20df--
