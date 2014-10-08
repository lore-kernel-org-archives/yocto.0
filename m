Return-Path: <navani.srivastava@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AD99E00853; Wed,  8 Oct 2014 02:49:27 -0700 (PDT)
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
	*      [209.85.213.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 085CCE007C1
	for <yocto@yoctoproject.org>; Wed,  8 Oct 2014 02:49:24 -0700 (PDT)
Received: by mail-ig0-f181.google.com with SMTP id r10so7744419igi.14
	for <yocto@yoctoproject.org>; Wed, 08 Oct 2014 02:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=pmJ4zBelTomRlVuRsiLbunnJAcRcAP24OJPj9cl2roE=;
	b=PAmuYufQAmmcP5mfKy2ludadhryY6W9c90bHxJWQSj1uHFvT7m7IfzxmjVb51aEDfu
	U432VMWyMYoikhQE5ArKMWqfWmMXimVRpjplCvZj0AjwxUeLHjRvV12k0nTEuNnpUyeJ
	y++4nd6t/QK3hyszseTr6ys8g8QvXyQpah1QoeGuztNGsmz0zCV4g7/aeZSuQ/5s20WP
	x8/9C1BdHcgy5KESfqwFpNvwH7AXPw3smrBorwfQWHegyF5oN8KrbkoZKakHxpRU079D
	BhDR0XbvrAYmiOmpgzAicqUyp4Adgpw7A4kBGqIEch/yXjlyJ7Ky2fRwd0loqqPjO3+A
	hajg==
X-Received: by 10.50.33.71 with SMTP id p7mr4640709igi.4.1412761399319; Wed,
	08 Oct 2014 02:43:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.132.211 with HTTP; Wed, 8 Oct 2014 02:42:59 -0700 (PDT)
In-Reply-To: <5424DC2A.1060002@gmail.com>
References: <CA+Z6RkW1D8pPpGCTu_SwF5Q+d0Um-MuYQM3mtube=u2txu0V6A@mail.gmail.com>
	<CAMKF1sqc0+V0V__Ot1T_Qzd-DPpTK4OF9ooAz2EOEEXfT-S-aQ@mail.gmail.com>
	<CA+Z6RkUeUs0=EQ3adks8jBYbEQkiA6G8iP+Em8_YzHSGo2124Q@mail.gmail.com>
	<2064454.kM4kxd3gIa@peggleto-mobl5.ger.corp.intel.com>
	<CA+Z6RkXJWR0R6et_mz3kQatXCkRTzE85HaLHi2BKA8b6Ywq2mQ@mail.gmail.com>
	<CA+Z6RkUk5zeR3SiYd_ce2cY0-9fDSErhZuO4h2h9V-2ckp9icQ@mail.gmail.com>
	<5424DC2A.1060002@gmail.com>
From: Navani Srivastava <navani.srivastava@gmail.com>
Date: Wed, 8 Oct 2014 15:12:59 +0530
Message-ID: <CA+Z6RkWgtKsxQX-xD8tf0DrcUZ=XicDYOSAs1KQCJvEwxf_dsw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Navani Srivastava <navani.srivastava@lnttechservices.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 08 Oct 2014 09:49:27 -0000
Content-Type: multipart/alternative; boundary=089e0153898c5be2b40504e625dc

--089e0153898c5be2b40504e625dc
Content-Type: text/plain; charset=UTF-8

>>when populate_sdk gives you an SDK I dont understand why this is a
requirement
Now i remember.. This link was the reason that I was not using populate_sdk
to build SDK for me..
 "https://lists.yoctoproject.org/pipermail/yocto/2013-August/015771.html"

I still tried to build through populate_sdk and have faced the same issue
in SDK as mentioned in the link.

Regards
Navani

On Fri, Sep 26, 2014 at 8:53 AM, Khem Raj <raj.khem@gmail.com> wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
>
>
> On 9/24/14 5:01 AM, Navani Srivastava wrote:
> > Removing integration of meta-toolchain-qte from my image helped in
> building
> > qjson as a part of SDK when running bitbake -c populate_sdk -v <myimage>
> or
> > bitbake <myimage>.
> >
>
> OK. Thats what is expected.
>
> > Integration of meta-toolchain-qte might need some more modifications.
> >
> > Still as a requirement, I need to integrate my custom recipe with
> > meta-toolchain-qte to generate SDK having custom recipe as a tool.
>
> when populate_sdk gives you an SDK I dont understand why this is a
> requirement
>
>  I have
> > created nativesdk bb file for custom recipe to integrate it via
> > nativesdk-packagegroup-qte-toolchain-host.bb but no luck..
> >
> > On Wed, Sep 24, 2014 at 1:14 PM, Navani Srivastava <
> > navani.srivastava@gmail.com> wrote:
> >
> >> Yes.. i did...
> >> On 24 Sep 2014 12:56, "Paul Eggleton" <paul.eggleton@linux.intel.com>
> >> wrote:
> >>
> >>> On Wednesday 24 September 2014 10:26:41 Navani Srivastava wrote:
> >>>> I corrected FILES_${PN} and added following in my image recipe-
> >>>> QTNAME = "qte"
> >>>> QT_DIR_NAME = "qtopia"
> >>>> require recipes-qt/meta/meta-toolchain-qt.bb
> >>>>
> >>>> but that didn't make any difference related to SDK integration. On
> >>>> executing 'bitbake -v <MyImageName>', it is generating rootfs and sdk,
> >>> in
> >>>> which contains rootfs contains qjson libraries but sdk doesn't
> integrate
> >>>> anything.
> >>>
> >>> To generate the SDK you'd need to also do bitbake -c populate_sdk
> >>> <imagename>
> >>> - you did do that as well after making the changes to the recipe,
> right ?
> >>>
> >>> Cheers,
> >>> Paul
> >>>
> >>> --
> >>>
> >>> Paul Eggleton
> >>> Intel Open Source Technology Centre
> >>>
> >>
> >
>
> - --
> - -Khem
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG/MacGPG2 v2.0.22 (Darwin)
> Comment: GPGTools - https://gpgtools.org
>
> iEYEARECAAYFAlQk3CoACgkQuwUzVZGdMxS3EgCfVUdFehr4kmLrXfLy6jN25Q0e
> YSAAn3Dhe/y2xVpFYtpTtDMGCA7qOQR5
> =FZTr
> -----END PGP SIGNATURE-----
>

--089e0153898c5be2b40504e625dc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&gt;&gt;<span style=3D"font-family:arial,sans-serif;font-s=
ize:13px">when populate_sdk gives you an SDK I dont understand why this is =
a</span><br style=3D"font-family:arial,sans-serif;font-size:13px"><span sty=
le=3D"font-family:arial,sans-serif;font-size:13px">requirement</span><div>N=
ow i remember.. This link was the reason that I was not using populate_sdk =
to build SDK for me..</div><div>=C2=A0&quot;<a href=3D"https://lists.yoctop=
roject.org/pipermail/yocto/2013-August/015771.html">https://lists.yoctoproj=
ect.org/pipermail/yocto/2013-August/015771.html</a>&quot;=C2=A0<br></div><d=
iv><br></div><div>I still tried to build through populate_sdk and have face=
d the same issue in SDK as mentioned in the link.</div><div><br></div><div>=
Regards</div><div>Navani</div></div><div class=3D"gmail_extra"><br><div cla=
ss=3D"gmail_quote">On Fri, Sep 26, 2014 at 8:53 AM, Khem Raj <span dir=3D"l=
tr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gm=
ail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">-----BEGIN =
PGP SIGNED MESSAGE-----<br>
Hash: SHA1<br>
<span class=3D""><br>
<br>
<br>
On 9/24/14 5:01 AM, Navani Srivastava wrote:<br>
&gt; Removing integration of meta-toolchain-qte from my image helped in bui=
lding<br>
&gt; qjson as a part of SDK when running bitbake -c populate_sdk -v &lt;myi=
mage&gt; or<br>
&gt; bitbake &lt;myimage&gt;.<br>
&gt;<br>
<br>
</span>OK. Thats what is expected.<br>
<span class=3D""><br>
&gt; Integration of meta-toolchain-qte might need some more modifications.<=
br>
&gt;<br>
&gt; Still as a requirement, I need to integrate my custom recipe with<br>
&gt; meta-toolchain-qte to generate SDK having custom recipe as a tool.<br>
<br>
</span>when populate_sdk gives you an SDK I dont understand why this is a<b=
r>
requirement<br>
<div><div class=3D"h5"><br>
=C2=A0I have<br>
&gt; created nativesdk bb file for custom recipe to integrate it via<br>
&gt; <a href=3D"http://nativesdk-packagegroup-qte-toolchain-host.bb" target=
=3D"_blank">nativesdk-packagegroup-qte-toolchain-host.bb</a> but no luck..<=
br>
&gt;<br>
&gt; On Wed, Sep 24, 2014 at 1:14 PM, Navani Srivastava &lt;<br>
&gt; <a href=3D"mailto:navani.srivastava@gmail.com">navani.srivastava@gmail=
.com</a>&gt; wrote:<br>
&gt;<br>
&gt;&gt; Yes.. i did...<br>
&gt;&gt; On 24 Sep 2014 12:56, &quot;Paul Eggleton&quot; &lt;<a href=3D"mai=
lto:paul.eggleton@linux.intel.com">paul.eggleton@linux.intel.com</a>&gt;<br=
>
&gt;&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt;&gt; On Wednesday 24 September 2014 10:26:41 Navani Srivastava wrot=
e:<br>
&gt;&gt;&gt;&gt; I corrected FILES_${PN} and added following in my image re=
cipe-<br>
&gt;&gt;&gt;&gt; QTNAME =3D &quot;qte&quot;<br>
&gt;&gt;&gt;&gt; QT_DIR_NAME =3D &quot;qtopia&quot;<br>
&gt;&gt;&gt;&gt; require recipes-qt/meta/<a href=3D"http://meta-toolchain-q=
t.bb" target=3D"_blank">meta-toolchain-qt.bb</a><br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; but that didn&#39;t make any difference related to SDK int=
egration. On<br>
&gt;&gt;&gt;&gt; executing &#39;bitbake -v &lt;MyImageName&gt;&#39;, it is =
generating rootfs and sdk,<br>
&gt;&gt;&gt; in<br>
&gt;&gt;&gt;&gt; which contains rootfs contains qjson libraries but sdk doe=
sn&#39;t integrate<br>
&gt;&gt;&gt;&gt; anything.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; To generate the SDK you&#39;d need to also do bitbake -c popul=
ate_sdk<br>
&gt;&gt;&gt; &lt;imagename&gt;<br>
&gt;&gt;&gt; - you did do that as well after making the changes to the reci=
pe, right ?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Cheers,<br>
&gt;&gt;&gt; Paul<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; --<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Paul Eggleton<br>
&gt;&gt;&gt; Intel Open Source Technology Centre<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
<br>
</div></div>- --<br>
- -Khem<br>
-----BEGIN PGP SIGNATURE-----<br>
Version: GnuPG/MacGPG2 v2.0.22 (Darwin)<br>
Comment: GPGTools - <a href=3D"https://gpgtools.org" target=3D"_blank">http=
s://gpgtools.org</a><br>
<br>
iEYEARECAAYFAlQk3CoACgkQuwUzVZGdMxS3EgCfVUdFehr4kmLrXfLy6jN25Q0e<br>
YSAAn3Dhe/y2xVpFYtpTtDMGCA7qOQR5<br>
=3DFZTr<br>
-----END PGP SIGNATURE-----<br>
</blockquote></div><br></div>

--089e0153898c5be2b40504e625dc--
