Return-Path: <prakashpks15@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E15FE00F58; Tue,  3 Jul 2018 15:00:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (prakashpks15[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01124E00D60
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2018 15:00:46 -0700 (PDT)
Received: by mail-it0-f45.google.com with SMTP id j185-v6so5022222ite.1
	for <yocto@yoctoproject.org>; Tue, 03 Jul 2018 15:00:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=qVv6OrtgFTY/TL/nxIf9jajXCZkdHQ9IeXn3OVHGRsE=;
	b=IR/GguafzvIn0TvF5kXts4KMiHGNErPLRqGoE+lDxmH3Br5PwTszaBILld+IjWQUSU
	ZQ1/jPUy70NaEgmrnNH7O2UQA21aK8N6W2StLi2NGbCK9agHO5hRpdB0WvzJiyaE5bCT
	aVJ32FNvLwEydhEXyPLK9e3Bw/oG1wTNZB2PmZIhD+1f9lfCI3izrMMGsYGvl1fvu5MO
	HJafEPhVR4NUIY6nzx7udQABcwCW1rO/Ujr/zxZKqc99qc+yxCR+rXJcaZzTR1R5q5Bw
	NC2TiKiyButAPg4g3AI1dy6uhEcN3oLEz0+UpLLP81Ez9nxs/FnQN2nTG2lU2I1lXVTJ
	ABBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=qVv6OrtgFTY/TL/nxIf9jajXCZkdHQ9IeXn3OVHGRsE=;
	b=IAaAd7PrCySRkPHGhUxpMk4IbZrCfHvEl92JudT8w4fkQhEpoBe7wsTd4s1UgsSwCo
	bKYSjyz1cOVaFOZArtnazbfArXe9cXm8yucQeNYL69ZipSERaKgaecWoYkQ59i6+O03j
	jEYjvQMtBFZ7kASJYPVKnqMdPTMKU3OQuU6H+Yy6AvwE01ocbcTf5NOAhKYqo45rkBKa
	Hoe7Q2csrwQfvBEHOe5sqiws1c74ZfDPEdciv5QVDADOGOPoAHAsYc/nhPIqjMx2rhng
	dcfDNsdgWMGDHtfZqvKwCaF7FmmawJCDWW4f7U+WEg2s3AeM0fcdz7npcDNpGvt2NFhk
	dyHw==
X-Gm-Message-State: APt69E2O59W6/pqhBBSRXc8Yrj/Dm/dZ+qw4CzS0EJQ29Vctt/5iROUz
	LhaSrdT3vczZ47+HsYVxvauCnvbg3BHk5Xz75po=
X-Google-Smtp-Source: AAOMgpf6doYRy2sfef4p7J6nkB99XsUhRPXULtiTXWoyaCmgnCIED30w3wtvMTV9LJW3PNTE5Pc2OhEWe8hruYPrye8=
X-Received: by 2002:a24:eec4:: with SMTP id b187-v6mr363480iti.4.1530655246362;
	Tue, 03 Jul 2018 15:00:46 -0700 (PDT)
MIME-Version: 1.0
References: <CALh9vaX7aAYi59jJABfr5JXtoHXE6XVupfAwaHvRnVAAA5nDdA@mail.gmail.com>
In-Reply-To: <CALh9vaX7aAYi59jJABfr5JXtoHXE6XVupfAwaHvRnVAAA5nDdA@mail.gmail.com>
From: Prakash Ks <prakashpks15@gmail.com>
Date: Tue, 3 Jul 2018 15:00:35 -0700
Message-ID: <CAET8a4G93tEEXZMWVjb5RjiW9yZYynE38t_6VmJ+Cs2sUdtgwQ@mail.gmail.com>
To: tdhammer99@gmail.com
Cc: yocto@yoctoproject.org
Subject: Re: struggling with initramfs
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
X-List-Received-Date: Tue, 03 Jul 2018 22:00:47 -0000
Content-Type: multipart/alternative; boundary="0000000000003bb06505701f72d9"

--0000000000003bb06505701f72d9
Content-Type: text/plain; charset="UTF-8"

Try Adding
KERNEL_INITRAMFS = "-initramfs"
in platform specific .conf file


Thanks!
Prakash

On Tue, Jul 3, 2018 at 11:53 AM Tim Hammer <tdhammer99@gmail.com> wrote:

>
> Can anyone point me to a step-by-step tutorial or simple how-to on
> creating and using an initramfs with my kernel for ARM aarch64?
>
>
> I have tried creating my own:
>  - boot-image.bb file with IMAGE_FSTYPES = "cpio.gz".
>  - local.conf has INITRAMFS_IMAGE_BUNDLE = "1"
>  - linux.bbappend has INITRAMFS_IMAGE = "boot-image"
>
> This all seems to be "correct" to the extent that bitbake linux tries to
> do the right thing.
>
> However, I get a failure in do_bundle_initramfs- "mv: cannot stat
> 'arch/arm64/boot/Image': No such file or directory".
>
> To the best of my (limited) debugging abilities with Yocto, it seems like
> the kernel image backup has already been run when it gets to this point and
> the Image file in that directory has already been moved to Image.bak. If I
> comment out the mv statement in kernel.bbclass causing the failure, the
> process continues, but the initramfs does not seem to get populated or
> perhaps installed into my kernel image as I get kernel panics that I have
> been unable to get past.
>
>
> I decided to take a different approach and try using the
> core-image-minimal-initramfs recipe as INITRAMFS_IMAGE. By commenting out
> the COMPATIBLE_HOST entry I am able to build a kernel for ARM aarch64. I
> can even seem to boot into this initramfs- it counts down waiting for
> removable media; seems to find my primary rootfs on sda3, but there is no
> rootfs.img file there so says it is dropping to a shell (although I never
> get a prompt...).
>
> Thinking I could start with that recipe and work to get rid of the live
> stuff and just get to a busybox prompt before trying to run my unique init
> commands, I copied  core-image-minimal-initramfs.bb to my-
> core-image-minimal-initramfs.bb in my layer and changed INITRAMFS_IMAGE
> to "my- core-image-minimal-initramfs".
> However, I obviously missed something in the configuration as I get an
> error in go_bundle_initramfs again:
>      kernel-source/scripts/gen_initramfs_list.sh:
>                  Cannot open
> '/.../linux-qoriq/4.14-r0/build/usr/my-core-image-minimal-initramfs-{machine}.cpio'
>
> Any help would be greatly appreciated.
> Thank you!
> --
>
> .Tim
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


-- 
Thanks and Regards,
Prakash K S
+91 9620140303

--0000000000003bb06505701f72d9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Try Adding=C2=A0<div>KERNEL_INITRAMFS =3D &quot;-initramfs=
&quot;=C2=A0<br></div><div>in platform specific .conf file</div><div><br></=
div><div><br></div><div>Thanks!</div><div>Prakash</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr">On Tue, Jul 3, 2018 at 11:53 AM Tim Hamme=
r &lt;<a href=3D"mailto:tdhammer99@gmail.com">tdhammer99@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><br></=
div><div>Can anyone point me to a step-by-step tutorial or simple how-to on=
 creating and using an initramfs with my kernel for ARM aarch64?</div><div>=
<br></div><div><br></div><div>I have tried creating my own:</div><div>=C2=
=A0- <a href=3D"http://boot-image.bb" target=3D"_blank">boot-image.bb</a> f=
ile with IMAGE_FSTYPES =3D &quot;cpio.gz&quot;.</div><div>=C2=A0- local.con=
f has INITRAMFS_IMAGE_BUNDLE =3D &quot;1&quot;</div><div>=C2=A0- linux.bbap=
pend has INITRAMFS_IMAGE =3D &quot;boot-image&quot;</div><div><br></div><di=
v>This all seems to be &quot;correct&quot; to the extent that bitbake linux=
 tries to do the right thing.</div><div><br></div><div>However, I get a fai=
lure in do_bundle_initramfs- &quot;mv: cannot stat &#39;arch/arm64/boot/Ima=
ge&#39;: No such file or directory&quot;.</div><div><br></div><div>To the b=
est of my (limited) debugging abilities with Yocto, it seems like the kerne=
l image backup has already been run when it gets to this point and the Imag=
e file in that directory has already been moved to Image.bak. If I comment =
out the mv statement in kernel.bbclass causing the failure, the process con=
tinues, but the initramfs does not seem to get populated or perhaps install=
ed into my kernel image as I get kernel panics that I have been unable to g=
et past.</div><div><br></div><div><br></div><div>I decided to take a differ=
ent approach and try using the core-image-minimal-initramfs recipe as INITR=
AMFS_IMAGE. By commenting out the COMPATIBLE_HOST entry I am able to build =
a kernel for ARM aarch64. I can even seem to boot into this initramfs- it c=
ounts down waiting for removable media; seems to find my primary rootfs on =
sda3, but there is no rootfs.img file there so says it is dropping to a she=
ll (although I never get a prompt...).</div><div><br></div><div>Thinking I =
could start with that recipe and work to get rid of the live stuff and just=
 get to a busybox prompt before trying to run my unique init commands, I co=
pied=C2=A0

<span style=3D"font-size:small;background-color:rgb(255,255,255);text-decor=
ation-style:initial;text-decoration-color:initial;float:none;display:inline=
"><a href=3D"http://core-image-minimal-initramfs.bb" target=3D"_blank">core=
-image-minimal-initramfs.bb</a> to my-

<span style=3D"text-decoration-style:initial;text-decoration-color:initial;=
float:none;display:inline"><a href=3D"http://core-image-minimal-initramfs.b=
b" target=3D"_blank">core-image-minimal-initramfs.bb</a> in my layer and ch=
anged INITRAMFS_IMAGE to &quot;my-

<span style=3D"font-size:small;background-color:rgb(255,255,255);text-decor=
ation-style:initial;text-decoration-color:initial;float:none;display:inline=
">core-image-minimal-initramfs&quot;.</span></span></span></div><div><span =
style=3D"font-size:small;background-color:rgb(255,255,255);text-decoration-=
style:initial;text-decoration-color:initial;float:none;display:inline"><spa=
n style=3D"text-decoration-style:initial;text-decoration-color:initial;floa=
t:none;display:inline"><span style=3D"font-size:small;background-color:rgb(=
255,255,255);text-decoration-style:initial;text-decoration-color:initial;fl=
oat:none;display:inline">However, I obviously missed something in the confi=
guration as I get an error in go_bundle_initramfs again:</span></span></spa=
n></div><div><span style=3D"background-color:rgb(255,255,255);text-decorati=
on-style:initial;text-decoration-color:initial;float:none;display:inline"><=
span style=3D"text-decoration-style:initial;text-decoration-color:initial;f=
loat:none;display:inline"><span style=3D"background-color:rgb(255,255,255);=
text-decoration-style:initial;text-decoration-color:initial;float:none;disp=
lay:inline">=C2=A0 =C2=A0 =C2=A0kernel-source/scripts/gen_initramfs_list.sh=
:=C2=A0</span></span></span></div><div><span style=3D"background-color:rgb(=
255,255,255);text-decoration-style:initial;text-decoration-color:initial;fl=
oat:none;display:inline"><span style=3D"text-decoration-style:initial;text-=
decoration-color:initial;float:none;display:inline"><span style=3D"backgrou=
nd-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-col=
or:initial;float:none;display:inline">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0Cannot open &#39;/.../linux-qoriq/4.14-r0/build/=
usr/my-core-image-minimal-initramfs-{machine}.cpio&#39;<br></span></span></=
span></div><div><span style=3D"font-size:small;background-color:rgb(255,255=
,255);text-decoration-style:initial;text-decoration-color:initial;float:non=
e;display:inline"><span style=3D"text-decoration-style:initial;text-decorat=
ion-color:initial;float:none;display:inline"><span style=3D"font-size:small=
;background-color:rgb(255,255,255);text-decoration-style:initial;text-decor=
ation-color:initial;float:none;display:inline"><br></span></span></span></d=
iv><div><span style=3D"font-size:small;background-color:rgb(255,255,255);te=
xt-decoration-style:initial;text-decoration-color:initial;float:none;displa=
y:inline"><span style=3D"text-decoration-style:initial;text-decoration-colo=
r:initial;float:none;display:inline"><span style=3D"font-size:small;backgro=
und-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-co=
lor:initial;float:none;display:inline">Any help would be greatly appreciate=
d.</span></span></span></div><div>Thank you!</div>-- <br><div class=3D"m_-3=
691061403271685997gmail_signature"><div dir=3D"ltr"><br><span style=3D"font=
-family:&quot;arial narrow&quot;,sans-serif">.Tim</span><br></div></div>
</div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature" data-smartmail=3D"gmail_signature">Thanks and Re=
gards,<div>Prakash K S</div><div>+91 9620140303</div></div>

--0000000000003bb06505701f72d9--
