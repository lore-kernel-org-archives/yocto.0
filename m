Return-Path: <andrei@gherzan.ro>
Received: from mail-vb0-f52.google.com (mail-vb0-f52.google.com
	[209.85.212.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EBD7E006D6
	for <yocto@yoctoproject.org>; Fri,  3 May 2013 02:31:53 -0700 (PDT)
Received: by mail-vb0-f52.google.com with SMTP id p13so1199510vbe.11
	for <yocto@yoctoproject.org>; Fri, 03 May 2013 02:31:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=eQvdAXkvwsNFjxvASNCOuZx7W9WE2V9PoVcoV3yIqgw=;
	b=Jtd0hXZRuIiABQX9uITqWHmAlMljxfQxBsV6TNA5r4nDv5KQlpv+FZtg6ufxZjPv3m
	6xPxjpmvC4FIZPbI7Y4tUtk5RuoBPaOqMy+Ymqas5bpgkLn5GxniDPYHNAALS/7TPIqI
	zrqXpezx3brY7bvyNV/oefz55Rw1Sh+Rlei2sJaZTcEa46NCVPLUTIL6wsUqDxats2a+
	JPV55K4x7rj+RGCadiYlYEbjDq3zh+Cy4Zd9nMaic/IVuADjfcxuK/oVXK8hm7QoROHX
	FaObdXzJjBZvPuMKPU0fIL+Y/5jlCVZj0Yk0Ty/qmzrYa5NMbnOsevxrOKRHA4enMRsQ
	4YOw==
X-Received: by 10.58.144.133 with SMTP id sm5mr3411432veb.23.1367573512538;
	Fri, 03 May 2013 02:31:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.49.5 with HTTP; Fri, 3 May 2013 02:31:31 -0700 (PDT)
X-Originating-IP: [5.14.143.208]
In-Reply-To: <20130314150211.1b6b68e4@e6520eb>
References: <1363122024-31419-1-git-send-email-eric@eukrea.com>
	<CAK18fxFeApWE8OVpf41AaEqpmLvsbdVu8srh5g6rh97Pb16hkg@mail.gmail.com>
	<20130314150211.1b6b68e4@e6520eb>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 3 May 2013 11:31:31 +0200
Message-ID: <CAK18fxEiZ0xE+1v0nBynm1Zti-6jukMJ9F9HzWt++7fovHwofw@mail.gmail.com>
To: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
X-Gm-Message-State: ALoCoQl8ivxk6zNSWKJWkGMrJvjF3rFHvs9cUBPE5WsZLKtlDMRy4Quq8TapBU0da62oQReO18Zx
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] use right license name for GPLv2
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
X-List-Received-Date: Fri, 03 May 2013 09:31:53 -0000
Content-Type: multipart/alternative; boundary=047d7b675b266b5de904dbcd051d

--047d7b675b266b5de904dbcd051d
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Merged to master.

Thanks a lot.


On Thu, Mar 14, 2013 at 3:02 PM, Eric B=E9nard <eric@eukrea.com> wrote:

> Hi Andrei,
>
> Le Wed, 13 Mar 2013 20:01:54 +0200,
> Andrei Gherzan <andrei@gherzan.ro> a =E9crit :
> > The SPDX name for GPLv2 (http://spdx.org/licenses/) is GPL-2.0 so I'd
> like
> > to use this.
> >
> OE-core is mainly using GPLv2 thus the change proposal to be consistant.
>
> > And one more thing, please add the recipe name in the commit log -
> > something like:
> > *rpi-first-run-wizard.bb: Use right license name for GPLv2*
> >
> 2 recipes were concerned in this patch so I din't put their names in
> the 1st line to keep it short.
>
> Eric
>



--=20
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--047d7b675b266b5de904dbcd051d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Merged to master.=A0<div><br></div><div>Thanks a lot.</div=
></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Thu=
, Mar 14, 2013 at 3:02 PM, Eric B=E9nard <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:eric@eukrea.com" target=3D"_blank">eric@eukrea.com</a>&gt;</span> wro=
te:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi Andrei,<br>
<br>
Le Wed, 13 Mar 2013 20:01:54 +0200,<br>
Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andrei@gherzan.ro</=
a>&gt; a =E9crit :<br>
<div class=3D"im">&gt; The SPDX name for GPLv2 (<a href=3D"http://spdx.org/=
licenses/" target=3D"_blank">http://spdx.org/licenses/</a>) is GPL-2.0 so I=
&#39;d like<br>
&gt; to use this.<br>
&gt;<br>
</div>OE-core is mainly using GPLv2 thus the change proposal to be consista=
nt.<br>
<div class=3D"im"><br>
&gt; And one more thing, please add the recipe name in the commit log -<br>
&gt; something like:<br>
</div>&gt; *<a href=3D"http://rpi-first-run-wizard.bb" target=3D"_blank">rp=
i-first-run-wizard.bb</a>: Use right license name for GPLv2*<br>
&gt;<br>
2 recipes were concerned in this patch so I din&#39;t put their names in<br=
>
the 1st line to keep it short.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Eric<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div dir=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"tex=
t-align:center"><div align=3D"left" style=3D"font-family:&#39;Times New Rom=
an&#39;;font-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div>

--047d7b675b266b5de904dbcd051d--
