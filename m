Return-Path: <tiagoprn@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id EC2234C80287
	for <yocto@yoctoproject.org>; Tue,  2 Nov 2010 08:20:37 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by eyz10 with SMTP id 10so2050840eyz.35
	for <yocto@yoctoproject.org>; Tue, 02 Nov 2010 06:20:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type;
	bh=WAOvTDfXkiNfl9qqFnUmzROHkiO6riaRkwp8wSoRWKM=;
	b=mNDFvL0FcV5xv2I5sFONNcjnvCTA9G4hPwKwNg3I285C39dPknVrx/klMjjL8QuQnf
	r2NKPO76DzEKEWRqCm7pId/+SMvltqfLyldLSYqfnlXiAYUZipzkewaqV1183mHDYXp/
	ga9XxDvUySdaYMbhNQKsHa/RB36ymQssJmkiM=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=dTAYyZKI5zRKIGoi//+7npjec2rNVh9kZ53gsNbRvoFxI571H7zG5kNNVq4HzDPM5C
	Zye6ae0LNDr/xMSzlyzUk2jTIRO6QmDEfFNbxpRW+iZjj45u+Ya9PMxD0xdoOMzQzTAG
	DHc+dac8Di6jX/HAS20VUCw1OiTfTQLN2gnmo=
MIME-Version: 1.0
Received: by 10.216.53.4 with SMTP id f4mr1051063wec.4.1288704036344; Tue, 02
	Nov 2010 06:20:36 -0700 (PDT)
Received: by 10.216.183.66 with HTTP; Tue, 2 Nov 2010 06:20:36 -0700 (PDT)
In-Reply-To: <4CCE2FD8.7010006@windriver.com>
References: <AANLkTi=zOCosKwknHK4nN3dps6hmv4EhnY3zYU6w5Hqp@mail.gmail.com>
	<1288455628.13568.13.camel@elmorro>
	<4CCE2FD8.7010006@windriver.com>
Date: Tue, 2 Nov 2010 11:20:36 -0200
Message-ID: <AANLkTinTjCFQXQ9OJM=r+s6MWduMe0jG25d9=jHiWqbS@mail.gmail.com>
From: tiagoprn <tiagoprn@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: yocto tools on a nokia n800
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 02 Nov 2010 13:20:38 -0000
Content-Type: multipart/alternative; boundary=0016e6da86624e9410049411ca96

--0016e6da86624e9410049411ca96
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello again!

I think nokia n8xx could be a nice example of what yocto/poky are capable
of.

Especially now that Nokia has abandoned this devices, it would be cool to
have a new OS being supported on it.

I'm new to poky, so, if you could make it easier to build the toochain to
build it to a n800, me and many other n8xx owners would be quite happy.

Regards,


2010/11/1 Bruce Ashfield <bruce.ashfield@windriver.com>

> On 10-10-30 12:20 PM, Tom Zanussi wrote:
>
>> On Fri, 2010-10-29 at 04:50 -0700, tiagoprn wrote:
>>
>>>  Hello everyone!
>>>
>>>  I have a question. I have just read about the yocto/poky projects and
>>> here I am with a hope. :)
>>>
>>>  I have a nokia n800 (an internet tablet abandoned by Nokia just about
>>> 2 years ago).
>>>
>>>  With poky/yocto project tools, is it possible to install a linux
>>> toolchain with X and the touchscreen/wireless components working, for
>>> an example, in a SD Card and boot my device into it?
>>>
>>>  I'm anxious for that.
>>>
>>>
>> Hi,
>>
>> It looks like yocto already has support for the n800 - there's this
>> entry in local.conf:
>>
>> # Other supported machines
>> .
>> .
>>
>>
>>
>>
>>
>>
>> #MACHINE ?=3D "nokia800"
>>
>>
>> and see this section in README.hardware:
>>
>> 'Nokia 770/N800/N810 Internet Tablets (nokia770 and nokia800)'
>>
>> which says:
>>
>> "The nokia800 images and kernel will run on both the N800 and N810"
>>
>> Sounds like what you're looking for...
>>
>
> The rest of the config has been moved to meta-extras, and
> we'd need to do a bit of kernel work, but it has worked in the past, and
> could work again in the future.
>
> In other words 'I agree'.
>
> Cheers,
>
> Bruce
>
>
>> Tom
>>
>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.pokylinux.org/listinfo/yocto
>>
>
>


--=20
***
TIAGOPRN
*Desenvolvedor Web, Linux e Windows
*(Django, Python, Delphi, Lazarus, MySQL, SQLite)
E-mail: tiagoprn@gmail.com
Blog: http://tgplima.net84.net
LinkedIn (profile p=C3=BAblico): http://br.linkedin.com/in/tiagoparanhoslim=
a
twitter: https://twitter.com/tiagoprn
identi.ca: http://identi.ca/tiagoprn

--0016e6da86624e9410049411ca96
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello again!<br><br>I think nokia n8xx could be a nice example of what yoct=
o/poky are capable of.<br><br>Especially now that Nokia has abandoned this =
devices, it would be cool to have a new OS being supported on it. <br><br>
I&#39;m new to poky, so, if you could make it easier to build the toochain =
to build it to a n800, me and many other n8xx owners would be quite happy. =
<br><br>Regards,<br><br><br><div class=3D"gmail_quote">2010/11/1 Bruce Ashf=
ield <span dir=3D"ltr">&lt;<a href=3D"mailto:bruce.ashfield@windriver.com">=
bruce.ashfield@windriver.com</a>&gt;</span><br>
<blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; borde=
r-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;"><div><div></div><=
div class=3D"h5">On 10-10-30 12:20 PM, Tom Zanussi wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; borde=
r-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">
On Fri, 2010-10-29 at 04:50 -0700, tiagoprn wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; borde=
r-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">
 =C2=A0Hello everyone!<br>
<br>
 =C2=A0I have a question. I have just read about the yocto/poky projects an=
d<br>
here I am with a hope. :)<br>
<br>
 =C2=A0I have a nokia n800 (an internet tablet abandoned by Nokia just abou=
t<br>
2 years ago).<br>
<br>
 =C2=A0With poky/yocto project tools, is it possible to install a linux<br>
toolchain with X and the touchscreen/wireless components working, for<br>
an example, in a SD Card and boot my device into it?<br>
<br>
 =C2=A0I&#39;m anxious for that.<br>
<br>
</blockquote>
<br>
Hi,<br>
<br>
It looks like yocto already has support for the n800 - there&#39;s this<br>
entry in local.conf:<br>
<br>
# Other supported machines<br>
.<br>
.<br>
<br>
<br>
<br>
<br>
<br>
<br>
#MACHINE ?=3D &quot;nokia800&quot;<br>
<br>
<br>
and see this section in README.hardware:<br>
<br>
&#39;Nokia 770/N800/N810 Internet Tablets (nokia770 and nokia800)&#39;<br>
<br>
which says:<br>
<br>
&quot;The nokia800 images and kernel will run on both the N800 and N810&quo=
t;<br>
<br>
Sounds like what you&#39;re looking for...<br>
</blockquote>
<br></div></div>
The rest of the config has been moved to meta-extras, and<br>
we&#39;d need to do a bit of kernel work, but it has worked in the past, an=
d could work again in the future.<br>
<br>
In other words &#39;I agree&#39;.<br>
<br>
Cheers,<br>
<br>
Bruce<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; borde=
r-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">
<br>
Tom<br>
<br>
<br>
<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.pokylinux.org/listinfo/yocto" target=3D"_blank">ht=
tps://lists.pokylinux.org/listinfo/yocto</a><br>
</blockquote>
<br>
</blockquote></div><br><br clear=3D"all"><br>-- <br>***<br>TIAGOPRN<br><b>D=
esenvolvedor Web, Linux e Windows<br></b>(Django, Python, Delphi, Lazarus, =
MySQL, SQLite)<br>E-mail: <a href=3D"mailto:tiagoprn@gmail.com" target=3D"_=
blank">tiagoprn@gmail.com</a><br>
Blog: <a href=3D"http://tgplima.net84.net" target=3D"_blank">http://tgplima=
.net84.net</a><br>LinkedIn (profile p=C3=BAblico): <a href=3D"http://br.lin=
kedin.com/in/tiagoparanhoslima" target=3D"_blank">http://br.linkedin.com/in=
/tiagoparanhoslima</a><br>
twitter: <a href=3D"https://twitter.com/tiagoprn" target=3D"_blank">https:/=
/twitter.com/tiagoprn</a><div><a href=3D"http://identi.ca" target=3D"_blank=
">identi.ca</a>:=C2=A0<a href=3D"http://identi.ca/tiagoprn" target=3D"_blan=
k">http://identi.ca/tiagoprn</a><br>
<br><br><br></div><br>

--0016e6da86624e9410049411ca96--
