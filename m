Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5AD05E00798; Thu, 28 Aug 2014 13:15:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.sueiro[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qa0-f43.google.com (mail-qa0-f43.google.com
	[209.85.216.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8ADC4E00507
	for <yocto@yoctoproject.org>; Thu, 28 Aug 2014 13:15:46 -0700 (PDT)
Received: by mail-qa0-f43.google.com with SMTP id cm18so1226835qab.2
	for <yocto@yoctoproject.org>; Thu, 28 Aug 2014 13:15:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=O+JLSNmTBL5gY1RApORLHJ0+THweGSQE6TDAMG98G+c=;
	b=nzd/T5jHlZdod68Zqx7N7e5Ki4wKySSHLYtNzNdN9D8HyNIIskFMgZZ9ikvKVJYkef
	e+fGVEqRJ3esqPke92nloKU5NhQlus759YndR6J+eDMUz5nnIKWsBzoR0ZBOIGIbbfnO
	+aaFdc1H7a2C7D9kZ4L/Tf/d9kwXKbkLeNeKJ7k/Ccjjs7M3nRjgs/Pm4aG8a050nuY4
	p9U54A1uXNwo75SMIV3W1Vs7e43p5tPbqAf72QwiY13Ba7s6sM78kLJUk3xWz2tQ7zBv
	qNYURYO5Y0lwGJnvRow+n30ntgtQkXctA6wqIbIC9B15wuUYKer0ww1sZ1wZTsqk1lnx
	WOTg==
X-Received: by 10.229.206.68 with SMTP id ft4mr10456751qcb.28.1409256946069;
	Thu, 28 Aug 2014 13:15:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.83 with HTTP; Thu, 28 Aug 2014 13:15:26 -0700 (PDT)
In-Reply-To: <20140828072729.GE13139@haswell>
References: <CA+JN8xNsPD_Fi2e7nyTfq6Vje0ssz_eSdxjicussA94B0pSU3g@mail.gmail.com>
	<CABcZANnRi__cWdrruHYB8JLc1=Q7oj=DPMCLUwYPm72W0roC0Q@mail.gmail.com>
	<CA+JN8xMgr_eSpOU7B6tWjnP0HaqhGGB4gc0rv0RkP8b=hX883w@mail.gmail.com>
	<20140828072729.GE13139@haswell>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Thu, 28 Aug 2014 17:15:26 -0300
Message-ID: <CAMCfZKFgPcGEyHmnJs-3fSBwAPJwCbAaDawEiELDLX1HL5xstQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Christopher Larson <clarson@kergoth.com>
Subject: Re: Image that depends on another image
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
X-List-Received-Date: Thu, 28 Aug 2014 20:15:55 -0000
Content-Type: multipart/alternative; boundary=001a11c309eeaaf98f0501b633eb

--001a11c309eeaaf98f0501b633eb
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Aug 28, 2014 at 4:27 AM, Khem Raj <raj.khem@gmail.com> wrote:

> On 14-08-27 06:43:09, Seth Bollinger wrote:
> > On Thu, Aug 21, 2014 at 7:25 PM, Christopher Larson <clarson@kergoth.com
> >
> > wrote:
> >
> > >
> > > On Thu, Aug 21, 2014 at 5:08 PM, Seth Bollinger <seth.boll@gmail.com>
> > > wrote:
> > >
> > >> Our device requires two images to be built.  Is there any way to have
> the
> > >> first image depend on the second image?
> > >
> > >
> > > do_rootfs[depends] += "some-other-image:do_rootfs" would probably do.
> > >
> >
> > I hate to resurrect this thread, but after testing this out and using it
> we
> > ran into a small hiccup.  Since we're using the second image to generate
> a
> > second partition, a lot of the dependencies actually need to be injected
> > into the first image (users, utilities, etc.).  Is there a way to do
> this?
>
> First image is a normal image too, so keep adding to RDEPENDS or
> IMAGE_INSTALL inside that image recipe, there could be rootfs port
> processing functions to tweak the content even


Or he can create a packagegroup in which can be used for both image recipes?

Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br
<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

--001a11c309eeaaf98f0501b633eb
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Aug 28, 2014 at 4:27 AM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"=
mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</sp=
an> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb adM"><div class=3D"">On=
 14-08-27 06:43:09, Seth Bollinger wrote:<br>
&gt; On Thu, Aug 21, 2014 at 7:25 PM, Christopher Larson &lt;<a href=3D"mai=
lto:clarson@kergoth.com">clarson@kergoth.com</a>&gt;<br>
&gt; wrote:<br>
&gt;<br>
&gt; &gt;<br>
&gt; &gt; On Thu, Aug 21, 2014 at 5:08 PM, Seth Bollinger &lt;<a href=3D"ma=
ilto:seth.boll@gmail.com">seth.boll@gmail.com</a>&gt;<br>
&gt; &gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt;&gt; Our device requires two images to be built.=A0 Is there any w=
ay to have the<br>
&gt; &gt;&gt; first image depend on the second image?<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; do_rootfs[depends] +=3D &quot;some-other-image:do_rootfs&quot; wo=
uld probably do.<br>
&gt; &gt;<br>
&gt;<br>
&gt; I hate to resurrect this thread, but after testing this out and using =
it we<br>
&gt; ran into a small hiccup.=A0 Since we&#39;re using the second image to =
generate a<br>
&gt; second partition, a lot of the dependencies actually need to be inject=
ed<br>
&gt; into the first image (users, utilities, etc.).=A0 Is there a way to do=
 this?<br>
<br>
</div></div>First image is a normal image too, so keep adding to RDEPENDS o=
r<br>
IMAGE_INSTALL inside that image recipe, there could be rootfs port<br>
processing functions to tweak the content even</blockquote></div><br>Or he =
can create a packagegroup in which can be used for both image recipes?<br><=
br clear=3D"all"><div><div dir=3D"ltr"><div>Regards,</div><div><br></div>--=
<br>

*dS<br>Diego Sueiro<br><br>Administrador do Embarcados<br><a href=3D"http:/=
/www.embarcados.com.br/?utm_source=3Dassinatura_diego&amp;utm_medium=3De-ma=
il&amp;utm_campaign=3DAssinatura%20Email%20Diego" target=3D"_blank">www.emb=
arcados.com.br</a><br>

<br>/*long live rock &#39;n roll*/<br></div></div>
</div></div>

--001a11c309eeaaf98f0501b633eb--
