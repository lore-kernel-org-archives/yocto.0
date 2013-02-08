Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ee0-f50.google.com (mail-ee0-f50.google.com [74.125.83.50])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 075ECE0027C
	for <yocto@yoctoproject.org>; Thu,  7 Feb 2013 17:52:08 -0800 (PST)
Received: by mail-ee0-f50.google.com with SMTP id e51so1752001eek.37
	for <yocto@yoctoproject.org>; Thu, 07 Feb 2013 17:52:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=GKxbZ2D+1BX282m6XaZd6qbg4M2V6YJfQERsfwYH5sc=;
	b=SL2Yaq/CoH9XMDs5rJr9jSnDzke+bqYKh4ZgZxbLhGo/7oIm1onOGryWp8xddWi2uR
	ATPBOKWopfTHPJfj+SMC7BnsX7m4VGnAoRrz6h9fFa/TYSnPlCnD5ZPyvIw0s3mkcTvu
	o80xS28NwxhrRJ2lcHrMbkgKV1acW2sf4gxF4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=GKxbZ2D+1BX282m6XaZd6qbg4M2V6YJfQERsfwYH5sc=;
	b=pWejRwRZp8A/5GNHKtBk1HEmHR4aYG3VFTqmv+3VwyK37nIssLsLbYPowhB+6oiBFX
	9kDO2tJ9knWPFKdFIWXMl76RhD+icMkCdp9AP3tz98fToPb0qOH3ljaoLmKLE1XdO5YA
	nTMD7BiRRlqXygmKcTZPq94zmvZRuhfpEeKg/ydzV0q/U+bzxXMGrWabbzU412bmdnVJ
	434fhN+KYktZmaMTqrBoZDcQrlynb8qgfmRnrHd2mG4zrp1pkWr3CFzDEdYnrPxWJr5x
	4lunL5o61RT7jDw1vDzDzidvFypYp0QOLESR6wNzsb+p7H4aGUqk5B04/o+rTLq4juPW
	i4Mw==
MIME-Version: 1.0
X-Received: by 10.14.177.1 with SMTP id c1mr10471088eem.8.1360288327051; Thu,
	07 Feb 2013 17:52:07 -0800 (PST)
Received: by 10.223.133.193 with HTTP; Thu, 7 Feb 2013 17:52:06 -0800 (PST)
In-Reply-To: <CADkTA4M1NxUrQSYdwsDDNEApb-cM1=Cai+2MKxFzY04eZrexiw@mail.gmail.com>
References: <CA+gsK-o6CCdwsM3oHNvso2rGy7_LMBZEfkd0hc3BYXVmJBbQPg@mail.gmail.com>
	<CADkTA4M1NxUrQSYdwsDDNEApb-cM1=Cai+2MKxFzY04eZrexiw@mail.gmail.com>
Date: Thu, 7 Feb 2013 17:52:06 -0800
Message-ID: <CA+gsK-rz2FLBd0zG2gZ+_6Osd6VfWAgz7AnOxhPX1PoX2am6Vw@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
X-Gm-Message-State: ALoCoQmJU7kTGf6cIuwowF0UFyE7uKYCuBHoTktkJ5oDbnNjV75rhJRb9DdIp7727sVVESOTsTsq
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: PROVIDES for Yocto Kernel Recipes
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 08 Feb 2013 01:52:09 -0000
Content-Type: multipart/alternative; boundary=047d7b621e0c86a87e04d52cce70

--047d7b621e0c86a87e04d52cce70
Content-Type: text/plain; charset=ISO-8859-1

Yes, of course with a space. Proportional fonts don't work that well with
code. :)

That's why I am asking if anyone else found that to be a nuisance. Of
course, for a BSP you have to set PREFERRED_VERSION. But for testing and
working with different kernel version I would find it more convenient if I
had not to change PREFERRED_VERSION in the machine file or override it in
local.conf.

It's also sort of an inconsistency. Typically, one would expect that you
could run bitbake against a recipe by specifying the package name and
version. Using -b with the recipe file name is not an option since you
would not get the bbappends.

Cheers,
Rudi


On Thu, Feb 7, 2013 at 5:39 PM, Bruce Ashfield <bruce.ashfield@gmail.com>wrote:

>
>
>
> On Thu, Feb 7, 2013 at 8:22 PM, Rudolf Streif <rudolf.streif@linux.com>wrote:
>
>> I apologize if that has been brought up before.
>>
>> The linux-yocto kernel recipes include the git tags into PV by explicitly
>> setting:
>>
>> PV = "${LINUX_VERSION}+git${SRCPV}"
>>
>> This means that you cannot for example do
>>
>> bitbake linux-yocto-3.2
>>
>> anymore because PROVIDES does not contain linux-yocto-3.2 but only the
>> rather cumbersome string linux-yocto-3.2+git${SRCPV}, with ${SRCPV}
>> expanded of course.
>>
>> The percent notation only works for
>>
>> PREFERRED_VERSION_linux-yocto = "3.2%"
>>
>> but does not work for
>>
>> bitbake linux-yocto-3.2%
>>
>> That really only leaves you with setting PREFERRED_VERSION which is not
>> that convenient if you just want to build a different kernel version.
>>
>> I am not sure how others feel about that and maybe I am missing something
>> but it would be rather simple to add that back by setting
>>
>> PV = "${LINUX_VERSION} ${LINUX_VERSION}+git${SRCPV}"
>>
>
> You mean with a space in the version string ? I know that I don't want
> directories floating around
> with spaces, since they cause no end of troubles. But maybe it's just the
> font in gmail playing
> tricks with my eyes.
>
> Perhaps Richard has a suggestion, but in 3+ years, this is the first time
> that this particular issue
> has come up. Most everyone is setting the PREFERRED_VERSION in their bsps,
> or local.conf
> and not using that particular mechanism of switching between kernels ..
> myself included, and I
> probably build more versions of linux-yocto than anyone you'll find :)
>
> Don't get me wrong, I'm not dead set against changing it, but we do need
> both the meta and
> machine git hashes in the version to uniquely identify the tree (and my no
> spaces comment!).
> Maybe someone knows of a better way for command line switching of the
> version ?
>
> Cheers,
>
> Bruce
>
>
>
>>
>>
>
>> Well, kind of, you still would have to know the minor version number.
>>
>> Cheers,
>> Rudi
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>
>
> --
> "Thou shalt not follow the NULL pointer, for chaos and madness await thee
> at its end"
>



-- 
-- 
*Rudolf J. Streif*
Director of Embedded Solutions
The Linux Foundation

rudolf.streif@linux.com
Phone: +1.619.631.5383
Skype: rudolfstreif
PGP: RSA 2048/2048 D6E7D28B

Linux Foundation Events Schedule:  events.linuxfoundation.org
Linux Foundation Training Schedule: training.linuxfoundation.org

--047d7b621e0c86a87e04d52cce70
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, of course with a space. Proportional fonts don&#39;t =
work that well with code. :)<div><br></div><div style>That&#39;s why I am a=
sking if anyone else found that to be a nuisance. Of course, for a BSP you =
have to set PREFERRED_VERSION. But for testing and working with different k=
ernel version I would find it more convenient if I had not to change PREFER=
RED_VERSION in the machine file or override it in local.conf.</div>
<div style><br></div><div style>It&#39;s also sort of an inconsistency. Typ=
ically, one would expect that you could run bitbake against a recipe by spe=
cifying the package name and version. Using -b with the recipe file name is=
 not an option since you would not get the bbappends.</div>
<div style><br></div><div style>Cheers,</div><div style>Rudi</div></div><di=
v class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Thu, Feb 7, 2=
013 at 5:39 PM, Bruce Ashfield <span dir=3D"ltr">&lt;<a href=3D"mailto:bruc=
e.ashfield@gmail.com" target=3D"_blank">bruce.ashfield@gmail.com</a>&gt;</s=
pan> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><br><div class=3D"gmail_ext=
ra"><br><br><div class=3D"gmail_quote"><div><div class=3D"h5">On Thu, Feb 7=
, 2013 at 8:22 PM, Rudolf Streif <span dir=3D"ltr">&lt;<a href=3D"mailto:ru=
dolf.streif@linux.com" target=3D"_blank">rudolf.streif@linux.com</a>&gt;</s=
pan> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">I apologize if that has bee=
n brought up before.<div><br></div><div>The linux-yocto kernel recipes incl=
ude the git tags into PV by explicitly setting:</div>

<div><br></div><div>PV =3D &quot;${LINUX_VERSION}+git${SRCPV}&quot;<br>
</div><div><br></div><div>This means that you cannot for example do</div><d=
iv><br></div><div>bitbake linux-yocto-3.2</div><div><br></div><div>anymore =
because PROVIDES does not contain linux-yocto-3.2 but only the rather cumbe=
rsome string linux-yocto-3.2+git${SRCPV}, with ${SRCPV} expanded of course.=
</div>


<div><br></div><div>The percent notation only works for</div><div><br></div=
><div>PREFERRED_VERSION_linux-yocto =3D &quot;3.2%&quot;</div><div><br></di=
v><div>but does not work for</div><div>
<br></div><div>bitbake linux-yocto-3.2%</div><div><br></div><div>That reall=
y only leaves you with setting PREFERRED_VERSION which is not that convenie=
nt if you just want to build a different kernel version.</div>
<div><br></div><div>I am not sure how others feel about that and maybe I am=
 missing something but it would be rather simple to add that back by settin=
g</div><div><br></div><div><div>PV =3D &quot;${LINUX_VERSION} ${LINUX_VERSI=
ON}+git${SRCPV}&quot;</div>

</div></div></blockquote><div><br></div></div></div><div>You mean with a sp=
ace in the version string ? I know that I don&#39;t want directories floati=
ng around</div><div>with spaces, since they cause no end of troubles. But m=
aybe it&#39;s just the font in gmail playing</div>

<div>tricks with my eyes.</div><div><br></div><div>Perhaps Richard has a su=
ggestion, but in 3+ years, this is the first time that this particular issu=
e</div><div>has come up. Most everyone is setting the PREFERRED_VERSION in =
their bsps, or local.conf=A0</div>

<div>and not using that particular mechanism of switching between kernels .=
. myself included, and I</div><div>probably build more versions of linux-yo=
cto than anyone you&#39;ll find :)</div><div><br></div>
<div>Don&#39;t get me wrong, I&#39;m not dead set against changing it, but =
we do need both the meta and</div><div>machine git hashes in the version to=
 uniquely identify the tree (and my no spaces comment!).</div>
<div>Maybe someone knows of a better way for command line switching of the =
version ?</div><div><br></div><div>Cheers,</div><div><br></div><div>Bruce</=
div><div><br></div><div>=A0</div><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">

<div dir=3D"ltr"><div><div>=A0</div></div></div></blockquote><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex"><div class=3D"im"><div dir=3D"ltr"><div><div>
</div><div><br></div><div>Well, kind of, you still would have to know the m=
inor version number.</div><div><br></div><div>Cheers,</div><div>Rudi</div><=
div><br></div></div></div>
<br></div>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><span class=3D"HOEnZb"><font color=3D"#888888"><br><=
br clear=3D"all"><div><br></div>-- <br>&quot;Thou shalt not follow the NULL=
 pointer, for chaos and madness await thee at its end&quot;
</font></span></div></div>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>--=A0<br><fo=
nt face=3D"arial, helvetica, sans-serif"><b>Rudolf J. Streif</b></font><div=
><font face=3D"arial, helvetica, sans-serif">Director of Embedded Solutions=
</font></div>
<div><font face=3D"arial, helvetica, sans-serif">The Linux Foundation</font=
></div><div><font face=3D"arial, helvetica, sans-serif"><br></font></div><d=
iv><a href=3D"mailto:rudolf.streif@linux.com" target=3D"_blank"><font face=
=3D"arial, helvetica, sans-serif">rudolf.streif@linux.com</font></a></div>
<div><font face=3D"arial, helvetica, sans-serif">Phone: +1.619.631.5383</fo=
nt></div><div><font face=3D"arial, helvetica, sans-serif">Skype: rudolfstre=
if</font></div><div><font face=3D"arial, helvetica, sans-serif">PGP: RSA 20=
48/2048 D6E7D28B</font></div>
<div><font face=3D"garamond, serif"><br></font></div><div><font face=3D"gar=
amond, serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,102=
);font-family:arial,sans-serif;font-size:13px"><span style=3D"border-collap=
se:collapse">Linux Foundation Events Schedule: =A0<a href=3D"http://events.=
linuxfoundation.org/" style=3D"color:rgb(64,100,128)" target=3D"_blank">eve=
nts.linuxfoundation.org</a><br>
Linux Foundation Training Schedule:=A0<a href=3D"http://training.linuxfound=
ation.org/" style=3D"color:rgb(64,100,128)" target=3D"_blank">training.linu=
xfoundation.org</a></span><br></span></font></div><div><font face=3D"garamo=
nd, serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,102);f=
ont-family:arial,sans-serif;font-size:13px"><br>
</span></font></div>
</div>

--047d7b621e0c86a87e04d52cce70--
