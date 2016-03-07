Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C13D0E0083D; Mon,  7 Mar 2016 13:51:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20172E0077F
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 13:51:33 -0800 (PST)
Received: by mail-ig0-f176.google.com with SMTP id ig19so35880787igb.0
	for <yocto@yoctoproject.org>; Mon, 07 Mar 2016 13:51:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZK3OaQNemXdtZek//rxIPQD6XnAotiXCcknV1IgWn0U=;
	b=dqS34ubz7p+hhQfF64MB50wh/L/BOvoPHwpkDbX1KGR+zCxwG+hi5V/ob7qIkXiVcX
	cFHYKDnkO/sL62Q2FgUVDIybUdMevDjaeS0m6MWecBzC5g3iDuq2m7l3wJWL7GX1pWLg
	vBaiVOxCt/zYCJ51dWoU+JYdCtBuF0kvkJerFEvj+QqoQ3uk01OLqqHYwQubMJpi5Rxb
	sTLzbYqRcxLM3y6+5EkYzd0HupPrNZZADVB2sZSXTCPbgjXqsciC64JjEZoFHYYFeV+q
	gsDZ0Edfi9lGEL/H4APm0/ftpHsXXMtrcFfImzS18yl8ke5THkVzURX7YtDNlx4s9p4u
	XKcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZK3OaQNemXdtZek//rxIPQD6XnAotiXCcknV1IgWn0U=;
	b=eorxyJxJBgm83uDLLt3tmI4WquY3fqZqUMszFP8VVfdYNCzDZF5YiaTmLVmHnURUvm
	+3IgP3R98clRJZUMBdGWoPQOtcZGNFulCCSnXegpwnXjZPgD3VJz9B0In9tTl+TlRMn3
	3mZCobKG5QehapZrgsUfGBxShbUg682fNj9tkq0wl5oXwkTwwXwtmybA4EPpQsTCgOzV
	vWQsG4XkAwXQqspQeMQNdX9J6SBZPmgUr9bNFdBg1J0rRrmEmpmEigEOU4vIQk+bfxzc
	VZfepUL0mfZ+nBOh1y0Sb9ZbmdGs8exe2aRh1qzDFVaD5NRUmP3KnWA3UEQD3qfa4OFk
	ReYg==
X-Gm-Message-State: AD7BkJIqOofUHcAvHDIOxTL9W4H2epKO4LOvV0BOTPReBbxQ2CjuE/BrPqJ35iL//bRSmY3aBoDuHLCknwz8672S
X-Received: by 10.50.43.226 with SMTP id z2mr15013004igl.78.1457387492845;
	Mon, 07 Mar 2016 13:51:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Mon, 7 Mar 2016 13:51:13 -0800 (PST)
In-Reply-To: <EC8BB00EF68CF14E9A15000E115CBC8108F25488@G4W3291.americas.hpqcorp.net>
References: <EC8BB00EF68CF14E9A15000E115CBC8108F25488@G4W3291.americas.hpqcorp.net>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 7 Mar 2016 21:51:13 +0000
Message-ID: <CAJTo0LY0Qo5K8MZrqhCZKkLfjdUJ=N19WFaxvaEh+CGpMbquTw@mail.gmail.com>
To: "Bhanagay, Sagar" <sagar.bhanagay@hpe.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: packages with PKGSIZE 0
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
X-List-Received-Date: Mon, 07 Mar 2016 21:51:36 -0000
Content-Type: multipart/alternative; boundary=047d7bfea0f4cfc391052d7c77f4

--047d7bfea0f4cfc391052d7c77f4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 7 March 2016 at 21:46, Bhanagay, Sagar <sagar.bhanagay@hpe.com> wrote:

> I was going through the list of packages installed in the image (as per
> the manifest file).
>
> I noticed that metadata information for these packages is present at -
>
> */build/tmp/sysroots/NAME/pkgdata/runtime/*
>
>
>
> Now I do notice that rarely for a few packages mentioned in the manifest
> list, the corresponding metadata file is not present here.
>
> Also sometimes, though the file is present, it says =E2=80=9CPKGSIZE_pkgn=
ame: 0=E2=80=9D
>
> Example: PKGSIZE_packagegroup-base-ipv6: 0
>
>
>
> What are these 0 size packages that manifest says are part of the image?
>
>
They're called metapackages: they exist as packages but don't actually
install any files.  They're used to pull in other packages through
dependencies.  packagegroup-base-ipv6 is a bad example as it actually only
pulls in one other package, but packagegroup-base-bluetooth is a good
example as installing that causes about 15 kernel module packages to be
pulled in (to enable bluetooth support).

Ross

Ross

--047d7bfea0f4cfc391052d7c77f4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 7 March 2016 at 21:46, Bhanagay, Sagar <span dir=3D"ltr">&lt;<a href=3D"=
mailto:sagar.bhanagay@hpe.com" target=3D"_blank">sagar.bhanagay@hpe.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p class=3D"MsoNormal"=
><span style=3D"font-family:&quot;Courier New&quot;">I was going through th=
e list of packages installed in the image (as per the manifest file).<u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
I noticed that metadata information for these packages is present at -
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-family:&quot;Courier New&quot=
;">/build/tmp/sysroots/NAME/pkgdata/runtime/<u></u><u></u></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
<u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Now I do notice that rarely for a few packages mentioned in the manifest li=
st, the corresponding metadata file is not present here.<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Also sometimes, though the file is present, it says =E2=80=9CPKGSIZE_pkgnam=
e: 0=E2=80=9D<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Example: PKGSIZE_packagegroup-base-ipv6: 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
<u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
What are these 0 size packages that manifest says are part of the image?<u>=
</u><u></u></span></p>
<p class=3D"MsoNormal"></p></blockquote></div><br>They&#39;re called metapa=
ckages: they exist as packages but don&#39;t actually install any files.=C2=
=A0 They&#39;re used to pull in other packages through dependencies. =C2=A0=
packagegroup-base-ipv6 is a bad example as it actually only pulls in one ot=
her package, but packagegroup-base-bluetooth is a good example as installin=
g that causes about 15 kernel module packages to be pulled in (to enable bl=
uetooth support).</div><div class=3D"gmail_extra"><br></div><div class=3D"g=
mail_extra">Ross</div><div class=3D"gmail_extra"><br></div><div class=3D"gm=
ail_extra">Ross</div></div>

--047d7bfea0f4cfc391052d7c77f4--
