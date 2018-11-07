Return-Path: <markus4dev@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 882B6E009AA; Wed,  7 Nov 2018 03:47:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (markus4dev[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.41 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
	[209.85.221.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C1A3E00950
	for <yocto@yoctoproject.org>; Wed,  7 Nov 2018 03:46:58 -0800 (PST)
Received: by mail-wr1-f41.google.com with SMTP id j26-v6so17083629wre.1
	for <yocto@yoctoproject.org>; Wed, 07 Nov 2018 03:46:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=aPjaFkqYhRQV2usf2ctgLIlJvyn7f33j38F8/POqN64=;
	b=oq0/dVwkGkLuBI15z9ln90L1gZSeNI0gpOCYIlYO48nLkyJLOVc2Q+0ixVZBcaprio
	rSfvHW0fzvircU6SbXOcZwd/QzMtIdJzkjCXNaAjXg9hAxWR8Yag+nf5G17rheKS6XHN
	Xa2SxKED9HrdX6Bs5eI9Ea7qw16FJ4vPhcesoofH0Yyf/7dzB4+HPjAVDhm7iyhcFLJw
	miZ0A2SWkVabeDS5ooADK1b2C6Fd/Iy4JjfCwVD5YwwjqkD0+pM55ldopETuHfXjCliO
	F6CYa1DFpDTWHq2saHPCXrGrAleLpcv70jDvPUES4Ie7/w+k3Ne03+FFCvuBv9P1qW2g
	3KCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=aPjaFkqYhRQV2usf2ctgLIlJvyn7f33j38F8/POqN64=;
	b=sNFI8McBxu7mEPsLAO/m8iL3MR8SwmhOU2wE2igVz0oNrAKlKGEkZoU175AiCWUem8
	JEjEeh5kcoxxcInkcMLIFPYnnZXT/KosbceIZdM+qpWzj5r0aMgEsa9oCfcWAwOEzkh2
	3CWSL82JzTsINyF2wCanoRjQNQhcYIHdM/7tDjXrZXBsmX1tEt1k1iIb+ARv0u8LQboT
	NQsdpKxMG9a0NJoiz4bo9aV7wGW9oqEZtUf569k8mh1n6CsCacZQoyR8grDy1lXgnDqg
	vxgkMwFQ2B3JGKWcGJKtvL5rtEzU+NTeuIB+7hyAQN6e/BzH5ykkDbLENJXbsvGnX86D
	Zejg==
X-Gm-Message-State: AGRZ1gJ5lPqS/ThMLKGMhTm87BZTOQ7YSnns83lp3PmDhespz7Q351Cq
	9tGCxErFGbzxNuU+twnhy4XoR8qr4oRsohzIA+k=
X-Google-Smtp-Source: AJdET5czg0GP4QhGaAxXvwhuiKrjYVjewwZtLONwlZgOL9damaBxgUty0BMc2LkJ6QV6lcorhRdpGWTpbDSqMyBadls=
X-Received: by 2002:adf:e70d:: with SMTP id
	c13-v6mr1569370wrm.50.1541591217376; 
	Wed, 07 Nov 2018 03:46:57 -0800 (PST)
MIME-Version: 1.0
References: <CAFd=ocgvmSf1zyWWw3A1=+Hr=WeD0ixdf5xLAT-TWg3hhKTqXw@mail.gmail.com>
	<CAFd=ocgFTMXeUxwFqkffhrk91KsXkSPR+chzyiGKqQTG+fs=dw@mail.gmail.com>
	<CAKYr3zz47i3op=suFL92h0=XTkxKdV+Pnvcra+40A96-xyzbjA@mail.gmail.com>
	<CAFd=ocgqbG=_Ff49BPHMFG=wxKt+TcdKQy1hY3CgzHJPYan3nQ@mail.gmail.com>
	<CAKYr3zw7aPNR0KvD+Ym5JPG6b3+GRhZm0R==eSu410y2zpA8hA@mail.gmail.com>
	<CAKYr3zzDbGptzGwWe5nrZ__+C-XdjEAUTVAqyvVU0tgythzO7w@mail.gmail.com>
In-Reply-To: <CAKYr3zzDbGptzGwWe5nrZ__+C-XdjEAUTVAqyvVU0tgythzO7w@mail.gmail.com>
From: Markus W <markus4dev@gmail.com>
Date: Wed, 7 Nov 2018 12:46:56 +0100
Message-ID: <CAFd=ociMVxtmLLJe3rpxpVnqOXkaVRXzstzSoOsnUqz-MBXUrQ@mail.gmail.com>
To: outbackdingo@gmail.com, yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] Problem with adding udev rules
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
X-List-Received-Date: Wed, 07 Nov 2018 11:47:00 -0000
Content-Type: multipart/alternative; boundary="000000000000e69335057a11ac83"

--000000000000e69335057a11ac83
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This my bb file and than I have added the following to local.conf
IMAGE_INSTALL_append =3D " my-rules ...".

SUMMARY =3D "My rules"
LICENSE =3D "CLOSED"
PR =3D "r1"

SRC_URI =3D "file://90-interfaces.rules"

do_install[nostamp] =3D "1"
do_unpack[nostamp] =3D "1"

do_install () {
    install -d ${D}${sysconfdir}/udev/rules.d
    install -m 0666 ${WORKDIR}/90-interfaces.rules
${D}/etc/udev/rules.d/90-interfaces.rules

}

FILES_${PN} +=3D " /etc/udev/rules.d/90-interfaces.rules"

PACKAGES =3D "${PN}"
PROVIDES =3D "my-rules"

Hope this helps

/Markus

On Wed, 7 Nov 2018 at 12:41, Outback Dingo <outbackdingo@gmail.com> wrote:

> so curious, as im trying to add 2 udev rules also that i require in my
> build, so how was your recipe configured?
>
> mine keeps telling me i have a conflict between packages as they both
> install files to the same name and same place
> On Wed, Nov 7, 2018 at 4:53 PM Outback Dingo <outbackdingo@gmail.com>
> wrote:
> >
> >
> >
> > On Wed, Nov 7, 2018, 16:44 Markus W <markus4dev@gmail.com wrote:
> >>
> >> I have resolved this issue. My problem was that in my layer I have a
> >> recipe-core and within that I had the following structure
> >> udev/udev-extra-rules and udev-extra-rules.bb file and a files dir on
> >> the same level.
> >>
> >> By renaming udev/udev-extra-rules to my-udev/my-udev-extra-rules it
> >> suddenly worked.
> >>
> >> Cool
> >>
> >>
> >> Regards,
> >> Markus
> >>
> >> On Tue, 6 Nov 2018 at 14:06, Outback Dingo <outbackdingo@gmail.com>
> wrote:
> >> >
> >> > On Tue, Nov 6, 2018 at 11:57 AM Markus W <markus4dev@gmail.com>
> wrote:
> >> > >
> >> > > Hi!
> >> > >
> >> > > I want to append the rules in the
> >> > > recipe-core/udev/udev-rules-rpi/99-com.rules with the rules below
> from
> >> > > within my own recipe. I can=C2=B4t figure out how to do that.
> >> > >
> >> > > I have tried to add those rules as separate rules file in a recipe
> in
> >> > > my own layer. After the build I can see that the rules file is in
> the
> >> > > correct directory /etc/udev/rules.d (next to 99-com.rules) but the
> >> > > rules didn't get applied. The groups below I have created by
> >> > > inheriting the useradd class (GROUPADD_PARAM_${PN} =3D "-r spi; -r
> i2c;
> >> > > -r gpio") in a different layer with a higher priority than the lay=
er
> >> > > with the rules recipe.
> >> > >
> >> > > Not sure why this is not working. Any suggestions?
> >> > >
> >> > > 90-interfaces.rules file:
> >> > >
> >> > > SUBSYSTEM=3D=3D"input", GROUP=3D"input", MODE=3D"0660"
> >> > > SUBSYSTEM=3D=3D"i2c-dev", GROUP=3D"i2c", MODE=3D"0660"
> >> > > SUBSYSTEM=3D=3D"spidev", GROUP=3D"spi", MODE=3D"0660"
> >> > > SUBSYSTEM=3D=3D"bcm2835-gpiomem", GROUP=3D"gpio", MODE=3D"0660"
> >> > >
> >> > > SUBSYSTEM=3D=3D"gpio", GROUP=3D"gpio", MODE=3D"0660"
> >> > > SUBSYSTEM=3D=3D"gpio*", PROGRAM=3D"/bin/sh -c '\
> >> > > chown -R root:gpio /sys/class/gpio && chmod -R 770 /sys/class/gpio=
;\
> >> > > chown -R root:gpio /sys/devices/virtual/gpio && chmod -R 770
> >> > > /sys/devices/virtual/gpio;\
> >> > > chown -R root:gpio /sys$devpath && chmod -R 770 /sys$devpath\
> >> > > '"
> >> > >
> >> >
> >> > might help to post the recipe used.....
> >> >
> >> >
> >> > > Regards,
> >> > > Markus
> >> > > --
> >> > > _______________________________________________
> >> > > yocto mailing list
> >> > > yocto@yoctoproject.org
> >> > > https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000e69335057a11ac83
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">This my bb file and than=
 I have added the following to local.conf IMAGE_INSTALL_append =3D &quot; m=
y-rules ...&quot;.</div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><div><d=
iv>SUMMARY =3D &quot;My rules&quot;</div><div>LICENSE =3D &quot;CLOSED&quot=
;</div><div>PR =3D &quot;r1&quot;</div><div><br></div><div>SRC_URI =3D &quo=
t;file://90-interfaces.rules&quot;</div><div><br></div><div>do_install[nost=
amp] =3D &quot;1&quot;</div><div>do_unpack[nostamp] =3D &quot;1&quot;</div>=
<div><br></div><div>do_install () {</div><div>=C2=A0 =C2=A0 install -d ${D}=
${sysconfdir}/udev/rules.d</div><div>=C2=A0 =C2=A0 install -m 0666 ${WORKDI=
R}/90-interfaces.rules ${D}/etc/udev/rules.d/90-interfaces.rules</div><div>=
<br></div><div>}</div><div><br></div><div>FILES_${PN} +=3D &quot; /etc/udev=
/rules.d/90-interfaces.rules&quot;</div><div><br></div><div>PACKAGES =3D &q=
uot;${PN}&quot;</div><div>PROVIDES =3D &quot;my-rules&quot;</div></div></di=
v></div><div><br></div><div>Hope this helps</div><div><br></div><div>/Marku=
s</div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Wed, 7 Nov 2018 a=
t 12:41, Outback Dingo &lt;<a href=3D"mailto:outbackdingo@gmail.com">outbac=
kdingo@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">so =
curious, as im trying to add 2 udev rules also that i require in my<br>
build, so how was your recipe configured?<br>
<br>
mine keeps telling me i have a conflict between packages as they both<br>
install files to the same name and same place<br>
On Wed, Nov 7, 2018 at 4:53 PM Outback Dingo &lt;<a href=3D"mailto:outbackd=
ingo@gmail.com" target=3D"_blank">outbackdingo@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Wed, Nov 7, 2018, 16:44 Markus W &lt;<a href=3D"mailto:markus4dev@g=
mail.com" target=3D"_blank">markus4dev@gmail.com</a> wrote:<br>
&gt;&gt;<br>
&gt;&gt; I have resolved this issue. My problem was that in my layer I have=
 a<br>
&gt;&gt; recipe-core and within that I had the following structure<br>
&gt;&gt; udev/udev-extra-rules and <a href=3D"http://udev-extra-rules.bb" r=
el=3D"noreferrer" target=3D"_blank">udev-extra-rules.bb</a> file and a file=
s dir on<br>
&gt;&gt; the same level.<br>
&gt;&gt;<br>
&gt;&gt; By renaming udev/udev-extra-rules to my-udev/my-udev-extra-rules i=
t<br>
&gt;&gt; suddenly worked.<br>
&gt;&gt;<br>
&gt;&gt; Cool<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Regards,<br>
&gt;&gt; Markus<br>
&gt;&gt;<br>
&gt;&gt; On Tue, 6 Nov 2018 at 14:06, Outback Dingo &lt;<a href=3D"mailto:o=
utbackdingo@gmail.com" target=3D"_blank">outbackdingo@gmail.com</a>&gt; wro=
te:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Tue, Nov 6, 2018 at 11:57 AM Markus W &lt;<a href=3D"mailt=
o:markus4dev@gmail.com" target=3D"_blank">markus4dev@gmail.com</a>&gt; wrot=
e:<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; Hi!<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; I want to append the rules in the<br>
&gt;&gt; &gt; &gt; recipe-core/udev/udev-rules-rpi/99-com.rules with the ru=
les below from<br>
&gt;&gt; &gt; &gt; within my own recipe. I can=C2=B4t figure out how to do =
that.<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; I have tried to add those rules as separate rules file i=
n a recipe in<br>
&gt;&gt; &gt; &gt; my own layer. After the build I can see that the rules f=
ile is in the<br>
&gt;&gt; &gt; &gt; correct directory /etc/udev/rules.d (next to 99-com.rule=
s) but the<br>
&gt;&gt; &gt; &gt; rules didn&#39;t get applied. The groups below I have cr=
eated by<br>
&gt;&gt; &gt; &gt; inheriting the useradd class (GROUPADD_PARAM_${PN} =3D &=
quot;-r spi; -r i2c;<br>
&gt;&gt; &gt; &gt; -r gpio&quot;) in a different layer with a higher priori=
ty than the layer<br>
&gt;&gt; &gt; &gt; with the rules recipe.<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; Not sure why this is not working. Any suggestions?<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; 90-interfaces.rules file:<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; SUBSYSTEM=3D=3D&quot;input&quot;, GROUP=3D&quot;input&qu=
ot;, MODE=3D&quot;0660&quot;<br>
&gt;&gt; &gt; &gt; SUBSYSTEM=3D=3D&quot;i2c-dev&quot;, GROUP=3D&quot;i2c&qu=
ot;, MODE=3D&quot;0660&quot;<br>
&gt;&gt; &gt; &gt; SUBSYSTEM=3D=3D&quot;spidev&quot;, GROUP=3D&quot;spi&quo=
t;, MODE=3D&quot;0660&quot;<br>
&gt;&gt; &gt; &gt; SUBSYSTEM=3D=3D&quot;bcm2835-gpiomem&quot;, GROUP=3D&quo=
t;gpio&quot;, MODE=3D&quot;0660&quot;<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; SUBSYSTEM=3D=3D&quot;gpio&quot;, GROUP=3D&quot;gpio&quot=
;, MODE=3D&quot;0660&quot;<br>
&gt;&gt; &gt; &gt; SUBSYSTEM=3D=3D&quot;gpio*&quot;, PROGRAM=3D&quot;/bin/s=
h -c &#39;\<br>
&gt;&gt; &gt; &gt; chown -R root:gpio /sys/class/gpio &amp;&amp; chmod -R 7=
70 /sys/class/gpio;\<br>
&gt;&gt; &gt; &gt; chown -R root:gpio /sys/devices/virtual/gpio &amp;&amp; =
chmod -R 770<br>
&gt;&gt; &gt; &gt; /sys/devices/virtual/gpio;\<br>
&gt;&gt; &gt; &gt; chown -R root:gpio /sys$devpath &amp;&amp; chmod -R 770 =
/sys$devpath\<br>
&gt;&gt; &gt; &gt; &#39;&quot;<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; might help to post the recipe used.....<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; &gt; Regards,<br>
&gt;&gt; &gt; &gt; Markus<br>
&gt;&gt; &gt; &gt; --<br>
&gt;&gt; &gt; &gt; _______________________________________________<br>
&gt;&gt; &gt; &gt; yocto mailing list<br>
&gt;&gt; &gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_bla=
nk">yocto@yoctoproject.org</a><br>
&gt;&gt; &gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto=
" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listi=
nfo/yocto</a><br>
</blockquote></div></div>

--000000000000e69335057a11ac83--
