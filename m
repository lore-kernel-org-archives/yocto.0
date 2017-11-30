Return-Path: <jerry.lian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81ED1E00D6B; Thu, 30 Nov 2017 07:23:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jerry.lian[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f172.google.com (mail-ot0-f172.google.com
	[74.125.82.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EC1EE00CCB
	for <yocto@yoctoproject.org>; Thu, 30 Nov 2017 07:23:23 -0800 (PST)
Received: by mail-ot0-f172.google.com with SMTP id b54so6374845otd.8
	for <yocto@yoctoproject.org>; Thu, 30 Nov 2017 07:23:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3ieBq/GyBpj80JTs/INL5Q+/LqsC2B4Ku1KrsEmgrNA=;
	b=H8kjDOQBqbRQVaRmgX2SwkEEgPbsjF+WO2z1C0avMkHeUua6stwyr5a6ihGy0oXaUv
	41CMPAA2ae0sMRcDQcmsQkBfwLHyht2rjM+HYNpGheFx87+TcsRS+SJgkAZwaPTptsrE
	Vtu6NKuDUqfMx9RR2AUe6SiWKssGi0mmE3xh6aOnuNzMeb7wOd0l3szi3FXCBpnanaDL
	tiAiNXx0sssmhnAlLCWPU5DiaHX1FLIMsvebMxeBW2lYESHFthBQezI76yF+3RS9P68L
	ECZ4J7tSYIJMVnSwNLac9CQvVLyB3hI8z37uSimhcOkFonAgjIDKZhNtQh47jLAtbrre
	9c4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3ieBq/GyBpj80JTs/INL5Q+/LqsC2B4Ku1KrsEmgrNA=;
	b=ABPg+lPIWK9KZ9eJGuylPUzTRQfanoM8NvyVJAYHtlLPPaeccq2UoCy4E+JkBxcitB
	Nip6t1yKMpllrAl+Ba1OEFesQNGrHkyAUoikXh094k/ZB1iPwoVdTGW0EIomayvjPx67
	WXrTeRe5VOq7mPl23VyYcAuVz1jroxN4/Oc/oWeD+xaNLxggddb0E6LLm4dQNjMlxsHU
	m5CKpBMIK3jHD2Tl3h/+PtmPxwCmOGUFEGdSprmRvnp1sqI99dsCgxF6EGAqWmzHAIjm
	07Vcn6j427LG7QL9vGiAZ32hpEQfZh6avzwFAAsHwbByiALmZORyhuJ0ybkP+CvcucXV
	z4NQ==
X-Gm-Message-State: AJaThX41QlGTE2qmKo4g4SjoZWtU+yClSyD7h56zDOBwYJM+tUmT+KNq
	z3GqGigAu3L1yFg9T/wjQeHUi75JdCV78LfV/8ordQ==
X-Google-Smtp-Source: AGs4zMYDtywbKct4IwNwv9qodgKoYdgvzHX/agX/uPBIJCXP9MCmXquID/bSeFcL74pLLgGcNP1G9uxvcORfb+X5www=
X-Received: by 10.157.62.181 with SMTP id b50mr5868218otc.160.1512055402699;
	Thu, 30 Nov 2017 07:23:22 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.42.113 with HTTP; Thu, 30 Nov 2017 07:23:22 -0800 (PST)
In-Reply-To: <21915543.uzsTMMMV9o@peggleto-mobl.ger.corp.intel.com>
References: <CAE0QtjOcjf8TL5Hx5WbpLOoZ4kMm84CbWcwYUZo+bM6CSzSnuw@mail.gmail.com>
	<21915543.uzsTMMMV9o@peggleto-mobl.ger.corp.intel.com>
From: Jerry Lian <jerry.lian@gmail.com>
Date: Thu, 30 Nov 2017 10:23:22 -0500
Message-ID: <CAE0QtjOo9LYBsKLMCg7U40RaVBc3M5XrKVrhHFVmU6HyKfvbkw@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Concept clarification: can we deploy Yocto SDK to target?
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
X-List-Received-Date: Thu, 30 Nov 2017 15:23:25 -0000
Content-Type: multipart/alternative; boundary="001a11407a8c28a0ae055f34d585"

--001a11407a8c28a0ae055f34d585
Content-Type: text/plain; charset="UTF-8"

Thanks Paul for your expert explanation, though I may not fully understand
yet.
Here is my scenario when raising my question:
* After deploying yocto image to hardware-target, I try build an
application (Autotools-based)
* The build stopped and asked for linux kernel source.

* So my image already contains compilers and linkers?
* So am I missing libraries, or just linux-headers?
* what is difference between libraries and headers?

Thanks!








On Wed, Nov 29, 2017 at 6:03 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> Hi Jerry,
>
> On Thursday, 30 November 2017 10:35:32 AM NZDT Jerry Lian wrote:
> > I am confused about the concept of Yocto SDK:
> > * when we use "bitbake -c populate_sdk some_image", we obtain sysroots
> for
> > both target and host.
> > * But why do we need sysroot for host?
>
> The host sysroot actually contains the main part of the SDK - the cross-
> compiler and other tools that need to run on the host. The target part
> usually
> doesn't include any executable binaries, only libraries and debugging
> symbols.
>
> > * I know we can build application under target-sysroot (surely source the
> > environment), with fast speed.
> > * But can we deploy target-sysroot to hardware-target?
> > (Yes, I do want to compile/build application inside hardware-target, even
> > though it is slow)
>
> I would suggest an alternative - install the compiler and tools into your
> image. You could do this when building the image, or alternatively if you
> enable package management in the image you could install them after the
> fact.
> At the image level there's a "tools-sdk" IMAGE_FEATURES item that will
> install
> the appropriate packages; alternatively you can install
> packagegroup-core-sdk
> which is effectively the same thing or for something a little more
> lightweight
> there is packagegroup-core-buildessential (roughly equivalent to debian's
> build-essential).
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--001a11407a8c28a0ae055f34d585
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Paul for your expert explanation, though I may not =
fully understand yet.<div>Here is my scenario when raising my question:</di=
v><div>* After deploying yocto image to hardware-target, I try build an app=
lication (Autotools-based)</div><div>* The build stopped and asked for linu=
x kernel source.</div><div><br></div><div>* So my image already contains co=
mpilers and linkers?</div><div>* So am I missing libraries, or just linux-h=
eaders?=C2=A0</div><div>* what is difference between libraries and headers?=
</div><div><br></div><div>Thanks!</div><div><br></div><div><br></div><div><=
br></div><div><br></div><div><br></div><div><br></div><div><br></div></div>=
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Nov 29, 2=
017 at 6:03 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.=
eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi Jerry,<br>
<span class=3D""><br>
On Thursday, 30 November 2017 10:35:32 AM NZDT Jerry Lian wrote:<br>
&gt; I am confused about the concept of Yocto SDK:<br>
&gt; * when we use &quot;bitbake -c populate_sdk some_image&quot;, we obtai=
n sysroots for<br>
&gt; both target and host.<br>
&gt; * But why do we need sysroot for host?<br>
<br>
</span>The host sysroot actually contains the main part of the SDK - the cr=
oss-<br>
compiler and other tools that need to run on the host. The target part usua=
lly<br>
doesn&#39;t include any executable binaries, only libraries and debugging s=
ymbols.<br>
<span class=3D""><br>
&gt; * I know we can build application under target-sysroot (surely source =
the<br>
&gt; environment), with fast speed.<br>
&gt; * But can we deploy target-sysroot to hardware-target?<br>
&gt; (Yes, I do want to compile/build application inside hardware-target, e=
ven<br>
&gt; though it is slow)<br>
<br>
</span>I would suggest an alternative - install the compiler and tools into=
 your<br>
image. You could do this when building the image, or alternatively if you<b=
r>
enable package management in the image you could install them after the fac=
t.<br>
At the image level there&#39;s a &quot;tools-sdk&quot; IMAGE_FEATURES item =
that will install<br>
the appropriate packages; alternatively you can install packagegroup-core-s=
dk<br>
which is effectively the same thing or for something a little more lightwei=
ght<br>
there is packagegroup-core-<wbr>buildessential (roughly equivalent to debia=
n&#39;s<br>
build-essential).<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--001a11407a8c28a0ae055f34d585--
