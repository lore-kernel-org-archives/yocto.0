Return-Path: <djszapi@archlinux.us>
Received: from mail-pd0-f173.google.com (mail-pd0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5262E013A2
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 23:02:58 -0700 (PDT)
Received: by mail-pd0-f173.google.com with SMTP id bv13so1284797pdb.4
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 23:02:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=ArCL2MMZg4xu/IYnm1NRLXVamn0rxaZGCcWmKV86uOU=;
	b=Bs+ym9Sdqe5+KgH4k4NTZP+SkTAkTAkliw9j0S3JURaDtTVaQk8D7Qk3zRwCp0Ehe0
	PmgAmZTVg5HQP0Zo1HUz4qcixS/j6oNkH8emygSkwQoqlAtKpOs+2Vdl0Wt8aFwiIrat
	3QuG4harJkSthm+edeE2kxQTRe9UtToW0AsNKccqxdiqPgBS53WUPU9SnmRwOfkCXCSa
	8kegx66fd8//dut1mW7wT+Gd6XBlTWQX0pDV+Gn1Mh9GY+0ENV+99YZswWl9yB/JxJsU
	ze+mp1T9Nr6R6XdIepr4furB/42HkepkiO2lyuQQceQdtr+TI8K9ALnlZMmWsqO6GH0x
	DMHg==
MIME-Version: 1.0
X-Received: by 10.66.154.1 with SMTP id vk1mr39577682pab.85.1374732177849;
	Wed, 24 Jul 2013 23:02:57 -0700 (PDT)
Sender: djszapi@archlinux.us
Received: by 10.70.37.237 with HTTP; Wed, 24 Jul 2013 23:02:57 -0700 (PDT)
In-Reply-To: <CAOMwXhP8p2=qK2jC+cATw5LuMjydL2YT3PGk=qQUNgJuLOR52w@mail.gmail.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F06185@ORSMSX106.amr.corp.intel.com>
	<B848B5A5-9108-4509-81BA-5FE014BB413C@gmail.com>
	<CAOMwXhP8p2=qK2jC+cATw5LuMjydL2YT3PGk=qQUNgJuLOR52w@mail.gmail.com>
Date: Thu, 25 Jul 2013 07:02:57 +0100
X-Google-Sender-Auth: wzreQZl9gzYrUV4Nlq8npU18MV8
Message-ID: <CAOMwXhNLwA5Rod1uz6KTu4Em55ekvORK4_OfE-LYZRvCeFitTg@mail.gmail.com>
From: Laszlo Papp <lpapp@kde.org>
To: Khem Raj <raj.khem@gmail.com>
X-Gm-Message-State: ALoCoQlPXiIgvinxzRxSIMXFUhehtX9xNyx/I8PYcNw1AYPfp9alHnwZMwI52iXam/2FPc+pONNy
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: [OE-core] Doc: external toolchain
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
X-List-Received-Date: Thu, 25 Jul 2013 06:02:58 -0000
Content-Type: multipart/alternative; boundary=047d7b6d908a1f6cbd04e24fc798

--047d7b6d908a1f6cbd04e24fc798
Content-Type: text/plain; charset=ISO-8859-1

I also filed a bugreport with regards to this:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=4901


On Thu, Jul 25, 2013 at 6:57 AM, Laszlo Papp <lpapp@kde.org> wrote:

> You seem to have missed this email:
> https://lists.yoctoproject.org/pipermail/yocto/2013-July/017416.html
>
>
> On Thu, Jul 25, 2013 at 6:47 AM, Khem Raj <raj.khem@gmail.com> wrote:
>
>>
>> On Jul 24, 2013, at 12:47 AM, "Rifenbark, Scott M" <
>> scott.m.rifenbark@intel.com> wrote:
>>
>> I am facing this issue, any clue?****
>> ** **
>> ERROR: Failed to obtain CodeSourcery toolchain version: Execution of
>> '/usr/bin/i686-pc-linux-gnu-gcc -v' failed: command not found****
>> ERROR: Failed to obtain CodeSourcery toolchain version: Execution of
>> '/usr/bin/i686-pc-linux-gnu-gcc -v' failed: command not found****
>>  ** **
>> This is what I have in my build/conf/local.conf:****
>> ** **
>> ...****
>> TCMODE = "external-sourcery"****
>> EXTERNAL_TOOLCHAIN = "/usr"****
>> TARGET_PREFIX = "arm-none-linux-gnueabi-"****
>>  ...****
>>
>>
>> what machine are you building for? it seems you are building for a x86
>> target and expect arm cross toolchain to build it aint gonna work.
>> chose a proper arm'ish machine and it should work.
>>
>
>

--047d7b6d908a1f6cbd04e24fc798
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I also filed a bugreport with regards to this:=A0<a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4901">https://bugzi=
lla.yoctoproject.org/show_bug.cgi?id=3D4901</a></div><div class=3D"gmail_ex=
tra"><br><br>
<div class=3D"gmail_quote">On Thu, Jul 25, 2013 at 6:57 AM, Laszlo Papp <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:lpapp@kde.org" target=3D"_blank">lpapp=
@kde.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div dir=3D"ltr">You seem to have missed this email:=A0<a href=3D"https://l=
ists.yoctoproject.org/pipermail/yocto/2013-July/017416.html" target=3D"_bla=
nk">https://lists.yoctoproject.org/pipermail/yocto/2013-July/017416.html</a=
></div>
<div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Thu, Jul 25, 2013 at 6:47 AM, Khem Ra=
j <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_bl=
ank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">

<div style=3D"word-wrap:break-word"><div><br><div><div>On Jul 24, 2013, at =
12:47 AM, &quot;Rifenbark, Scott M&quot; &lt;<a href=3D"mailto:scott.m.rife=
nbark@intel.com" target=3D"_blank">scott.m.rifenbark@intel.com</a>&gt; wrot=
e:</div>

<br><blockquote type=3D"cite"><div style=3D"font-family:Helvetica;font-size=
:medium;font-style:normal;font-variant:normal;font-weight:normal;letter-spa=
cing:normal;line-height:normal;text-align:-webkit-auto;text-indent:0px;text=
-transform:none;white-space:normal;word-spacing:0px">

<div style=3D"margin:0in 0in 0.0001pt;font-size:12pt;font-family:&#39;Times=
 New Roman&#39;,serif">I am facing this issue, any clue?<u></u><u></u></div=
></div><div style=3D"font-family:Helvetica;font-size:medium;font-style:norm=
al;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height=
:normal;text-align:-webkit-auto;text-indent:0px;text-transform:none;white-s=
pace:normal;word-spacing:0px">

<div style=3D"margin:0in 0in 0.0001pt;font-size:12pt;font-family:&#39;Times=
 New Roman&#39;,serif"><u></u>=A0<u></u></div></div><div style=3D"font-fami=
ly:Helvetica;font-size:medium;font-style:normal;font-variant:normal;font-we=
ight:normal;letter-spacing:normal;line-height:normal;text-align:-webkit-aut=
o;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px">

<div><div style=3D"margin:0in 0in 0.0001pt;font-size:12pt;font-family:&#39;=
Times New Roman&#39;,serif">ERROR: Failed to obtain CodeSourcery toolchain =
version: Execution of &#39;/usr/bin/i686-pc-linux-gnu-gcc -v&#39; failed: c=
ommand not found<u></u><u></u></div>

</div><div><div style=3D"margin:0in 0in 0.0001pt;font-size:12pt;font-family=
:&#39;Times New Roman&#39;,serif">ERROR: Failed to obtain CodeSourcery tool=
chain version: Execution of &#39;/usr/bin/i686-pc-linux-gnu-gcc -v&#39; fai=
led: command not found<u></u><u></u></div>

</div></div><div style=3D"font-family:Helvetica;font-size:medium;font-style=
:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-h=
eight:normal;text-align:-webkit-auto;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px">

<div style=3D"margin:0in 0in 0.0001pt;font-size:12pt;font-family:&#39;Times=
 New Roman&#39;,serif"><u></u>=A0<u></u></div></div><div style=3D"font-fami=
ly:Helvetica;font-size:medium;font-style:normal;font-variant:normal;font-we=
ight:normal;letter-spacing:normal;line-height:normal;text-align:-webkit-aut=
o;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px">

<div style=3D"margin:0in 0in 0.0001pt;font-size:12pt;font-family:&#39;Times=
 New Roman&#39;,serif">This is what I have in my build/conf/local.conf:<u><=
/u><u></u></div></div><div style=3D"font-family:Helvetica;font-size:medium;=
font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:nor=
mal;line-height:normal;text-align:-webkit-auto;text-indent:0px;text-transfo=
rm:none;white-space:normal;word-spacing:0px">

<div style=3D"margin:0in 0in 0.0001pt;font-size:12pt;font-family:&#39;Times=
 New Roman&#39;,serif"><u></u>=A0<u></u></div></div><div style=3D"font-fami=
ly:Helvetica;font-size:medium;font-style:normal;font-variant:normal;font-we=
ight:normal;letter-spacing:normal;line-height:normal;text-align:-webkit-aut=
o;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px">

<div style=3D"margin:0in 0in 0.0001pt;font-size:12pt;font-family:&#39;Times=
 New Roman&#39;,serif">...<u></u><u></u></div></div><div style=3D"font-fami=
ly:Helvetica;font-size:medium;font-style:normal;font-variant:normal;font-we=
ight:normal;letter-spacing:normal;line-height:normal;text-align:-webkit-aut=
o;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px">

<div><div style=3D"margin:0in 0in 0.0001pt;font-size:12pt;font-family:&#39;=
Times New Roman&#39;,serif">TCMODE =3D &quot;external-sourcery&quot;<u></u>=
<u></u></div></div><div><div style=3D"margin:0in 0in 0.0001pt;font-size:12p=
t;font-family:&#39;Times New Roman&#39;,serif">

EXTERNAL_TOOLCHAIN =3D &quot;/usr&quot;<u></u><u></u></div></div><div><div =
style=3D"margin:0in 0in 0.0001pt;font-size:12pt;font-family:&#39;Times New =
Roman&#39;,serif">TARGET_PREFIX =3D &quot;arm-none-linux-gnueabi-&quot;<u><=
/u><u></u></div>

</div></div><div style=3D"font-family:Helvetica;font-size:medium;font-style=
:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-h=
eight:normal;text-align:-webkit-auto;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px">

<div style=3D"margin:0in 0in 0.0001pt;font-size:12pt;font-family:&#39;Times=
 New Roman&#39;,serif">...<u></u><u></u></div></div><div style=3D"font-fami=
ly:Helvetica;font-size:medium;font-style:normal;font-variant:normal;font-we=
ight:normal;letter-spacing:normal;line-height:normal;text-align:-webkit-aut=
o;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px">

<br></div></blockquote></div><br></div><div>what machine are you building f=
or? it seems you are building for a x86 target and expect arm cross toolcha=
in to build it aint gonna work.</div><div>chose a proper arm&#39;ish machin=
e and it should work.</div>

</div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--047d7b6d908a1f6cbd04e24fc798--
