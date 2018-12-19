Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EEEBE00C4D; Wed, 19 Dec 2018 09:17:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (balazovic.peter[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.171 listed in list.dnswl.org]
Received: from mail-it1-f171.google.com (mail-it1-f171.google.com
	[209.85.166.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1791E00C10
	for <yocto@yoctoproject.org>; Wed, 19 Dec 2018 09:17:43 -0800 (PST)
Received: by mail-it1-f171.google.com with SMTP id z7so10813834iti.0
	for <yocto@yoctoproject.org>; Wed, 19 Dec 2018 09:17:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=2sHiTIC4v15+pcGUISdnVwSsG9C7YpdA0DyxhSUIxqQ=;
	b=aEf1uzzh1BKjatgrK0gjTB9LvvIvk15HFwsvKGL++7Vy0uL2/JpTnyl/qFe0Q9vH5k
	SXKNn2bYZmEvXSNFaQAZ6oZoVCfB339HOxrsd7jfabmyYSO4mbIWZXC2520dw0zZTXhj
	WKJGx7GtQd3rqBEo6aa4SYI7r9FSMb8KsIjCBPeof2AiR9euFpvU/ruO5wFGcYtduxhd
	UeDLu69a23MOGScEeQbocS8xkTm8F7/armYHM0CSo1iBagEq4WCZH6N0j2QV7q1UywUy
	p1r5qcVC0nUV/hN3TFKZJdUCtbr4bIBKM5zHdoC0+x0C8hPb+6psynN0TIT0d2nShZHK
	6aGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=2sHiTIC4v15+pcGUISdnVwSsG9C7YpdA0DyxhSUIxqQ=;
	b=WAqqeaNVLhfFalVAxHcuE2DGujib2XRHbb19ta+HmmH5ZmYcfZ+M6l/gRRz4bXp9nq
	S1uU8HC92z68wFLsj013cf79c4xjdAqxjQy2tGzxtXYMjEH7U/7koiZ+peobzj1m/UsQ
	6LtYrPZBMmzQRebzPfKq5eO/+pY50IDbzC8KUCEnZyomxNfyy/K4+IrlwNveuqavgvH7
	unnCj4xNDFe6+bLP4p8zN4B+K2lY/Dye5SKI/syW0f81lS2ncK0SKbtXxlNq13MjGywQ
	sXCUKwRF1tTcT0asa4EFXTWBBv3J0XgX17L0zNAZSn6MFmg2B2g013cqmNzlBJMuh0FW
	M9zA==
X-Gm-Message-State: AA+aEWZVcuOOyUOsmHE2zHtQWDOruD5V1fL49FyK+HHu2GOQ57RUABfo
	f9ml9X9aSyNbyrPYehusxBf1SS6uWlcY9t66voatiOg7OqM=
X-Google-Smtp-Source: AFSGD/VA7lY5Y42xZciXUprZ06zpOqZX9YJiIWLxwYDUtrurxjeCKdRC6VcoCBck0N5w/Ds2i1uaLvSVwk+feO4rXyU=
X-Received: by 2002:a24:6890:: with SMTP id v138mr7616071itb.53.1545239863012; 
	Wed, 19 Dec 2018 09:17:43 -0800 (PST)
MIME-Version: 1.0
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Wed, 19 Dec 2018 18:17:32 +0100
Message-ID: <CAFq4t4iVtG=LneBXbDrpwAQOD78sFX=S82pd12kZrTwS+UhgXQ@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
X-Mailman-Approved-At: Thu, 03 Jan 2019 01:08:45 -0800
Subject: devtool to built for update repo revision
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
X-List-Received-Date: Wed, 19 Dec 2018 17:17:44 -0000
Content-Type: multipart/alternative; boundary="00000000000020b237057d63317b"

--00000000000020b237057d63317b
Content-Type: text/plain; charset="UTF-8"

Hello,

I am trying to use "devtool" from eSDK to create own recipe. At first it
works with repo and can generate recipe and binaries and deploy to target
machine.

Now I'd like to update it with a new revision of source code.
So I updated SRCREV per released commit and as well add *PV =
"0.1+git${SRCPV}". *

I am not editing source code locally at workspace of eSDK.

I rebuilt it but it seems still the same revision is built. What else needs
to update to correctly rebuild from new revision of repo?

Thanks for help.

--00000000000020b237057d63317b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I am trying to use &quot;devtool=
&quot; from eSDK to create own recipe. At first it works with repo and can =
generate recipe and binaries and deploy to target machine.</div><div><br></=
div><div>Now I&#39;d like to update it with a new revision of source code.<=
/div><div>So I updated SRCREV per released commit and as well=C2=A0<span st=
yle=3D"font-size:13px;color:rgb(36,39,41);font-family:Arial,&quot;Helvetica=
 Neue&quot;,Helvetica,sans-serif">add=C2=A0</span><i style=3D"font-size:13p=
x;margin:0px;padding:0px;border:0px;font-variant-numeric:inherit;font-varia=
nt-east-asian:inherit;font-stretch:inherit;line-height:inherit;font-family:=
Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif;vertical-align:baseli=
ne;box-sizing:inherit;color:rgb(36,39,41)">PV =3D &quot;0.1+git${SRCPV}&quo=
t;.=C2=A0</i></div><div><span style=3D"font-size:13px;margin:0px;padding:0p=
x;border:0px;font-variant-numeric:inherit;font-variant-east-asian:inherit;f=
ont-stretch:inherit;line-height:inherit;font-family:Arial,&quot;Helvetica N=
eue&quot;,Helvetica,sans-serif;vertical-align:baseline;box-sizing:inherit;c=
olor:rgb(36,39,41)"><br></span></div><div><span style=3D"font-size:13px;mar=
gin:0px;padding:0px;border:0px;font-variant-numeric:inherit;font-variant-ea=
st-asian:inherit;font-stretch:inherit;line-height:inherit;font-family:Arial=
,&quot;Helvetica Neue&quot;,Helvetica,sans-serif;vertical-align:baseline;bo=
x-sizing:inherit;color:rgb(36,39,41)"><span style=3D"font-family:Arial,Helv=
etica,sans-serif;font-size:small;color:rgb(34,34,34)">I am not editing sour=
ce code locally at workspace of eSDK.</span></span></div><div><span style=
=3D"font-size:13px;margin:0px;padding:0px;border:0px;font-variant-numeric:i=
nherit;font-variant-east-asian:inherit;font-stretch:inherit;line-height:inh=
erit;font-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif;vert=
ical-align:baseline;box-sizing:inherit;color:rgb(36,39,41)"><br></span></di=
v><div><span style=3D"font-size:13px;margin:0px;padding:0px;border:0px;font=
-variant-numeric:inherit;font-variant-east-asian:inherit;font-stretch:inher=
it;line-height:inherit;font-family:Arial,&quot;Helvetica Neue&quot;,Helveti=
ca,sans-serif;vertical-align:baseline;box-sizing:inherit;color:rgb(36,39,41=
)">I rebuilt it but it seems still the same revision is built. What else ne=
eds to update to correctly rebuild from new revision of repo?=C2=A0</span>=
=C2=A0</div><div><br></div><div>Thanks for help.</div></div>

--00000000000020b237057d63317b--
