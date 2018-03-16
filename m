Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2DA72E00CFD; Fri, 16 Mar 2018 00:09:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (balazovic.peter[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23138E007F2
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 00:09:31 -0700 (PDT)
Received: by mail-pg0-f66.google.com with SMTP id s13so3759150pgn.12
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 00:09:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DmD2J7BMqH36a9LKQFA08nnGKrTt+is6WHk3ME9kI30=;
	b=umdovjWMLDeoRyn9ZMv5tTFctPXIhlTjkvlNcqXwjAf7+i0DZ80qMTvPj0Tahgb4Z7
	38vQ4H3zZDou9q9iRvuNvTUeFZNzg6hfSdXqP4xiCKBObGOo3LqqTsmWGBmHjux8zvJG
	bNktH+v/m3piQsDxzL3i9h9OKBnrK6MzVqWh4qF/NRkzJUyFPtsgy+lxTzmLW38YmpYd
	xTZSbSwhNjgCOOfVmfpxbfr8jI+uyD5xyYB0vMFTUPfspFIYTaE1hEN/IhqHJGZ23MQH
	Gnxkzb94Vos1xImoOueWOzHrnMwzoX4ZkXI1chZvN+uuD+QkX/9msRlARL5MVM6sep/v
	73vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=DmD2J7BMqH36a9LKQFA08nnGKrTt+is6WHk3ME9kI30=;
	b=bC32lqMMWnt+zS/gQK2FZdYEv21JLKWPeQDvEP/u6VU4Ud/UZdIJPsXr4gppZJbd9L
	+o+WHFWIuMiCfi87BibW7dOntS9PmRyOzL01d9fJDiTWiEkRCIXIdQuBAnJRAAYUSZRQ
	pvQRKEywREF+gjjAUwB5qQ7boVmh3XnE4jheiscCFBPFPMt1DxmdFCiniDkYhjgco/Zy
	7tTDw5RXqFGTG4RrlduvdKQBKkMBtt02ovjRRsrLqJcE4x0VvxwwHIhaBNV9fSO0tsOg
	BenF27K1rPcMJLNED4HOP8Hb5EFNdz9H5iI8XHSdcgaJZOMA5SfWqw7wql9J720fPtjI
	G03Q==
X-Gm-Message-State: AElRT7EmPfhGnQ/S9li+Wm3EkNqhWGkNXmP6xzuNZGZCKpV6LGGAXldN
	Ubkh9g4IMyEsc95ktBbJayOIWgN2F1astYPqM2Y=
X-Google-Smtp-Source: AG47ELtEvuTGWZHBQ8o6532XGAbDD0nqAD7JvZFNsEh0ya4XCv6vB+Ue26GblaTmXTYqHWjFLeyuNFCH1flOoCBE1E0=
X-Received: by 10.99.8.4 with SMTP id 4mr626064pgi.289.1521184171467; Fri, 16
	Mar 2018 00:09:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.184.9 with HTTP; Fri, 16 Mar 2018 00:09:30 -0700 (PDT)
In-Reply-To: <CANx9H-Ci26zKAYyKxpv5UehejFwpDF5Ww_JRzJnNNqhJFZy7hg@mail.gmail.com>
References: <CAFq4t4ghBNE+1SXZ7L-KuRMfw6z7E0a4ageKi33UbKbftXL0rQ@mail.gmail.com>
	<alpine.LFD.2.21.1803150856190.32449@localhost.localdomain>
	<CANx9H-Ci26zKAYyKxpv5UehejFwpDF5Ww_JRzJnNNqhJFZy7hg@mail.gmail.com>
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Fri, 16 Mar 2018 08:09:30 +0100
Message-ID: <CAFq4t4j5JY74S72EtAW-bjV+e7NATmzEqv4ybMupu5g1iKTC2g@mail.gmail.com>
To: Tim Orling <ticotimo@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: OpenCV with python3
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
X-List-Received-Date: Fri, 16 Mar 2018 07:09:34 -0000
Content-Type: multipart/alternative; boundary="94eb2c08efa22da6a00567824aba"

--94eb2c08efa22da6a00567824aba
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

That I was thinking to have =E2=80=9Cpython3-opencv=E2=80=9D but it's faili=
ng to build

I found opencv_3.1.bbappend with my sources where I see

PACKAGECONFIG_remove_imx =3D "eigen python3"

I guess that might causing a problem to build opencv for python3... I'll
remove and check again to build.

BTW what's the benefit of using CORE_IMAGE_EXTRA_INSTALL over
IMAGE_INSTALL_append ?


On Fri, Mar 16, 2018 at 6:29 AM, Tim Orling <ticotimo@gmail.com> wrote:

> Ditto for Robert=E2=80=99s comment. Please look at the bitbake manual and
> understand what the syntax means [1].
>
> Also,  =E2=80=9Cpython-foo=E2=80=9D means the python2 version. The defaul=
t PACKAGECONFIG
> [2] for opencv builds for python3. You need =E2=80=9Cpython3-opencv=E2=80=
=9D.
>
> Finally, I would encourage you to use CORE_IMAGE_EXTRA_INSTALL [3] rather
> than IMAGE_INSTALL in the local.conf context.
>
> [1] https://www.yoctoproject.org/docs/current/bitbake-user-
> manual/bitbake-user-manual.html#appending-and-prepending
> [2] http://cgit.openembedded.org/meta-openembedded/tree/
> meta-oe/recipes-support/opencv/opencv_3.3.bb?h=3Dmaster#n90
> [3] https://www.yoctoproject.org/docs/current/ref-manual/
> ref-manual.html#var-CORE_IMAGE_EXTRA_INSTALL
>
> On Thu, Mar 15, 2018 at 5:57 AM Robert P. J. Day <rpjday@crashcourse.ca>
> wrote:
>
>> On Thu, 15 Mar 2018, Peter Balazovic wrote:
>>
>> > Hello all,
>> > I have python module of OpenCV for python 2.7 on my Yocto image adding
>> via local.conf
>> >
>> > IMAGE_INSTALL_append +=3D =E2=80=9C python-opencv=E2=80=9D
>>
>>   i know i've harped on this before, but can people please stop
>> combining the constructs "_append" and "+=3D" in the same expression?
>>
>> rday--
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

--94eb2c08efa22da6a00567824aba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>That I was thinking to have =E2=80=9Cpython3-ope=
ncv=E2=80=9D but it&#39;s failing to build<br></div><br>I found opencv_3.1.=
bbappend with my sources where I see <br><br>PACKAGECONFIG_remove_imx =3D &=
quot;eigen python3&quot;<br><br></div>I guess that might causing a problem =
to build opencv for python3... I&#39;ll remove and check again to build.<br=
><div>=C2=A0<br></div><div>BTW what&#39;s the benefit of using CORE_IMAGE_E=
XTRA_INSTALL over IMAGE_INSTALL_append ?<br><br></div><div class=3D"gmail_e=
xtra"><br><div class=3D"gmail_quote">On Fri, Mar 16, 2018 at 6:29 AM, Tim O=
rling <span dir=3D"ltr">&lt;<a href=3D"mailto:ticotimo@gmail.com" target=3D=
"_blank">ticotimo@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex"><div><div dir=3D"auto">Ditto for Robert=E2=80=99s comment. Please =
look at the bitbake manual and understand what the syntax means [1].</div><=
br><div dir=3D"auto">Also, =C2=A0=E2=80=9Cpython-foo=E2=80=9D means the pyt=
hon2 version. The default PACKAGECONFIG [2] for opencv builds for python3. =
You need =E2=80=9Cpython3-opencv=E2=80=9D.</div></div><div dir=3D"auto"><br=
></div><div dir=3D"auto">Finally, I would encourage you to use CORE_IMAGE_E=
XTRA_INSTALL [3] rather than IMAGE_INSTALL in the local.conf context.</div>=
<div dir=3D"auto"><br></div><div dir=3D"auto">[1]=C2=A0<a href=3D"https://w=
ww.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-user-manual.ht=
ml#appending-and-prepending" target=3D"_blank">https://www.yoctoproject.<wb=
r>org/docs/current/bitbake-user-<wbr>manual/bitbake-user-manual.<wbr>html#a=
ppending-and-prepending</a></div><div><div dir=3D"auto">[2]=C2=A0<a href=3D=
"http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-suppor=
t/opencv/opencv_3.3.bb?h=3Dmaster#n90" target=3D"_blank">http://cgit.openem=
bedded.<wbr>org/meta-openembedded/tree/<wbr>meta-oe/recipes-support/<wbr>op=
encv/opencv_3.3.bb?h=3Dmaster#<wbr>n90</a></div><div dir=3D"auto">[3]=C2=A0=
<a href=3D"https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.=
html#var-CORE_IMAGE_EXTRA_INSTALL" target=3D"_blank">https://www.yoctoproje=
ct.<wbr>org/docs/current/ref-manual/<wbr>ref-manual.html#var-CORE_<wbr>IMAG=
E_EXTRA_INSTALL</a></div><br><div class=3D"gmail_quote"><div>On Thu, Mar 15=
, 2018 at 5:57 AM Robert P. J. Day &lt;<a href=3D"mailto:rpjday@crashcourse=
.ca" target=3D"_blank">rpjday@crashcourse.ca</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex">On Thu, 15 Mar 2018, Peter Balazovic wrote:<br>
<br>
&gt; Hello all,<br>
&gt; I have python module of OpenCV for python 2.7=C2=A0on my Yocto image a=
dding via local.conf<br>
&gt;<br>
&gt; IMAGE_INSTALL_append +=3D =E2=80=9C python-opencv=E2=80=9D<br>
<br>
=C2=A0 i know i&#39;ve harped on this before, but can people please stop<br=
>
combining the constructs &quot;_append&quot; and &quot;+=3D&quot; in the sa=
me expression?<br>
<br>
rday--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</blockquote></div></div>
</blockquote></div><br></div></div>

--94eb2c08efa22da6a00567824aba--
