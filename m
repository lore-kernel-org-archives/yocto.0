Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7AF3CE00510; Fri, 24 Feb 2017 11:42:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.194 listed in list.dnswl.org]
Received: from mail-qk0-f194.google.com (mail-qk0-f194.google.com
	[209.85.220.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3ABFBE00405
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2017 11:42:20 -0800 (PST)
Received: by mail-qk0-f194.google.com with SMTP id x71so4163876qkb.0
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2017 11:42:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=mp1nQKOlIoNmP68WUjo/R/nq3xSzTV0EReXLvovCcxY=;
	b=A8/7A967AWjm4srTOIBsWfppE1UtD68lgAAHJGYXNkuynoGUikDANDAYcfkMq1ZMTX
	mUNGGwxzwah0iRoQXkZOIMKVgXnXf2/RVe+cCclNApARG51oT6yjaAs5vk7haDuyw1+6
	AWCzY5kzXR7xRHKcfcgmkdKbHZGMIggprpLaNJ3NNpJj1cPnb2BJ7vHLZ10tnd+ViLYf
	OpoedvTK5UtJYLDXpKsRbRKG+WSqwvVxXnn6h7fI8luEizgHXH+MNGatTVsl3z3i42ZX
	L56RE4wYqFFpj8kEhiqI17gEKZqK3MwtakEqWgh3ZhnJh++/4SmvI8KyQnxwLvYPObSF
	Z+6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=mp1nQKOlIoNmP68WUjo/R/nq3xSzTV0EReXLvovCcxY=;
	b=rLuCi5XAeqksy2rLFx5FJTc0lv4YqtV6YBigP63AT7Nw6Y2y++giLa1J1hTBKPFvxZ
	mi+yhqhjNPgT/+1UdfPT/R2YXY03NBck/JZSM+rD+I65iVmb+Im7FazjJceIcU1QwOQM
	qWh/JFcnf7F2aMvavjfF3eft/xxNNqp84cCihjSP6XsmCxJ4LsO3VGB9trBY5dcwix2E
	3SDaQWTO5LJBV3uY+/v/ZKLHds4kxFpXe65kAs6PMWzZKAOW/jj7xyLJUVXSQG65moJL
	OAbo9GN9PoNQFfR6+YUFcAwnAHdZeioH2uwtt0JHGAUU4vncR5K1SjsZDVHT4GP+MT+h
	WtJg==
X-Gm-Message-State: AMke39maCHpa9yMucYt9Kp5JRyJiC3vFXOAmDQwXIOd7V0mgEjB3bhDuoUsHBNmdIc6IRJjoIZ/E7f82kkQWTQ==
X-Received: by 10.55.169.6 with SMTP id s6mr4278155qke.287.1487965339884; Fri,
	24 Feb 2017 11:42:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.132.68 with HTTP; Fri, 24 Feb 2017 11:42:19 -0800 (PST)
In-Reply-To: <cover.1485963487.git.bruce.ashfield@windriver.com>
References: <cover.1485963487.git.bruce.ashfield@windriver.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Fri, 24 Feb 2017 14:42:19 -0500
Message-ID: <CADkTA4Pv1OQ7QmQXnvt_CMKtSHzpqbmU_AB_Q4dTUWXWHxqc6A@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/2] poky/yocto-bsps: introduce 4.9 as the default kernel
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
X-List-Received-Date: Fri, 24 Feb 2017 19:42:23 -0000
Content-Type: multipart/alternative; boundary=94eb2c075ee085a3a705494bed92

--94eb2c075ee085a3a705494bed92
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 1, 2017 at 10:43 AM, Bruce Ashfield <
bruce.ashfield@windriver.com> wrote:

> Hi all,
>
> 4.9 has been soaking for a while now, and it is ready (as far as we know)
> to
> be the default for the qemu* machines.
>
> I've also introduced a 4.9 bbappend for the reference BSPs, but have not
> confirmed their boot myself. The reference maintainers can follow up with
> ack/nak and updates.
>
> I also have patches to remove 4.8, but I'm sitting on them until we know
> that switching to 4.9 as the default has gone smoothly.
>

I noticed that the 4.9 bbappend merged, but not the switch of the default
version
to 4.9.

Is there a bug or other issue lurking that I should look into ?

I'm prep'ing a 4.10 tree now, so this may be a moot point and we could jump
all
the way to 4.10 instead of the intermediate 4.9.

Bruce


>
> Bruce
>
> The following changes since commit 58245344b178052e11a0e8b97100e1
> 54b1f4d83c:
>
>   linux-yocto/4.9: yaffs2 fixes (2017-02-01 09:50:20 -0500)
>
> are available in the git repository at:
>
>   git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto
>
> Bruce Ashfield (2):
>   poky: make 4.9 the preferred qemu version
>   yocto-bsps: add 4.9 bbappend
>
>  meta-poky/conf/distro/poky.conf                    | 14 ++++++------
>  .../recipes-kernel/linux/linux-yocto_4.9.bbappend  | 26
> ++++++++++++++++++++++
>  2 files changed, 33 insertions(+), 7 deletions(-)
>  create mode 100644 meta-yocto-bsp/recipes-kernel/
> linux/linux-yocto_4.9.bbappend
>
> --
> 2.5.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--94eb2c075ee085a3a705494bed92
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Wed, Feb 1, 2017 at 10:43 AM, Bruce Ashfield <span dir=3D"ltr">&lt;<=
a href=3D"mailto:bruce.ashfield@windriver.com" target=3D"_blank">bruce.ashf=
ield@windriver.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
Hi all,<br>
<br>
4.9 has been soaking for a while now, and it is ready (as far as we know) t=
o<br>
be the default for the qemu* machines.<br>
<br>
I&#39;ve also introduced a 4.9 bbappend for the reference BSPs, but have no=
t<br>
confirmed their boot myself. The reference maintainers can follow up with<b=
r>
ack/nak and updates.<br>
<br>
I also have patches to remove 4.8, but I&#39;m sitting on them until we kno=
w<br>
that switching to 4.9 as the default has gone smoothly.<br></blockquote><di=
v><br></div><div>I noticed that the 4.9 bbappend merged, but not the switch=
 of the default version</div><div>to 4.9.</div><div><br></div><div>Is there=
 a bug or other issue lurking that I should look into ?</div><div><br></div=
><div>I&#39;m prep&#39;ing a 4.10 tree now, so this may be a moot point and=
 we could jump all</div><div>the way to 4.10 instead of the intermediate 4.=
9.</div><div><br></div><div>Bruce</div><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">
<br>
Bruce<br>
<br>
The following changes since commit 58245344b178052e11a0e8b97100e1<wbr>54b1f=
4d83c:<br>
<br>
=C2=A0 linux-yocto/4.9: yaffs2 fixes (2017-02-01 09:50:20 -0500)<br>
<br>
are available in the git repository at:<br>
<br>
=C2=A0 git://<a href=3D"http://git.pokylinux.org/poky-contrib" rel=3D"noref=
errer" target=3D"_blank">git.pokylinux.org/poky-<wbr>contrib</a> zedd/kerne=
l-yocto<br>
=C2=A0 <a href=3D"http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dz=
edd/kernel-yocto" rel=3D"noreferrer" target=3D"_blank">http://git.pokylinux=
.org/cgit.<wbr>cgi/poky-contrib/log/?h=3Dzedd/<wbr>kernel-yocto</a><br>
<br>
Bruce Ashfield (2):<br>
=C2=A0 poky: make 4.9 the preferred qemu version<br>
=C2=A0 yocto-bsps: add 4.9 bbappend<br>
<br>
=C2=A0meta-poky/conf/distro/poky.<wbr>conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 14 ++++++------<br>
=C2=A0.../recipes-kernel/linux/<wbr>linux-yocto_4.9.bbappend=C2=A0 | 26 +++=
+++++++++++++++++++<br>
=C2=A02 files changed, 33 insertions(+), 7 deletions(-)<br>
=C2=A0create mode 100644 meta-yocto-bsp/recipes-kernel/<wbr>linux/linux-yoc=
to_4.9.bbappend<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
2.5.0<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature">&quot;T=
hou shalt not follow the NULL pointer, for chaos and madness await thee at =
its end&quot;</div>
</div></div>

--94eb2c075ee085a3a705494bed92--
