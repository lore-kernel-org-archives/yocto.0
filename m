Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7EA47E00BE8; Wed, 11 Oct 2017 04:24:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.169 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCD03E008A4
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 04:24:23 -0700 (PDT)
Received: by mail-io0-f169.google.com with SMTP id m81so1603621ioi.13
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 04:24:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ByNRrv626g4jhYCs/3SbbIcNwkPUnfJNa/2EQYKuPNo=;
	b=Vt9sHsYfFfSJeiP4MYW1xI3WpLhADGY8VY887BD5Jjkr1owzPmXeOUQazxw/7+zxUN
	aIsoaidbGqAhN32tBzKQWYognplnZTvxksbbwnjOCc9TvmiusLSuhRnxCGMrTTkvcP57
	qJIaSoMoDUKXy1MLpPmCBgjofFCiv/c1ahXmbre2N5iCSODoonwaqSbcgSTEQX3iqzaG
	CxAu9mb+DDacHS1VuCOdUj9vudXX2jJkO0ND629Rjz65oyBS6j+QrBnDA7M58jT3WNRT
	/QbiWtFeCQgs3nVzqFdGe+M9nIYnLLSdrBVzQzezhQNgUW5MrFJnS93LeX8QB0uEVfjd
	1onA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ByNRrv626g4jhYCs/3SbbIcNwkPUnfJNa/2EQYKuPNo=;
	b=cie9+sKrsd1b9YSeo2uuuOsEi88NhtXQtR21zm+FGzl3oOE41wh/8zn5XgN2ZXaqXL
	Wc9FhCj0zh4SArhFgy9awPmZPYbPCN2vHiXi75RKzv0Bc85f10Dhu25xTbttD3kFYX1i
	zkKmKM8EGhx1ZraoYJ/k5Kxp+mIxEYdWhZHsXmKEJZHGksNo3+YLbtkPJJ/+SRlIlafe
	xxgUo1E+oeU3tlrOm33knHFaa0B01cQP0PyNuedXos7csblZbEyJrINArupBUZwpMQWA
	nReAamyK1IuuQzjxLbCjs1XMs35toQzZZR4s57KpGUck2MzTPawPNWkaFbavKCFWkDXc
	j5AA==
X-Gm-Message-State: AMCzsaUSQWKoDN9RD2omBTuYcS/Om+T1NnevWZAK5QQ/Ek89DgblCm80
	4SGQOvYw+5/sSNisF04cMOV4Rnx3MP60Zr3lpn8Lqg==
X-Google-Smtp-Source: AOwi7QCkLhoxV3yLyoh4MBm+p5u2CAjo/r5wIfpcgHER3kNNbHZPX8BIjAqf00ShvRpLjMRAgEBW0lW/5PWKdtfYUkw=
X-Received: by 10.107.41.205 with SMTP id p196mr565841iop.142.1507721062887;
	Wed, 11 Oct 2017 04:24:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.205 with HTTP; Wed, 11 Oct 2017 04:24:02 -0700 (PDT)
In-Reply-To: <1507717126.9509.29.camel@collabora.co.uk>
References: <1507671003.9509.21.camel@collabora.co.uk>
	<OF5390C64E.C78BBBE2-ON882581B5.007B79AE-882581B5.007BBDD4@selinc.com>
	<1507704333.9509.23.camel@collabora.co.uk>
	<CAJTo0La5mPdRzFOv-ofnHwuyG3fNPEf_be=V9d_TZAHLJxt_kA@mail.gmail.com>
	<1507713002.9509.25.camel@collabora.co.uk>
	<1507713360.9509.27.camel@collabora.co.uk>
	<CAOgGgETUawMZ8wAJW-n-UiEW8NOR8sO19gUhkEjJqbDCDa81RQ@mail.gmail.com>
	<1507717126.9509.29.camel@collabora.co.uk>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 11 Oct 2017 12:24:02 +0100
Message-ID: <CAJTo0LYD6fW=zCuH_x9x-cznFrXxrmoV3gx-kDtBtWzjH7XCLw@mail.gmail.com>
To: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to use same user in two recipes?
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
X-List-Received-Date: Wed, 11 Oct 2017 11:24:24 -0000
Content-Type: multipart/alternative; boundary="001a1141efe25fc565055b43aa0c"

--001a1141efe25fc565055b43aa0c
Content-Type: text/plain; charset="UTF-8"

For this you definitely want DEPENDS.  Read the do_prepare_sysroot log to
for the recipe you're building, it might have an error that isn't causing
the build to fail.

Ross

On 11 October 2017 at 11:18, Fabien Lahoudere <
fabien.lahoudere@collabora.co.uk> wrote:

> On Wed, 2017-10-11 at 13:06 +0300, Henrik Lindblom wrote:
>
> I think you'll want RDEPENDS instead of DEPENDS in your recipe. DEPENDS
> implies build time dependencies (e.g. libraries) while RDEPENDS actually
> gets the component installed as a runtime dependency.
>
>
> Thanks Henrik
>
> I tried to add RDEPENDS too without success. The problem is that users and
> groups are not installed IIUC.
>
> On Wed, Oct 11, 2017 at 12:16 PM, Fabien Lahoudere <
> fabien.lahoudere@collabora.co.uk> wrote:
>
> FI, with bitbake testuser -c devshell
>
> # cat ../1.0-r1/recipe-sysroot/etc/passwd
> root::0:0:root:/root:/bin/sh
> daemon:*:1:1:daemon:/usr/sbin:/bin/sh
> bin:*:2:2:bin:/bin:/bin/sh
> sys:*:3:3:sys:/dev:/bin/sh
> sync:*:4:65534:sync:/bin:/bin/sync
> games:*:5:60:games:/usr/games:/bin/sh
> man:*:6:12:man:/var/cache/man:/bin/sh
> lp:*:7:7:lp:/var/spool/lpd:/bin/sh
> mail:*:8:8:mail:/var/mail:/bin/sh
> news:*:9:9:news:/var/spool/news:/bin/sh
> uucp:*:10:10:uucp:/var/spool/uucp:/bin/sh
> proxy:*:13:13:proxy:/bin:/bin/sh
> www-data:*:33:33:www-data:/var/www:/bin/sh
> backup:*:34:34:backup:/var/backups:/bin/sh
> list:*:38:38:Mailing List Manager:/var/list:/bin/sh
> irc:*:39:39:ircd:/var/run/ircd:/bin/sh
> gnats:*:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/bin/sh
> nobody:*:65534:65534:nobody:/nonexistent:/bin/sh
>
>
> Users are not found
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
> --
>
> Fabien
>

--001a1141efe25fc565055b43aa0c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">For this you definitely want DEPENDS.=C2=A0 Read the do_pr=
epare_sysroot log to for the recipe you&#39;re building, it might have an e=
rror that isn&#39;t causing the build to fail.<div><br></div><div>Ross</div=
></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 11 Octo=
ber 2017 at 11:18, Fabien Lahoudere <span dir=3D"ltr">&lt;<a href=3D"mailto=
:fabien.lahoudere@collabora.co.uk" target=3D"_blank">fabien.lahoudere@colla=
bora.co.uk</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><sp=
an class=3D""><div>On Wed, 2017-10-11 at 13:06 +0300, Henrik Lindblom wrote=
:</div><blockquote type=3D"cite"><div dir=3D"ltr"><font face=3D"monospace, =
monospace">I think you&#39;ll want RDEPENDS instead of DEPENDS in your reci=
pe. DEPENDS implies build time dependencies (e.g. libraries) while RDEPENDS=
 actually gets the component installed as a runtime dependency.</font></div=
><div class=3D"gmail_extra"><br></div></blockquote><div><br></div></span><d=
iv>Thanks Henrik</div><div><br></div><div>I tried to add RDEPENDS too witho=
ut success. The problem is that users and groups are not installed IIUC.</d=
iv><div><div class=3D"h5"><div><br></div><blockquote type=3D"cite"><div cla=
ss=3D"gmail_extra"><div class=3D"gmail_quote">On Wed, Oct 11, 2017 at 12:16=
 PM, Fabien Lahoudere <span dir=3D"ltr">&lt;<a href=3D"mailto:fabien.lahoud=
ere@collabora.co.uk" target=3D"_blank">fabien.lahoudere@collabora.<wbr>co.u=
k</a>&gt;</span> wrote:<br><blockquote type=3D"cite"><div><div>FI, with bit=
bake testuser -c devshell</div><div><br></div><div># cat ../1.0-r1/recipe-s=
ysroot/etc/p<wbr>asswd=C2=A0</div><div>root::0:0:root:/root:/bin/sh</div><d=
iv>daemon:*:1:1:daemon:/usr/sbin:<wbr>/bin/sh</div><div>bin:*:2:2:bin:/bin:=
/bin/sh</div><div>sys:*:3:3:sys:/dev:/bin/sh</div><div>sync:*:4:65534:sync:=
/bin:/bin/<wbr>sync</div><div>games:*:5:60:games:/usr/games:<wbr>/bin/sh</d=
iv><div>man:*:6:12:man:/var/cache/man:<wbr>/bin/sh</div><div>lp:*:7:7:lp:/v=
ar/spool/lpd:/bi<wbr>n/sh</div><div>mail:*:8:8:mail:/var/mail:/bin<wbr>/sh<=
/div><div>news:*:9:9:news:/var/spool/new<wbr>s:/bin/sh</div><div>uucp:*:10:=
10:uucp:/var/spool/u<wbr>ucp:/bin/sh</div><div>proxy:*:13:13:proxy:/bin:/bi=
n/<wbr>sh</div><div>www-data:*:33:33:www-data:/var<wbr>/www:/bin/sh</div><d=
iv>backup:*:34:34:backup:/var/bac<wbr>kups:/bin/sh</div><div>list:*:38:38:M=
ailing List Manager:/var/list:/bin/sh</div><div>irc:*:39:39:ircd:/var/run/i=
rcd<wbr>:/bin/sh</div><div>gnats:*:41:41:Gnats Bug-Reporting System (admin)=
:/var/lib/gnats:/bin/sh</div><div>nobody:*:65534:65534:nobody:/n<wbr>onexis=
tent:/bin/sh</div><div><span><pre><br></pre><pre>Users are not found</pre><=
/span></div></div><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>
</blockquote></div></div><span class=3D"HOEnZb"><font color=3D"#888888"><di=
v><span><pre>-- <br></pre><div style=3D"width:100ch">Fabien</div></span></d=
iv></font></span></div></blockquote></div><br></div>

--001a1141efe25fc565055b43aa0c--
