Return-Path: <outbackdingo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B214E00C1B; Wed,  7 Nov 2018 01:53:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (outbackdingo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
	[209.85.128.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 541CDE00BFD
	for <yocto@yoctoproject.org>; Wed,  7 Nov 2018 01:53:25 -0800 (PST)
Received: by mail-wm1-f49.google.com with SMTP id f2-v6so1490541wme.3
	for <yocto@yoctoproject.org>; Wed, 07 Nov 2018 01:53:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=QLwC/UULhHXNdE5o6b0DMwOtlZ7otsP+b0P/VCsA1+g=;
	b=uAFQVs/n7VK9QP4U2kQz54IY/WGdoQzR5twzLahVkyDg6H82CcdfX1c2B6xDB1pWiX
	pUHwE9B0JQKg10aOxs3g4FjXuMsMJQ9mcMyw19X3ro7FlfRldnnZ1vRkGPzsJnpB5H+m
	MWUJ5JAFJcJcvWPzkhC0ZnrC0vQiYPGH8E7ZYynQ9Ni+ex7iKHdVvB4l08W8XwUNK+Du
	H2k50z1ngdMkP9Dde219UfovzkrQhRnWqe3aQ5qn5SW6cgMspe/2Xu1nvBCYDPRYAgxB
	nEoDDEvNphBaNLUQCGPfG4UG68uCrNWcNDCQ294zH82QzQ4F5fVoIjj8U7wR7T1VTOg/
	UnfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=QLwC/UULhHXNdE5o6b0DMwOtlZ7otsP+b0P/VCsA1+g=;
	b=B9omDJVU2m95csR+j4sepeTxGCilfvkZRmdDED7tjuBVVa3StiNuO+r9CB8YPXRHPg
	anHbVqeUFv+8ST9oZNOKhcW43P+RLLRqFcymfvDn6ok0a1cA31KoMaYw+GgQqasMD9m4
	ndv+F7c6BrDPz/c9pmp65maTCiKgWBwlbNSdbKiIJzWavMCztzgTrK3RHMpc0L6pfGPX
	ZFAztrofLJ47iwQ9DILB29V+pKQKBv5pkbhelXo+DKchseJ+BKDWErIGVHzqxK1/vMJt
	8eY5r8h21Cqvmf6IO8VaqlICayM5pVyxqVNC4ssErAx3mFhV8RZEWPKSKa0Xiy960yAA
	45hw==
X-Gm-Message-State: AGRZ1gL5GmVwSiWz17GWI2Q9yNsZz9f7qB5mldJtZD/SAAi+v0IX72tL
	j/zV0rJNLNisq7GtsvwWignck+pmAI/laoSPS3g=
X-Google-Smtp-Source: AJdET5dIk91neLIq+t0Y3kn7SjcswBfr0chnN1NqDj/dKDPYKvp27f5DxkgF2mCojP5weUxdYzxEXsXTVPrFGmQmIFM=
X-Received: by 2002:a1c:8314:: with SMTP id
	f20-v6mr1434534wmd.120.1541584404124; 
	Wed, 07 Nov 2018 01:53:24 -0800 (PST)
MIME-Version: 1.0
References: <CAFd=ocgvmSf1zyWWw3A1=+Hr=WeD0ixdf5xLAT-TWg3hhKTqXw@mail.gmail.com>
	<CAFd=ocgFTMXeUxwFqkffhrk91KsXkSPR+chzyiGKqQTG+fs=dw@mail.gmail.com>
	<CAKYr3zz47i3op=suFL92h0=XTkxKdV+Pnvcra+40A96-xyzbjA@mail.gmail.com>
	<CAFd=ocgqbG=_Ff49BPHMFG=wxKt+TcdKQy1hY3CgzHJPYan3nQ@mail.gmail.com>
In-Reply-To: <CAFd=ocgqbG=_Ff49BPHMFG=wxKt+TcdKQy1hY3CgzHJPYan3nQ@mail.gmail.com>
From: Outback Dingo <outbackdingo@gmail.com>
Date: Wed, 7 Nov 2018 16:53:17 +0700
Message-ID: <CAKYr3zw7aPNR0KvD+Ym5JPG6b3+GRhZm0R==eSu410y2zpA8hA@mail.gmail.com>
To: Markus W <markus4dev@gmail.com>
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
X-List-Received-Date: Wed, 07 Nov 2018 09:53:26 -0000
Content-Type: multipart/alternative; boundary="000000000000cc9858057a101615"

--000000000000cc9858057a101615
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 7, 2018, 16:44 Markus W <markus4dev@gmail.com wrote:

> I have resolved this issue. My problem was that in my layer I have a
> recipe-core and within that I had the following structure
> udev/udev-extra-rules and udev-extra-rules.bb file and a files dir on
> the same level.
>
> By renaming udev/udev-extra-rules to my-udev/my-udev-extra-rules it
> suddenly worked.
>
> Cool
>
>
> Regards,
> Markus
>
> On Tue, 6 Nov 2018 at 14:06, Outback Dingo <outbackdingo@gmail.com> wrote=
:
> >
> > On Tue, Nov 6, 2018 at 11:57 AM Markus W <markus4dev@gmail.com> wrote:
> > >
> > > Hi!
> > >
> > > I want to append the rules in the
> > > recipe-core/udev/udev-rules-rpi/99-com.rules with the rules below fro=
m
> > > within my own recipe. I can=C2=B4t figure out how to do that.
> > >
> > > I have tried to add those rules as separate rules file in a recipe in
> > > my own layer. After the build I can see that the rules file is in the
> > > correct directory /etc/udev/rules.d (next to 99-com.rules) but the
> > > rules didn't get applied. The groups below I have created by
> > > inheriting the useradd class (GROUPADD_PARAM_${PN} =3D "-r spi; -r i2=
c;
> > > -r gpio") in a different layer with a higher priority than the layer
> > > with the rules recipe.
> > >
> > > Not sure why this is not working. Any suggestions?
> > >
> > > 90-interfaces.rules file:
> > >
> > > SUBSYSTEM=3D=3D"input", GROUP=3D"input", MODE=3D"0660"
> > > SUBSYSTEM=3D=3D"i2c-dev", GROUP=3D"i2c", MODE=3D"0660"
> > > SUBSYSTEM=3D=3D"spidev", GROUP=3D"spi", MODE=3D"0660"
> > > SUBSYSTEM=3D=3D"bcm2835-gpiomem", GROUP=3D"gpio", MODE=3D"0660"
> > >
> > > SUBSYSTEM=3D=3D"gpio", GROUP=3D"gpio", MODE=3D"0660"
> > > SUBSYSTEM=3D=3D"gpio*", PROGRAM=3D"/bin/sh -c '\
> > > chown -R root:gpio /sys/class/gpio && chmod -R 770 /sys/class/gpio;\
> > > chown -R root:gpio /sys/devices/virtual/gpio && chmod -R 770
> > > /sys/devices/virtual/gpio;\
> > > chown -R root:gpio /sys$devpath && chmod -R 770 /sys$devpath\
> > > '"
> > >
> >
> > might help to post the recipe used.....
> >
> >
> > > Regards,
> > > Markus
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000cc9858057a101615
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Wed, Nov 7, 2018, 16:44 Markus W &lt;<a href=3D"mailto:markus4dev@gmail.=
com">markus4dev@gmail.com</a> wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">I have resolved this issue. My problem was that in my layer I have a<br>
recipe-core and within that I had the following structure<br>
udev/udev-extra-rules and <a href=3D"http://udev-extra-rules.bb" rel=3D"nor=
eferrer noreferrer" target=3D"_blank">udev-extra-rules.bb</a> file and a fi=
les dir on<br>
the same level.<br>
<br>
By renaming udev/udev-extra-rules to my-udev/my-udev-extra-rules it<br>
suddenly worked.<br>
<br>Cool<br><br><br>
Regards,<br>
Markus<br>
<br>
On Tue, 6 Nov 2018 at 14:06, Outback Dingo &lt;<a href=3D"mailto:outbackdin=
go@gmail.com" target=3D"_blank" rel=3D"noreferrer">outbackdingo@gmail.com</=
a>&gt; wrote:<br>
&gt;<br>
&gt; On Tue, Nov 6, 2018 at 11:57 AM Markus W &lt;<a href=3D"mailto:markus4=
dev@gmail.com" target=3D"_blank" rel=3D"noreferrer">markus4dev@gmail.com</a=
>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; Hi!<br>
&gt; &gt;<br>
&gt; &gt; I want to append the rules in the<br>
&gt; &gt; recipe-core/udev/udev-rules-rpi/99-com.rules with the rules below=
 from<br>
&gt; &gt; within my own recipe. I can=C2=B4t figure out how to do that.<br>
&gt; &gt;<br>
&gt; &gt; I have tried to add those rules as separate rules file in a recip=
e in<br>
&gt; &gt; my own layer. After the build I can see that the rules file is in=
 the<br>
&gt; &gt; correct directory /etc/udev/rules.d (next to 99-com.rules) but th=
e<br>
&gt; &gt; rules didn&#39;t get applied. The groups below I have created by<=
br>
&gt; &gt; inheriting the useradd class (GROUPADD_PARAM_${PN} =3D &quot;-r s=
pi; -r i2c;<br>
&gt; &gt; -r gpio&quot;) in a different layer with a higher priority than t=
he layer<br>
&gt; &gt; with the rules recipe.<br>
&gt; &gt;<br>
&gt; &gt; Not sure why this is not working. Any suggestions?<br>
&gt; &gt;<br>
&gt; &gt; 90-interfaces.rules file:<br>
&gt; &gt;<br>
&gt; &gt; SUBSYSTEM=3D=3D&quot;input&quot;, GROUP=3D&quot;input&quot;, MODE=
=3D&quot;0660&quot;<br>
&gt; &gt; SUBSYSTEM=3D=3D&quot;i2c-dev&quot;, GROUP=3D&quot;i2c&quot;, MODE=
=3D&quot;0660&quot;<br>
&gt; &gt; SUBSYSTEM=3D=3D&quot;spidev&quot;, GROUP=3D&quot;spi&quot;, MODE=
=3D&quot;0660&quot;<br>
&gt; &gt; SUBSYSTEM=3D=3D&quot;bcm2835-gpiomem&quot;, GROUP=3D&quot;gpio&qu=
ot;, MODE=3D&quot;0660&quot;<br>
&gt; &gt;<br>
&gt; &gt; SUBSYSTEM=3D=3D&quot;gpio&quot;, GROUP=3D&quot;gpio&quot;, MODE=
=3D&quot;0660&quot;<br>
&gt; &gt; SUBSYSTEM=3D=3D&quot;gpio*&quot;, PROGRAM=3D&quot;/bin/sh -c &#39=
;\<br>
&gt; &gt; chown -R root:gpio /sys/class/gpio &amp;&amp; chmod -R 770 /sys/c=
lass/gpio;\<br>
&gt; &gt; chown -R root:gpio /sys/devices/virtual/gpio &amp;&amp; chmod -R =
770<br>
&gt; &gt; /sys/devices/virtual/gpio;\<br>
&gt; &gt; chown -R root:gpio /sys$devpath &amp;&amp; chmod -R 770 /sys$devp=
ath\<br>
&gt; &gt; &#39;&quot;<br>
&gt; &gt;<br>
&gt;<br>
&gt; might help to post the recipe used.....<br>
&gt;<br>
&gt;<br>
&gt; &gt; Regards,<br>
&gt; &gt; Markus<br>
&gt; &gt; --<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; yocto mailing list<br>
&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" rel=
=3D"noreferrer">yocto@yoctoproject.org</a><br>
&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"=
noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org/lis=
tinfo/yocto</a><br>
</blockquote></div></div></div>

--000000000000cc9858057a101615--
