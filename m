Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E151BE0108D; Mon,  8 Aug 2016 16:16:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.41 listed in list.dnswl.org]
Received: from mail-it0-f41.google.com (mail-it0-f41.google.com
	[209.85.214.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 983F7E00DBD
	for <yocto@yoctoproject.org>; Mon,  8 Aug 2016 16:16:25 -0700 (PDT)
Received: by mail-it0-f41.google.com with SMTP id f6so148652ith.0
	for <yocto@yoctoproject.org>; Mon, 08 Aug 2016 16:16:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=su0tfLLVT97z5vkG5MINEll7u/mRR+3LU8XTK/kcYnk=;
	b=m+9MzFc/r7eVznFFTvAtZBKhfNCjeAZpNpLUldGFrkxFjg+L+7UJDDPsNVaUHFzP8q
	HbHnT6W+IRmFcVEbV0q88OLnXLrNRHeIqE3ij3eul2f4x6wiV6+Ri11Bb8RSWe0AKzfQ
	8Pxo2ymvJaz5fIQ1eawtULZkGi4V0/nZmivTPgYrIxmNMNDXNHNs3++kO2zGt3/QUAI5
	kzkHwZdFVHg7c5PStTZ+nucYoPnhDrqThxTgBhXcVs/8W6C7BHSbNlw2r7sT5OeEM7FI
	zV7YaAkgjX6BCypJZ+5fU+4i+/lF24igsMYo12wSmWZORZI/+GrszKF+c5b3fP0o8Iad
	wbEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=su0tfLLVT97z5vkG5MINEll7u/mRR+3LU8XTK/kcYnk=;
	b=TjBG/cMFBLLJoJF4xWd7MjU6PDM0FU9u9haBPUwH/96eNCEp5icTR92ETCJJs55eev
	hilVh8AF6n2qDfoVkCGFnJ1R7tRCrVcCWIZbxOIMg52aAvaAPs2tUv6dDCmxMkKbEDZg
	WOTEWebvGka6QTgK77u7j3FhAqwRiIfI99zaNC7yYnpHhUkuIqh8/KrfHRLSL51JD5Ib
	fi4AImveqV8PYtbD1pGqebUnUyX9222XQB4oxNCvZa9VqPcB046bjR3HobKmYDrCZ6zH
	+Gn8bt5LR9TYM7iGI5fKIuHoWn0jOiasZp1hvKyXARFic4fhQD9/1e30pR23DqCgjol8
	DQ9A==
X-Gm-Message-State: AEkooutub7NMHOleJk3+nJJYxX7iNv9COBoimot5hW2z/PLEeMV6K8230DjOrazjioL9JicHq/mDl8TVHaV+OIxY
X-Received: by 10.36.20.75 with SMTP id 72mr20546865itg.83.1470698185183; Mon,
	08 Aug 2016 16:16:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Mon, 8 Aug 2016 16:16:04 -0700 (PDT)
In-Reply-To: <1470671991.8166.44.camel@linuxfoundation.org>
References: <CC61EFE1-5F39-4848-AD71-8E9C8DEC43C8@gmail.com>
	<1470637705.8166.29.camel@linuxfoundation.org>
	<8C207C42-3D61-4C3F-A1DE-F305AA6617BA@gmail.com>
	<1470644094.8166.37.camel@linuxfoundation.org>
	<1470646210.8166.38.camel@rpsys.net>
	<1470647765.4581.23.camel@andred.net>
	<ACB9AEF7-A7DF-4A88-9762-7569D91AD12D@gmail.com>
	<1470671991.8166.44.camel@linuxfoundation.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 9 Aug 2016 00:16:04 +0100
Message-ID: <CAJTo0LY-MVSANSLRBzBGTL2ZJ=Ga=Xijps6jwAGosLK3aE4QLg@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: =?UTF-8?Q?Andr=C3=A9_Draszik?= <git@andred.net>,
	OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>,
	OE-core <openembedded-core@lists.openembedded.org>,
	Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: [OE-core] [RFT] binutils 2.27
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
X-List-Received-Date: Mon, 08 Aug 2016 23:16:31 -0000
Content-Type: multipart/alternative; boundary=001a11446942e66d310539979a8e

--001a11446942e66d310539979a8e
Content-Type: text/plain; charset=UTF-8

On 8 August 2016 at 16:59, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> FWIW, I think the connmand segfault on mips and powerpc is hinted at
> with this bug:
>
> https://bugs.launchpad.net/ubuntu/+source/lua5.3/+bug/1570055
>
> connmand is a binary linked with a linker version-script. If I build
> connmand without that option, it doesn't segfault, at least on mips.
>
> The binutils manuals say you shouldn't build binaries with version
> scripts:
>
> http://ftp.gnu.org/old-gnu/Manuals/ld-2.9.1/html_node/ld_25.html
>
> Its suspected connman might do this to limit the function exposure to
> its plugins.
>
> Now sure exactly what needs to happen here without more research but it
> certainly hits at where the problem is. I suspect its the same issue on
> ppc.
>

I've verified that with binutils 2.26 on x86-64, a minimal test case for an
executable using a version script to limit exported symbols to dlopen()d
modules does in fact work.  A toolchain is building now to see what happens
in different environments.

Ross

--001a11446942e66d310539979a8e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 8 August 2016 at 16:59, Richard Purdie <span dir=3D"ltr">&lt;<a href=3D"=
mailto:richard.purdie@linuxfoundation.org" target=3D"_blank">richard.purdie=
@linuxfoundation.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
"><div id=3D":37i" class=3D"a3s aXjCH m1566ae22eb3a0c11">FWIW, I think the =
connmand segfault on mips and powerpc is hinted at<br>
with this bug:<br>
<br>
<a href=3D"https://bugs.launchpad.net/ubuntu/+source/lua5.3/+bug/1570055" r=
el=3D"noreferrer" target=3D"_blank">https://bugs.launchpad.net/<wbr>ubuntu/=
+source/lua5.3/+bug/<wbr>1570055</a><br>
<br>
connmand is a binary linked with a linker version-script. If I build<br>
connmand without that option, it doesn&#39;t segfault, at least on mips.<br=
>
<br>
The binutils manuals say you shouldn&#39;t build binaries with version<br>
scripts:<br>
<br>
<a href=3D"http://ftp.gnu.org/old-gnu/Manuals/ld-2.9.1/html_node/ld_25.html=
" rel=3D"noreferrer" target=3D"_blank">http://ftp.gnu.org/old-gnu/<wbr>Manu=
als/ld-2.9.1/html_node/ld_<wbr>25.html</a><br>
<br>
Its suspected connman might do this to limit the function exposure to<br>
its plugins.<br>
<br>
Now sure exactly what needs to happen here without more research but it<br>
certainly hits at where the problem is. I suspect its the same issue on<br>
ppc.</div></blockquote></div><br>I&#39;ve verified that with binutils 2.26 =
on x86-64, a minimal test case for an executable using a version script to =
limit exported symbols to dlopen()d modules does in fact work.=C2=A0 A tool=
chain is building now to see what happens in different environments.</div><=
div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></=
div>

--001a11446942e66d310539979a8e--
