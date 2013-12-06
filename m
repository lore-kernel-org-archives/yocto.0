Return-Path: <bruce.kumita@gmail.com>
Received: from mail-qa0-f51.google.com (mail-qa0-f51.google.com
	[209.85.216.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C3E3E00799
	for <yocto@yoctoproject.org>; Fri,  6 Dec 2013 06:56:52 -0800 (PST)
Received: by mail-qa0-f51.google.com with SMTP id o15so611537qap.17
	for <yocto@yoctoproject.org>; Fri, 06 Dec 2013 06:56:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=amzELm0zg/IGft4IB6XeoVlBr4ER1KN9doNAxfGXfTo=;
	b=CjZ2UBLQwL59cB6jVQGoG9VR8//OZM5qhjrkmiEy5ivZSKUctpuoFRwhv98wv6LtNP
	s3hxabjQ9kYqc47StVp6tvAlUjND97Ry63X3dBjddlWaeH0XT4KDnVoX2bavSRfbk+mX
	+sBxzZQGxIVcS1pdrVSfJtn7fcBgVJA/zp7LdGWavKU5sHGsMIjEMACcL+qNGBHWvAFo
	vuaZbFI/tX64OaZm70as2I+/vJUlwS7+x2Klkrc13CWwllh6tA964FZC8dZlXP1idgkI
	f4H+pYyjpORu7MOCF2oSlMzgMA6omBXh76VgFO5c9s244BHExBfgbkiKjEMUjFZbeEdS
	O7Vg==
MIME-Version: 1.0
X-Received: by 10.224.136.10 with SMTP id p10mr7387371qat.37.1386341811911;
	Fri, 06 Dec 2013 06:56:51 -0800 (PST)
Received: by 10.229.119.130 with HTTP; Fri, 6 Dec 2013 06:56:51 -0800 (PST)
In-Reply-To: <CALaXJ9=zT7NPu_Vs3+QH7MDkWiM-TLhSLo5fQPFcoi8jFQav0Q@mail.gmail.com>
References: <CALaXJ9=ON4Ekrqt3OixGOvpKhcrVpaNMP3OwCvssvmHQFwUTUg@mail.gmail.com>
	<CABcZANkNgZQJ0OvORuGuV4_6oGys4Qv4artTsVMfR34WxRc3ZA@mail.gmail.com>
	<CALaXJ9=zT7NPu_Vs3+QH7MDkWiM-TLhSLo5fQPFcoi8jFQav0Q@mail.gmail.com>
Date: Fri, 6 Dec 2013 22:56:51 +0800
Message-ID: <CALaXJ9kfb3fV_CoyfU4fN=DZBsgcj8x_7Ei_oP=POk-pzV--Dw@mail.gmail.com>
From: Kumita Bruce <bruce.kumita@gmail.com>
To: Chris Larson <clarson@kergoth.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: The difference of & and | in LICENSE definition
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
X-List-Received-Date: Fri, 06 Dec 2013 14:56:53 -0000
Content-Type: multipart/alternative; boundary=001a11c2a8b03c823a04ecdedb5e

--001a11c2a8b03c823a04ecdedb5e
Content-Type: text/plain; charset=ISO-8859-1

I understand, thanks a lot.


Cheers,

Bruce


On Fri, Dec 6, 2013 at 10:48 PM, Kumita Bruce <bruce.kumita@gmail.com>wrote:

> So for |, user only needs to comply with either one, for &, user needs to
> follow all, right?
>
>
> Cheers,
>
> Bruce
>
>
> On Fri, Dec 6, 2013 at 10:37 PM, Chris Larson <clarson@kergoth.com> wrote:
>
>> On Fri, Dec 6, 2013 at 7:23 AM, Kumita Bruce <bruce.kumita@gmail.com>wrote:
>>
>>> I don't know whether this is the right place to ask the question. Hope
>>> to get some help from here.
>>>
>>> I see below two types definition of LICENSE in Yocto recipe:
>>> LICENSE = "license-1 & license-2"
>>> LICENSE = "license-1 | license-2"
>>>
>>> Can somebody help to give some explanation for the difference of those
>>> two formats? And how to determinate which format should be used for a
>>> package.
>>>
>>
>> & is AND.
>> | is OR.
>>
>> Some software can be licensed under this OR that license, others have
>> components which are under a variety of different licenses (AND).
>> --
>> Christopher Larson
>> clarson at kergoth dot com
>> Founder - BitBake, OpenEmbedded, OpenZaurus
>> Maintainer - Tslib
>> Senior Software Engineer, Mentor Graphics
>>
>
>

--001a11c2a8b03c823a04ecdedb5e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:courier =
new,monospace;color:rgb(0,0,0)">I understand, thanks a lot. <br></div><div =
class=3D"gmail_extra"><br clear=3D"all"><div><div dir=3D"ltr"><div><font fa=
ce=3D"courier new, monospace"><br>
</font></div><font face=3D"courier new, monospace">Cheers,=A0</font><div><f=
ont face=3D"courier new, monospace"><br></font></div><div><font face=3D"cou=
rier new, monospace">Bruce</font></div></div></div>
<br><br><div class=3D"gmail_quote">On Fri, Dec 6, 2013 at 10:48 PM, Kumita =
Bruce <span dir=3D"ltr">&lt;<a href=3D"mailto:bruce.kumita@gmail.com" targe=
t=3D"_blank">bruce.kumita@gmail.com</a>&gt;</span> wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">
<div dir=3D"ltr"><div style=3D"font-family:courier new,monospace">So for |,=
 user only needs to comply with either one, for &amp;, user needs to follow=
 all, right?<br></div><div class=3D"gmail_extra">
<br clear=3D"all"><div><div dir=3D"ltr"><div><font face=3D"courier new, mon=
ospace"><br></font></div><font face=3D"courier new, monospace">Cheers,=A0</=
font><span class=3D"HOEnZb"><font color=3D"#888888"><div><font face=3D"cour=
ier new, monospace"><br>
</font></div><div><font face=3D"courier new, monospace">Bruce</font></div>
</font></span></div></div><div><div class=3D"h5">
<br><br><div class=3D"gmail_quote">On Fri, Dec 6, 2013 at 10:37 PM, Chris L=
arson <span dir=3D"ltr">&lt;<a href=3D"mailto:clarson@kergoth.com" target=
=3D"_blank">clarson@kergoth.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">

<div dir=3D"ltr"><div class=3D"gmail_extra"><div><div>On Fri, Dec 6, 2013 a=
t 7:23 AM, Kumita Bruce <span dir=3D"ltr">&lt;<a href=3D"mailto:bruce.kumit=
a@gmail.com" target=3D"_blank">bruce.kumita@gmail.com</a>&gt;</span> wrote:=
<br>
<div class=3D"gmail_quote">

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div style=3D"font-family:courier new,monosp=
ace">I don&#39;t know whether this is the right place to ask the question. =
Hope to get some help from here. <br>




</div><div style=3D"font-family:courier new,monospace"><br></div><div style=
=3D"font-family:courier new,monospace">I see below two types definition of =
LICENSE in Yocto recipe: <br>
LICENSE =3D &quot;license-1 &amp; license-2&quot;<br>LICENSE =3D &quot;lice=
nse-1 | license-2&quot;<br></div><div style=3D"font-family:courier new,mono=
space"><br></div><div style=3D"font-family:courier new,monospace">


Can somebody help to give some explanation for the difference of those two =
formats? And how to determinate which format should be used for a package.=
=A0 <br></div></blockquote></div><br></div></div>&amp; is AND.</div><div cl=
ass=3D"gmail_extra">



| is OR.<br><br>Some software can be licensed under this OR that license, o=
thers have components which are under a variety of different licenses (AND)=
.<span><font color=3D"#888888"><br>-- <br>Christopher Larson<br>
clarson at kergoth dot com<br>Founder - BitBake, OpenEmbedded, OpenZaurus<b=
r>

Maintainer - Tslib<br>Senior Software Engineer, Mentor Graphics
</font></span></div></div>
</blockquote></div><br></div></div></div></div>
</blockquote></div><br></div></div>

--001a11c2a8b03c823a04ecdedb5e--
