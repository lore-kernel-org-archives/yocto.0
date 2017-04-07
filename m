Return-Path: <maxpowel@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90122E00AD5; Fri,  7 Apr 2017 05:04:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (maxpowel[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.174 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.174 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f174.google.com (mail-qt0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56427E009FD
	for <yocto@yoctoproject.org>; Fri,  7 Apr 2017 05:04:55 -0700 (PDT)
Received: by mail-qt0-f174.google.com with SMTP id v3so8978223qtd.3
	for <yocto@yoctoproject.org>; Fri, 07 Apr 2017 05:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=T0IIjjuxxolb4csVKi6ZNJjbuueRbmHnYq2UULaAed4=;
	b=IN5ZR0FfvgQ3xUzB0gm4a509EluI4OD/tgyALYE2dA98ehDzni8m3V+Uj830lv+9mT
	AU5biqgnHV1/WvAudKF506Nomq36mutXv55nyEcjmOYGtHyb4ZOsvfR0gZmthzYJLj6T
	lAz1QSYlYeJTcYBZ9dGcNaayOigvtB0/Sz68lD5u0jswzTSgJE9mK9/lC0zkvqIhJjo5
	cYfOQM1z+eUQf+Dj0/KvCoHYY3f5jPf+mqbOibdVFebRbJHkN8TE3x8T44kuOEsQXj2a
	GzGh9304EnDbtRKfDZq17xiQlhHaPa1+PtPTWyEc0mn0+di33Wiv1YXR/g+Hr03Zjb+t
	5z0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=T0IIjjuxxolb4csVKi6ZNJjbuueRbmHnYq2UULaAed4=;
	b=ImdTAGBjD/KwMOjjvPoO9P4TjYyUSK83HVvpGRNvEvsJZ3+7fBRujIgNzEZaA/1AQJ
	adbgcLSx3XUiFyVlKL8ZoLJxeG6+cpIDHlR76V+IYPKRMM0p0Piaz3mi6IPxgo+Xcg/8
	jDg0WGfJpEDoeqsYxNhMF6V19JssAuppQlTXS5+j18M+U5qhDo6Dww3JfF3k7iDbXGAl
	mlE//UhyBdI8eowjWajvOKtkNpAelm227lvGbiYfFmeHXoPnuDO7ZXYrvJws8hlKozmz
	0bU3NdLvVDXrBu2Lbt11MpxDYmPovVVVv1id+Q28bmh5phmK/2TdLCeFHyOyr212lAOk
	meyA==
X-Gm-Message-State: AFeK/H0n5HD6kfCOkCGgCRJvTBQyLMu++4RDHwTPLQzvQunsHcSzlyPcQ1MnQm7Y06WJh2TDSHFsj5SFqmpSnw==
X-Received: by 10.237.38.194 with SMTP id q60mr42032340qtd.84.1491566695099;
	Fri, 07 Apr 2017 05:04:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.37.5 with HTTP; Fri, 7 Apr 2017 05:04:54 -0700 (PDT)
In-Reply-To: <LO1P123MB141266C0313CFF6E3EACAB9DDA0C0@LO1P123MB1412.GBRP123.PROD.OUTLOOK.COM>
References: <CAOsmwBRkb8duSiy2eZ6N87_mSXbmKhqNS1pD-JL9ZtB4o9jkvA@mail.gmail.com>
	<LO1P123MB141266C0313CFF6E3EACAB9DDA0C0@LO1P123MB1412.GBRP123.PROD.OUTLOOK.COM>
From: Alvaro Garcia <maxpowel@gmail.com>
Date: Fri, 7 Apr 2017 14:04:54 +0200
Message-ID: <CAOsmwBQ7-0nCiS3GfCkGs4SYdd7WgPpRDvkegsEcz9gdmqXQ4g@mail.gmail.com>
To: Chris Trobridge <christrobridge@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Customize live grub entries
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
X-List-Received-Date: Fri, 07 Apr 2017 12:04:57 -0000
Content-Type: multipart/alternative; boundary=001a11487f7c053160054c926fe3

--001a11487f7c053160054c926fe3
Content-Type: text/plain; charset=UTF-8

This works but when the image is installed, it cannot boot because there a
not configuration for grub (grub prompt is shown). But I found the reason.
It is because I'm using EFI boot and the installer
poky/meta/recipes-core/initrdscripts/files/init-install-efi.sh uses the
live grub config and then modify it:

if [ -f /run/media/$1/EFI/BOOT/grub.cfg ]; then
    root_part_uuid=$(blkid -o value -s PARTUUID ${rootfs})
    GRUBCFG="$EFIDIR/grub.cfg"
    cp /run/media/$1/EFI/BOOT/grub.cfg $GRUBCFG
   # Update grub config for the installed image
    # Delete the install entry
    sed -i "/menuentry 'install'/,/^}/d" $GRUBCFG
    # Delete the initrd lines
    sed -i "/initrd /d" $GRUBCFG
    # Delete any LABEL= strings
    sed -i "s/ LABEL=[^ ]*/ /" $GRUBCFG
    # Delete any root= strings
    sed -i "s/ root=[^ ]*/ /g" $GRUBCFG
    # Add the root= and other standard boot options
    sed -i "s@linux /vmlinuz *@linux /vmlinuz root=PARTUUID=$root_part_uuid
rw $rootwait quiet @" $GRUBCFG
fi


I modified this script and everythig is working as I want.

Thank you!

2017-04-07 13:12 GMT+02:00 Chris Trobridge <christrobridge@hotmail.com>:

> > From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org>
> on behalf of Alvaro Garcia > <maxpowel@gmail.com>
> > Sent: 07 April 2017 11:59
> > To: yocto@yoctoproject.org
> > Subject: [yocto] Customize live grub entries
>
>
> > Hi, I want an unattended installation (just boot from USB, install, and
> remove USB). I am able to remove all questions during install but I cant
> customize the grub entries of the live boot. By default is market the
> option "boot" but I need the  "install" option.
>
> > In the file poky/plain/meta/classes/grub-efi.bbclass I found that the
> variable GRUB_CFG_LIVE = "${S}/grub_live.cfg" contains the file with this
> configuration but I cannot find this file. Where the image is built (inside
> tmp directory) this file exists. I tried  to override the variables
> "LABELS_LIVE" without success (if I remove the boot option, it also
> disappears from the installation and cannot boot later).
>
> > Once the image is flashed to an USB memory, the file syslinux_live.cfg
> exists in the boot partition and if I edit it it works as I want. But this
> is the bad way, would be great if I can edit it inside yocto build process.
>
> > Anyone knows what recipe should override?
>
> > Thank you
>
> I use:
> LABELS_LIVE = "install"
>
> Just before I inherit core-image in my custom image recipe.
>
> Regards,
> Chris
>

--001a11487f7c053160054c926fe3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>This works but when the image is installed, it cannot=
 boot because there a not configuration for grub (grub prompt is shown). Bu=
t I found the reason. It is because I&#39;m using EFI boot and the installe=
r poky/meta/recipes-core/initrdscripts/files/init-install-efi.sh uses the l=
ive grub config and then modify it:<br><br>if [ -f /run/media/$1/EFI/BOOT/g=
rub.cfg ]; then<br>=C2=A0=C2=A0=C2=A0 root_part_uuid=3D$(blkid -o value -s =
PARTUUID ${rootfs})<br>=C2=A0=C2=A0=C2=A0 GRUBCFG=3D&quot;$EFIDIR/grub.cfg&=
quot;<br>=C2=A0=C2=A0=C2=A0 cp /run/media/$1/EFI/BOOT/grub.cfg $GRUBCFG<br>=
=C2=A0=C2=A0 # Update grub config for the installed image<br>=C2=A0=C2=A0=
=C2=A0 # Delete the install entry<br>=C2=A0=C2=A0=C2=A0 sed -i &quot;/menue=
ntry &#39;install&#39;/,/^}/d&quot; $GRUBCFG<br>=C2=A0=C2=A0=C2=A0 # Delete=
 the initrd lines<br>=C2=A0=C2=A0=C2=A0 sed -i &quot;/initrd /d&quot; $GRUB=
CFG<br>=C2=A0=C2=A0=C2=A0 # Delete any LABEL=3D strings<br>=C2=A0=C2=A0=C2=
=A0 sed -i &quot;s/ LABEL=3D[^ ]*/ /&quot; $GRUBCFG<br>=C2=A0=C2=A0=C2=A0 #=
 Delete any root=3D strings<br>=C2=A0=C2=A0=C2=A0 sed -i &quot;s/ root=3D[^=
 ]*/ /g&quot; $GRUBCFG<br>=C2=A0=C2=A0=C2=A0 # Add the root=3D and other st=
andard boot options<br>=C2=A0=C2=A0=C2=A0 sed -i &quot;s@linux /vmlinuz *@l=
inux /vmlinuz root=3DPARTUUID=3D$root_part_uuid rw $rootwait quiet @&quot; =
$GRUBCFG<br></div>fi<br><div><br><br></div><div>I modified this script and =
everythig is working as I want.<br><br></div><div>Thank you!<br></div></div=
><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2017-04-07 13:12=
 GMT+02:00 Chris Trobridge <span dir=3D"ltr">&lt;<a href=3D"mailto:christro=
bridge@hotmail.com" target=3D"_blank">christrobridge@hotmail.com</a>&gt;</s=
pan>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">&gt; From: <a href=3D"mailto:yocto-=
bounces@yoctoproject.org">yocto-bounces@yoctoproject.org</a> &lt;<a href=3D=
"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject.<wbr>org=
</a>&gt; on behalf of Alvaro Garcia &gt; &lt;<a href=3D"mailto:maxpowel@gma=
il.com">maxpowel@gmail.com</a>&gt;<br>
&gt; Sent: 07 April 2017 11:59<br>
&gt; To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a><br>
&gt; Subject: [yocto] Customize live grub entries<br>
<div><div class=3D"h5">=C2=A0<br>
<br>
&gt; Hi, I want an unattended installation (just boot from USB, install, an=
d remove USB). I am able to remove all questions during install but I cant =
customize the grub entries of the live boot. By default is market the optio=
n &quot;boot&quot; but I need the=C2=A0 &quot;install&quot; option.<br>
<br>
&gt; In the file poky/plain/meta/classes/grub-<wbr>efi.bbclass I found that=
 the variable GRUB_CFG_LIVE =3D &quot;${S}/grub_live.cfg&quot; contains the=
 file with this configuration but I cannot find this file. Where the image =
is built (inside tmp directory) this file exists. I tried=C2=A0 to override=
 the variables &quot;LABELS_LIVE&quot; without success (if I remove the boo=
t option, it also disappears from the installation and cannot boot later).<=
br>
<br>
&gt; Once the image is flashed to an USB memory, the file syslinux_live.cfg=
 exists in the boot partition and if I edit it it works as I want. But this=
 is the bad way, would be great if I can edit it inside yocto build process=
.<br>
<br>
&gt; Anyone knows what recipe should override?<br>
<br>
&gt; Thank you<br>
<br>
</div></div>I use:<br>
LABELS_LIVE =3D &quot;install&quot;<br>
<br>
Just before I inherit core-image in my custom image recipe.<br>
<br>
Regards,<br>
Chris<br>
</blockquote></div><br></div>

--001a11487f7c053160054c926fe3--
