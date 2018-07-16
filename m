Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50C02E01118; Mon, 16 Jul 2018 06:22:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kratsg[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C82C1E00E12
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2018 06:22:40 -0700 (PDT)
Received: by mail-io0-f194.google.com with SMTP id q4-v6so37778037iob.2
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2018 06:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ajEAAdGV2jQ8im8YgdMGSNO0OoyZyex0YFbTVohU7vA=;
	b=fLinIO+d/95ZJfDvHv/STyabxtHvpIYvRmyMQHmsB9aXMtjPpnCKEBhClAJFrU8u3M
	frED4VL8t+PFcmiPpB8POu+iD1lCrnE5rosV63xm2vp6ezKgStH6ULM2HgLK6UUVdWGY
	S/YayYWLVwWCYgTzib5GQOwEP2vp5KueicqcI3SqOaUq58f3gySrBTvOkSznPNEp/Tqe
	S+Rr5YKwy6R0vm3o3qsm9pRPC4G1FzSiGD45nUP+fW9+2MDtaxRsivzQyxuO36xFIM1j
	w+oP3f/MeacwEgghI1N5nmMUOTfmNhUkYRDZqZErGgtEeLX0lV62PLSorshdJHQq2rOc
	jzAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ajEAAdGV2jQ8im8YgdMGSNO0OoyZyex0YFbTVohU7vA=;
	b=NrGWhRDSOQ97eViDI7WbnNHoi+x4KHQFszXf6FmyrlrXBX5vVner/3VHLKZpFJtCgI
	5VKzztbRSMDFsAT6YkiBH6OtfCP9id2JsPYnDjj6gp85p9BTQjNPRQR0w5gMPpHP+z1L
	ksNLtraiIEG7v1dDn+fGegFIXYq8KxPEU3GgNwsopmWHBuVXHKL6yCyI9E3i0BMEtNb/
	xa3irNrmRkJ8xhw1OQr9Cn3o+uNSyD5Mb8gHcUnS+0yG9hMINBXqYf+LfaeKlrtyJB//
	vKgPGyzOS5s7XDUE3BMtfbsRlfHBGiDiyz+f81tWyFobPXXUcTx786+oSqOhYnp7LK9u
	5hgg==
X-Gm-Message-State: AOUpUlGPc6ipuuuKjVq7pJ2jFznWP0m/gbAp0IeRxQv4MP1zLMye4Zcp
	m6UTRWoeHwhiHY8kIAj3OuDxJ4wHAuOIoz+1ag1eag==
X-Google-Smtp-Source: AAOMgpfuX+Pp8MxBSrxG5Z/T1lDsIun+5g2LrBza3rjBX15rGzxFXnYFYbOLdjE1C8xDUQzn2XJasIV31gaETrDuN04=
X-Received: by 2002:a5e:8a45:: with SMTP id
	o5-v6mr28888018iom.88.1531747360276; 
	Mon, 16 Jul 2018 06:22:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAFzUWG=7Aam-5PAE_1cpw24Zd+PCj+0KyOziyWrbWYeFLk0EdQ@mail.gmail.com>
	<CAJTo0Lauvt-utgGQ8B++ytRt_UcRaUrRitv39WZ+mHCT14q6Mw@mail.gmail.com>
	<CAFzUWG=hRfY9J0z1j-cy20pegF2iSKXbQb+vRrGUhtSGLYMPdw@mail.gmail.com>
	<CAJTo0Lb=AST-T62XPhq-1iY9MDc912p39CB-kDy6uVQS+S25Fw@mail.gmail.com>
In-Reply-To: <CAJTo0Lb=AST-T62XPhq-1iY9MDc912p39CB-kDy6uVQS+S25Fw@mail.gmail.com>
From: Giordon Stark <kratsg@gmail.com>
Date: Mon, 16 Jul 2018 08:22:29 -0500
Message-ID: <CAFzUWGnX3fLFpdBe=rn_W=eXfNDDend2Q0NovcWY-VSudizz2w@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: Writing a recipe that allows for extra depends, depending on the extra_oemake configurations
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
X-List-Received-Date: Mon, 16 Jul 2018 13:22:41 -0000
Content-Type: multipart/alternative; boundary="0000000000004b8a1105711db98a"

--0000000000004b8a1105711db98a
Content-Type: text/plain; charset="UTF-8"

Thanks all! I did mean OE_CMAKE [I'm not the best typer].

Giordon

On Fri, Jul 13, 2018 at 2:53 AM Burton, Ross <ross.burton@intel.com> wrote:

> On 12 July 2018 at 23:12, Giordon Stark <kratsg@gmail.com> wrote:
> > Hi Ross,
> >
> > Thanks. I saw that but the documentation doesn't explicitly mentioned
> > EXTRA_OEMAKE. Is that the same as EXTRA_OECONF?
>
> EXTRA_OEMAKE is what is passed to 'make' calls.  Your recipe is using
> cmake, so you're extending EXTRA_OECMAKE, which is passed to cmake
> calls.
>
> If you read the documentation you'll see that PACKAGECONFIG is parsed
> and the appropriate enabled/disabled options are added to
> PACKAGECONFIG_CONFARGS, which cmake.bbclass adds to EXTRA_OECMAKE for
> you.
>
> Ross
>
-- 
Giordon Stark

--0000000000004b8a1105711db98a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks all! I did mean OE_CMAKE [I&#39;m not the best type=
r].<div><br></div><div>Giordon</div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr">On Fri, Jul 13, 2018 at 2:53 AM Burton, Ross &lt;<a href=3D"=
mailto:ross.burton@intel.com">ross.burton@intel.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex">On 12 July 2018 at 23:12, Giordon Stark &lt=
;<a href=3D"mailto:kratsg@gmail.com" target=3D"_blank">kratsg@gmail.com</a>=
&gt; wrote:<br>
&gt; Hi Ross,<br>
&gt;<br>
&gt; Thanks. I saw that but the documentation doesn&#39;t explicitly mentio=
ned<br>
&gt; EXTRA_OEMAKE. Is that the same as EXTRA_OECONF?<br>
<br>
EXTRA_OEMAKE is what is passed to &#39;make&#39; calls.=C2=A0 Your recipe i=
s using<br>
cmake, so you&#39;re extending EXTRA_OECMAKE, which is passed to cmake<br>
calls.<br>
<br>
If you read the documentation you&#39;ll see that PACKAGECONFIG is parsed<b=
r>
and the appropriate enabled/disabled options are added to<br>
PACKAGECONFIG_CONFARGS, which cmake.bbclass adds to EXTRA_OECMAKE for<br>
you.<br>
<br>
Ross<br>
</blockquote></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-s=
martmail=3D"gmail_signature"><div dir=3D"ltr">Giordon Stark</div></div>

--0000000000004b8a1105711db98a--
