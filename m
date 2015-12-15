Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D138E00B03; Tue, 15 Dec 2015 00:50:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f171.google.com (mail-ig0-f171.google.com
	[209.85.213.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCB24E0048C
	for <yocto@yoctoproject.org>; Tue, 15 Dec 2015 00:50:14 -0800 (PST)
Received: by mail-ig0-f171.google.com with SMTP id ph11so103058039igc.1
	for <yocto@yoctoproject.org>; Tue, 15 Dec 2015 00:50:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Dr1QLADPnTrkoMhuLJq5VOlM/c4cmTyN8Jm26dELa+Q=;
	b=CcKpcJxgvaruuHoDOr3dBiGF1ejiPfjKVjTL5qpEc5USJRpuiQ2o+PgX+bI925JYrQ
	4Q9DNiSXx9ldGt8NsAeJDh4/0TCTUG0xb9e7o5i5PdXBkKxTPFOH5MqQVpr6ROXA1xK0
	S3SKsxm3HKTvK00i2HwUWmOe7810kmZEdTPZj5WRIUsojBxox5fMhrq/EsNkMM6XnVIy
	axUtVcpBNTDbgsrt/xWZ5T/F0Xrgw4eYTBlek1nzmAVv7X/YU9S2IuX/8qvxWexkalSD
	upbEVme8P9pUQilVzYaicTtoeIKh10nks1vV5oGdS10bCBf9E2qgayLaDILEzkbs4Jp2
	z69g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Dr1QLADPnTrkoMhuLJq5VOlM/c4cmTyN8Jm26dELa+Q=;
	b=BbU/O3wRJe4jJgfru0I/nuONjQ1jLLyZtYVi+4XvUJ0JgPlMqjvM/kn7Kx8LjisqTl
	KUS/J81GeY0aswaigPOx2cH8VcAwZZjBIWoVyCa7kT6PFkkgumf4KlGwDIn7mu0F6Nuj
	xUvbrIN2Nitfxnn2/0KVN9Zpoj1UKq8uksYzoBTsjzChLeIk4YOMyVbo9U+d5Gfz53fp
	Tnzvtea/7NgyoaPvteamQ36S9ZsRRtwXdgyG9fMCQf/9uqkr+b/TdyJE/89Bgxa6jlBR
	3GgH5G8+Cy/mAQld7iTviMyFPTxRrtQhvPcRwVQY8o41k3b3CIRS40GiPgH7l6L9oCek
	GgxA==
X-Gm-Message-State: ALoCoQnZpgc8DrG0l3wmdeaMD+HkKiKhqhgHR+Sr7mPD3pPg+tICw6ePaxeJ+wy1cK9l6T4/mOxNdfbUZHV5JEdrjeE8qoiannlXOGT9UFfco9N3xvxIDFg=
X-Received: by 10.50.30.69 with SMTP id q5mr2960227igh.78.1450169413788; Tue,
	15 Dec 2015 00:50:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.136.141 with HTTP; Tue, 15 Dec 2015 00:49:54 -0800 (PST)
In-Reply-To: <094B1FB387EB1E4FBF933EEB0EFA3A0B623B6A1D@vistrex4.vi.vector.int>
References: <094B1FB387EB1E4FBF933EEB0EFA3A0B5BE0F2CA@vistrex3.vi.vector.int>
	<CAJTo0LY1=5wUJp+K=V6iV5w==jrHvfrUsDwE5-h=NdJDVfDAKA@mail.gmail.com>
	<094B1FB387EB1E4FBF933EEB0EFA3A0B623B6A1D@vistrex4.vi.vector.int>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 15 Dec 2015 08:49:54 +0000
Message-ID: <CAJTo0LY6VRZ+GPkKKPrM42JfqrW4gSgksrGd3=0AMyF3cJ29sA@mail.gmail.com>
To: "Philipp, Damian" <Damian.Philipp@vector.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Select make target for cmake
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
X-List-Received-Date: Tue, 15 Dec 2015 08:50:18 -0000
Content-Type: multipart/alternative; boundary=047d7bdc1c0cc600230526ebe01f

--047d7bdc1c0cc600230526ebe01f
Content-Type: text/plain; charset=UTF-8

On 15 December 2015 at 07:42, Philipp, Damian <Damian.Philipp@vector.com>
wrote:

> However, I did eventually find a solution. A yocto recipe can have
> multiple packages as output. In fact, the default seems to be to create
> ${PN}, ${PN}-dev and ${PN}-dbg packages. I simply added ${PN}-client and
> ${PN}-client-dbg and manually sorted all the client files into those
> packages using the FILES_* variables. You then get a clean separation of
> client- and server packages and can install either or both using, e.g.,
> INSTALL_IMAGE.
>

Yep, that's the ideal solution: build it all and use packages to control
what is installed.

Ross

--047d7bdc1c0cc600230526ebe01f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 15 December 2015 at 07:42, Philipp, Damian <span dir=3D"ltr">&lt;<a href=
=3D"mailto:Damian.Philipp@vector.com" target=3D"_blank">Damian.Philipp@vect=
or.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":=
mv" class=3D"a3s" style=3D"overflow:hidden">However, I did eventually find =
a solution. A yocto recipe can have multiple packages as output. In fact, t=
he default seems to be to create ${PN}, ${PN}-dev and ${PN}-dbg packages. I=
 simply added ${PN}-client and ${PN}-client-dbg and manually sorted all the=
 client files into those packages using the FILES_* variables. You then get=
 a clean separation of client- and server packages and can install either o=
r both using, e.g., INSTALL_IMAGE.<br></div></blockquote></div><br>Yep, tha=
t&#39;s the ideal solution: build it all and use packages to control what i=
s installed.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_=
extra">Ross</div></div>

--047d7bdc1c0cc600230526ebe01f--
