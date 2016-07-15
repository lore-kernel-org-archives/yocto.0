Return-Path: <mtl1nuxd3v@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 212DFE00F3E; Fri, 15 Jul 2016 05:57:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtl1nuxd3v[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f170.google.com (mail-yw0-f170.google.com
	[209.85.161.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B873E006E9
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2016 05:56:58 -0700 (PDT)
Received: by mail-yw0-f170.google.com with SMTP id l125so100694813ywb.2
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2016 05:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=4WzHK9HEy5UVayMCWvuXJim2N5ob1s8qXeBntGAv3fk=;
	b=Dzvhbxujhkboti7v4XI+/CCDmroXtwZddy7zbvpkoI+XU7hcU4APFTBRi3PcAlXpED
	S/xtIIQrYQQDCdr9estNyJCtY1Gt+WIz7PTuDebrfRKw18Ah4lDE73drvrx5Zd5RpY8d
	abWI/+TJofLsinv/Nk4/xngHCC/0h2m4Ml2RML27Cejp+Sx7v+SNT0nUF+VecZ2fyjGt
	HNK4HPF1qC4fpdchREyfh1caqsbDj7Olu9ck5Y8L3P8PL715A6LUJcwqmc65783pMAT6
	F7ADOMA8a6OE8DtZ0WD49YFLONG4vQQOjOddWHyk2nC89O3Kl95mvW5bfTBIOkvMbXE2
	CoEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=4WzHK9HEy5UVayMCWvuXJim2N5ob1s8qXeBntGAv3fk=;
	b=g7grB8lOBmJ153LhN1qc5XohUypwJStAQXndGL/DzXI66gvc/hlxsoDrgEMOG/QTlv
	WBBnoY0D4e1Ssg20+i3d7qF5Vowm8HkWwMDWRH7OpCW3T3qcDyqUQBEUUGHQm0ZX2Fz2
	fujVE67hai/nIumcW9vTXKSst00eGO1lzkpT5a3UqaH/B+Y4CCYweuHLm+tmqSNvO+um
	a9lT0SAwtc5aDL6YXlS67rFZYN4TmIz/oXuasyPzaWqqTtHrBTejUKUWdTfLn4Z7BTeb
	AnKUt8T5KC+PKFL8NEJRzspwByJakLeviHEEaWFThwJoVC54NBfYdzDqFHab6gY4PC5A
	+h/w==
X-Gm-Message-State: ALyK8tLGpIz67QCqW4y9GcTKhwLDgAOYhIoW4hoyI1nxK5Qy+Ny8uxBKLgLR1R41OKA/Ust9YQEBIQ0U0p29hw==
X-Received: by 10.13.237.6 with SMTP id w6mr13847736ywe.140.1468587417673;
	Fri, 15 Jul 2016 05:56:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.77.7 with HTTP; Fri, 15 Jul 2016 05:56:57 -0700 (PDT)
In-Reply-To: <CAP71WjyAVTUW1AYU6ouDvXOn_3ExuM2zytcXEjctRq1C6vQcWw@mail.gmail.com>
References: <CALf_N3YxDKyEKA++cioGfn6WHzo7sUbBZfccajduZ33dCJoUGQ@mail.gmail.com>
	<CAP71WjyAVTUW1AYU6ouDvXOn_3ExuM2zytcXEjctRq1C6vQcWw@mail.gmail.com>
From: Mark T <mtl1nuxd3v@gmail.com>
Date: Fri, 15 Jul 2016 13:56:57 +0100
Message-ID: <CALf_N3bPSVJR56jJjLxBtWYwRiP6X8pDFJ5pO2mFMU60hdZbhA@mail.gmail.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: bitbake parsing but not attempting to build recipes in layer.
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
X-List-Received-Date: Fri, 15 Jul 2016 12:57:01 -0000
Content-Type: multipart/alternative; boundary=94eb2c0882ee5a23150537ac27d8

--94eb2c0882ee5a23150537ac27d8
Content-Type: text/plain; charset=UTF-8

Thanks Nicolas,

I nearly had it - I'd put IMAGE_INSTALL_APPEND in my layer.conf - once I
changed to _append and had a space before the recipe name it sprang into
life.

On 15 July 2016 at 11:35, Nicolas Dechesne <nicolas.dechesne@linaro.org>
wrote:

> On Fri, Jul 15, 2016 at 2:26 PM, Mark T <mtl1nuxd3v@gmail.com> wrote:
> > I have several recipes in a layer. I have added the layer to
> > build/conf/bblayers.conf.
> >
> > The layer.conf in that layer looks correct for the BBFILES+= etc.
> >
> > when I run "bitbake core-image-base" the recipes are bing parsed ( as it
> > picked up errors for missing dependencies). With those fixed it runs
> clean
> > and builds successfully - but its omitted the recipes from my layer -
> there
> > is nothing in build/tmp/work etc
> >
> > If I build my_recipe from my layer via
> > "bitbake my_recipe"     it builds and I see products in build/tmp/work
> etc.
> >
> > Any idea why its not attempting to build my_recipe  when using bitbake
> > core-image-base ?
>
> You need to add your custom packages into the image. By default, they
> won't be there , nor would they be built (but as you noticed your
> recipes are being parsed).
>
> see
> http://www.yoctoproject.org/docs/2.1/dev-manual/dev-manual.html#usingpoky-extend-customimage
>

--94eb2c0882ee5a23150537ac27d8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks Nicolas,<br><br></div>I nearly had it - I&#39;=
d put IMAGE_INSTALL_APPEND in my layer.conf - once I changed to _append and=
 had a space before the recipe name it sprang into life.<br></div><div clas=
s=3D"gmail_extra"><br><div class=3D"gmail_quote">On 15 July 2016 at 11:35, =
Nicolas Dechesne <span dir=3D"ltr">&lt;<a href=3D"mailto:nicolas.dechesne@l=
inaro.org" target=3D"_blank">nicolas.dechesne@linaro.org</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Fri, Jul 15, 2016=
 at 2:26 PM, Mark T &lt;<a href=3D"mailto:mtl1nuxd3v@gmail.com">mtl1nuxd3v@=
gmail.com</a>&gt; wrote:<br>
&gt; I have several recipes in a layer. I have added the layer to<br>
&gt; build/conf/bblayers.conf.<br>
&gt;<br>
&gt; The layer.conf in that layer looks correct for the BBFILES+=3D etc.<br=
>
&gt;<br>
&gt; when I run &quot;bitbake core-image-base&quot; the recipes are bing pa=
rsed ( as it<br>
&gt; picked up errors for missing dependencies). With those fixed it runs c=
lean<br>
&gt; and builds successfully - but its omitted the recipes from my layer - =
there<br>
&gt; is nothing in build/tmp/work etc<br>
&gt;<br>
&gt; If I build my_recipe from my layer via<br>
&gt; &quot;bitbake my_recipe&quot;=C2=A0 =C2=A0 =C2=A0it builds and I see p=
roducts in build/tmp/work etc.<br>
&gt;<br>
&gt; Any idea why its not attempting to build my_recipe=C2=A0 when using bi=
tbake<br>
&gt; core-image-base ?<br>
<br>
</span>You need to add your custom packages into the image. By default, the=
y<br>
won&#39;t be there , nor would they be built (but as you noticed your<br>
recipes are being parsed).<br>
<br>
see <a href=3D"http://www.yoctoproject.org/docs/2.1/dev-manual/dev-manual.h=
tml#usingpoky-extend-customimage" rel=3D"noreferrer" target=3D"_blank">http=
://www.yoctoproject.org/docs/2.1/dev-manual/dev-manual.html#usingpoky-exten=
d-customimage</a><br>
</blockquote></div><br></div>

--94eb2c0882ee5a23150537ac27d8--
