Return-Path: <einar@vading.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6365E00BE8; Tue, 25 Jul 2017 23:06:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.172 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.172 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f172.google.com (mail-qt0-f172.google.com
	[209.85.216.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BD39E00BAF
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 23:06:26 -0700 (PDT)
Received: by mail-qt0-f172.google.com with SMTP id v29so20431220qtv.3
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 23:06:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vading.se; s=google;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=/NREaxGbrfAS4ynP1vBEn5KlCq/18DvTijiGA0X/7wM=;
	b=AZg8Z1C2oRH6akUwRyf/F7Y+EQJ2X2+hKDFjxKHVb6C+0zAIzOqPjGTOHrsW9bOc2z
	QVmJBasTje6/H88bvVdswpGWQuIYfFSXy6IUzMMdsDUsKum1ekjbMk+u/BcqfAwvqkbT
	Z6mIbNsrr6wUqi04q2cc5okwfBzqQJuUg8gmc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=/NREaxGbrfAS4ynP1vBEn5KlCq/18DvTijiGA0X/7wM=;
	b=aQh20VU6rzqf7aMbyJLmucfFH9aCgfgmGBXmPsSfH4Wcn+TPxvusqac4Gu6L8CYzga
	zASp2I/YhNpnYq7Oj6j1/VTAArO+20lYI9qAvx29QeH6/PrSuuPvG9bYEoSo/P3ggJ+2
	7mrGrFfVjEM+NqSvUAPHUsV2jsDnGYOCe04FnFxXQx7fpoJ7N/+fFA8kxGyP3AozSppj
	4s4ZzxcGtgaR2Znd19uAG8OtdWDaWOsfc4AlJOAbcYhGmTsQvd5/3XlL8WgATHnKFOXO
	XPb0NXF0boJsDD3zLeHeVDh2uDlre7fs7nQYJgI1ra1CknQrsaNPl2OllkCZGx9ztNQI
	FDjg==
X-Gm-Message-State: AIVw110OFk7SCbCiI9x5ykhGjhVualJq7DvabJEwSUBzb0n3GrMl/6Ec
	Y9pr5/5EJ0psy8lQmOrDFiGDDGJ4pNS83ltXjg==
X-Received: by 10.200.2.133 with SMTP id p5mr28146877qtg.330.1501049186542;
	Tue, 25 Jul 2017 23:06:26 -0700 (PDT)
MIME-Version: 1.0
Sender: einar@vading.se
Received: by 10.140.30.70 with HTTP; Tue, 25 Jul 2017 23:06:25 -0700 (PDT)
X-Originating-IP: [195.60.68.157]
In-Reply-To: <1500302882.5349.110.camel@linux.intel.com>
References: <1500278455-5712-1-git-send-email-pierre.ficheux@smile.fr>
	<1500300247.5349.105.camel@linux.intel.com>
	<CAJTo0LYvGfA-QxNt42AQrT71ExA5Raf=VP6mxTOwPua8TCViZA@mail.gmail.com>
	<1500302882.5349.110.camel@linux.intel.com>
From: Einar Vading <yocto-ml@vading.se>
Date: Wed, 26 Jul 2017 08:06:25 +0200
X-Google-Sender-Auth: 3uxHTI4ObZu2U0fB7LYqJOOGq8o
Message-ID: <CAB6-VtKE+yj2ODVzwBnA-6PkYfq_d-ysLaVsByQSW2yPEZvbOg@mail.gmail.com>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] Added missing CPPFLAGS/CFLAGS/LDFLAGS in sample recipe for morty branch
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
X-List-Received-Date: Wed, 26 Jul 2017 06:06:27 -0000
Content-Type: multipart/alternative; boundary="f4030435b8cc8dfe450555323fe2"

--f4030435b8cc8dfe450555323fe2
Content-Type: text/plain; charset="UTF-8"

On Mon, Jul 17, 2017 at 4:48 PM, Leonardo Sandoval <
leonardo.sandoval.gonzalez@linux.intel.com> wrote:

> On Mon, 2017-07-17 at 15:30 +0100, Burton, Ross wrote:
> >
> > On 17 July 2017 at 15:04, Leonardo Sandoval
> > <leonardo.sandoval.gonzalez@linux.intel.com> wrote:
> >         master has the second line (LDFLAGS) but not the first one
> >         (CPPFLAGS and
> >         CFLAGS) so the problem may also be present on master. Would
> >         you mind
> >         checking this and sent patches to the poky mailing list?
> >
> >
> > The GNU_HASH warning is triggered by ignoring LDFLAGS.
>
> Got it, so definitely LDFLAGS var is missing, not sure if the rest are
> necessary for this simple hello world recipe.
> Leo
>

I had this problem to and IIRC i fixed it by moving the LDFLAGS variable to
the end of the line
> +          ${CC} helloworld.o -o helloworld  ${LDFLAGS}

>
> >
> > Ross
>
>
Einar

--f4030435b8cc8dfe450555323fe2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Mon, Jul 17, 2017 at 4:48 PM, Leonardo Sandoval <span dir=3D"ltr">&l=
t;<a href=3D"mailto:leonardo.sandoval.gonzalez@linux.intel.com" target=3D"_=
blank">leonardo.sandoval.gonzalez@linux.intel.com</a>&gt;</span> wrote:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><span class=3D"gmail-">On=
 Mon, 2017-07-17 at 15:30 +0100, Burton, Ross wrote:<br>
&gt;<br>
&gt; On 17 July 2017 at 15:04, Leonardo Sandoval<br>
&gt; &lt;<a href=3D"mailto:leonardo.sandoval.gonzalez@linux.intel.com">leon=
ardo.sandoval.gonzalez@<wbr>linux.intel.com</a>&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0master has the second line (LDFLAGS) =
but not the first one<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(CPPFLAGS and<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0CFLAGS) so the problem may also be pr=
esent on master. Would<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0you mind<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0checking this and sent patches to the=
 poky mailing list?<br>
&gt;<br>
&gt;<br>
&gt; The GNU_HASH warning is triggered by ignoring LDFLAGS.<br>
<br>
</span>Got it, so definitely LDFLAGS var is missing, not sure if the rest a=
re<br>
necessary for this simple hello world recipe.<br>
Leo<br></blockquote><div><br></div><div>I had this problem to and IIRC i fi=
xed it by moving the LDFLAGS variable to the end of the line</div><div>&gt;=
 + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${CC} helloworld.o -o helloworld =C2=
=A0${LDFLAGS}<br></div><div><br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">
&gt;<br>
&gt;<br>
&gt; Ross<br>
<div class=3D"gmail-HOEnZb"><div class=3D"gmail-h5"><br></div></div></block=
quote><div><br></div><div>Einar=C2=A0</div></div></div></div>

--f4030435b8cc8dfe450555323fe2--
