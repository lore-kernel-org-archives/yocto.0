Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7BAFE00ED2; Tue, 12 Jul 2016 02:46:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A0E2E00EAE
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2016 02:46:12 -0700 (PDT)
Received: by mail-io0-f178.google.com with SMTP id b62so11411298iod.3
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2016 02:46:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=29oixEDeEvcI5JmaaJ+84oHkagQPlQFmgamwOb/XjWc=;
	b=LZ0rmxGtzzBNQkLgS5uCObpg8h+IXLrufKPMtX4MVorYmKSbZpFMKVhSt2fCTmtsRv
	MEILsXMpTeYvL+Ouj1Tp+vZc+YcifkBO94zzFojDEMJSfGzcZY/iP8O1JmBsqq7HDKKF
	EmMgUz/gJFh5Z0w28vPxZQ8Xr4rYwEJXVLVSOPgC1lRO6NVFeTKlpZfAdvz5u/SPd2Ys
	won+RxaG0M0NotjxXXS4XRutksM+lzGauXlNka1oTNLoMaqzpooSaNWT2wX8/+lQKLZu
	eNtr+WeA/g6qLAKohEqHPDrB3MWH19bUeGm/ONysW281EXRBdWDPNmiLfJPJS8d2MOuY
	a50A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=29oixEDeEvcI5JmaaJ+84oHkagQPlQFmgamwOb/XjWc=;
	b=VOIIATtrNWgUk4eARxTLuPPd9NMkBNOnAGTXgt+dvQ9OgM0V8gFXiuQprY4W4J8pW3
	EySp0UcLt5Ftv0XrSlCKtgxcI5CCBcRlLRyaRxU/sl+M4mPnXON23g2FBwn9e78k0TZr
	9aXMv0CZR6ZDRiFyVatubQEJ6ykTXEYQHd+4j328iN1BXk/JA11gaT9gTgz+U7bV0FB5
	/MPIwPxhJSKDcAJwMDiOV98IVnn02W4mLVyz0mPrOFiY82d5Gm2ZcsWhDWIn81/ceyha
	7TEf2LFBrej0xHaPuGl7rjg2/HEsEKJ8sJLRBi1pP989o1br0XbgHABoDCYRacBDg5Bf
	faBg==
X-Gm-Message-State: ALyK8tLovVzYhtx0AGU6sH82Ku7427D17Xgwty99U0+DQP/cQvD5/6nt4SRQzCUAPoSblUtoWD1HHV2q+g9Dl4B5
X-Received: by 10.107.154.210 with SMTP id c201mr1653900ioe.99.1468316772334; 
	Tue, 12 Jul 2016 02:46:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Tue, 12 Jul 2016 02:45:52 -0700 (PDT)
In-Reply-To: <F6CD090A69E64C4289DC608E1C5D2024254046D0@DE08W1305.global.ds.honeywell.com>
References: <F6CD090A69E64C4289DC608E1C5D2024254046D0@DE08W1305.global.ds.honeywell.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 12 Jul 2016 10:45:52 +0100
Message-ID: <CAJTo0LZaU8AOSMe6k9whe=_A6hYgf8Lg1MLmUFs=2SXxypKtGA@mail.gmail.com>
To: "Esponde, Joel" <Joel.Esponde@honeywell.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: backport of a fix in master to krogoth
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
X-List-Received-Date: Tue, 12 Jul 2016 09:46:14 -0000
Content-Type: multipart/alternative; boundary=001a1140fab6a21c2d05376d23e0

--001a1140fab6a21c2d05376d23e0
Content-Type: text/plain; charset=UTF-8

On 12 July 2016 at 10:03, Esponde, Joel <Joel.Esponde@honeywell.com> wrote:

> Hi,
>
>
>
> Some days ago, we updated poky layer from fido to krogoth and since then
> we lost the sftp feature when using dropbear instead of openssh.
>
> A commit has been done in the master branch to fix this issue:
>
>
> http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=52d130d9e9735af569f018fc9161a54ed198d2d4
>
> This fix could perfectly apply to krogoth too.
>
>
>
> Is there so a plan to backport it to krogoth?
>

Certainly.  The fastest way for this to happen would be for you to verify
that it applies and works in krogoth and send the patch yourself (with
[krogoth] in the patch subject so the relevant maintainer spots it).

Ross

--001a1140fab6a21c2d05376d23e0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 12 July 2016 at 10:03, Esponde, Joel <span dir=3D"ltr">=
&lt;<a href=3D"mailto:Joel.Esponde@honeywell.com" target=3D"_blank">Joel.Es=
ponde@honeywell.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><di=
v class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">





<div lang=3D"FR" link=3D"#0563C1" vlink=3D"#954F72">
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">Hi,<u><=
/u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000"><u></u>=
=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">Some da=
ys ago, we updated poky layer from fido to krogoth and since then we lost t=
he sftp feature when using dropbear instead of openssh.<u></u><u></u></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">A commi=
t has been done in the master branch to fix this issue:<u></u><u></u></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000"><a href=
=3D"http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=3D52d130d9e9735af5=
69f018fc9161a54ed198d2d4" target=3D"_blank">http://git.yoctoproject.org/cgi=
t.cgi/poky/commit/?id=3D52d130d9e9735af569f018fc9161a54ed198d2d4</a><u></u>=
<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">This fi=
x could perfectly apply to krogoth too.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000"><u></u>=
=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">Is ther=
e so a plan to backport it to krogoth?</span></p></div></div></blockquote><=
div><br></div><div>Certainly.=C2=A0 The fastest way for this to happen woul=
d be for you to verify that it applies and works in krogoth and send the pa=
tch yourself (with [krogoth] in the patch subject so the relevant maintaine=
r spots it).</div><div><br></div><div>Ross</div></div></div></div>

--001a1140fab6a21c2d05376d23e0--
