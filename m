Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f53.google.com (mail-pb0-f53.google.com
	[209.85.160.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67488E01584
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 21:35:51 -0700 (PDT)
Received: by mail-pb0-f53.google.com with SMTP id up15so1590572pbc.40
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 21:35:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=zGKPVD9fXC+dBLorbMG8lr+oN3yZpSrY83Ii2LpnjQE=;
	b=SLbXnT/UZOofzh4OEdrtHQTz0VG/PR7lN1AEFPZ3/sAORVjedC13sNiQ1LUYIclex9
	VcO3mznqutvWIEZPdpT9w8IwrTpmgzWvYL8wyM0YrvtXXY9m+bigk+Osc+87+k1cZkTB
	5eacFP3K+S+0gRqm6JeCXMGZGj8htKm1c3pW2BjjB+Q8TmJwT/LMAHjDTRGvNO1WnvgX
	RacTulmQMkIw8kNO/HQZJ6L7JmufW+QXHQBov4Th6965V3JOeSX3JKlEbxMXT2TLRRYO
	R/RsxVhN6WSwCj00LhifvcsRS1iT4rsBRbAutyxqqaZ/dd3+YRppip08tmF8zTuyNu00
	VAig==
X-Received: by 10.68.203.161 with SMTP id kr1mr83764846pbc.192.1375331751660; 
	Wed, 31 Jul 2013 21:35:51 -0700 (PDT)
Received: from sa-nc-spg-213.static.jnpr.net (natint3.juniper.net.
	[66.129.224.36]) by mx.google.com with ESMTPSA id
	qh10sm1382938pbb.33.2013.07.31.21.35.49 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 31 Jul 2013 21:35:50 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <DD906C04-6DCD-420D-A07D-32D211571BA7@taser.com>
Date: Wed, 31 Jul 2013 21:35:49 -0700
Message-Id: <2C3DF530-8261-4914-9CFB-FAEEB78ED305@gmail.com>
References: <E94D6C02-CADD-4109-97AE-6979171970FA@taser.com>
	<CAJTo0LbpwbUwjRmytE-jiJ2OBihvQt5eUkQbZBpsork69jHg_w@mail.gmail.com>
	<CE1312C1-039E-4F91-BA03-163FDC9E4CD4@taser.com>
	<3822EF35-AD96-4F3A-B278-E08E5F79B8CE@gmail.com>
	<DD906C04-6DCD-420D-A07D-32D211571BA7@taser.com>
To: Brad Litterell <bradl@taser.com>
X-Mailer: Apple Mail (2.1508)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Trying to add new recipe - getting QA error I don't understand
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
X-List-Received-Date: Thu, 01 Aug 2013 04:35:54 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_D1CFC9F8-B9BC-4524-96B0-A74440DB25F7"

--Apple-Mail=_D1CFC9F8-B9BC-4524-96B0-A74440DB25F7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


On Jul 31, 2013, at 5:52 PM, Brad Litterell <bradl@taser.com> wrote:

> Hi,
>=20
> I tried=20
>=20
>> FILES_${PN} =3D+ "${libdir}/libuci.so"
>=20
> but under package-split, the .so file is still only listed in the -dev =
package.
>=20
> Is it possible that the lib*.so files are always forcibly removed from =
FILES_${PN}?

what is name of your recipe ?

>=20
> I was able to hack the CMakeList.txt file as follows.  If I set =
SOVERSION on the shared library the expected libuci.so.1 file appears =
with the libuci.so link which solves the problem.  I'm a little =
concerned I might have problems with other packages that I haven't =
ported yet that depend on UCI, but I will see.
>=20

thats intact correct way to fix it in view of OE's eyes.

>> may be you should file an enhancement bug for it in Yocto bugzilla
>=20
> I probably should have mentioned this earlier, but I'm using the 1.3 =
version of Yocto that's embedded in TI's Arago SDK.  Can I safely pull =
poky on top of that and see if it fixes the problem or might I have =
conflicts between Arago BSP layers and the 1.4 Poky recipes?

Doubt that

>=20
> Thanks,
> Brad
>=20
>=20
>=20
> On Jul 31, 2013, at 3:58 PM, Khem Raj <raj.khem@gmail.com> wrote:
>=20
>>=20
>> On Jul 31, 2013, at 3:39 PM, Brad Litterell <bradl@taser.com> wrote:
>>=20
>>>     =E2=94=94=E2=94=80=E2=94=80 lib
>>>         =E2=94=9C=E2=94=80=E2=94=80 libuci.a
>>>         =E2=94=94=E2=94=80=E2=94=80 libuci.so
>>>=20
>>> So, I added this:
>>>=20
>>> FILES_${PN} +=3D"/usr/lib/*"
>>=20
>> Try something like
>>=20
>> FILES_${PN} =3D+ "${libdir}/libuci.so"
>>=20
>>=20
>>>=20
>>> However that doesn't remove the message.  Did I do it right?
>>>=20
>>=20
>>=20
>> usually .so are symlinks which then go into -dev packages via the =
default package sieve engine
>> but I am thinking if we find out that file is not a symlink but a =
normal shared object then probably
>> we could stop shoving it into -dev package and instead put it into =
${PN}
>>=20
>> may be you should file an enhancement bug for it in Yocto bugzilla
>>=20
>=20


--Apple-Mail=_D1CFC9F8-B9BC-4524-96B0-A74440DB25F7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><br><div><div>On Jul 31, 2013, at 5:52 PM, Brad Litterell &lt;<a =
href=3D"mailto:bradl@taser.com">bradl@taser.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><blockquote type=3D"cite">

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">

<div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; ">
Hi,
<div><br>
</div>
<div>I tried&nbsp;</div>
<div><br>
</div>
<div>
<blockquote type=3D"cite">
<div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; ">
FILES_${PN} =3D+ "${libdir}/libuci.so"</div>
</blockquote>
<div>
<div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; ">
<br>
</div>
</div>
<div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; ">
but under package-split, the .so file is still only listed in the -dev =
package.</div>
</div>
<div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; ">
<br>
</div>
<div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; ">
Is it possible that the lib*.so files are always forcibly removed from =
FILES_${PN}?</div></div></blockquote><div><br></div><div>what is name of =
your recipe ?</div><div><br></div><blockquote type=3D"cite"><div =
style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; ">
<div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; ">
<br>
</div>
<div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; ">
I was able to hack the CMakeList.txt file as follows. &nbsp;If I set =
SOVERSION on the shared library the expected libuci.so.1 file appears =
with the libuci.so link which solves the problem. &nbsp;I'm a little =
concerned I might have problems with other packages that I
 haven't ported yet that depend on UCI, but I will see.</div>
<div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; ">
<br></div></div></blockquote><div><br></div><div>thats intact correct =
way to fix it in view of OE's eyes.</div><br><blockquote =
type=3D"cite"><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: =
space; -webkit-line-break: after-white-space; "><div style=3D"word-wrap: =
break-word; -webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space; ">
</div>
<div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; ">
<blockquote type=3D"cite">
<div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; ">
may be you should file an enhancement bug for it in Yocto bugzilla</div>
</blockquote>
<br>
</div>
<div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; ">
I probably should have mentioned this earlier, but I'm using the 1.3 =
version of Yocto that's embedded in TI's Arago SDK. &nbsp;Can I safely =
pull poky on top of that and see if it fixes the problem or might I have =
conflicts between Arago BSP layers and the 1.4 Poky
 recipes?</div></div></blockquote><div><br></div><div>Doubt =
that</div><br><blockquote type=3D"cite"><div style=3D"word-wrap: =
break-word; -webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space; ">
<div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; ">
<br>
</div>
<div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; ">
Thanks,</div>
<div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; ">
Brad</div>
<div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; ">
<br>
</div>
<div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; ">
<br>
</div>
<div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; ">
<br>
</div>
<div>
<div>On Jul 31, 2013, at 3:58 PM, Khem Raj &lt;<a =
href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; =
wrote:</div>
<br class=3D"Apple-interchange-newline">
<blockquote type=3D"cite">
<div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; ">
<br>
<div>
<div>On Jul 31, 2013, at 3:39 PM, Brad Litterell &lt;<a =
href=3D"mailto:bradl@taser.com">bradl@taser.com</a>&gt; wrote:</div>
<br class=3D"Apple-interchange-newline">
<blockquote type=3D"cite">
<pre style=3D"font-size: medium; font-style: normal; font-variant: =
normal; font-weight: normal; letter-spacing: normal; line-height: =
normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; =
text-transform: none; widows: 2; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
margin-top: 0px; margin-bottom: 0px; ">    =E2=94=94=E2=94=80=E2=94=80 =
lib
        =E2=94=9C=E2=94=80=E2=94=80 libuci.a
        =E2=94=94=E2=94=80=E2=94=80 libuci.so
</pre>
<div style=3D"font-family: Helvetica; font-size: medium; font-style: =
normal; font-variant: normal; font-weight: normal; letter-spacing: =
normal; line-height: normal; orphans: 2; text-align: -webkit-auto; =
text-indent: 0px; text-transform: none; white-space: normal; widows: 2; =
word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; ">
<br>
</div>
<div style=3D"font-family: Helvetica; font-size: medium; font-style: =
normal; font-variant: normal; font-weight: normal; letter-spacing: =
normal; line-height: normal; orphans: 2; text-align: -webkit-auto; =
text-indent: 0px; text-transform: none; white-space: normal; widows: 2; =
word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; ">
So,&nbsp;I added this:</div>
<pre style=3D"font-size: medium; font-style: normal; font-variant: =
normal; font-weight: normal; letter-spacing: normal; line-height: =
normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; =
text-transform: none; widows: 2; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
margin-top: 0px; margin-bottom: 0px; "><br></pre>
<pre style=3D"font-size: medium; font-style: normal; font-variant: =
normal; font-weight: normal; letter-spacing: normal; line-height: =
normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; =
text-transform: none; widows: 2; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
margin-top: 0px; margin-bottom: 0px; ">FILES_${PN}<span style=3D"color: =
rgb(192, 192, 192); "> </span>+=3D"/usr/lib/*"</pre>
</blockquote>
<div><br>
</div>
<div>Try something like</div>
<div><br>
</div>
<div>FILES_${PN} =3D+ "${libdir}/libuci.so"</div>
<div><br>
</div>
<div><br>
</div>
<blockquote type=3D"cite">
<div style=3D"font-family: Helvetica; font-size: medium; font-style: =
normal; font-variant: normal; font-weight: normal; letter-spacing: =
normal; line-height: normal; orphans: 2; text-align: -webkit-auto; =
text-indent: 0px; text-transform: none; white-space: normal; widows: 2; =
word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; ">
<br>
</div>
<div style=3D"font-family: Helvetica; font-size: medium; font-style: =
normal; font-variant: normal; font-weight: normal; letter-spacing: =
normal; line-height: normal; orphans: 2; text-align: -webkit-auto; =
text-indent: 0px; text-transform: none; white-space: normal; widows: 2; =
word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; ">
However that doesn't remove the message. &nbsp;Did I do it right?</div>
<br class=3D"Apple-interchange-newline">
</blockquote>
</div>
<br>
<div><br>
</div>
<div>usually .so are symlinks which then go into -dev packages via the =
default package sieve engine</div>
<div>but I am thinking if we find out that file is not a symlink but a =
normal shared object then probably</div>
<div>we could stop shoving it into -dev package and instead put it into =
${PN}</div>
<div><br>
</div>
<div>may be you should file an enhancement bug for it in Yocto =
bugzilla</div>
<div><br>
</div>
</div>
</blockquote>
</div>
<br>
</div>

</blockquote></div><br></body></html>=

--Apple-Mail=_D1CFC9F8-B9BC-4524-96B0-A74440DB25F7--
