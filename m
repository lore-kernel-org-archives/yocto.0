Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24991E00CC2; Thu, 21 Sep 2017 03:43:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.47 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2A1FE00CB4
	for <yocto@yoctoproject.org>; Thu, 21 Sep 2017 03:43:36 -0700 (PDT)
Received: by mail-wm0-f47.google.com with SMTP id m72so288980wmc.0
	for <yocto@yoctoproject.org>; Thu, 21 Sep 2017 03:43:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZoiHtMXzXAVTC5PXfc2KWNrvzSk8ux6zCrcvyr0sQdU=;
	b=IC4WyA+My7GI9W04yJSToPAdE2AQE+1xFghSmZBAQl2Bv/kNHJDO1GHkLE3HdMOwQU
	+WfK/BOQ2tVnnsGIJG4/2F5+mL4KIjyp283H5xYNu1vmU/bbuNUm+ovkoH+ZEVl3lmsI
	kdUUfujNV4D6hogfMBl+3F3ra3TiD1CfswAJvyaN3K2Ut+5K4bG2OQCWtGlpEaKy7Rh8
	r0MVtk7eHyJYZn95zYifm5dnJpxnw5UnciLZwMg4jAHsXYtgOAUS7OcKBkpYJDxh+D/e
	CupxbL2g1izgJx/nnLcStCnVvktaETF8cE96DXrF/6kBp6ae/EC3CpFsOGqI8KFH/iUt
	Jn0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZoiHtMXzXAVTC5PXfc2KWNrvzSk8ux6zCrcvyr0sQdU=;
	b=FfkITLnm8BY+QtQknKveN+++A4mxK1AuxhR/rdx9JjTrOT38o7HC8qsfB1mfzprOsZ
	eQzZjnU/bp+zr2ohNXoX3SNSpGJilE4DHwmW5hDQWGAOb8r+9dF5CKOPZG1A5qGHstsr
	kCmDGMO8ivbWJfr0T6D0aQImRagjT220obQO4WNgnwvJNbJFR0eg3KU9Gfoc7E/MxYPi
	ZM7NXKZs1nPc+kbSAkOBoiSzZATGk+dfrzMXEN7ALmHVDdTfztTk82jCmIs9sE9Wsmjc
	RFE+accZFIOzmM48IJpPpwoaXkzoVt+1Ly2lKrdh4DbnXQruNjotEC2A+d82ggovyPbe
	sj7A==
X-Gm-Message-State: AHPjjUj+EXPXFjS5OMCwNbxU/+Wb6S0hdwPgJj393aoheLTqUBlbqwWs
	CqZ/I95Zr61PPi4xxS3jrqbfJ2sPKAbFIcVkgG0=
X-Google-Smtp-Source: AOwi7QDkBmLCQPz54HWVU7D6UTdiJ5sHhvWzu+O1ZEvJaqPQXxirnWGo0TItreHKnxEscAoxSNLk2flrnq8WRIGoGWs=
X-Received: by 10.28.45.14 with SMTP id t14mr613969wmt.50.1505990615654; Thu,
	21 Sep 2017 03:43:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.147.202 with HTTP; Thu, 21 Sep 2017 03:43:35 -0700 (PDT)
In-Reply-To: <eda389cc3fd34e08bd7f37c17fae4fcf@XBOX02.axis.com>
References: <MWHPR01MB32939418BEF2C9C72FE13D57B6660@MWHPR01MB3293.prod.exchangelabs.com>
	<386119ba-a8ca-ccc6-0dde-26c01edc1c35@gmail.com>
	<eda389cc3fd34e08bd7f37c17fae4fcf@XBOX02.axis.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 21 Sep 2017 12:43:35 +0200
Message-ID: <CA+chaQcCvMNZ7AJ_=v52EHDYgXeW09tm8n8FuTu9CGrFcMZphw@mail.gmail.com>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Cc: Takashi Matsuzawa <tmatsuzawa@xevo.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: "(-)"??
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
X-List-Received-Date: Thu, 21 Sep 2017 10:43:38 -0000
Content-Type: multipart/alternative; boundary="001a11423646ae685b0559b0c365"

--001a11423646ae685b0559b0c365
Content-Type: text/plain; charset="UTF-8"

null and nothing can also be matched in MACHINE names, so to make sure
people should use:

COMPATIBLE_MACHINE = "(^$)"

On Thu, Sep 21, 2017 at 8:41 AM, Peter Kjellerstedt <
peter.kjellerstedt@axis.com> wrote:

> > -----Original Message-----
> > From: yocto-bounces@yoctoproject.org [mailto:yocto-
> > bounces@yoctoproject.org] On Behalf Of Khem Raj
> > Sent: den 21 september 2017 07:15
> > To: Takashi Matsuzawa <tmatsuzawa@xevo.com>; yocto@yoctoproject.org
> > Subject: Re: [yocto] "(-)"??
> >
> > On 9/20/17 8:18 PM, Takashi Matsuzawa wrote:
> > > Hello.
> > > I am seeing some of the recipes contains lines like below.
> > >
> > >> COMPATIBLE_MACHINE = "(-)"
> > >
> > > Sorry being novice, but what is the intended effect of this line?
> > > I can see submit comments that this is for blacklisting but I am not
> > > sure how it works.  It simply means a '-' letter?
> >
> > COMAPTIBLE_MACHINE uses regexp syntax
>
> Which actually makes that a pretty weird COMPATIBLE_MACHINE,
> especially if it is intended for blacklisting. Given that it would
> match any machine with a dash in it, it would match, e.g., qemux86-64
> but not qemux86. It would also happen to match about half of our
> machines which happen to have dashes in their names.
>
> A more appropriate way to blacklist machines using COMPATIBLE_MACHINE
> would be something like:
>
> COMPATIBLE_MACHINE = "null"
>
> or:
>
> COMPATIBLE_MACHINE = "nothing"
>
> I found two occurrences of "(-)" being used as COMPATIBLE_MACHINE in
> meta-openembedded for Morty and Pyro, but they have been removed for
> Rocko. If you see them anywhere else, consider changing them.
>
> //Peter
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11423646ae685b0559b0c365
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>null and nothing can also be matched in MACHINE names=
, so to make sure people should use:</div><div><br></div>COMPATIBLE_MACHINE=
 =3D &quot;(^$)&quot;<br></div><div class=3D"gmail_extra"><br><div class=3D=
"gmail_quote">On Thu, Sep 21, 2017 at 8:41 AM, Peter Kjellerstedt <span dir=
=3D"ltr">&lt;<a href=3D"mailto:peter.kjellerstedt@axis.com" target=3D"_blan=
k">peter.kjellerstedt@axis.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><span class=3D"">&gt; -----Original Message-----<br>
&gt; From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@=
yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-">yocto-</a><br>
&gt; <a href=3D"mailto:bounces@yoctoproject.org">bounces@yoctoproject.org</=
a>] On Behalf Of Khem Raj<br>
&gt; Sent: den 21 september 2017 07:15<br>
&gt; To: Takashi Matsuzawa &lt;<a href=3D"mailto:tmatsuzawa@xevo.com">tmats=
uzawa@xevo.com</a>&gt;; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoc=
toproject.org</a><br>
&gt; Subject: Re: [yocto] &quot;(-)&quot;??<br>
&gt;<br>
&gt; On 9/20/17 8:18 PM, Takashi Matsuzawa wrote:<br>
&gt; &gt; Hello.<br>
&gt; &gt; I am seeing some of the recipes contains lines like below.<br>
&gt; &gt;<br>
&gt; &gt;&gt; COMPATIBLE_MACHINE =3D &quot;(-)&quot;<br>
&gt; &gt;<br>
&gt; &gt; Sorry being novice, but what is the intended effect of this line?=
<br>
&gt; &gt; I can see submit comments that this is for blacklisting but I am =
not<br>
&gt; &gt; sure how it works.=C2=A0 It simply means a &#39;-&#39; letter?<br=
>
&gt;<br>
&gt; COMAPTIBLE_MACHINE uses regexp syntax<br>
<br>
</span>Which actually makes that a pretty weird COMPATIBLE_MACHINE,<br>
especially if it is intended for blacklisting. Given that it would<br>
match any machine with a dash in it, it would match, e.g., qemux86-64<br>
but not qemux86. It would also happen to match about half of our<br>
machines which happen to have dashes in their names.<br>
<br>
A more appropriate way to blacklist machines using COMPATIBLE_MACHINE<br>
would be something like:<br>
<br>
COMPATIBLE_MACHINE =3D &quot;null&quot;<br>
<br>
or:<br>
<br>
COMPATIBLE_MACHINE =3D &quot;nothing&quot;<br>
<br>
I found two occurrences of &quot;(-)&quot; being used as COMPATIBLE_MACHINE=
 in<br>
meta-openembedded for Morty and Pyro, but they have been removed for<br>
Rocko. If you see them anywhere else, consider changing them.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
//Peter<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5"><br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div>

--001a11423646ae685b0559b0c365--
