Return-Path: <navani.srivastava@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1B33E0086E; Wed, 24 Sep 2014 00:44:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (navani.srivastava[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D581E00786
	for <yocto@yoctoproject.org>; Wed, 24 Sep 2014 00:44:35 -0700 (PDT)
Received: by mail-ie0-f171.google.com with SMTP id rd18so6287778iec.30
	for <yocto@yoctoproject.org>; Wed, 24 Sep 2014 00:44:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=MrgOOZF3TdRErsq6fXcf2ntuCXmWUzdf8/zykXybqTw=;
	b=WzRPJF3a1jcStaJA145PmTWP7x0/mV92QO/66WekRyhcMjsus3oYDgMN0rNnf7oF+t
	rtRNdJnqUJWOpgpnY56kg2XDqSm38beNVPlt9JCGL39uXjq204qiEiDVS71paRNfjAFo
	OGDgC9h+XH14eA/i48J1I6KrYRBu4cH/AQQ0gMCM4QUX4m6uEvhk43ZL+ONbZvweSsht
	96rbmGOAKFT7Hla2I16pkItY64iIkAQzeqwBGBQdvMTk+0F+cfgOvowktWUUvXS9HxXL
	2dkuvwrDhje8lcmc4N1YcWvYL/1I86sZn8FJwKpj+ojAXVJtH0ipJ9LK86lx6oxM6G41
	+VOg==
MIME-Version: 1.0
X-Received: by 10.43.155.13 with SMTP id lg13mr9032845icc.15.1411544675070;
	Wed, 24 Sep 2014 00:44:35 -0700 (PDT)
Received: by 10.107.132.217 with HTTP; Wed, 24 Sep 2014 00:44:34 -0700 (PDT)
Received: by 10.107.132.217 with HTTP; Wed, 24 Sep 2014 00:44:34 -0700 (PDT)
In-Reply-To: <2064454.kM4kxd3gIa@peggleto-mobl5.ger.corp.intel.com>
References: <CA+Z6RkW1D8pPpGCTu_SwF5Q+d0Um-MuYQM3mtube=u2txu0V6A@mail.gmail.com>
	<CAMKF1sqc0+V0V__Ot1T_Qzd-DPpTK4OF9ooAz2EOEEXfT-S-aQ@mail.gmail.com>
	<CA+Z6RkUeUs0=EQ3adks8jBYbEQkiA6G8iP+Em8_YzHSGo2124Q@mail.gmail.com>
	<2064454.kM4kxd3gIa@peggleto-mobl5.ger.corp.intel.com>
Date: Wed, 24 Sep 2014 13:14:34 +0530
Message-ID: <CA+Z6RkXJWR0R6et_mz3kQatXCkRTzE85HaLHi2BKA8b6Ywq2mQ@mail.gmail.com>
From: Navani Srivastava <navani.srivastava@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org,
	Navani Srivastava <navani.srivastava@lnttechservices.com>
Subject: Re: Integration of custom recipe with SDK
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
X-List-Received-Date: Wed, 24 Sep 2014 07:44:36 -0000
Content-Type: multipart/alternative; boundary=001a11c22eb6f137830503cada6b

--001a11c22eb6f137830503cada6b
Content-Type: text/plain; charset=UTF-8

Yes.. i did...
On 24 Sep 2014 12:56, "Paul Eggleton" <paul.eggleton@linux.intel.com> wrote:

> On Wednesday 24 September 2014 10:26:41 Navani Srivastava wrote:
> > I corrected FILES_${PN} and added following in my image recipe-
> > QTNAME = "qte"
> > QT_DIR_NAME = "qtopia"
> > require recipes-qt/meta/meta-toolchain-qt.bb
> >
> > but that didn't make any difference related to SDK integration. On
> > executing 'bitbake -v <MyImageName>', it is generating rootfs and sdk, in
> > which contains rootfs contains qjson libraries but sdk doesn't integrate
> > anything.
>
> To generate the SDK you'd need to also do bitbake -c populate_sdk
> <imagename>
> - you did do that as well after making the changes to the recipe, right ?
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--001a11c22eb6f137830503cada6b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Yes.. i did...</p>
<div class=3D"gmail_quote">On 24 Sep 2014 12:56, &quot;Paul Eggleton&quot; =
&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com">paul.eggleton@linux.in=
tel.com</a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x">On Wednesday 24 September 2014 10:26:41 Navani Srivastava wrote:<br>
&gt; I corrected FILES_${PN} and added following in my image recipe-<br>
&gt; QTNAME =3D &quot;qte&quot;<br>
&gt; QT_DIR_NAME =3D &quot;qtopia&quot;<br>
&gt; require recipes-qt/meta/<a href=3D"http://meta-toolchain-qt.bb" target=
=3D"_blank">meta-toolchain-qt.bb</a><br>
&gt;<br>
&gt; but that didn&#39;t make any difference related to SDK integration. On=
<br>
&gt; executing &#39;bitbake -v &lt;MyImageName&gt;&#39;, it is generating r=
ootfs and sdk, in<br>
&gt; which contains rootfs contains qjson libraries but sdk doesn&#39;t int=
egrate<br>
&gt; anything.<br>
<br>
To generate the SDK you&#39;d need to also do bitbake -c populate_sdk &lt;i=
magename&gt;<br>
- you did do that as well after making the changes to the recipe, right ?<b=
r>
<br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</blockquote></div>

--001a11c22eb6f137830503cada6b--
