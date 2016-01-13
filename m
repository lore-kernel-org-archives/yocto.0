Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91CCFE00B3A; Wed, 13 Jan 2016 05:42:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f53.google.com (mail-oi0-f53.google.com
	[209.85.218.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53022E00AAF
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 05:42:50 -0800 (PST)
Received: by mail-oi0-f53.google.com with SMTP id k206so94105841oia.1
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 05:42:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=LR1U0KYgMFY0stbHQw1Z9IBrGw9w9posbHZ67PylAOc=;
	b=re2fdeq9WKHut2K/FJ3gfTt+QqIAMOwjQp6sdURZW5nTwpdttor9boGSSSHdFnsev7
	T/sbBz3O+2LmpND9D1tQWj5YcjKNBDKq3pnnAoX2xZSBomLMSQGyTukDm7YYLgYaJpMW
	sXg6EDmB3VQ6M8y86iEuQRv3FNpt8iabmRcyvezqbOo1fhokw9S6TW8GJGSGU5ubRwP3
	a1mmiQ+vmRtmgtf2VrQEliIDe5IYxi/pOXJL7SGVwpa0g8UxUNEpmc20zHZAOTKEQ5zM
	uyiApfbAy21+fhztmTqNitfOfrbMqIJOZYen6aX+ND8aLzv4WL1+gRokaqQRbWqmUe5q
	zWRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=LR1U0KYgMFY0stbHQw1Z9IBrGw9w9posbHZ67PylAOc=;
	b=AbWXuRmiZB9jymaxw6ZZ4UR3xq0IQynbk18yy16L5YeYBDvVpwF9GKUC7MJ2D2iJyY
	Lhgv8mboYOJOVv6UAK/Bz+551vv/4k68oXjx+i1eUj2wWuKevodZUPO958VFSNoPvWk8
	2fIxlb2JR/nJDlLVbQnfRh31rR06XaQGb2FJdntggx1JSv05cGvlOH+3D0KYnUk0yK23
	kgpKFirLaYd8xm4YflDpjP7yi3jQ0VCjXGMtm39GkCfmD86cA1HYGBRqw0J3zannMHrl
	zZBqKjdmJBJT/Q2FKUacN1cLUy5DKnEQulymRzq/vFPcGOc6ldo+AdIu66+RVIntEfX9
	pYOw==
X-Gm-Message-State: ALoCoQlQwSs9I2vNzwFnCp1TeaSYzduWNcGUFLvP6hoTBaMuzqiz7HQuR6wyjC3O5mA3oTnE1ivgL3JhRCdOgcWvc6vM5dI5HTeRrCO+rBJ3ywoMusBdNJ4=
X-Received: by 10.202.172.80 with SMTP id v77mr98079578oie.18.1452692570371;
	Wed, 13 Jan 2016 05:42:50 -0800 (PST)
MIME-Version: 1.0
Received: by 10.202.51.67 with HTTP; Wed, 13 Jan 2016 05:42:21 -0800 (PST)
In-Reply-To: <37b747fd-ad90-45e9-b3cc-4595c4d83661@fmsmsx108.amr.corp.intel.com>
References: <37b747fd-ad90-45e9-b3cc-4595c4d83661@fmsmsx108.amr.corp.intel.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Wed, 13 Jan 2016 15:42:21 +0200
Message-ID: <CAHiDW_GGH6X3vyFXe5+JCZz3pn8L0HPDfxN3BsjT3nbYC_oj_w@mail.gmail.com>
To: Anibal Limon <anibal.limon@intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [AUH] gpgme: upgrading to 1.6.0 SUCCEEDED
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
X-List-Received-Date: Wed, 13 Jan 2016 13:42:53 -0000
Content-Type: multipart/alternative; boundary=001a113ce6e2a0106d05293758c9

--001a113ce6e2a0106d05293758c9
Content-Type: text/plain; charset=UTF-8

Hi,

On 11 January 2016 at 06:21, <auh@auh.yoctoproject.org> wrote:

> Hello,
>
> You are receiving this email because you are the maintainer
> of *gpgme* recipe and this is to let you know that the automatic attempt
> to upgrade the recipe to *1.6.0* has Succeeded.
>


First, thanks for the effort Anibal, the upgrade helper is looking very
useful: I'm certainly going to use it.

Couple of small issues:
* The license diffs do not seem correct: they look like like diffs between
an empty file and the new license file version (see the parent gpgme post
for example)
* Is the decision to use "buildhistory-diff -a" intentional? I'm not 100%
sure what exactly "-a" option brings with it but I've usually avoided it on
upgrades because the path changes in  -dbg package are so verbose as to
hide everything else...

Thanks,
  Jussi


> *LICENSE CHANGED* please review the gpgme.h.in.diff file and update the
> LICENSE
> variable in the recipe if is needed.
>
> The recipe has been successfully compiled for machines qemux86,
> qemux86-64, qemuarm, qemumips, qemuppc.
>
> Next steps:
>     - apply the patch: git am 0001-gpgme-upgrade-to-1.6.0.patch
>     - check that required upstream patches have not been commented from
> the recipe,
>       if upstream patches were commented the reason is specified in the
> commit message.
>     - compile an image that contains the package
>     - perform some basic sanity tests
>     - amend the patch and sign it off: git commit -s --reset-author --amend
>     - send it to the list
>
> Attached are the patch, license diff (if change) and bitbake log.
> Any problem please contact Anibal Limon <anibal.limon@intel.com>.
>
> Regards,
> The Upgrade Helper

--001a113ce6e2a0106d05293758c9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,=C2=A0</div><div><br></div><div><div class=3D"gmai=
l_extra">On 11 January 2016 at 06:21,=C2=A0<span dir=3D"ltr">&lt;<a href=3D=
"mailto:auh@auh.yoctoproject.org" target=3D"_blank">auh@auh.yoctoproject.or=
g</a>&gt;</span>=C2=A0wrote:<br></div><div class=3D"gmail_extra"><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-l=
eft-style:solid;padding-left:1ex">Hello,<br><br>You are receiving this emai=
l because you are the maintainer<br>of *gpgme* recipe and this is to let yo=
u know that the automatic attempt<br>to upgrade the recipe to *1.6.0* has S=
ucceeded.<br></blockquote><div><br></div><div><br></div></div></div></div>F=
irst, thanks for the effort Anibal, the upgrade helper is looking very usef=
ul: I&#39;m certainly going to use it.<br><div class=3D"gmail_extra"><br></=
div><div class=3D"gmail_extra">Couple of small issues:</div><div class=3D"g=
mail_extra">* The license diffs do not seem correct: they look like like di=
ffs between an empty file and the new license file version (see the parent =
gpgme post for example)</div><div class=3D"gmail_extra">* Is the decision t=
o use &quot;buildhistory-diff -a&quot; intentional? I&#39;m not 100% sure w=
hat exactly &quot;-a&quot; option brings with it but I&#39;ve usually avoid=
ed it on upgrades because the path changes in =C2=A0-dbg package are so ver=
bose as to hide everything else...</div><div class=3D"gmail_extra"><br></di=
v><div class=3D"gmail_extra">Thanks,</div><div class=3D"gmail_extra">=C2=A0=
 Jussi</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"=
><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,20=
4);border-left-style:solid;padding-left:1ex"><br>
*LICENSE CHANGED* please review the gpgme.h.in.diff file and update the LIC=
ENSE<br>
variable in the recipe if is needed.<br>
<br>
The recipe has been successfully compiled for machines qemux86, qemux86-64,=
 qemuarm, qemumips, qemuppc.<br>
<br>
Next steps:<br>
=C2=A0 =C2=A0 - apply the patch: git am 0001-gpgme-upgrade-to-1.6.0.patch<b=
r>
=C2=A0 =C2=A0 - check that required upstream patches have not been commente=
d from the recipe,<br>
=C2=A0 =C2=A0 =C2=A0 if upstream patches were commented the reason is speci=
fied in the commit message.<br>
=C2=A0 =C2=A0 - compile an image that contains the package<br>
=C2=A0 =C2=A0 - perform some basic sanity tests<br>
=C2=A0 =C2=A0 - amend the patch and sign it off: git commit -s --reset-auth=
or --amend<br>
=C2=A0 =C2=A0 - send it to the list<br>
<br>
Attached are the patch, license diff (if change) and bitbake log.<br>
Any problem please contact Anibal Limon &lt;<a href=3D"mailto:anibal.limon@=
intel.com" target=3D"_blank">anibal.limon@intel.com</a>&gt;.<br>
<br>
Regards,<br>
The Upgrade Helper</blockquote></div><br></div></div>

--001a113ce6e2a0106d05293758c9--
