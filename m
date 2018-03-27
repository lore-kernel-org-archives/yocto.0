Return-Path: <ticotimo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3AF5AE00BE9; Tue, 27 Mar 2018 07:40:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ticotimo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f42.google.com (mail-vk0-f42.google.com
	[209.85.213.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDEDEE008A2
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 07:40:05 -0700 (PDT)
Received: by mail-vk0-f42.google.com with SMTP id n124so3399775vkd.6
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 07:40:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=pxxrDjqgplnKixGBm3k+nYzt6fLVnCjffK5Tiomu3g8=;
	b=EO9o9hPDqSct1k1AvfqlTA1bwu2W7ljy5avX5kDOqcshXeAQFrNE6/z8LV8ACOg9gV
	HiVzZ8fPobW/rRlRIoGNkP3RgfKPeVUG1z9bsmGBhSujH3O4LQjvOiTruplMi7I3U8zI
	QyPgwra0yAoJFmXIDyzkoMkIL7/gm95Z23aw2xpTTJRZUnuEYcEKN/dk5vCsljiNhTKU
	/jvyucKB23RERoPE/iUs0vIBHAqzSnvgTf3bqZmbhpYUy4Gtn94TCR3VZRBIL4klSwd4
	0bSPLUu89pILcS5wXQ1YNqRzRohzhv7DYFHjMv+LjBmt1B244lutr+cAhFOFVkkxIz3N
	P2jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=pxxrDjqgplnKixGBm3k+nYzt6fLVnCjffK5Tiomu3g8=;
	b=sNy0AAhDOWXZ4o7cB54qmwU6ajNMKNTiKLGgnbtyo8/8STmN93Q39Bc9xtNioVL/k4
	rTsNGyqSN90r7zFr/hGRH7KK55NIgofWxZGBjxsYbNfBzW+liMC82O1OQglc8gMnPo1A
	hAkG0vKgCmZ6GWdmj/w5X2K7AgncYj2Bxsq5qaLY8CrCui9k94IW9FZYVxXXq4GhW5hm
	Y9DiYQ/vGUjgVj/CuXEXYp1Zs4lADa8HbigW5uOWqTXydhARfnUlEP5fyESFqvl/kUKV
	oaP7Pq2H/v7wOf9HDKHuZR36a6kW6hQv0kg9AmlUsmsQtvj8uBVBb1ThnCoM7jZwZAoZ
	sdNw==
X-Gm-Message-State: AElRT7F4Ju8kE/Cp5x8A3ZRB8JhRM8sIoMDPF0D7kYLHzi4y9A2iMi6v
	NQd+mJrLyqkvC6E3MZVz1ekHKW6wWMSQXOLJj5o=
X-Google-Smtp-Source: AG47ELuBhx2eRGHH7iTm8aRkCum/YZ1A+ZqHFlsfgrDKVMAhrqj0riU5mouV3HfB0J8oi+h6csAFRiGHi/HGOvWNufo=
X-Received: by 10.31.76.4 with SMTP id z4mr29165861vka.63.1522161604849; Tue,
	27 Mar 2018 07:40:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAFq4t4gpGaMCyvR2drwjU8+NWYS5aSodmzPhPb4FWio6vm+12Q@mail.gmail.com>
	<BY2PR02MB3478CD4565AE85F89F611FEB9AD0@BY2PR02MB347.namprd02.prod.outlook.com>
	<C44683C49AD51C4AB28DA746E48E358701062A71@SBS-IDENTPRO.intranet.identpro.net>
In-Reply-To: <C44683C49AD51C4AB28DA746E48E358701062A71@SBS-IDENTPRO.intranet.identpro.net>
From: Tim Orling <ticotimo@gmail.com>
Date: Tue, 27 Mar 2018 14:39:54 +0000
Message-ID: <CANx9H-AA6ToP=z+9z2=q2Cb0idvDnsHy5603Dc-b41ETJPhFoA@mail.gmail.com>
To: =?UTF-8?Q?Matthias_Sch=C3=B6pfer?= <matthias.schoepfer@identpro.de>
Cc: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com>,
	Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: scipy recipe
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
X-List-Received-Date: Tue, 27 Mar 2018 14:40:08 -0000
Content-Type: multipart/alternative; boundary="001a114dc17abf7676056865ddae"

--001a114dc17abf7676056865ddae
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

intel-iot-refkit has an openblas recipe:
http://git.yoctoproject.org/cgit/cgit.cgi/intel-iot-refkit/tree/meta-refkit=
-extra/recipes-convnet/openblas/openblas_0.2.19.bb

Where I am getting stuck is that scipy doesn=E2=80=99t know it is being
cross-compiled and tries to import numpy.core.multiarray. It reports as
numpy being a broken build because the library is of the wrong ELF type
(paraphrasing from memory). That module loads just fine in qemu.
On Tue, Mar 27, 2018 at 2:13 AM Matthias Sch=C3=B6pfer <
matthias.schoepfer@identpro.de> wrote:

> Hi!
>
> It turns out that openblas cross compile as I posted it is broken. It
> only works because my "cross-compile" is from amd64 to amd64...
>
> Regards,
>
>         Matthias
>
> On 03/26/2018 10:57 PM, Manjukumar Harthikote Matha wrote:
> >
> >> -----Original Message-----
> >> From: yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org]
> >> On Behalf Of Matthias Sch=C3=B6pfer
> >> Sent: Friday, March 23, 2018 3:08 AM
> >> To: Peter Balazovic <balazovic.peter@gmail.com>; Yocto-mailing-list
> >> <yocto@yoctoproject.org>
> >> Subject: Re: [yocto] scipy recipe
> >>
> >> Hi Peter,
> >>
> >> I managed to get scipy to cross compile, since I was in a hurry, and
> have no deeper
> >> understanding of python / distutils / setuptools, it turned out to be
> an ugly hack (but
> >> obviously I was not the first one to do ugly things there ;) )
> >>
> >> Maybe you have had some progress as well, and we can figure out a nice=
r
> solution.
> >>
> >> See the attached files, involving openblas, a bbappend for python-nump=
y
> and
> >> python-scipy.
> >>
> >
> > Thanks Matthias, will try this out
> >
> > Thanks,
> > Manju
> >
> >
> >
>
>
> --
> Dr.-Ing. Matthias Sch=C3=B6pfer
>
> Softwareentwicklung
>
> ____________________________________
>
> IdentPro GmbH
> Camp-Spich-Str. 4
> 53842 Troisdorf
>
> Tel:   +49 (0)2241 / 866 392 46
> Fax:   +49 (0)2241 / 866 392 99
> eMail: matthias.schoepfer@identpro.de
>
> http://www.identpro.de
>
> identplus=C2=AE =E2=80=93 Das 3D Staplerleitsystem mit enormen Sparpotenz=
ial: z. B.
> =C3=BCber 67.000 EUR pro Jahr bei 500 Transporten t=C3=A4glich! Berechnen=
 Sie das
> Einsparpotenzial f=C3=BCr Ihr Lager mit dem identplus=C2=AE Potenzialrech=
ner.
>
> identplus=C2=AE live erleben: Vereinbaren Sie jetzt einen Termin!
>
> ---------------------------------
> IdentPro GmbH
> Member of Dr. Wack Holding GmbH & Co.KG
> Sitz und Registergericht: St. Augustin, HRB 9770 Siegburg
> Gesch=C3=A4ftsf=C3=BChrer: Michael Wack
> Umsatzsteuer-ID-Nr.: DE 254 824 945
> WEEE-Reg.-Nr. DE 79026890
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a114dc17abf7676056865ddae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

intel-iot-refkit has an openblas recipe:<br><a href=3D"http://git.yoctoproj=
ect.org/cgit/cgit.cgi/intel-iot-refkit/tree/meta-refkit-extra/recipes-convn=
et/openblas/openblas_0.2.19.bb">http://git.yoctoproject.org/cgit/cgit.cgi/i=
ntel-iot-refkit/tree/meta-refkit-extra/recipes-convnet/openblas/openblas_0.=
2.19.bb</a><br><br>Where I am getting stuck is that scipy doesn=E2=80=99t k=
now it is being cross-compiled and tries to import numpy.core.multiarray. I=
t reports as numpy being a broken build because the library is of the wrong=
 ELF type (paraphrasing from memory). That module loads just fine in qemu.<=
br><div class=3D"gmail_quote"><div dir=3D"ltr">On Tue, Mar 27, 2018 at 2:13=
 AM Matthias Sch=C3=B6pfer &lt;<a href=3D"mailto:matthias.schoepfer@identpr=
o.de">matthias.schoepfer@identpro.de</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">Hi!<br>
<br>
It turns out that openblas cross compile as I posted it is broken. It<br>
only works because my &quot;cross-compile&quot; is from amd64 to amd64...<b=
r>
<br>
Regards,<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Matthias<br>
<br>
On 03/26/2018 10:57 PM, Manjukumar Harthikote Matha wrote:<br>
&gt;<br>
&gt;&gt; -----Original Message-----<br>
&gt;&gt; From: <a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"=
_blank">yocto-bounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-=
bounces@yoctoproject.org" target=3D"_blank">yocto-bounces@yoctoproject.org<=
/a>]<br>
&gt;&gt; On Behalf Of Matthias Sch=C3=B6pfer<br>
&gt;&gt; Sent: Friday, March 23, 2018 3:08 AM<br>
&gt;&gt; To: Peter Balazovic &lt;<a href=3D"mailto:balazovic.peter@gmail.co=
m" target=3D"_blank">balazovic.peter@gmail.com</a>&gt;; Yocto-mailing-list<=
br>
&gt;&gt; &lt;<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yo=
cto@yoctoproject.org</a>&gt;<br>
&gt;&gt; Subject: Re: [yocto] scipy recipe<br>
&gt;&gt;<br>
&gt;&gt; Hi Peter,<br>
&gt;&gt;<br>
&gt;&gt; I managed to get scipy to cross compile, since I was in a hurry, a=
nd have no deeper<br>
&gt;&gt; understanding of python / distutils / setuptools, it turned out to=
 be an ugly hack (but<br>
&gt;&gt; obviously I was not the first one to do ugly things there ;) )<br>
&gt;&gt;<br>
&gt;&gt; Maybe you have had some progress as well, and we can figure out a =
nicer solution.<br>
&gt;&gt;<br>
&gt;&gt; See the attached files, involving openblas, a bbappend for python-=
numpy and<br>
&gt;&gt; python-scipy.<br>
&gt;&gt;<br>
&gt;<br>
&gt; Thanks Matthias, will try this out<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Manju<br>
&gt;<br>
&gt;<br>
&gt;<br>
<br>
<br>
--<br>
Dr.-Ing. Matthias Sch=C3=B6pfer<br>
<br>
Softwareentwicklung<br>
<br>
____________________________________<br>
<br>
IdentPro GmbH<br>
Camp-Spich-Str. 4<br>
53842 Troisdorf<br>
<br>
Tel:=C2=A0 =C2=A0+49 (0)2241 / 866 392 46<br>
Fax:=C2=A0 =C2=A0+49 (0)2241 / 866 392 99<br>
eMail: <a href=3D"mailto:matthias.schoepfer@identpro.de" target=3D"_blank">=
matthias.schoepfer@identpro.de</a><br>
<br>
<a href=3D"http://www.identpro.de" rel=3D"noreferrer" target=3D"_blank">htt=
p://www.identpro.de</a><br>
<br>
identplus=C2=AE =E2=80=93 Das 3D Staplerleitsystem mit enormen Sparpotenzia=
l: z. B.<br>
=C3=BCber 67.000 EUR pro Jahr bei 500 Transporten t=C3=A4glich! Berechnen S=
ie das<br>
Einsparpotenzial f=C3=BCr Ihr Lager mit dem identplus=C2=AE Potenzialrechne=
r.<br>
<br>
identplus=C2=AE live erleben: Vereinbaren Sie jetzt einen Termin!<br>
<br>
---------------------------------<br>
IdentPro GmbH<br>
Member of Dr. Wack Holding GmbH &amp; Co.KG<br>
Sitz und Registergericht: St. Augustin, HRB 9770 Siegburg<br>
Gesch=C3=A4ftsf=C3=BChrer: Michael Wack<br>
Umsatzsteuer-ID-Nr.: DE 254 824 945<br>
WEEE-Reg.-Nr. DE 79026890<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--001a114dc17abf7676056865ddae--
