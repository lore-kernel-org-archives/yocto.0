Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0FA4E00AD7; Wed, 27 Jan 2016 07:49:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f174.google.com (mail-ig0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77EBEE00AB5
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2016 07:49:06 -0800 (PST)
Received: by mail-ig0-f174.google.com with SMTP id ik10so83587954igb.1
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2016 07:49:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=c/BxFTUa0AkDRZZocULAxSyl/YOrWsirydLuKDWvwFE=;
	b=G6t7uNY5KOPu0rzpdRv+MshKVD+9s4r5Bxv7RwEzQZVuXS2xABGr2YTc3SuJBpq7pn
	wbghd8MepzQSoAAffaiGADLq1qCtrEbIDGoCzL6Qmy1/lwaIKD1st+i+uGYdf01r4f3B
	7kW3qxZjpyJwxf56IAK6MbbBGkLe41NpDedGDmZuzHhuX9HUD1nthE5TXvkV8CkdBr8G
	vOcg4z2vrNlCFU6gopBNkXyza8I3iIElgwtDVVB2LMYoncBmijD6ronqyxYHnhA4CPeN
	hsiWBBP9kTFagepyxW0IBZeBvO25Hbtna1u9Prjqhn3QzlDsVvovzmlWmZde7h6gc2xE
	S82g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=c/BxFTUa0AkDRZZocULAxSyl/YOrWsirydLuKDWvwFE=;
	b=ZbAXJsg50znoOIR7Z8N8ohrC4VkBQU2xVpYQUVsetsMaRYpKfQFOsnszkZgaBxzaFH
	T1g0N4zbqUswILXTRxxLGV6rf1l2wr6LAOyjhqUQXHNMr6OBZX5mkpW6+48raL00/ZcR
	Cv61eHRvn/GTKauxxjGxYChhgRmZyNYcOidi0ugNBBRbTSzqi+KQDMxs3ejO0nT6lf+1
	0bk8w2pnl9uW3snfLDoEARwyERJ3Rr2deUdhLQQB/6nIUXQKL21KIVlCsrYykdjZE/Pb
	J36Wa+Nz/PIzIzcjENq8bgq7tI8iI1EcrxO2mfVSvPT/9t0Tl6fnHxlYo6cdEMX+84Z6
	FUZA==
X-Gm-Message-State: AG10YORegXnOJkWTRpK9hqPdhXXC4/czFRx7bqFmBgVZ7PB3FerMTxAF1b9BCwyEyNZYP8aIfTWxDKryi1BA5PkA
X-Received: by 10.50.43.133 with SMTP id w5mr28452349igl.52.1453909746153;
	Wed, 27 Jan 2016 07:49:06 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Wed, 27 Jan 2016 07:48:46 -0800 (PST)
In-Reply-To: <CAFkk2KSu-yDHMxd-iSc0-cnLyh5wyYyfY7hG57jJGW7so8QB4A@mail.gmail.com>
References: <CAFkk2KRbEnfcia1sq0keuFedUhMCNng3YWdbfCr=Osxw_qkeOQ@mail.gmail.com>
	<CAJTo0LZFpfFzYAUf2En8r-amde0q23eNbzhHapTPUyeSREVYjA@mail.gmail.com>
	<CAFkk2KSu-yDHMxd-iSc0-cnLyh5wyYyfY7hG57jJGW7so8QB4A@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 27 Jan 2016 15:48:46 +0000
Message-ID: <CAJTo0Lay6T0VnV3CND=p9pB1o=_Jx3WQN_D8Ti7MqTCJttSXnA@mail.gmail.com>
To: Ulf Magnusson <ulfalizer@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Detecting missing build dependencies
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
X-List-Received-Date: Wed, 27 Jan 2016 15:49:10 -0000
Content-Type: multipart/alternative; boundary=089e01175f2bf496c1052a52bdb3

--089e01175f2bf496c1052a52bdb3
Content-Type: text/plain; charset=UTF-8

On 27 January 2016 at 15:29, Ulf Magnusson <ulfalizer@gmail.com> wrote:

>  1) Why does test-dependencies.sh remove TMPDIR instead of just wiping the
>     sysroots?
>

For the thorough testing that test-dependencies does you could argue that
entirely wiping tmpdir ensures that the builds are done from clean.

 2) Is there any overhead for subsequent builds from wiping the sysroots?
>     Guessing there shouldn't be, but better check.
>

Only the overhead of extracting from sstate to repopulate the sysroot.

Ross

--089e01175f2bf496c1052a52bdb3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 27 January 2016 at 15:29, Ulf Magnusson <span dir=3D"ltr">&lt;<a href=3D=
"mailto:ulfalizer@gmail.com" target=3D"_blank">ulfalizer@gmail.com</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":2dv" class=3D"a=
3s" style=3D"overflow:hidden">=C2=A01) Why does test-dependencies.sh remove=
 TMPDIR instead of just wiping the<br>
=C2=A0 =C2=A0 sysroots?<br></div></blockquote><div><br></div><div>For the t=
horough testing that test-dependencies does you could argue that entirely w=
iping tmpdir ensures that the builds are done from clean.</div><div><br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex"><div id=3D":2dv" class=3D"a3s" style=3D"o=
verflow:hidden">
=C2=A02) Is there any overhead for subsequent builds from wiping the sysroo=
ts?<br>
=C2=A0 =C2=A0 Guessing there shouldn&#39;t be, but better check.</div></blo=
ckquote></div><br>Only the overhead of extracting from sstate to repopulate=
 the sysroot.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail=
_extra">Ross</div></div>

--089e01175f2bf496c1052a52bdb3--
