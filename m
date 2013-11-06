Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f175.google.com (mail-ie0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16952E017C8
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2013 06:46:36 -0800 (PST)
Received: by mail-ie0-f175.google.com with SMTP id aq17so17132067iec.20
	for <yocto@yoctoproject.org>; Wed, 06 Nov 2013 06:46:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=DGJ/RXapazmdoRgRPEH70K++6sjxJBLC56Ag1QkR5AI=;
	b=eQlON22jNWbO6AyLICclkKwVBSH+hJo9J6sGQnaKf5zZvx3PMhbkWBbl+0AN/D/bUv
	qw7Tt0phG8PoqeO/TvtQbtJRjBXl8b9bcxRsbBZ1MCPYO0TKz3rM3tujTgJisqy+ONYH
	u/AzNVt2xYYosWp0W2ZYtAJNhUE5FDPPhpgUyjS5G3h1JivVyqn703r2LJj9M6qYznF7
	NgSiYvPOx+jcqHEBsYfE+HmGe3VztwKFVjAlF8bgmQilksdiqX6QwdeMqWrXQ/vB/7Yb
	6s7P+NpLiu8pv39/iBb5hvwD9eOhpaRNCtjiEvg8wRutRgIdQGuU8fM/pCCfz6YIq1yr
	9ghA==
MIME-Version: 1.0
X-Received: by 10.42.202.145 with SMTP id fe17mr143524icb.92.1383749195794;
	Wed, 06 Nov 2013 06:46:35 -0800 (PST)
Received: by 10.50.79.167 with HTTP; Wed, 6 Nov 2013 06:46:35 -0800 (PST)
In-Reply-To: <17797116383D4341B029FDF34C22BF6A6C4D106C98@GUREXMB01.ASIAN.AD.ARICENT.COM>
References: <17797116383D4341B029FDF34C22BF6A6C4D106C98@GUREXMB01.ASIAN.AD.ARICENT.COM>
Date: Wed, 6 Nov 2013 06:46:35 -0800
Message-ID: <CAMKF1sobjAsKwF55Rt2DpVdXvFrisEFNMmsLW-K75rHVZgP68g@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Rohit2 Jindal <rohit2.jindal@aricent.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Issue in toolchain compilation for mips platform
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
X-List-Received-Date: Wed, 06 Nov 2013 14:46:39 -0000
Content-Type: multipart/alternative; boundary=20cf301af979467c6e04ea833771

--20cf301af979467c6e04ea833771
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wednesday, November 6, 2013, Rohit2 Jindal wrote:

>  Humble reminder!!!
>
>
>
> *From:* Rohit2 Jindal
> *Sent:* Wednesday, October 30, 2013 2:45 PM
> *To:* 'Paul Eggleton'; 'Khem Raj'
> *Cc:* yocto@yoctoproject.org <javascript:_e({}, 'cvml',
> 'yocto@yoctoproject.org');>
> *Subject:* Issue in toolchain compilation for mips platform
>
>
>
> Hi,
>
>
>
> I am trying to compile my own toolchain using Yocto Platform. I wrote my
> own recipes for the same bypassing the existing toolchain compilation
> recipes. I build environment ready for routerstationpro tune32 and starte=
d
> compiling my own recipes there .
>
>
>
>     Version information: GCC Version 4.6.3, GLIBC Version (2.13), Binutil=
s
> Version (2.22), Newlib Version (1.20)
>
>
>
>
>
> Observations in tune32 , I am able to create binutils for mips but when I
> try to compile gcc-4.6.3 for the gcc compiler for my board , it fails in
> between giving error
>
> =E2=80=9Cconfigure: error: cannot compute suffix of object files: cannot
> compile=E2=80=9D.  Attached error logs  for compilation and config.log is=
 attached
> herewith.
>

You need to show config log for libgcc
And I would like to understand why are you needing to replace toolchain



> Please help me out in the issue I am facing .
>
>
>
> Thanks in advance
>
>
>
> Regards,
>
> Rohit Jindal
>
>
>
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
> Please refer to http://www.aricent.com/legal/email_disclaimer.html
> for important disclosures regarding this electronic communication.
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
>

--20cf301af979467c6e04ea833771
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<br><br>On Wednesday, November 6, 2013, Rohit2 Jindal  wrote:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d">Humble reminder!!!<u><=
/u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<div>
<div style=3D"border:none;border-top:solid #b5c4df 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Rohit2 J=
indal
<br>
<b>Sent:</b> Wednesday, October 30, 2013 2:45 PM<br>
<b>To:</b> &#39;Paul Eggleton&#39;; &#39;Khem Raj&#39;<br>
<b>Cc:</b> <a href=3D"javascript:_e({}, &#39;cvml&#39;, &#39;yocto@yoctopro=
ject.org&#39;);" target=3D"_blank">yocto@yoctoproject.org</a><br>
<b>Subject:</b> Issue in toolchain compilation for mips platform<u></u><u><=
/u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I am trying to compile my own toolchain using Yocto =
Platform. I wrote my own recipes for the same bypassing the existing toolch=
ain compilation recipes. I build environment ready for routerstationpro tun=
e32 and started compiling my own recipes
 there .=C2=A0 <u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:#c00000">=C2=A0=C2=A0=C2=A0 Ver=
sion information: GCC Version 4.6.3, GLIBC Version (2.13), Binutils Version=
 (2.22), Newlib Version (1.20)<u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Observations in tune32 , I am able to create binutil=
s for mips but when I try to compile gcc-4.6.3 for the gcc compiler for my =
board , it fails in between giving error<u></u><u></u></p>
<p class=3D"MsoNormal">=E2=80=9Cconfigure: error: cannot compute suffix of =
object files: cannot compile=E2=80=9D.=C2=A0 Attached error logs =C2=A0for =
compilation and config.log is attached herewith.<u></u><u></u></p></div></d=
iv></blockquote><div><br>
</div><div>You need to show config log for libgcc</div><div>And I would lik=
e to understand why are you needing to replace toolchain</div><div><br></di=
v><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">
<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple"><div>
<p class=3D"MsoNormal">Please help me out in the issue I am facing .<u></u>=
<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks in advance<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Regards,<u></u><u></u></p>
<p class=3D"MsoNormal">Rohit Jindal<u></u><u></u></p>
</div>
<br>
<font face=3D"Arial" color=3D"Gray"><br>
<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>
Please refer to <a href=3D"http://www.aricent.com/legal/email_disclaimer.ht=
ml" target=3D"_blank">http://www.aricent.com/legal/email_disclaimer.html</a=
><br>
for important disclosures regarding this electronic communication.<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>
</font>
</div>

</blockquote>

--20cf301af979467c6e04ea833771--
