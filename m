Return-Path: <vincent.prince.fr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C199E00BFF; Thu, 17 Oct 2019 09:33:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_IMAGE_ONLY_32,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (vincent.prince.fr[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.52 listed in list.dnswl.org]
	* 0.0 HTML_IMAGE_ONLY_32 BODY: HTML: images with 2800-3200 bytes of
	words *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com
	[209.85.166.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9B38E0098A
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2019 09:33:55 -0700 (PDT)
Received: by mail-io1-f52.google.com with SMTP id n26so3760521ioj.8
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2019 09:33:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=702R+WR5J3SXpaF+af5Y7QZA/drILeJdB0JiX/8nxfc=;
	b=q+oOAXdH8BCvNSMLSVPdyOi8E52umg0hxbp41GjLV6xHP8hY6Ee40UNM8a3e8EeQLJ
	WLHqeJJ4dwVqR93vUTCJVO7qzc9TMpMEgtkyPWnpvyO0K2bRMaF6GxaoO4pN3ACYM8iZ
	J7r9fsbYhCCxGzO5vddDyS4+WWHIJoEeUWQV8FZw8HwOIqokrG2mIED+3OzhzreKaKp2
	U1gpeSeXUXgQ+/RH2PpY+o7wuKoUV+nCtOaCvqW6DNZofaXAvfZ4l19qf8+mx+y/qWJD
	bAUaiDhLNJih285McL9H9PdrilUQl/18AWSJ6mea9QKD8YqF5T7AFhEbGtNaLUQKN453
	2kwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=702R+WR5J3SXpaF+af5Y7QZA/drILeJdB0JiX/8nxfc=;
	b=FKTK6LcfWp2A84Kg/rxj1GX0eSnqXSsY1F57d3xiXSHlPcUETjGdKVkyy2VATVXu0q
	urHAcy31a6dXr+fVZtkDL8W0F+o99qzpAjYLtCveNxdPGZB/7Xa7scjrxrRLeDYzSN/A
	7Pm8Cev6lqkziqnj+FzeWZBj5lRBAfAdBfRB/jEMKX3wJEjItcWtaPM1sDkXdkNfAG22
	Zg1S2DspI2vUn5H4rKlRtN7cszBHgPiOetdpVyD9goJnagMh3z/B+ydOfh8wH1FZ2w68
	26HKohnAhu//XutrnJK7cj+uQ8TMnsLSqus6Pjy5xlbEpm6sLdGnaGlTlbSt7Yo6q6/+
	Xzyg==
X-Gm-Message-State: APjAAAXyHkkNa4fURge7dB6fOSKx+vo+S57fYUhJ2TKc5+WgHZUCDUJb
	aTz+7f2FH3S6UP2o7Z+f6fOIv9gQZLRCbcEMzDLykg==
X-Google-Smtp-Source: APXvYqxMSGKDK/XDxx2qVdOFec6TJ/OmdnEVNx0UXqY+3lwmTn093hyGsLpr52dJUtd6SXOtgJ40C3rAb1SWcnk2SxI=
X-Received: by 2002:a5e:c302:: with SMTP id a2mr3782215iok.295.1571330035233; 
	Thu, 17 Oct 2019 09:33:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAHyAnn0L4Z6t3UFXKi08K1DkKbrWwDHMmgMmgWrFAd5oTpRdKw@mail.gmail.com>
	<CAHyAnn1d=3OFADTF2PXq2aen=rYH3qzQaqN6kJXYfpNKdLHgBA@mail.gmail.com>
In-Reply-To: <CAHyAnn1d=3OFADTF2PXq2aen=rYH3qzQaqN6kJXYfpNKdLHgBA@mail.gmail.com>
From: Vincent Prince <vincent.prince.fr@gmail.com>
Date: Thu, 17 Oct 2019 18:33:44 +0200
Message-ID: <CAB2nKc8MoKL1=HGB_sFmTOKea=RxQfop5HJVPsZQ7fe75+vcVw@mail.gmail.com>
To: Itay Sperling <itay.sperling@argus-sec.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: meta-selinux | meson-enable-selinux breaks
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
X-List-Received-Date: Thu, 17 Oct 2019 16:33:57 -0000
Content-Type: multipart/alternative; boundary="0000000000009339e705951dc87a"

--0000000000009339e705951dc87a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

See patch here https://patchwork.openembedded.org/series/20519/#

Le jeu. 17 oct. 2019 =C3=A0 17:19, Itay Sperling <itay.sperling@argus-sec.c=
om> a
=C3=A9crit :

> Hi,
> I just built Yocto (warrior) with meta-selinux and got this error:
>
>> meson.build:1:0: ERROR:  Value disabled is not boolean (true or false).
>
>
> It appears the file *classes/meson-enable-selinux.bbclass* has incorrect
> values.
>
> Attached a patch that fixes the problem.
>
> Itay
>
> [image: Argus Logo]
> *Itay Sperling* *|* Software Engineer, *Argus **Cyber Security Ltd.*
> itay.sperling@argus-sec.com *|*
> www.argus-sec.com *|*
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000009339e705951dc87a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">See patch here <a href=3D"https://patchwork.openembedded.=
org/series/20519/#">https://patchwork.openembedded.org/series/20519/#</a></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Le=
 jeu. 17 oct. 2019 =C3=A0 17:19, Itay Sperling &lt;<a href=3D"mailto:itay.s=
perling@argus-sec.com">itay.sperling@argus-sec.com</a>&gt; a =C3=A9crit=C2=
=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div dir=
=3D"ltr" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=
=3D"ltr">Hi,<br></div></div></div></div></div><div class=3D"gmail_quote"><d=
iv dir=3D"ltr">I just built Yocto (warrior) with meta-selinux and got this =
error:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">meson.build:1:0=
: ERROR: =C2=A0Value disabled is not boolean (true or false).</blockquote><=
br>It appears the file <i>classes/meson-enable-selinux.bbclass</i>=C2=A0has=
 incorrect values.<br><br>Attached a patch that fixes=C2=A0the problem.<br>=
<br>Itay<br><br clear=3D"all"><div><div dir=3D"ltr" data-smartmail=3D"gmail=
_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><table style=3D"font-siz=
e:13px;color:rgb(0,0,0);font-family:helvetica,arial"><tbody><tr><td style=
=3D"padding:0px 5px 0px 0px;border-width:0px 1px 0px 0px;border-right-style=
:solid;border-right-color:rgb(204,204,204)"><img src=3D"https://argus-sec.c=
om/wp-content/uploads/2016/06/email-signature.png" alt=3D"Argus Logo" title=
=3D"Argus Logo" style=3D"vertical-align:middle;border:none;margin-right:0px=
;width:120px;height:50px;max-height:50px"></td><td style=3D"padding:0px 0px=
 0px 5px;border:0px;outline:0px"><table cellspacing=3D"0" cellpadding=3D"0"=
 border=3D"0"><tbody><tr><td><span style=3D"color:rgb(0,114,177)"><b>Itay S=
perling</b>=C2=A0</span><b style=3D"color:rgb(136,136,136)">|</b>=C2=A0<fon=
t color=3D"#888888"><span style=3D"font-size:12px">Software Engineer,=C2=A0=
</span></font><font color=3D"#888888"><span style=3D"font-size:12px"></span=
></font><span style=3D"color:rgb(136,136,136);font-size:11px"><i><b>Argus=
=C2=A0</b></i></span><span style=3D"color:rgb(136,136,136);font-size:11px">=
<i><b>Cyber Security Ltd.</b></i></span></td></tr><tr><td><span style=3D"fo=
nt-size:11px"><a href=3D"mailto:itay.sperling@argus-sec.com" style=3D"color=
:rgb(128,128,128)" target=3D"_blank" rel=3D"noreferrer">itay.sperling@argus=
-sec.com</a><font color=3D"#808080">=C2=A0</font><b style=3D"color:rgb(169,=
169,169)">|</b><font color=3D"#0000ff">=C2=A0</font></span></td></tr><tr><t=
d style=3D"font-size:11px"><a href=3D"https://www.argus-sec.com/" style=3D"=
color:rgb(128,128,128)" target=3D"_blank" rel=3D"noreferrer">www.argus-sec.=
com</a>=C2=A0<span style=3D"color:rgb(169,169,169)"><b>|</b></span>=C2=A0</=
td></tr></tbody></table></td></tr></tbody></table></div></div></div></div><=
/div></div>
</div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" rel=3D"noreferr=
er">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
 noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yoct=
o</a><br>
</blockquote></div>

--0000000000009339e705951dc87a--
