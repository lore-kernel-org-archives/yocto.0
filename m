Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDA59E00E4B; Thu, 21 Apr 2016 08:59:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f182.google.com (mail-ig0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F281E00CFE
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 08:59:43 -0700 (PDT)
Received: by mail-ig0-f182.google.com with SMTP id kb1so3087542igb.0
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 08:59:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kergoth-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=QvkPF97XWthplhuUbd35oVLjig136RIIvUWlhSqla6M=;
	b=zshRKLR47CAEbTvLlbnF4Iyvj0PavsmqUuibWk91Xq7rZjSg2XlE5u5S0xl+7TU2ki
	f5v6WppxQ/J0esu/X5vkfT3r2Vp/mgfsKrui1q5kllU4SxvyY/2Ai+OCDUi1qdppGyUl
	0ceSUO0kgbYj6rrKTu6y5dgczTjq/cE4wTzgRCc479d5/qx75OKFmX6rsO6rOo8MRgcM
	sEbbQ0xyo6dUURKCscnVdkSNViNTAGqy1KtznPIDKQEfziufRt/TVmdk3z0msjkYP2np
	IJA4yRrK+YBZhWPkDSL87eYwkIj8GlqHCrkd+W2/29QQEMCqMjI7UZ62o163spGoru/W
	FQRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=QvkPF97XWthplhuUbd35oVLjig136RIIvUWlhSqla6M=;
	b=lFpJ46M1tWsbgBySxnfRpJDENWrua+U/uIFZ3tpz9wK+1jTY+zF6BzLiWKG7wXc2/j
	GUgcc36pZ9znHD+nUj83BZv1/6taINocDyoQrKGaW1PJTIhKQwxum5FvvPpE0hnkhZhf
	HhdG/bg6BshYPDeqpEZxCRDRD7i8Z4Qw5HUsnrtkZvbS2Q14QqIqj1J0Um3KMMx9D6uQ
	lNy6N6P3Pi34fWP3HrthEIGRjChFebVFNDNd9i8G/NN2wS/fhTSeU1J2Fc80kkPbO6Ao
	ttAp+w+z5n5xq0jJtwS9qirjNSWeGb7Z9UMHoCwkXWMTzf8m+CgCUYwQtNAHYV1Kx4s/
	mIuw==
X-Gm-Message-State: AOPr4FXUPkCs/Ce7R/Ed75S1QFq0LaHyc2MSgbvbvPsXf1+xe9qIUQc61BbgI2zrsVkQ5Qc03qHSlBkbwN7BlA==
X-Received: by 10.50.3.66 with SMTP id a2mr4879896iga.87.1461254382583; Thu,
	21 Apr 2016 08:59:42 -0700 (PDT)
MIME-Version: 1.0
References: <KL1PR01MB1045496EC2AA630395CB8637B66E0@KL1PR01MB1045.apcprd01.prod.exchangelabs.com>
In-Reply-To: <KL1PR01MB1045496EC2AA630395CB8637B66E0@KL1PR01MB1045.apcprd01.prod.exchangelabs.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Thu, 21 Apr 2016 15:59:33 +0000
Message-ID: <CABcZAN=EO3ALnGuO5qfOyxTcjw4mqO35wGrCjSpojPk+AAAAzA@mail.gmail.com>
To: =?UTF-8?B?5p2cIOaYig==?= <stephanie2839@hotmail.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: what does ${libdir} refer to?
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
X-List-Received-Date: Thu, 21 Apr 2016 15:59:46 -0000
Content-Type: multipart/alternative; boundary=089e013d06e6669e4b053100ccd2

--089e013d06e6669e4b053100ccd2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

No, libdir is /usr/lib on the target. We never write to the host system
outside the build directory. do_install installs a lib into ${D}${libdir},
and then the contents of ${D} get split up into individual binary packages,
and those packages are then installed in a root filesystem and archived
into a rootfs image.

On Thu, Apr 21, 2016 at 8:53 AM =E6=9D=9C =E6=98=8A <stephanie2839@hotmail.=
com> wrote:

> Hello there!
>
> I have a question about the absolute path of ${libdir}.
>
> for example in poco recipe:
>
>
> here is:
>
> PACKAGES +=3D "${PN}-dev ${PN}-staticdev"
> FILES_${PN}-dev =3D "${includedir} ${libdir}/libPoco*.so ${libdir}/cmake"
> FILES_${PN}-staticdev =3D "${libdir}/libPoco*.a"
>
>
> i have searched for the yocto reference. In meta/conf/bitbake.conf we can
> see
>
>
> baselib =3D "${BASELIB}"
> BASELIB =3D "lib"
>
> # Path prefixes
> export exec_prefix =3D "/usr"
>
> # Architecture dependent paths
> export bindir =3D "${exec_prefix}/bin"
> export libdir =3D "${exec_prefix}/${baselib}"
>
> Does this mean that ${libdir} =3D/usr/lib in my host machine. But i
> can't find such libraries(libPoco*.so) in my host(ubuntu 14.04) under
> /usr/lib
> I think i misunderstand the absolute path of ${libdir}. Who can tell me
> the right meaning of this. Thanks for helping.
>
> regards
> hao du
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e013d06e6669e4b053100ccd2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">No, libdir is /usr/lib on the target. We never write to th=
e host system outside the build directory. do_install installs a lib into $=
{D}${libdir}, and then the contents of ${D} get split up into individual bi=
nary packages, and those packages are then installed in a root filesystem a=
nd archived into a rootfs image.</div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr">On Thu, Apr 21, 2016 at 8:53 AM =E6=9D=9C =E6=98=8A &lt;<a href=
=3D"mailto:stephanie2839@hotmail.com">stephanie2839@hotmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-size:12pt;color:#000000;background-color:#ffffff;font-fa=
mily:Calibri,Arial,Helvetica,sans-serif">
<p>Hello there!</p>
<p>I have a question about the absolute path of ${libdir}.</p>
<p>for example in poco recipe:</p>
<p><br>
</p>
<p>here is:</p>
<p></p>
<pre style=3D"padding:0px;margin-top:0px;margin-bottom:0px;font-size:13.333=
3px"><code>PACKAGES <span>+=3D</span> <span style=3D"color:rgb(191,3,3)">&q=
uot;${PN}-dev ${PN}-staticdev&quot;</span>
FILES_<span style=3D"color:rgb(1,1,129)">${PN}</span><span>-</span>dev <spa=
n>=3D</span> <span style=3D"color:rgb(191,3,3)">&quot;${includedir} ${libdi=
r}/libPoco*.so ${libdir}/cmake&quot;</span>
FILES_<span style=3D"color:rgb(1,1,129)">${PN}</span><span>-</span>staticde=
v <span>=3D</span> <span style=3D"color:rgb(191,3,3)">&quot;${libdir}/libPo=
co*.a&quot;</span></code></pre>
<br>
<p></p>
<p>i have searched for the yocto=C2=A0reference. In meta/conf/bitbake.conf =
we can see</p>
<p></p>
<div><br>
</div>
<div>
<div>baselib =3D &quot;${BASELIB}&quot;<br>
BASELIB =3D &quot;lib&quot;</div>
<br>
</div>
<div># Path prefixes<br>
export exec_prefix =3D &quot;/usr&quot;<br>
<br>
</div>
<div># Architecture dependent paths<br>
export bindir =3D &quot;${exec_prefix}/bin&quot;<br>
export libdir =3D &quot;${exec_prefix}/${baselib}&quot;<br>
<br>
Does this mean that ${libdir} =3D/usr/lib in my host machine. But i can&#39=
;t=C2=A0find such libraries(<code style=3D"font-size:13.3333px"><span style=
=3D"color:rgb(191,3,3)">libPoco*.so</span></code><span style=3D"font-size:1=
2pt">) in my host(ubuntu 14.04)
 under /usr/lib</span><br>
I think i misunderstand the absolute=C2=A0path of=C2=A0<span style=3D"font-=
family:Calibri,Arial,Helvetica,sans-serif,&#39;Apple Color Emoji&#39;,&#39;=
Segoe UI Emoji&#39;,NotoColorEmoji,&#39;Segoe UI Symbol&#39;,&#39;Android E=
moji&#39;,EmojiSymbols;font-size:16px">${libdir}. Who can tell
 me the right meaning of this. Thanks for helping.</span></div>
<div><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&#39;App=
le Color Emoji&#39;,&#39;Segoe UI Emoji&#39;,NotoColorEmoji,&#39;Segoe UI S=
ymbol&#39;,&#39;Android Emoji&#39;,EmojiSymbols;font-size:16px"><br>
</span></div>
<div><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&#39;App=
le Color Emoji&#39;,&#39;Segoe UI Emoji&#39;,NotoColorEmoji,&#39;Segoe UI S=
ymbol&#39;,&#39;Android Emoji&#39;,EmojiSymbols;font-size:16px">regards</sp=
an></div>
<div><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&#39;App=
le Color Emoji&#39;,&#39;Segoe UI Emoji&#39;,NotoColorEmoji,&#39;Segoe UI S=
ymbol&#39;,&#39;Android Emoji&#39;,EmojiSymbols;font-size:16px">hao du</spa=
n></div>
=C2=A0
<p></p>
</div>
</div>

--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--089e013d06e6669e4b053100ccd2--
