Return-Path: <ccvk.chaitanya@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2866E00BBC; Sun, 24 Feb 2019 16:45:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ccvk.chaitanya[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
	[209.85.167.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68B9DE009A5
	for <yocto@yoctoproject.org>; Sun, 24 Feb 2019 16:45:33 -0800 (PST)
Received: by mail-oi1-f172.google.com with SMTP id e7so5936096oia.8
	for <yocto@yoctoproject.org>; Sun, 24 Feb 2019 16:45:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=spWXvEcvAzE+FB4GIYt75g9Y5xDMgRpSxOO4Pt5E/lU=;
	b=Q8jekgcmNYcmyZ/aFJkpH/VA2rNovnf3AVym90SkejW/E7qr/li33nG5Yzotte/hzq
	500zzuBOayaUpoZTWztmDdTjofLbHxqIfFAT/zGW9brG60FrulXBO7yakADHP/wz+cvt
	/SgiYBL7o45xAkTBMZmwQZLfCvfB54zYw2OMnRj+GurjqNWSttKDX/ZLS0JnfQZ3FAo6
	ra7evnMEtYCB3VaJeatioopfB2TxfMwptXjQL28MjezgcvlpsUh73FRM9UznuuJa7fvp
	Xvnvgfa242V0Coj7umsduUaxyjQonU6FiEq70JGSh0F3LG7aVfkOwVFjCkBBq4lNuQ2U
	sKuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=spWXvEcvAzE+FB4GIYt75g9Y5xDMgRpSxOO4Pt5E/lU=;
	b=rtfIXbl7wFJMLIO4X4SqfdKFFPllXV84wGdqohf9BkkxVCIoZHAaWL9uc+bhkCzjlR
	WnMSeitHSbIKJy4sra155u46ZGSucdLuxXfptEZWVJjHN/m43xT0ZrPym1SCpKKt8q4R
	9KUrlWDimJOwnhWhPme0ByRa3tZs9SNQXGkgnaBNDppUU5CmfHKitKy8q42X8l28uSE2
	25FyYBtwetqVXmnMCXQGv7HMfrv4lkyOfUBROiPoRgzMMYKUzgpzEqtphhIN7Ci7HjAk
	mkVY8IL0u5i3Wq3moGhWk0+nMt6JUWv7HMIVGyXT6QoE8zYRboKeEMi8lc/JrDSgnyz3
	MNiw==
X-Gm-Message-State: AHQUAuaMz77OujmMtivalopE397vWAeWpXQRZQBBZHJQQny7rhjNax62
	GtTtUOh0WMEV/p+ih0uM9WXgO9H5DONrnNCQJAqnmSRfks0=
X-Google-Smtp-Source: AHgI3IaPV/u6TUwN+/7LvjIE5udvpmQ2EWdQv55VTK8AvCIC5Uwe4IY23MZQ76nhKpKHF1EbqAH0pcgOyCHeT8zz0xo=
X-Received: by 2002:aca:cf4e:: with SMTP id f75mr9836852oig.129.1551055532670; 
	Sun, 24 Feb 2019 16:45:32 -0800 (PST)
MIME-Version: 1.0
References: <CALVd-wOQCtsKK5jpMGc5R3-cCrYi-=-sQmGzvnLMCD=pdTk31g@mail.gmail.com>
	<TYAPR01MB2031B0D1EF1448ED96F21032927F0@TYAPR01MB2031.jpnprd01.prod.outlook.com>
	<CALVd-wNod6oxi=t3KCiDg2HKO6nqBNWt+3avaBTTV=3x3yAT3w@mail.gmail.com>
	<CAJTo0LaB0Ca1n+nAe0bCiSDMnA+SkZEYPfydAZMd-s_gbhFf4Q@mail.gmail.com>
In-Reply-To: <CAJTo0LaB0Ca1n+nAe0bCiSDMnA+SkZEYPfydAZMd-s_gbhFf4Q@mail.gmail.com>
From: chaitanya cherukuri <ccvk.chaitanya@gmail.com>
Date: Sun, 24 Feb 2019 19:45:21 -0500
Message-ID: <CALVd-wOkq6wwojJ+U6o=X9aMa4MA8PfJfVFgvp3DrWiZTnfsGA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to Install Third party rpm packages
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
X-List-Received-Date: Mon, 25 Feb 2019 00:45:34 -0000
Content-Type: multipart/alternative; boundary="0000000000000d42b10582ad42bc"

--0000000000000d42b10582ad42bc
Content-Type: text/plain; charset="UTF-8"

Hi,

Thank you for the clarification.
In do_install(), I used rpm2cpio.sh to extract the rpm and then copied the
rpm contents in the right place.
        $rpm2cpio.sh *.rpm | cpio -idmv
I hope this is the right way to handle RPM packages.

RPM has a post-installation script that I need to handle. This script
executes after the installation of RPM. Could I know what is the efficient
way to run the script?

Thank you,
Chaitanya




On Fri, Feb 22, 2019 at 5:57 PM Burton, Ross <ross.burton@intel.com> wrote:

> On Fri, 22 Feb 2019 at 22:16, chaitanya cherukuri
> <ccvk.chaitanya@gmail.com> wrote:
> > Do I need to write a recipe where I fetch this package?
>
> Yes, write a recipe that has SRC_URI as the original RPM, then you can
> write a do_install() to put the files in the right place, package it
> correctly, and so on.
>
> Just using the RPM as-is most likely won't work because the chances
> are your Yocto distribution isn't binary-compatible at the packaging
> level with whatever distribution the RPM was built for.
>
> Ross
>


-- 
--
Chaitanya

--0000000000000d42b10582ad42bc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:&quot;co=
mic sans ms&quot;,sans-serif;color:rgb(61,133,198)"></div><div dir=3D"ltr">=
<div class=3D"gmail_default" style=3D"font-family:&quot;comic sans ms&quot;=
,sans-serif;color:rgb(61,133,198)">Hi,</div><div class=3D"gmail_default" st=
yle=3D"font-family:&quot;comic sans ms&quot;,sans-serif;color:rgb(61,133,19=
8)"><br></div><div class=3D"gmail_default" style=3D"font-family:&quot;comic=
 sans ms&quot;,sans-serif;color:rgb(61,133,198)">Thank you for the clarific=
ation.</div><div class=3D"gmail_default" style=3D"font-family:&quot;comic s=
ans ms&quot;,sans-serif;color:rgb(61,133,198)">In do_install(), I used rpm2=
cpio.sh to extract the rpm and then copied the rpm contents in the right pl=
ace.</div><div class=3D"gmail_default" style=3D"font-family:&quot;comic san=
s ms&quot;,sans-serif;color:rgb(61,133,198)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 $r=
pm2cpio.sh *.rpm | cpio -idmv</div><div class=3D"gmail_default" style=3D"fo=
nt-family:&quot;comic sans ms&quot;,sans-serif;color:rgb(61,133,198)">I hop=
e this is the right way to handle RPM packages.</div><div class=3D"gmail_de=
fault" style=3D"font-family:&quot;comic sans ms&quot;,sans-serif;color:rgb(=
61,133,198)"><br></div><div class=3D"gmail_default" style=3D"font-family:&q=
uot;comic sans ms&quot;,sans-serif;color:rgb(61,133,198)">RPM has a post-in=
stallation script that I need to handle. This script executes after the ins=
tallation of RPM. Could I know what is the efficient way to run=C2=A0the sc=
ript?</div><div class=3D"gmail_default" style=3D"font-family:&quot;comic sa=
ns ms&quot;,sans-serif;color:rgb(61,133,198)"><br></div><div class=3D"gmail=
_default" style=3D"font-family:&quot;comic sans ms&quot;,sans-serif;color:r=
gb(61,133,198)">Thank you,</div><div class=3D"gmail_default" style=3D"font-=
family:&quot;comic sans ms&quot;,sans-serif;color:rgb(61,133,198)">Chaitany=
a</div><div class=3D"gmail_default" style=3D"font-family:&quot;comic sans m=
s&quot;,sans-serif;color:rgb(61,133,198)"><br></div><div class=3D"gmail_def=
ault" style=3D"font-family:&quot;comic sans ms&quot;,sans-serif;color:rgb(6=
1,133,198)"><br></div><div class=3D"gmail_default" style=3D"font-family:&qu=
ot;comic sans ms&quot;,sans-serif;color:rgb(61,133,198)"><br></div></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Fri, Feb 22, 2019 at 5:57 PM Burton, Ross &lt;<a href=3D"mailto:ross.burto=
n@intel.com">ross.burton@intel.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">On Fri, 22 Feb 2019 at 22:16, chaitanya c=
herukuri<br>
&lt;<a href=3D"mailto:ccvk.chaitanya@gmail.com" target=3D"_blank">ccvk.chai=
tanya@gmail.com</a>&gt; wrote:<br>
&gt; Do I need to write a recipe where I fetch this package?<br>
<br>
Yes, write a recipe that has SRC_URI as the original RPM, then you can<br>
write a do_install() to put the files in the right place, package it<br>
correctly, and so on.<br>
<br>
Just using the RPM as-is most likely won&#39;t work because the chances<br>
are your Yocto distribution isn&#39;t binary-compatible at the packaging<br=
>
level with whatever distribution the RPM was built for.<br>
<br>
Ross<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><span style=3D"color:rgb(61,133=
,198)"><span style=3D"font-family:&quot;comic sans ms&quot;,sans-serif">--<=
br>Chaitanya</span></span><br></div></div>

--0000000000000d42b10582ad42bc--
