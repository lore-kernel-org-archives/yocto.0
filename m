Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C1A7E00CC2; Wed, 27 Sep 2017 13:08:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudolf.streif[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.45 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.45 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B3B8E00C89
	for <yocto@yoctoproject.org>; Wed, 27 Sep 2017 13:08:47 -0700 (PDT)
Received: by mail-it0-f45.google.com with SMTP id 85so8766316ith.2
	for <yocto@yoctoproject.org>; Wed, 27 Sep 2017 13:08:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=8D04a+5VMTlWSktCbdakGvFbk5HEF0oqRARYbfrDD3Y=;
	b=pJDQbNIvJF4Hj+FBRJQ7oNZMekQ3E4xPl4S0RvYLRlfLVsCpo1D7HY+6aUl2CNF9ON
	BuR4/u9TbPTO7Z0NvKWNIvilI+JMGyN+J4j2XeVsHGkj/JEkk//+FGZimPe8CyyUELIk
	lCXJX+S0fRKoAnkIvwUa6tqjd44oc152+aC8MbQy6aNpjXkyLLyNNZRGXvUfBTO+BFd5
	oq9gX6l3Y2EBttdhz96403Z6zUrPSSJNUqYGmOSeUNpPadwtLpNyUugy2AfwMV4pJtdY
	zeTTdPzPE3EotJov0P3Nyf4DuEmOz67rwDgwn5EJkg8zoPTvIEsTV6kwi9YyhOH8gxMv
	w7qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=8D04a+5VMTlWSktCbdakGvFbk5HEF0oqRARYbfrDD3Y=;
	b=tpR+QlNBjl2nfMy4DbRLASW6O7stcqKG2N+615wKc3DhCFMDz2c/eibK8RxggSEpi1
	G+leRihOCMlSys6X4MovlZyy+6DcNortAykcBI4Jh/bYv0dewAsTvaYTzgoumOz6SoVj
	sAK/Jfyxr4W/w9LZcpzhLlY9cOKrU1PcFcFL6bosR8aHgU/J0g9rbGuyUu5YkhTlTnhu
	S5Q8JHCrVWFgCOoBNkFJDe7O/dW1jjkwgHUNVKpVh1e6A1TfOofEj/6+dbJ+cTE6pA+w
	Jlcpi9oows3uTsqI8ZvKYerOYKZLF4HUidUMSM6i/l3EkMnFm3OTkf2gB8kdfZ+2hIyt
	KT2Q==
X-Gm-Message-State: AHPjjUj2rbqAd2SfRPXkKFwmL6gWrfyGcYRQ2W0LdePOaU+4miRZQCar
	wx60wrWK+7xIxVkUVEevbuid56dpUo8YvDm8ujTy7A==
X-Google-Smtp-Source: AOwi7QCAhOvlD2v9dprHnHflMMAF4vmpv9FjCRq9WBEdyxtBYmVsD8AMuXkpyhsOr/rryc3nmMH39emnOPCkqZ5EWts=
X-Received: by 10.36.250.10 with SMTP id v10mr2425500ith.135.1506542927109;
	Wed, 27 Sep 2017 13:08:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.2.69.153 with HTTP; Wed, 27 Sep 2017 13:08:46 -0700 (PDT)
In-Reply-To: <CY1PR02MB1366D1C65069C89E2BF73050CC660@CY1PR02MB1366.namprd02.prod.outlook.com>
References: <CY1PR02MB1366D1C65069C89E2BF73050CC660@CY1PR02MB1366.namprd02.prod.outlook.com>
From: Rudolf Streif <rudolf.streif@gmail.com>
Date: Wed, 27 Sep 2017 13:08:46 -0700
Message-ID: <CAEKp-aYomXr+2UerBFUj3gE7TOg9_nq6pzHT2VFS+DTaZCrxaA@mail.gmail.com>
To: Subramanian Ramachandran <SRamachandran@agjunction.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SocketCan support for Yocto
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
X-List-Received-Date: Wed, 27 Sep 2017 20:08:49 -0000
Content-Type: multipart/alternative; boundary="94eb2c034768026866055a315cf9"

--94eb2c034768026866055a315cf9
Content-Type: text/plain; charset="UTF-8"

Subbu,

You need to enable the CAN subsystem in the Linux kernel:

CONFIG_CAN=y (or m if you prefer a module)

CONFIG_NET=y must be enabled for this (but is by default).


You did not specify if you are using a particular CAN hardware that
supports socket CAN. If so you need to enable the driver for that too. For
example, a popular one is USB Peak CAN: CONFIG_CAN_PEAK_USB.

Or if you want to use a virtual CAN interface CONFIG_CAN_VCAN=y


You can change kernel configuration parameters for testing with:

bitbake -c menuconfig virtual/kernel

which will open the menu configuration for the kernel your Yocto build is
using.

:rjs



On Thu, Sep 21, 2017 at 3:11 PM, Subramanian Ramachandran <
SRamachandran@agjunction.com> wrote:

> Hi Yocto Team,
>
>
>
> I am using a custom Yocto linux distribution for my project and am
> interested in implementing socket can support for it.
>
>
>
> I understand that socketcan is a kernel feature and needs to be included
> at build time while using the bitbake/toaster toolset.
>
>
>
> The default yocto distribution of Krogoth I used does not contain
> socketcan by default. What flag do I need to enable to add socketcan
> support in the kernel? What is the variable I need to use in the
> bitbake/toaster environment to do this?  - I have already tried adding
> libsocketcan and can-utils to the image install append variable in toaster
> and it has not helped to incorporate socket can support.
>
>
>
> Please advise.
>
>
>
> Thanks,
>
>
>
> Subbu
>
>
>
>
> Disclaimer: This message (and any other messages in this email thread)
> contains information that may be privileged or confidential and is the
> property of AgJunction Inc and its subsidiaries. It is intended for the
> person to whom it is addressed. If you are not the intended recipient, you
> are not authorized to read, print, retain, copy, disseminate, distribute,
> or use this message or any part thereof. If you receive this message in
> error, please notify the sender immediately and delete all copies of this
> message.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
*Rudolf J. Streif*

--94eb2c034768026866055a315cf9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Subbu,<div><br></div><div>You need to enable the CAN subsy=
stem in the Linux kernel:</div><div><br></div><div>CONFIG_CAN=3Dy (or m if =
you prefer a module)</div><div><br></div><div>CONFIG_NET=3Dy must be enable=
d for this (but is by default).</div><div><br></div><div><br></div><div>You=
 did not specify if you are using a particular CAN hardware that supports s=
ocket CAN. If so you need to enable the driver for that too. For example, a=
 popular one is USB Peak CAN: CONFIG_CAN_PEAK_USB.</div><div><br></div><div=
>Or if you want to use a virtual CAN interface CONFIG_CAN_VCAN=3Dy</div><di=
v><br></div><div><br></div><div>You can change kernel configuration paramet=
ers for testing with:</div><div><br></div><div>bitbake -c menuconfig virtua=
l/kernel</div><div><br></div><div>which will open the menu configuration fo=
r the kernel your Yocto build is using.</div><div><br></div><div>:rjs</div>=
<div><br></div><div><br></div></div><div class=3D"gmail_extra"><br><div cla=
ss=3D"gmail_quote">On Thu, Sep 21, 2017 at 3:11 PM, Subramanian Ramachandra=
n <span dir=3D"ltr">&lt;<a href=3D"mailto:SRamachandran@agjunction.com" tar=
get=3D"_blank">SRamachandran@agjunction.com</a>&gt;</span> wrote:<br><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"m_-5572181891654633245WordSection1">
<p class=3D"MsoNormal">Hi Yocto Team,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I am using a custom Yocto linux distribution for my =
project and am interested in implementing socket can support for it.<u></u>=
<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I understand that socketcan is a kernel feature and =
needs to be included at build time while using the bitbake/toaster toolset.=
<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">The default yocto distribution of Krogoth I used doe=
s not contain socketcan by default. What flag do I need to enable to add so=
cketcan support in the kernel? What is the variable I need to use in the bi=
tbake/toaster environment to do this?
 =C2=A0- I have already tried adding libsocketcan and can-utils to the imag=
e install append variable in toaster and it has not helped to incorporate s=
ocket can support.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Please advise.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Subbu<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div style=3D"font-size:9pt;font-family:&#39;Calibri&#39;,sans-serif"><br>
<br>
Disclaimer: This message (and any other messages in this email thread) cont=
ains information that may be privileged or confidential and is the property=
 of AgJunction Inc and its subsidiaries. It is intended for the person to w=
hom it is addressed. If you are
 not the intended recipient, you are not authorized to read, print, retain,=
 copy, disseminate, distribute, or use this message or any part thereof. If=
 you receive this message in error, please notify the sender immediately an=
d delete all copies of this message.
</div>
</div>

<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div cla=
ss=3D"gmail_signature" data-smartmail=3D"gmail_signature"><font face=3D"ari=
al, helvetica, sans-serif"><b>Rudolf J. Streif</b></font><div><font face=3D=
"garamond, serif"><br></font></div></div>
</div>

--94eb2c034768026866055a315cf9--
