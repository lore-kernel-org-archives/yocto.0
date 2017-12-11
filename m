Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE2BCE00D83; Mon, 11 Dec 2017 06:24:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f182.google.com (mail-qt0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFCA6E00D55
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 06:23:59 -0800 (PST)
Received: by mail-qt0-f182.google.com with SMTP id u10so38849738qtg.2
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 06:23:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=naV6Q8APicnuyi/uDm91JcEJmq0dVRtg0xKfnD5jOI4=;
	b=LIV/MSKV4tuP6FqR7bjFxpeMJDisL1ZulMVnrKf8Ka1V1Lf6dcNzLGZ3rc47/5l3zR
	lHPW+mKPyZc45l7/2x8JsYzQjaOSjcleTAVmTUNJ44jE5M9PXfSfULQ7HpekHa6PbQVo
	5NB4nOFcwUBfP8var3jxR+mondB/PeAlXmqWdowhHN8LLIOKEO4r75eBy3uZRuD1n3zG
	lYDKzo3KNTgCUzDFzR+Tc1qb7dIGhUcP6etiwe1o1B3HInFsWAGXA2DpIonMSR/0UOvW
	O1t6K8DMdMkss5fG7uR2EUxBTE6ssl9xHvB4acCqp25Mdtp4In+5KZPDiOZQu7rXNrsK
	sjhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=naV6Q8APicnuyi/uDm91JcEJmq0dVRtg0xKfnD5jOI4=;
	b=OWTXxB2Gh8+7kGMAjpv9vobEtW8TkwIMXWInW240wy+k64c8ksd3PCR5eTJd8DHjtT
	5kjo0PajR0qksY1vdCx4spAex2DFVYrzZS9S69LsyTr0ez4SUn6Q/033cESq+7mLkqiR
	MgvE+/u5AA+cjyi92RsNZWO2StE2j3z5oLb6xlHsVo+W2eyd+PFh7Qf5v5PlEUsXOuhl
	6RKUIp+FyhbPNnlSnM41M5+HrFOhHjzN3WrWcXsvAnr18MJUHJz7G/NmCG3MA6/okYc/
	WHvNG2+WIm1x0D2GVmMcdgPQAH9qzWdywVom0p2niK9+r6F4F4l8wPcHim90wG6ZifYZ
	q5bA==
X-Gm-Message-State: AKGB3mKjElQgcmYzq21A7X5zQxfzSgATcOXsXnt/2rfZKfvfhuK0Nbnr
	rIbG77TcIiws4PbNC2GCh2sb0gRPvBOuBB8VerptQg==
X-Google-Smtp-Source: ACJfBoudhc8eAT9wR+y3h1ZinOWFCPHwpNiuS38Ba4mE3J+WT1mfc+GlbVFKBfRVC8llZE9bI4xqsPWpjv6hL2Epx3o=
X-Received: by 10.200.56.137 with SMTP id f9mr772219qtc.116.1513002238661;
	Mon, 11 Dec 2017 06:23:58 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.21.241 with HTTP; Mon, 11 Dec 2017 06:23:58 -0800 (PST)
In-Reply-To: <CAPyrkgz8n9WWx4TdVbXgh-8cZB2tApCaBJ5APvS5GLQ6XhVp6g@mail.gmail.com>
References: <CAF3SDA5n9M_fcVY-5GCC0WV3tGhyz7Fqa49iocUPurufBsrq+A@mail.gmail.com>
	<CAPyrkgz8n9WWx4TdVbXgh-8cZB2tApCaBJ5APvS5GLQ6XhVp6g@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Mon, 11 Dec 2017 12:23:58 -0200
Message-ID: <CAF3SDA54Wqd89m0s6W3PVq1k0A24nwWXfXXbfFpBGCRDdynqPg@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: VPS for building and serving.
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
X-List-Received-Date: Mon, 11 Dec 2017 14:24:01 -0000
Content-Type: multipart/alternative; boundary="001a113b8d26fad8380560114850"

--001a113b8d26fad8380560114850
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the feedback Paul,

I thinking about compiling with own server and only serving the packages
online..

Regards,

2017-12-11 9:12 GMT-02:00 Paul Barker <pbarker@toganlabs.com>:

> On Sun, Dec 10, 2017 at 1:15 PM, Daniel. <danielhilst@gmail.com> wrote:
> > Hi,
> >
> > Is there anybody using VPS for building and serving packages? What plan=
s
> you
> > do recommend?
>
> I don't recommend using a VPS, they tend to get expensive for the spec
> you need for a Yocto build. You want plenty of RAM, CPU and disk
> space.
>
> I use Hetzner for everything and I'm pretty happy with them. They have
> a server auction system that's good if you don't need a
> top-of-the-line machine: https://www.hetzner.com/sb
>
> Let me know if you need any more specific advice.
>
> Cheers,
>
> --
> Paul Barker
> Tog=C3=A1n Labs Ltd
>



--=20
=E2=80=9CIf you're going to try, go all the way. Otherwise, don't even star=
t. ..."
  Charles Bukowski

--001a113b8d26fad8380560114850
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Thanks for the feedback Paul,<br><br></div>I thi=
nking about compiling with own server and only serving the packages online.=
.<br><br></div>Regards,<br></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">2017-12-11 9:12 GMT-02:00 Paul Barker <span dir=3D"ltr">&l=
t;<a href=3D"mailto:pbarker@toganlabs.com" target=3D"_blank">pbarker@toganl=
abs.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Sun, Dec 10, 2=
017 at 1:15 PM, Daniel. &lt;<a href=3D"mailto:danielhilst@gmail.com">daniel=
hilst@gmail.com</a>&gt; wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; Is there anybody using VPS for building and serving packages? What pla=
ns you<br>
&gt; do recommend?<br>
<br>
I don&#39;t recommend using a VPS, they tend to get expensive for the spec<=
br>
you need for a Yocto build. You want plenty of RAM, CPU and disk<br>
space.<br>
<br>
I use Hetzner for everything and I&#39;m pretty happy with them. They have<=
br>
a server auction system that&#39;s good if you don&#39;t need a<br>
top-of-the-line machine: <a href=3D"https://www.hetzner.com/sb" rel=3D"nore=
ferrer" target=3D"_blank">https://www.hetzner.com/sb</a><br>
<br>
Let me know if you need any more specific advice.<br>
<br>
Cheers,<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
Paul Barker<br>
Tog=C3=A1n Labs Ltd<br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div clas=
s=3D"gmail_signature" data-smartmail=3D"gmail_signature">=E2=80=9CIf you&#3=
9;re going to try, go all the way. Otherwise, don&#39;t even start. ...&quo=
t; <br>=C2=A0 Charles Bukowski</div>
</div>

--001a113b8d26fad8380560114850--
