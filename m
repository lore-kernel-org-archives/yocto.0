Return-Path: <markus4dev@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FC98E009AA; Wed,  7 Nov 2018 05:20:45 -0800 (PST)
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
	*      [209.85.221.48 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
	[209.85.221.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4A21E00950
	for <yocto@yoctoproject.org>; Wed,  7 Nov 2018 05:20:42 -0800 (PST)
Received: by mail-wr1-f48.google.com with SMTP id 74-v6so17352771wrb.13
	for <yocto@yoctoproject.org>; Wed, 07 Nov 2018 05:20:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ZSIIo9Pt3cBvty8f0EZshhJNVxubQ9NVyzQLCwTlMRw=;
	b=XbeApYXA87aIuZ9y1BmYoTG5Yy/VOUC7cDoBd4GrbWltB7jbLdEeOpbon6B2s4RC9L
	KnQGxeZDUYPsxmUs0bRMy5L1V7Y3vPSaVXqDbdart8jV6Y65fFZzpsWNIIvT4ispexeL
	IWlyQHaD3iQvK5odWK+JVkIkCosN+Pbpv3Wx/1OxjAaUlKqmyltmjHQGRQpnJoiTJFLW
	fv6rUKGIv/3tHuyqwaYuqEDyhN+UaMxTM3EY96InG7wLdp8YfsKb4dC1isVldanL3xHh
	3nauX08mM1j56aJYGRl5BA59kCYEN1ojeww+0YFP2TL/NdCs1lkvdm2p5YW2ppyzuf97
	ICoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ZSIIo9Pt3cBvty8f0EZshhJNVxubQ9NVyzQLCwTlMRw=;
	b=l2W5/6sfiGcmUVi8NGCYCnQ21DFpGrx0G1G/ElxNlhs8RjNP+siREWv+pYENo5C61c
	YRGMNPwIj4weZB+FM38xAuwP8SCMyCFOQwchjQUeGHqHhsJ1eAMu5D6Xw8OgO28wx8ok
	5C0/yQKOEA6e56gmUHImrYr5HwDmVD4/mhCxgmITYG2NWkRHJ0KdgO1V133S0JSGeSjw
	/4WZwaOe6MubUszjSpYDQCKHhBaujdGjuMOGOSLDbL4Ec9E3ligami9C4tJJiNRblsLM
	jkYicc4c+eD1tFCLAHXu7V63Cof0ElGZveFy8IilUK+LBNagrTd6tBeuXXZ9+9PvQVuU
	cV9A==
X-Gm-Message-State: AGRZ1gLmghJPpGkf6Psx3iK2Y+CSHiBfNca+Z8/Sv1raXdmcBQIIB1Jh
	/GCytsDWR0YLp8ZkAKVZbaKxF16WixiH5t3aDJg=
X-Google-Smtp-Source: AJdET5cKxu8dPgSgJX13OrtB12dCCsU8vesHofHtaMXmKQobbHsHAc0NRY5BA1K96oOITIqMAkCwT+wGJHgdaaUQJxw=
X-Received: by 2002:a5d:4a11:: with SMTP id
	m17-v6mr154410wrq.259.1541596842035; 
	Wed, 07 Nov 2018 05:20:42 -0800 (PST)
MIME-Version: 1.0
References: <CAFd=ocgvmSf1zyWWw3A1=+Hr=WeD0ixdf5xLAT-TWg3hhKTqXw@mail.gmail.com>
	<CAFd=ocgFTMXeUxwFqkffhrk91KsXkSPR+chzyiGKqQTG+fs=dw@mail.gmail.com>
	<CAKYr3zz47i3op=suFL92h0=XTkxKdV+Pnvcra+40A96-xyzbjA@mail.gmail.com>
	<CAFd=ocgqbG=_Ff49BPHMFG=wxKt+TcdKQy1hY3CgzHJPYan3nQ@mail.gmail.com>
	<CAKYr3zw7aPNR0KvD+Ym5JPG6b3+GRhZm0R==eSu410y2zpA8hA@mail.gmail.com>
	<CAKYr3zzDbGptzGwWe5nrZ__+C-XdjEAUTVAqyvVU0tgythzO7w@mail.gmail.com>
	<CAFd=ociMVxtmLLJe3rpxpVnqOXkaVRXzstzSoOsnUqz-MBXUrQ@mail.gmail.com>
	<CAKYr3zyntyR6-sVaMaJjoxECSfmW4Oh75QsXuV8imdGRHRWw3w@mail.gmail.com>
In-Reply-To: <CAKYr3zyntyR6-sVaMaJjoxECSfmW4Oh75QsXuV8imdGRHRWw3w@mail.gmail.com>
From: Markus W <markus4dev@gmail.com>
Date: Wed, 7 Nov 2018 14:20:40 +0100
Message-ID: <CAFd=ociLMjLcUsyXvw21DwM7wFtCAkv6Pb5wQ75=UKiQ19gPUw@mail.gmail.com>
To: outbackdingo@gmail.com
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Wed, 07 Nov 2018 13:20:45 -0000
Content-Type: multipart/alternative; boundary="000000000000280d55057a12fc5e"

--000000000000280d55057a12fc5e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Probably, I'm learning ;-)

On Wed, 7 Nov 2018 at 12:59, Outback Dingo <outbackdingo@gmail.com> wrote:

> couldnt this have been a udev_append.bb
>
> instead of writing your own my-rules
> On Wed, Nov 7, 2018 at 6:46 PM Markus W <markus4dev@gmail.com> wrote:
> >
> > This my bb file and than I have added the following to local.conf
> IMAGE_INSTALL_append =3D " my-rules ...".
> >
> > SUMMARY =3D "My rules"
> > LICENSE =3D "CLOSED"
> > PR =3D "r1"
> >
> > SRC_URI =3D "file://90-interfaces.rules"
> >
> > do_install[nostamp] =3D "1"
> > do_unpack[nostamp] =3D "1"
> >
> > do_install () {
> >     install -d ${D}${sysconfdir}/udev/rules.d
> >     install -m 0666 ${WORKDIR}/90-interfaces.rules
> ${D}/etc/udev/rules.d/90-interfaces.rules
> >
> > }
> >
> > FILES_${PN} +=3D " /etc/udev/rules.d/90-interfaces.rules"
> >
> > PACKAGES =3D "${PN}"
> > PROVIDES =3D "my-rules"
> >
> > Hope this helps
> >
> > /Markus
> >
> > On Wed, 7 Nov 2018 at 12:41, Outback Dingo <outbackdingo@gmail.com>
> wrote:
> >>
> >> so curious, as im trying to add 2 udev rules also that i require in my
> >> build, so how was your recipe configured?
> >>
> >> mine keeps telling me i have a conflict between packages as they both
> >> install files to the same name and same place
> >> On Wed, Nov 7, 2018 at 4:53 PM Outback Dingo <outbackdingo@gmail.com>
> wrote:
> >> >
> >> >
> >> >
> >> > On Wed, Nov 7, 2018, 16:44 Markus W <markus4dev@gmail.com wrote:
> >> >>
> >> >> I have resolved this issue. My problem was that in my layer I have =
a
> >> >> recipe-core and within that I had the following structure
> >> >> udev/udev-extra-rules and udev-extra-rules.bb file and a files dir
> on
> >> >> the same level.
> >> >>
> >> >> By renaming udev/udev-extra-rules to my-udev/my-udev-extra-rules it
> >> >> suddenly worked.
> >> >>
> >> >> Cool
> >> >>
> >> >>
> >> >> Regards,
> >> >> Markus
> >> >>
> >> >> On Tue, 6 Nov 2018 at 14:06, Outback Dingo <outbackdingo@gmail.com>
> wrote:
> >> >> >
> >> >> > On Tue, Nov 6, 2018 at 11:57 AM Markus W <markus4dev@gmail.com>
> wrote:
> >> >> > >
> >> >> > > Hi!
> >> >> > >
> >> >> > > I want to append the rules in the
> >> >> > > recipe-core/udev/udev-rules-rpi/99-com.rules with the rules
> below from
> >> >> > > within my own recipe. I can=C2=B4t figure out how to do that.
> >> >> > >
> >> >> > > I have tried to add those rules as separate rules file in a
> recipe in
> >> >> > > my own layer. After the build I can see that the rules file is
> in the
> >> >> > > correct directory /etc/udev/rules.d (next to 99-com.rules) but
> the
> >> >> > > rules didn't get applied. The groups below I have created by
> >> >> > > inheriting the useradd class (GROUPADD_PARAM_${PN} =3D "-r spi;=
 -r
> i2c;
> >> >> > > -r gpio") in a different layer with a higher priority than the
> layer
> >> >> > > with the rules recipe.
> >> >> > >
> >> >> > > Not sure why this is not working. Any suggestions?
> >> >> > >
> >> >> > > 90-interfaces.rules file:
> >> >> > >
> >> >> > > SUBSYSTEM=3D=3D"input", GROUP=3D"input", MODE=3D"0660"
> >> >> > > SUBSYSTEM=3D=3D"i2c-dev", GROUP=3D"i2c", MODE=3D"0660"
> >> >> > > SUBSYSTEM=3D=3D"spidev", GROUP=3D"spi", MODE=3D"0660"
> >> >> > > SUBSYSTEM=3D=3D"bcm2835-gpiomem", GROUP=3D"gpio", MODE=3D"0660"
> >> >> > >
> >> >> > > SUBSYSTEM=3D=3D"gpio", GROUP=3D"gpio", MODE=3D"0660"
> >> >> > > SUBSYSTEM=3D=3D"gpio*", PROGRAM=3D"/bin/sh -c '\
> >> >> > > chown -R root:gpio /sys/class/gpio && chmod -R 770
> /sys/class/gpio;\
> >> >> > > chown -R root:gpio /sys/devices/virtual/gpio && chmod -R 770
> >> >> > > /sys/devices/virtual/gpio;\
> >> >> > > chown -R root:gpio /sys$devpath && chmod -R 770 /sys$devpath\
> >> >> > > '"
> >> >> > >
> >> >> >
> >> >> > might help to post the recipe used.....
> >> >> >
> >> >> >
> >> >> > > Regards,
> >> >> > > Markus
> >> >> > > --
> >> >> > > _______________________________________________
> >> >> > > yocto mailing list
> >> >> > > yocto@yoctoproject.org
> >> >> > > https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000280d55057a12fc5e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Probably, I&#39;m learning ;-)</div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr">On Wed, 7 Nov 2018 at 12:59, Outback Dingo &lt;<a=
 href=3D"mailto:outbackdingo@gmail.com">outbackdingo@gmail.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">couldnt this have been a <a href=
=3D"http://udev_append.bb" rel=3D"noreferrer" target=3D"_blank">udev_append=
.bb</a><br>
<br>
instead of writing your own my-rules<br>
On Wed, Nov 7, 2018 at 6:46 PM Markus W &lt;<a href=3D"mailto:markus4dev@gm=
ail.com" target=3D"_blank">markus4dev@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; This my bb file and than I have added the following to local.conf IMAG=
E_INSTALL_append =3D &quot; my-rules ...&quot;.<br>
&gt;<br>
&gt; SUMMARY =3D &quot;My rules&quot;<br>
&gt; LICENSE =3D &quot;CLOSED&quot;<br>
&gt; PR =3D &quot;r1&quot;<br>
&gt;<br>
&gt; SRC_URI =3D &quot;file://90-interfaces.rules&quot;<br>
&gt;<br>
&gt; do_install[nostamp] =3D &quot;1&quot;<br>
&gt; do_unpack[nostamp] =3D &quot;1&quot;<br>
&gt;<br>
&gt; do_install () {<br>
&gt;=C2=A0 =C2=A0 =C2=A0install -d ${D}${sysconfdir}/udev/rules.d<br>
&gt;=C2=A0 =C2=A0 =C2=A0install -m 0666 ${WORKDIR}/90-interfaces.rules ${D}=
/etc/udev/rules.d/90-interfaces.rules<br>
&gt;<br>
&gt; }<br>
&gt;<br>
&gt; FILES_${PN} +=3D &quot; /etc/udev/rules.d/90-interfaces.rules&quot;<br=
>
&gt;<br>
&gt; PACKAGES =3D &quot;${PN}&quot;<br>
&gt; PROVIDES =3D &quot;my-rules&quot;<br>
&gt;<br>
&gt; Hope this helps<br>
&gt;<br>
&gt; /Markus<br>
&gt;<br>
&gt; On Wed, 7 Nov 2018 at 12:41, Outback Dingo &lt;<a href=3D"mailto:outba=
ckdingo@gmail.com" target=3D"_blank">outbackdingo@gmail.com</a>&gt; wrote:<=
br>
&gt;&gt;<br>
&gt;&gt; so curious, as im trying to add 2 udev rules also that i require i=
n my<br>
&gt;&gt; build, so how was your recipe configured?<br>
&gt;&gt;<br>
&gt;&gt; mine keeps telling me i have a conflict between packages as they b=
oth<br>
&gt;&gt; install files to the same name and same place<br>
&gt;&gt; On Wed, Nov 7, 2018 at 4:53 PM Outback Dingo &lt;<a href=3D"mailto=
:outbackdingo@gmail.com" target=3D"_blank">outbackdingo@gmail.com</a>&gt; w=
rote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Wed, Nov 7, 2018, 16:44 Markus W &lt;<a href=3D"mailto:mar=
kus4dev@gmail.com" target=3D"_blank">markus4dev@gmail.com</a> wrote:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; I have resolved this issue. My problem was that in my lay=
er I have a<br>
&gt;&gt; &gt;&gt; recipe-core and within that I had the following structure=
<br>
&gt;&gt; &gt;&gt; udev/udev-extra-rules and <a href=3D"http://udev-extra-ru=
les.bb" rel=3D"noreferrer" target=3D"_blank">udev-extra-rules.bb</a> file a=
nd a files dir on<br>
&gt;&gt; &gt;&gt; the same level.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; By renaming udev/udev-extra-rules to my-udev/my-udev-extr=
a-rules it<br>
&gt;&gt; &gt;&gt; suddenly worked.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Cool<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Regards,<br>
&gt;&gt; &gt;&gt; Markus<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; On Tue, 6 Nov 2018 at 14:06, Outback Dingo &lt;<a href=3D=
"mailto:outbackdingo@gmail.com" target=3D"_blank">outbackdingo@gmail.com</a=
>&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; On Tue, Nov 6, 2018 at 11:57 AM Markus W &lt;<a href=
=3D"mailto:markus4dev@gmail.com" target=3D"_blank">markus4dev@gmail.com</a>=
&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; Hi!<br>
&gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; I want to append the rules in the<br>
&gt;&gt; &gt;&gt; &gt; &gt; recipe-core/udev/udev-rules-rpi/99-com.rules wi=
th the rules below from<br>
&gt;&gt; &gt;&gt; &gt; &gt; within my own recipe. I can=C2=B4t figure out h=
ow to do that.<br>
&gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; I have tried to add those rules as separate rul=
es file in a recipe in<br>
&gt;&gt; &gt;&gt; &gt; &gt; my own layer. After the build I can see that th=
e rules file is in the<br>
&gt;&gt; &gt;&gt; &gt; &gt; correct directory /etc/udev/rules.d (next to 99=
-com.rules) but the<br>
&gt;&gt; &gt;&gt; &gt; &gt; rules didn&#39;t get applied. The groups below =
I have created by<br>
&gt;&gt; &gt;&gt; &gt; &gt; inheriting the useradd class (GROUPADD_PARAM_${=
PN} =3D &quot;-r spi; -r i2c;<br>
&gt;&gt; &gt;&gt; &gt; &gt; -r gpio&quot;) in a different layer with a high=
er priority than the layer<br>
&gt;&gt; &gt;&gt; &gt; &gt; with the rules recipe.<br>
&gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; Not sure why this is not working. Any suggestio=
ns?<br>
&gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; 90-interfaces.rules file:<br>
&gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; SUBSYSTEM=3D=3D&quot;input&quot;, GROUP=3D&quot=
;input&quot;, MODE=3D&quot;0660&quot;<br>
&gt;&gt; &gt;&gt; &gt; &gt; SUBSYSTEM=3D=3D&quot;i2c-dev&quot;, GROUP=3D&qu=
ot;i2c&quot;, MODE=3D&quot;0660&quot;<br>
&gt;&gt; &gt;&gt; &gt; &gt; SUBSYSTEM=3D=3D&quot;spidev&quot;, GROUP=3D&quo=
t;spi&quot;, MODE=3D&quot;0660&quot;<br>
&gt;&gt; &gt;&gt; &gt; &gt; SUBSYSTEM=3D=3D&quot;bcm2835-gpiomem&quot;, GRO=
UP=3D&quot;gpio&quot;, MODE=3D&quot;0660&quot;<br>
&gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; SUBSYSTEM=3D=3D&quot;gpio&quot;, GROUP=3D&quot;=
gpio&quot;, MODE=3D&quot;0660&quot;<br>
&gt;&gt; &gt;&gt; &gt; &gt; SUBSYSTEM=3D=3D&quot;gpio*&quot;, PROGRAM=3D&qu=
ot;/bin/sh -c &#39;\<br>
&gt;&gt; &gt;&gt; &gt; &gt; chown -R root:gpio /sys/class/gpio &amp;&amp; c=
hmod -R 770 /sys/class/gpio;\<br>
&gt;&gt; &gt;&gt; &gt; &gt; chown -R root:gpio /sys/devices/virtual/gpio &a=
mp;&amp; chmod -R 770<br>
&gt;&gt; &gt;&gt; &gt; &gt; /sys/devices/virtual/gpio;\<br>
&gt;&gt; &gt;&gt; &gt; &gt; chown -R root:gpio /sys$devpath &amp;&amp; chmo=
d -R 770 /sys$devpath\<br>
&gt;&gt; &gt;&gt; &gt; &gt; &#39;&quot;<br>
&gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; might help to post the recipe used.....<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; Regards,<br>
&gt;&gt; &gt;&gt; &gt; &gt; Markus<br>
&gt;&gt; &gt;&gt; &gt; &gt; --<br>
&gt;&gt; &gt;&gt; &gt; &gt; _______________________________________________=
<br>
&gt;&gt; &gt;&gt; &gt; &gt; yocto mailing list<br>
&gt;&gt; &gt;&gt; &gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org" targe=
t=3D"_blank">yocto@yoctoproject.org</a><br>
&gt;&gt; &gt;&gt; &gt; &gt; <a href=3D"https://lists.yoctoproject.org/listi=
nfo/yocto" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000280d55057a12fc5e--
