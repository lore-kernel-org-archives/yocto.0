Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77BE8E0077E; Tue, 17 Feb 2015 09:50:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2D95E00757
	for <yocto@yoctoproject.org>; Tue, 17 Feb 2015 09:50:55 -0800 (PST)
Received: by mail-wi0-f173.google.com with SMTP id bs8so35619221wib.0
	for <yocto@yoctoproject.org>; Tue, 17 Feb 2015 09:50:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=F4S9cBwLNgF8NsqFx5oqR2kr90y0krIGVHdWO/hFbSQ=;
	b=WU4tgZXZoTsaMT/p6JjvLJlymozS1AkvDokI16lksHxAjQLJ4nlFoJRaIQHy4hoQWx
	Nzxq8Lc8NqVlS509rEFKhz0vWN0Qs2+TT/hUlYWnqbRcdRG9lTyEPSHsH5MXjlL+AyaD
	RGXN7lRkGHeOn9f1YZp8nFbXyeajzMP1YVt0vuzwgQsE9ruB1LvqBQ6Trw8Ghu1x08t2
	tmZ9cIgCPG147vo1GSdWRSAPmhzzZPYDQXRyLX9Q0eeF3Mt2Vv4vjp5GuZvp779FKdbd
	aCYn+RjiZVlGtQKXmbCgzQwirQGy+9jB8k2tmTzeHMAIJlM2jrGirfUfrmxVEcX50i9M
	8LwQ==
MIME-Version: 1.0
X-Received: by 10.194.5.37 with SMTP id p5mr64759179wjp.20.1424195454008; Tue,
	17 Feb 2015 09:50:54 -0800 (PST)
Received: by 10.194.85.225 with HTTP; Tue, 17 Feb 2015 09:50:53 -0800 (PST)
In-Reply-To: <1424037551.20217.103.camel@linuxfoundation.org>
References: <CAMKF1souj1-FLTjkQb0y8myTiKMJyNeAa7wiM5-pW1fz0EtheA@mail.gmail.com>
	<CAJTo0LaN3HMhjrpii2pPbJw5zWbywgr1keZe=iQmuKFMFFf=gQ@mail.gmail.com>
	<CAMKF1sq8NsuNYZDQRPtXruBeRndOP+0qwBuTO2ahb6q-fS8XGw@mail.gmail.com>
	<CAJTo0LYpKbwOHg-DBMJycy+KNayTCsnhToJR8K-REKZ2jxhnhw@mail.gmail.com>
	<EA0C9DE9-9E5F-4B74-8464-138895268F2F@gmail.com>
	<CAJTo0LbSFesauhA_H39Znd07SR5JCs45izy2us=cFWVGXtW8hg@mail.gmail.com>
	<80920FD0-CA08-45D7-9A41-3971FB2D58D7@gmail.com>
	<CAJTo0LbqTrQzk0KeHDxYnmtZrrFdZD12DWrjA=Y4RtbQzwM0ow@mail.gmail.com>
	<CAMKF1sr7bYpKqzTmvX5rCuYc-Rb2se7Vsrr4aYA43E_b1Z=vWA@mail.gmail.com>
	<CACS+7ZRNm2Y0SJn76imF6DNoEsL2+ppC1zG45iGspOmL0EN0BQ@mail.gmail.com>
	<CAMKF1sqjQm+n5xKfS0utm9B9h_S+RYWrgnGUCboRNCk5XSUmzg@mail.gmail.com>
	<1423908404.20217.100.camel@linuxfoundation.org>
	<1424037551.20217.103.camel@linuxfoundation.org>
Date: Tue, 17 Feb 2015 18:50:53 +0100
Message-ID: <CA+chaQdaa+S3AC8YYzmHdv7beMxBzP_03C25Jn=5NiE=DxmGjg@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] upcoming glibc 2.21 and gcc 4.9 upgrade
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
X-List-Received-Date: Tue, 17 Feb 2015 17:50:59 -0000
Content-Type: multipart/alternative; boundary=047d7b5d5736208318050f4c58de

--047d7b5d5736208318050f4c58de
Content-Type: text/plain; charset=UTF-8

We should extend:
./meta/recipes-devtools/valgrind/valgrind/glibc-2.20.patch

to allow building valgrind with glibc-2.21, currently it fails with:

| checking the GLIBC_VERSION version... unsupported version 2.21
| configure: error: Valgrind requires glibc version 2.2 - 2.19
| Configure failed. The contents of all config.log files follows to aid
debugging
| ERROR: oe_runconf failed


On Sun, Feb 15, 2015 at 10:59 PM, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Sat, 2015-02-14 at 10:06 +0000, Richard Purdie wrote:
> > Hi Khem,
> >
> > On Thu, 2015-02-12 at 15:35 +0800, Khem Raj wrote:
> > > I have refreshed the branch to include the patch which moves the src
> > > uri to use the newly released glibc 2.21 branch
> > > and please run it via autobuilder ( top 5 commits )
> >
> > Its running on the autobuilder at the moment. Errors will be reported to
> > the error reporting system and can be seen at:
> >
> >
> http://errors.yoctoproject.org/Errors/Search/?items=10&query=be29d13a847d458efaf542ed302e48050f67a655
> >
> > Right now, poky-tiny failed due to warning are errors and unused
> > symbols. Minnow failed due to SSE instruction issues. Full build logs
> > are also available on the autobuilder:
> >
> > https://autobuilder.yoctoproject.org/main/tgrid
> >
> > as ross/mut-next. We do have other changes in the branch but the above
> > are pretty clearly glibc.
> >
> > Other errors will go to the places above as the builds complete/fail.
>
> FWIW I tested the gcc upgrade without glibc and that seems ok so I've
> merged that whilst we work out the issues with glibc.
>
> Cheers,
>
> Richard
>
> --
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core
>

--047d7b5d5736208318050f4c58de
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>We should extend:</div>./meta/recipes-devtools/valgri=
nd/valgrind/glibc-2.20.patch<br><div><br></div><div>to allow building valgr=
ind with glibc-2.21, currently it fails with:</div><div><br></div><div><div=
>| checking the GLIBC_VERSION version... unsupported version 2.21</div><div=
>| configure: error: Valgrind requires glibc version 2.2 - 2.19</div><div>|=
 Configure failed. The contents of all config.log files follows to aid debu=
gging</div><div>| ERROR: oe_runconf failed</div></div><div><br></div></div>=
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Sun, Feb 15, 2=
015 at 10:59 PM, Richard Purdie <span dir=3D"ltr">&lt;<a href=3D"mailto:ric=
hard.purdie@linuxfoundation.org" target=3D"_blank">richard.purdie@linuxfoun=
dation.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span cl=
ass=3D"">On Sat, 2015-02-14 at 10:06 +0000, Richard Purdie wrote:<br>
&gt; Hi Khem,<br>
&gt;<br>
&gt; On Thu, 2015-02-12 at 15:35 +0800, Khem Raj wrote:<br>
&gt; &gt; I have refreshed the branch to include the patch which moves the =
src<br>
&gt; &gt; uri to use the newly released glibc 2.21 branch<br>
&gt; &gt; and please run it via autobuilder ( top 5 commits )<br>
&gt;<br>
&gt; Its running on the autobuilder at the moment. Errors will be reported =
to<br>
&gt; the error reporting system and can be seen at:<br>
&gt;<br>
&gt; <a href=3D"http://errors.yoctoproject.org/Errors/Search/?items=3D10&am=
p;query=3Dbe29d13a847d458efaf542ed302e48050f67a655" target=3D"_blank">http:=
//errors.yoctoproject.org/Errors/Search/?items=3D10&amp;query=3Dbe29d13a847=
d458efaf542ed302e48050f67a655</a><br>
&gt;<br>
&gt; Right now, poky-tiny failed due to warning are errors and unused<br>
&gt; symbols. Minnow failed due to SSE instruction issues. Full build logs<=
br>
&gt; are also available on the autobuilder:<br>
&gt;<br>
&gt; <a href=3D"https://autobuilder.yoctoproject.org/main/tgrid" target=3D"=
_blank">https://autobuilder.yoctoproject.org/main/tgrid</a><br>
&gt;<br>
&gt; as ross/mut-next. We do have other changes in the branch but the above=
<br>
&gt; are pretty clearly glibc.<br>
&gt;<br>
&gt; Other errors will go to the places above as the builds complete/fail.<=
br>
<br>
</span>FWIW I tested the gcc upgrade without glibc and that seems ok so I&#=
39;ve<br>
merged that whilst we work out the issues with glibc.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
--<br>
_______________________________________________<br>
Openembedded-core mailing list<br>
<a href=3D"mailto:Openembedded-core@lists.openembedded.org">Openembedded-co=
re@lists.openembedded.org</a><br>
<a href=3D"http://lists.openembedded.org/mailman/listinfo/openembedded-core=
" target=3D"_blank">http://lists.openembedded.org/mailman/listinfo/openembe=
dded-core</a><br>
</div></div></blockquote></div><br></div>

--047d7b5d5736208318050f4c58de--
