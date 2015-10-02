Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A1DEE00ACF; Fri,  2 Oct 2015 11:24:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43EAAE0086D
	for <yocto@yoctoproject.org>; Fri,  2 Oct 2015 11:24:25 -0700 (PDT)
Received: by ioii196 with SMTP id i196so128853372ioi.3
	for <yocto@yoctoproject.org>; Fri, 02 Oct 2015 11:24:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=ycFd1+8GRykIEm4j9uNReknKtMNR9zf9S5RlV8fi/NY=;
	b=Q6Bp9F2PIOrR6OuqUWJqaHq6mdOmWpyO9bGtjzyqE900Er1iK/FrUGQzL8AV3FujG3
	/D61dtE+Biyl2CorG6dwhaXG6zGp+mh8+Rx82MfS2QIvAy+QRQJ114yoRiSev0BeGQgl
	tmKzQnBoKcf8y11YqJ5zhEznSJG4M4yMM0lcMM1oK4Xtli5szO9eiAfAe7fGSaU8+z+G
	hNQyQgvtSLbcvl/dDX9um37YBUPNZRjyEe0adPetaqLzDC1/ard1syyDIzLUcDh/0u/d
	VmXVGiNl42bDmLd8PqP6DC0BCgOT4cdvk4MSfDPqC8u16Obw+T3MB7hWlGdXrz/KMNS6
	/EPA==
X-Received: by 10.107.40.201 with SMTP id o192mr17809481ioo.83.1443810265018; 
	Fri, 02 Oct 2015 11:24:25 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.79.100.71 with HTTP; Fri, 2 Oct 2015 11:24:05 -0700 (PDT)
In-Reply-To: <CAF3SDA5UfXUMzbB5cnD5KSaCr6aPMq4=U_vP=xWw+4a=O=Zheg@mail.gmail.com>
References: <1443801396017.79471@seescan.com>
	<CABcZANkg=UpD8pgB7B8vSj=pfveyE6WaDz1F+VMu76VSERa8Jg@mail.gmail.com>
	<CAF3SDA6J4E=1_T2jDS+0-ajtcJYqWFL2aKE_+Ly6LEfdChHdhw@mail.gmail.com>
	<CAF3SDA5BFz2bZ3k0x6y67n4C-FnEr7CU-3ZD89fMJk-TPqD-wQ@mail.gmail.com>
	<CABcZANmVTBNEj-dOC-+EsfH5z9fdXqSaEXGz_8AxfSa6VAx+mw@mail.gmail.com>
	<CAF3SDA5UfXUMzbB5cnD5KSaCr6aPMq4=U_vP=xWw+4a=O=Zheg@mail.gmail.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Fri, 2 Oct 2015 11:24:05 -0700
X-Google-Sender-Auth: JwjGhuEXBWVq_FNxFxV7NKc_8V4
Message-ID: <CABcZANnWEiNS6fhoQ8GmqRUYfa_vEgdcYVLGx52=kaGh-Zq6Yg@mail.gmail.com>
To: "Daniel." <danielhilst@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: FILESEXTRAPATHS_prepend fails for systemd
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
X-List-Received-Date: Fri, 02 Oct 2015 18:24:27 -0000
Content-Type: multipart/alternative; boundary=001a1141f410f8379d052123458a

--001a1141f410f8379d052123458a
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 2, 2015 at 11:22 AM, Daniel. <danielhilst@gmail.com> wrote:

> Where can I find this recipetool!? It seems a nice tool to have :)
>

It's in oe-core/scripts or poky/scripts in any recent release. It'll be in
the PATH after sourcing the setup scripts.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a1141f410f8379d052123458a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Fri, Oct 2, 2015 at 11:22 AM, Daniel. <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:danielhilst@gmail.com" target=3D"_blank">danielhilst@gmail.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Where ca=
n I find this recipetool!? It seems a nice tool to have :)</div></blockquot=
e></div><br>It&#39;s in oe-core/scripts or poky/scripts in any recent relea=
se. It&#39;ll be in the PATH after sourcing the setup scripts.<br>-- <br><d=
iv class=3D"gmail_signature">Christopher Larson<br>clarson at kergoth dot c=
om<br>Founder - BitBake, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>=
Senior Software Engineer, Mentor Graphics</div>
</div></div>

--001a1141f410f8379d052123458a--
