Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50008E00BEB; Tue, 15 Dec 2015 14:12:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9FCBE00AD7
	for <yocto@yoctoproject.org>; Tue, 15 Dec 2015 14:12:16 -0800 (PST)
Received: by mail-io0-f174.google.com with SMTP id e126so35531956ioa.1
	for <yocto@yoctoproject.org>; Tue, 15 Dec 2015 14:12:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=kG8B+HVp21siOo4NHMv+20vn1xVIPp/5OUeo5YOoTvY=;
	b=USuEoofqoH299MSw1xop+R/mGDwnwJBzubT7wrIJ+Ab+riV8zfJM1SnNYpLC7GIn5b
	IT4Xja92xb+7aBfL7R0dcf+mjhmIJiRStqKt9xUizZIfwKJETr+ytPL7kG6xlsMK3/DP
	Eo6Vm512iV7AsEpnuW2kDg+opkzu83w89Oze4NkV61m5Gp5w9X4BymJ6tImZk8B11D1d
	YpyKZN7k9dzdKiyp2AX6rF5LNe3Jig+nTfxNIfEejTaX/pKLlnqYwX/7Q7AzoMpit7oR
	i3/2pyML4ClAG2MNxrlYjreywRXI9mpX/K6WSwxqqDFjUEGBzGSscTB2pSLp11vKqn5+
	Bk3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=kG8B+HVp21siOo4NHMv+20vn1xVIPp/5OUeo5YOoTvY=;
	b=lu9HOsnkev7w108CoJM7BBJT859rJFXuxoIQhGm8hzCDH/qs93pDNE7bFPKESQ1cqu
	3L6Rlh9n0zNQaBSTljMd/Y5lrGwFH7fnfx/Wx5w92fAClHYbcYTRB1xFDZb7pA7xXaGK
	9BmYZNbeTX9UqAbZL3EvAojAiIq4dmFQuwjpXOtaEZI2X69szOiSuaHB/McG341KPA6u
	3Ij7HI3oQxAtfLEL8Yjd0SJgGhzhgyzxIlNT5xhHdGleYwkqT5W7pH+VAhsbgbhJ9oVl
	vZ0FHjnfiAeAci/t8pF6qkViKuFu5HThnr9FZEYvSvbfggzEjd90fnzf+Kwegi8ekqME
	RJqQ==
X-Gm-Message-State: ALoCoQlD9ZCLbtFlPgKNHbX+eLXuH23JlzpYAJarutKgQml3N9gozx6kIXhjokUGxyXkWinECLs/Cr1XcVih65nM6/Wm+AgBtrhVJgOO+LLdnJ0eb/Ip4LI=
X-Received: by 10.107.3.154 with SMTP id e26mr4503136ioi.99.1450217535759;
	Tue, 15 Dec 2015 14:12:15 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.136.141 with HTTP; Tue, 15 Dec 2015 14:11:56 -0800 (PST)
In-Reply-To: <CAOsp8o9Cuz3YvvBrZcH9jJx+5Rz=vKmfD1LUNt977XhHYthmew@mail.gmail.com>
References: <CAOsp8o9Cuz3YvvBrZcH9jJx+5Rz=vKmfD1LUNt977XhHYthmew@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 15 Dec 2015 22:11:56 +0000
Message-ID: <CAJTo0LaFGru4w0mszV6_3zokVdEywhKcy3TXJhninr+vx9sUeA@mail.gmail.com>
To: Michael Habibi <mikehabibi@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Custom license in file header
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
X-List-Received-Date: Tue, 15 Dec 2015 22:12:18 -0000
Content-Type: multipart/alternative; boundary=001a113ec10a10fe4e0526f715e5

--001a113ec10a10fe4e0526f715e5
Content-Type: text/plain; charset=UTF-8

On 15 December 2015 at 21:59, Michael Habibi <mikehabibi@gmail.com> wrote:

> That allows me to properly set LIC_FILES_CHKSUM - but what do I set for
> LICENSE? It's a completely non-standard license. Do I have to copy this
> license somewhere as a common license, despite it only being used for this
> one utility? A bit unclear about these details.
>

I think you'll need to add it to the layer as a common license, yes.   For
example, meta-intel's layer.conf does:

LICENSE_PATH += "${LAYERDIR}/common/custom-licenses"

And drops a few more license files into meta-intel/common/custom-licenses.

You may be able to set LICENSE_PATH in a recipe if you want to extract the
license and put it alongside the recipe, but I've not tried this.

Ross

--001a113ec10a10fe4e0526f715e5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 15 December 2015 at 21:59, Michael Habibi <span dir=3D"ltr">&lt;<a href=
=3D"mailto:mikehabibi@gmail.com" target=3D"_blank">mikehabibi@gmail.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);bor=
der-left-style:solid;padding-left:1ex"><div>That allows me to properly set =
LIC_FILES_CHKSUM - but what do I set for LICENSE? It&#39;s a completely non=
-standard license. Do I have to copy this license somewhere as a common lic=
ense, despite it only being used for this one utility? A bit unclear about =
these details.</div><div></div></blockquote></div><br>I think you&#39;ll ne=
ed to add it to the layer as a common license, yes. =C2=A0 For example, met=
a-intel&#39;s layer.conf does:</div><div class=3D"gmail_extra"><br></div><d=
iv class=3D"gmail_extra">LICENSE_PATH +=3D &quot;${LAYERDIR}/common/custom-=
licenses&quot;<br></div><div class=3D"gmail_extra"><br></div><div class=3D"=
gmail_extra">And drops a few more license files into meta-intel/common/cust=
om-licenses.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_=
extra">You may be able to set LICENSE_PATH in a recipe if you want to extra=
ct the license and put it alongside the recipe, but I&#39;ve not tried this=
.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross=
</div></div>

--001a113ec10a10fe4e0526f715e5--
