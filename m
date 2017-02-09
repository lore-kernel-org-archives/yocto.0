Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 820A2E0095F; Thu,  9 Feb 2017 07:00:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.171 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA56CE006D8
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2017 07:00:31 -0800 (PST)
Received: by mail-qk0-f171.google.com with SMTP id s140so6913798qke.0
	for <yocto@yoctoproject.org>; Thu, 09 Feb 2017 07:00:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=tw14VNer6KXSgZjiJ4sfIKhg4yHce1ef+XkPchtCd9c=;
	b=MOV1ZLv1y+DZEbrItJmggmmG5CkaoElq3KpaHpRIz+puf19Tg4SzzEV2rKPgXquAam
	kH3apnRrqm2J9hFOsBCstZgk98EiImJSUZYYa5PY2nAEIK+oFt8nsYLnHlvkLEx6W/Cf
	nOyxYyquT+vmagh0sSBL2yThByujt4V5t6fpAXZaqIpmWfeSsKf84ibolm4DKhMG44Yz
	wYJMrWF6rizOzjpsuRscvGwNXiyL78RfFY+Nn/Em3dprPHDTJYvAI/ysV1jXnZwuaUbL
	E9+t20vxT04aoUZBRx+h9qZpB4tqL/lPEbzSGwtZCVbjw3NqE6smCAOwPiPt1y/CUFvC
	sRAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=tw14VNer6KXSgZjiJ4sfIKhg4yHce1ef+XkPchtCd9c=;
	b=g4rlkPFrj3VjeB6tyMxxzcz2bxhlsRt/SxcLUrCX6BetBB5ckIQQm2Gow5KRSh2Hi2
	rPLYLt3ukUHzxrIs8U4yav3Dv0okgF3nqWf4AHlEitlX9UgCC/EH2C1VTTaS5AE8okMk
	PxPUdWw5MpVj5ycu/a1JBZHa2pZ6ciFzUpV1YoefXooMn91ChJGMRwS4Cl5jrO1jPOT4
	+sZTwWYhw05nEJ1d83WvkxtjFIkKAvoYg8DqNLZBOI2EzNa7i6OBpkqvz6EvXOOrsilB
	xymT4Sgyy+JHSJYQVwaobmKbVXIZ5/V9luokB5RuvFFpDKKK0gFtTTBKSTJcNUlJEkQV
	cyeQ==
X-Gm-Message-State: AMke39kuYc16r0FigdclR1OdugInQd+/C+bJ/KJwfQVt7T/ZkdwY3zBcP3b5m8LcF+LGxnVYGvrbJidMzgzBbNR5
X-Received: by 10.55.47.4 with SMTP id v4mr3233942qkh.77.1486652429260; Thu,
	09 Feb 2017 07:00:29 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Thu, 9 Feb 2017 07:00:08 -0800 (PST)
In-Reply-To: <4e4199cf-0232-ee6c-07a7-f02cbaacb8a7@mlbassoc.com>
References: <8dce4c37-30db-f5aa-69b7-7c9653769994@mlbassoc.com>
	<CAJTo0LY01P0Mvtj1kmYsrmugk0Sz1exk3JoiWwNGkuKQbi3FHA@mail.gmail.com>
	<1e710ec0-80d0-ecc5-dedd-1ea0b29e2a10@mlbassoc.com>
	<4e4199cf-0232-ee6c-07a7-f02cbaacb8a7@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 9 Feb 2017 15:00:08 +0000
Message-ID: <CAJTo0Lb2jp1_TozU7n=UrDdOarBRD16V889bPtv2g+8Q80yUNA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Trimming images
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
X-List-Received-Date: Thu, 09 Feb 2017 15:00:34 -0000
Content-Type: multipart/alternative; boundary=001a114f4108f39dbe05481a3d43

--001a114f4108f39dbe05481a3d43
Content-Type: text/plain; charset=UTF-8

On 9 February 2017 at 14:39, Gary Thomas <gary@mlbassoc.com> wrote:

> I can see in the usbutils recipe
>   RDEPENDS_${PN} = "udev-hwdb"
>
> If I have this, shouldn't that override it? or maybe it's because
> the actual package is eudev-hwdb and not udev-hwdb?
>   BAD_RECOMMENDATIONS = " eudev-hwdb"
>

Recommends != depends.

BAD_RECOMMENDATIONS only applies to packages that are selected via
RRECOMMENDS.

Ross

--001a114f4108f39dbe05481a3d43
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 9 February 2017 at 14:39, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span>=
 wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><div id=3D":2fs" class=3D"a3s aXj=
CH m15a235f7109c8306">I can see in the usbutils recipe<br>
=C2=A0 RDEPENDS_${PN} =3D &quot;udev-hwdb&quot;<br>
<br>
If I have this, shouldn&#39;t that override it? or maybe it&#39;s because<b=
r>
the actual package is eudev-hwdb and not udev-hwdb?<br>
=C2=A0 BAD_RECOMMENDATIONS =3D &quot; eudev-hwdb&quot;</div></blockquote></=
div><br>Recommends !=3D depends.</div><div class=3D"gmail_extra"><br></div>=
<div class=3D"gmail_extra">BAD_RECOMMENDATIONS only applies to packages tha=
t are selected via RRECOMMENDS.</div><div class=3D"gmail_extra"><br></div><=
div class=3D"gmail_extra">Ross</div></div>

--001a114f4108f39dbe05481a3d43--
