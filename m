Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CE91E00F26; Wed, 27 Jul 2016 18:32:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6259E00F20
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2016 18:32:40 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id h186so2711781pfg.2
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2016 18:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=yM7gHPIVQJXLoYV5mj4CO3JQc182YDsDQpgnN0zikQA=;
	b=c9Gbo3cdaiMMVUrFYj2Zn2N8rVcp6/yXKzPIhhrGscXvZzJTbswTKr8FNc4OwG+Az/
	ud73sGSaWjP8Z0aGG8gy7GLlEyr6IB1ofiX2RVdpdoH5IbkS2NQFquEpSHgFnJF3pYoy
	bywQgIf9ZGz9/gB2yPQlMui9LmXldGHlAjYodVTrzvAlEh36yzAUE5KyBfkyNmXkwRWU
	XiX9FVYk0O9HTcP3A79yIggu2EoIO8rqiEGkOcaTFdtO43vBIEFhwIYqG8JGIlbGrTut
	LLGGs3TH0nxLS7aFqCbrAzmc3DQI2CsRX8RRmZmR/CepunXmemiZY8FpA2aCa+zWAWoU
	klOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=yM7gHPIVQJXLoYV5mj4CO3JQc182YDsDQpgnN0zikQA=;
	b=mwDCb0POUgGJocUqVZ8W85FCtAiFNOk+/IDu7TzYiBf44pXV9JTmF/N8i5FBXzuj3m
	mCGucrzWcuCNO8tApSD/WVGbwzRVyhDw1K9y7ODoaWJttP86U/naveKk67GnIyz6ArTx
	uTbTJ9Zivzo7FDjfBbLZcZa/0j/i8kaA3B411Wo2inrWspawYq0xlbEuh6le8As+iIFT
	Jyjei24OOMV0oR2rpueQLQ7UuMF2wmfMhIQMXHpPiRjhd2H5uo+nHVSqx4KCe+ZteLfR
	E01EbnCAgLXSyFe7CuoV4jaCt3546lN6r7bu66Nv7QhdTdkC8av0qb9OdndTHP78YhaK
	etbQ==
X-Gm-Message-State: AEkoouusg5fVvTdpLzSpja6vBlm4Q8cs7wcG8juoGO8GQ+7eBIw5wVdHjrp7y7WFN4Sg1A==
X-Received: by 10.98.60.217 with SMTP id b86mr55001926pfk.129.1469669559719;
	Wed, 27 Jul 2016 18:32:39 -0700 (PDT)
Received: from [192.168.0.5] (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192])
	by smtp.gmail.com with ESMTPSA id fe8sm6509411pad.2.2016.07.27.18.32.37
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 27 Jul 2016 18:32:38 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAJ58UNno9BmFXRE82_8oZAVG=P+m9C4eD4M6x9J4ZBm7ZAG=Tw@mail.gmail.com>
Date: Wed, 27 Jul 2016 18:32:34 -0700
Message-Id: <6FF167E9-7DFA-4CDF-A962-8ACB7C9297F2@gmail.com>
References: <CAJ58UNmbwN3L=hDvW495x7J0F1Bu4kHDgdcDYtZOkAB77QEG3Q@mail.gmail.com>
	<CAJ58UNnqwa6VDch0BDihS7uYguTMTZmnwkgUabJG-i_ff--L5w@mail.gmail.com>
	<CAJ58UNno9BmFXRE82_8oZAVG=P+m9C4eD4M6x9J4ZBm7ZAG=Tw@mail.gmail.com>
To: Vijayakumar Badiger <vijayakumarmb@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: Compilation error while adding perf tool to the rootfs
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
X-List-Received-Date: Thu, 28 Jul 2016 01:32:44 -0000
X-Groupsio-MsgNum: 31271
Content-Type: multipart/signed;
	boundary="Apple-Mail=_D0D14890-ABD6-40DC-8734-76C9BCDC29C8";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_D0D14890-ABD6-40DC-8734-76C9BCDC29C8
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_7E00174D-1520-4BBC-B86E-07B2A6AD24FF"

--Apple-Mail=_7E00174D-1520-4BBC-B86E-07B2A6AD24FF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Jul 27, 2016, at 2:53 PM, Vijayakumar Badiger =
<vijayakumarmb@gmail.com> wrote:
>=20
> Please let me know if anyone is aware of this.. I am currently =
blocked, appreciate your help on this.Thanks.
>=20
> On Wed, Jul 27, 2016 at 11:49 AM, Vijayakumar Badiger =
<vijayakumarmb@gmail.com <mailto:vijayakumarmb@gmail.com>> wrote:
> Hello All
>=20
> We have a requirement here to set up the perf tool through our Yocto =
frame work.
> As Perf source comes with linux kernel under tools/perf ,so I added =
this perf tool to be installed
> as part of my rootfs image.
>=20
> But when I build the image I am getting error related to headerfile =
missing.
>=20
> fatal error: asm/preempt.h: No such file or directory

This file is not a user API. So you have to depend on virtual/kernel may =
be something like inherit kernelsrc
if you are using latest master.

>=20
> I checked for this header file I dont have this header file in my =
kernel arch/arm64/include/asm/
> Please can you let me know how to fix this issue. Thanks.
>=20
> Cheers,
> Vijay
>=20
>=20
> On Tue, Jul 26, 2016 at 7:17 PM, Vijayakumar Badiger =
<vijayakumarmb@gmail.com <mailto:vijayakumarmb@gmail.com>> wrote:
> Hello All,
>=20
> I am trying to integrate perf tool to my custom rootfs image, while =
bitbaking the perf I am getting below error.
>=20
>  fatal error: asm/preempt.h: No such file or directory
>=20
>=20
> Can you pls let me know how to fix this issue. Thanks.
>=20
> Cheers,
> Vijay
>=20
>=20
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_7E00174D-1520-4BBC-B86E-07B2A6AD24FF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jul 27, 2016, at 2:53 PM, Vijayakumar Badiger &lt;<a =
href=3D"mailto:vijayakumarmb@gmail.com" =
class=3D"">vijayakumarmb@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D"">Please let me know if anyone is aware of this.. I am =
currently blocked, appreciate your help on this.Thanks.</div><div =
class=3D"gmail_extra"><br class=3D""><div class=3D"gmail_quote">On Wed, =
Jul 27, 2016 at 11:49 AM, Vijayakumar Badiger <span dir=3D"ltr" =
class=3D"">&lt;<a href=3D"mailto:vijayakumarmb@gmail.com" =
target=3D"_blank" class=3D"">vijayakumarmb@gmail.com</a>&gt;</span> =
wrote:<br class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr" =
class=3D""><div class=3D"">Hello All</div><div class=3D""><br =
class=3D""></div><div class=3D"">We have a requirement here to set up =
the perf tool through our Yocto frame work.</div><div class=3D"">As Perf =
source comes with linux kernel under tools/perf ,so I added this perf =
tool to be installed</div><div class=3D"">as part of my rootfs =
image.</div><div class=3D""><br class=3D""></div><div class=3D"">But =
when I build the image I am getting error related to headerfile =
missing.</div><span class=3D""><div class=3D""><b class=3D""><br =
class=3D""></b></div><div class=3D""><b class=3D"">fatal error: =
asm/preempt.h: No such file or =
directory</b></div></span></div></blockquote></div></div></div></blockquot=
e><div><br class=3D""></div><div>This file is not a user API. So you =
have to depend on virtual/kernel may be something like&nbsp;inherit =
kernelsrc</div><div>if you are using latest master.</div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
class=3D"gmail_extra"><div class=3D"gmail_quote"><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><div dir=3D"ltr" class=3D""><span class=3D""><div =
class=3D""><br class=3D""></div></span><div class=3D"">I checked for =
this header file I dont have this header file in my kernel =
arch/arm64/include/asm/</div><div class=3D"">Please can you let me know =
how to fix this issue. Thanks.</div><div class=3D""><br =
class=3D""></div><div class=3D"">Cheers,</div><div =
class=3D"">Vijay</div><div class=3D""><br class=3D""></div></div><div =
class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><br =
class=3D""><div class=3D"gmail_quote">On Tue, Jul 26, 2016 at 7:17 PM, =
Vijayakumar Badiger <span dir=3D"ltr" class=3D"">&lt;<a =
href=3D"mailto:vijayakumarmb@gmail.com" target=3D"_blank" =
class=3D"">vijayakumarmb@gmail.com</a>&gt;</span> wrote:<br =
class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr" =
class=3D"">Hello All,<div class=3D""><br class=3D""></div><div =
class=3D"">I am trying to integrate perf tool to my custom rootfs image, =
while bitbaking the perf I am getting below error.</div><div =
class=3D""><br class=3D""></div><div class=3D""><div class=3D"">&nbsp;<b =
class=3D"">fatal error: asm/preempt.h: No such file or =
directory</b></div></div><div class=3D""><br class=3D""></div><div =
class=3D""><br class=3D""></div><div class=3D"">Can you pls let me know =
how to fix this issue. Thanks.</div><div class=3D""><br =
class=3D""></div><div class=3D"">Cheers,</div><div =
class=3D"">Vijay</div><div class=3D""><br class=3D""></div></div>
</blockquote></div><br class=3D""></div>
</div></div></blockquote></div><br class=3D""></div>
-- <br class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_7E00174D-1520-4BBC-B86E-07B2A6AD24FF--

--Apple-Mail=_D0D14890-ABD6-40DC-8734-76C9BCDC29C8
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAleZYLYACgkQuwUzVZGdMxRctACePstNIX7QsFJFcKg7nV5iWCD3
rwUAnRXDEf/aG4EifLu3fKG6u/MAbUDW
=jogk
-----END PGP SIGNATURE-----

--Apple-Mail=_D0D14890-ABD6-40DC-8734-76C9BCDC29C8--
