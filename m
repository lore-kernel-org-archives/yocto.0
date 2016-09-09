Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A55C5E00404; Fri,  9 Sep 2016 06:45:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.46 listed in list.dnswl.org]
	*  2.4 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.46 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECE17E002AC
	for <yocto@yoctoproject.org>; Fri,  9 Sep 2016 06:45:11 -0700 (PDT)
Received: by mail-oi0-f46.google.com with SMTP id y2so142311632oie.0
	for <yocto@yoctoproject.org>; Fri, 09 Sep 2016 06:45:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=6g3EbmmJV2ru4un1D9WMb3MrBdAkMr78bus8XvmbIB0=;
	b=Ie5E4pN4eWAP60rxn4RHIWdcJHO+4ldgZSzw3i8rDiEuo8KGmRSo9luEPQtSSo5mp4
	4Dmqw6cnN4bef+e+x5vGiQJm97IHvC4CgOOiHWtvDx/AICrJ5lIrtTTCPwJIz6KkiYiR
	l55R9cOAFJz3aPAKPjwbPW2rqnWuTxjHlHCjVxUcTZiP8KW0Y67ZzEHGHC7su3RJUeRd
	E0aSWo3Vj7JP3FlBENXSeMqAQ7k+XX0sl10ARcqTJk7L7688+yWxGS0DKNdXIFz+jXy2
	F1vtJvTfd9CHW1tYzLWKQv/6RwBbJfFOe/AMWC5y15gMipWz3ZCEUSziMwatpXr5KHKz
	OADQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=6g3EbmmJV2ru4un1D9WMb3MrBdAkMr78bus8XvmbIB0=;
	b=RyNPjQ9ELDyORvxn3yevLWoYl23jK7US76LxtxS4wlUwnd3CrTht5rVwMkXXuvZRgM
	Hr7o+YXMw2rZQCM/ihzhnaDvr9eax8iIPBUh7cVTrIEebNRnec/pLuflGazgZwoKNP7c
	7m+KRSrYVcm5sUkciZ7ESaOL+y66QxbiOm58i5b+NWPOoDyCoUzsFNGn6eQf7vfeKT3k
	kx2qFiqp2qyVStipuWkrU7ykQt4NkvHJuRd8BdasdsK6MGCHIT86kbJLB7ZjrNu8jKXL
	1HyGUhjq28++X/6yWbsWjZn047LwLGtalBNRt34enD3KJEFizQIEfFEYoKMKM0mx1Uoc
	S/gA==
X-Gm-Message-State: AE9vXwO7NA1rGhGuqC5H6tmyaA/YSfhcM7/Sbadv0heItWUfzn3Ab2l06CP8g3L4esfAFCTNBMMB7xu0GWP6NIQG
X-Received: by 10.202.239.10 with SMTP id n10mr5521789oih.145.1473428710341;
	Fri, 09 Sep 2016 06:45:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Fri, 9 Sep 2016 06:44:49 -0700 (PDT)
In-Reply-To: <4B3F5767F3F5754FAD4E230B6B1D4F792130C338@US70UWXCHMBA02.zam.alcatel-lucent.com>
References: <4B3F5767F3F5754FAD4E230B6B1D4F792130C338@US70UWXCHMBA02.zam.alcatel-lucent.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 9 Sep 2016 14:44:49 +0100
Message-ID: <CAJTo0LY5Z8P3QJiHbfxSNe6eR180oH0+gzH8B5XX3r08y3XJ5A@mail.gmail.com>
To: "Siegel, Jeffrey (Nokia - US)" <jeffrey.siegel@nokia.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: 'bb' utility fails on attempt to import 'commands' module
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
X-List-Received-Date: Fri, 09 Sep 2016 13:45:13 -0000
Content-Type: multipart/alternative; boundary=94eb2c095db2e1d8b5053c135a3c

--94eb2c095db2e1d8b5053c135a3c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 8 September 2016 at 23:06, Siegel, Jeffrey (Nokia - US) <
jeffrey.siegel@nokia.com> wrote:

> =E2=80=98bb=E2=80=99 Python source contains shebang path =E2=80=98/usr/bi=
n/env python3=E2=80=99 , which
> means it expects to be run by a Python 3.x interpreter. But then it impor=
ts
> python code from bitbake/lib, and bitbake/Yocto use Python 2.7.x.  =E2=80=
=98bb=E2=80=99
> fails upon trying to import =E2=80=98commands=E2=80=99, which is a non-ex=
istent module in
> Python3.
>
>
bb master uses Python 3 because oe-core and bitbake master use Python 3.

If you want to use bb against a release of OE that uses Python 2 then
you'll need to check out a previous commit before the migration to Py3.

Ross

--94eb2c095db2e1d8b5053c135a3c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 8 September 2016 at 23:06, Siegel, Jeffrey (Nokia - US) <span dir=3D"ltr=
">&lt;<a href=3D"mailto:jeffrey.siegel@nokia.com" target=3D"_blank">jeffrey=
.siegel@nokia.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><=
p class=3D"MsoNormal">=E2=80=98bb=E2=80=99 Python source contains shebang p=
ath =E2=80=98/usr/bin/env python3=E2=80=99 , which means it expects to be r=
un by a Python 3.x interpreter. But then it imports python code from bitbak=
e/lib, and bitbake/Yocto use Python 2.7.x. =C2=A0=E2=80=98bb=E2=80=99 fails=
 upon trying
 to import =E2=80=98commands=E2=80=99, which is a non-existent module in Py=
thon3.<u></u><u></u></p>
<p class=3D"MsoNormal"></p></blockquote></div><br>bb master uses Python 3 b=
ecause oe-core and bitbake master use Python 3.</div><div class=3D"gmail_ex=
tra"><br></div><div class=3D"gmail_extra">If you want to use bb against a r=
elease of OE that uses Python 2 then you&#39;ll need to check out a previou=
s commit before the migration to Py3.</div><div class=3D"gmail_extra"><br><=
/div><div class=3D"gmail_extra">Ross</div></div>

--94eb2c095db2e1d8b5053c135a3c--
