Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C29BE00CE1; Fri, 11 Mar 2016 01:33:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0B3AE00929
	for <yocto@yoctoproject.org>; Fri, 11 Mar 2016 01:33:25 -0800 (PST)
Received: by mail-io0-f181.google.com with SMTP id z76so138388914iof.3
	for <yocto@yoctoproject.org>; Fri, 11 Mar 2016 01:33:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=NMIaKC0nF7q1KFc0AWwu68grOqZrUrjpsFSrUDWl3dE=;
	b=t6rQp+He4vXSiN+zsDCXHYFw9Uekfvoc30sOVdu/yK4n01g5JbJZhIRMiBUSa7GuBR
	i3B3TEQdUs3Ku7M6c2aoXPccN31E/J3PUHNgXpQn9Esq+VUoDmnT7PH1f0YJPmjxT4YB
	dBs1E/sj0qed2AFXnu0mFJBFwS2HJuYvAQ1FeLELO/61uDvxha7FWgnH+3hABAaI1QR8
	cIGLlghv1KowyJeAbKI3FcUTcalHSdyeX9qk9nvoBg1ZSGEWb/gjfPJepvncDpayPXBM
	uV7grvY81YyEBsxKsfnWNvNIwyCc/8UaES7YgHj4CGOt0Ir5c7mw/8SV/cb00b3217H5
	CNAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=NMIaKC0nF7q1KFc0AWwu68grOqZrUrjpsFSrUDWl3dE=;
	b=hR8LV8eEQFmxkrhtkgirmNgo5+VSyClrccwAabYAw+dfFvkTBc5xgd76gL54eEJ1cq
	UzhADE6FQ7rhEXGCCoL0wOCXo47M4za04JVRGi68aWPPkbz+cIioQZdz+rXQJoug6PIw
	2Gfvh/FgQqE55pyAyoSaZvkEbkk9joJ6MBkLnqspBcAAUH5jk9fnBIvaZO6HAYVmhyuT
	ctmSD+MwSb36n3cfYmsiPOWHdNqm3vv915LwY8BWUFOCS8eEF5bp+9Gh50t+d8aYnqxd
	8kqvrmz62X1w9mZnxMlrvWNqyEG/YL2GrGRc6CytbpTLa+d5///Tkhl3ImKA9KvvPfMn
	zUgQ==
X-Gm-Message-State: AD7BkJJtP6UFCy7OY3P7O0VmhnqSHRB+NJi3AXDinlzWptYG4ewAaIhroNQ8px9cTJSw4vHTND88/YHgfqbdxfMb
X-Received: by 10.107.137.93 with SMTP id l90mr9455584iod.133.1457688804997;
	Fri, 11 Mar 2016 01:33:24 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Fri, 11 Mar 2016 01:33:05 -0800 (PST)
In-Reply-To: <5addf060acc4ab8f159ee2ff87fb4b5@cweb07.nm.nhnsystem.com>
References: <5addf060acc4ab8f159ee2ff87fb4b5@cweb07.nm.nhnsystem.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 11 Mar 2016 09:33:05 +0000
Message-ID: <CAJTo0LZJUJa2oV0S7CBOj_ADvjr54PM9sMZCoYiJW3d7WD69fQ@mail.gmail.com>
To: =?UTF-8?B?7Jyk7JiB7ISd?= <earwigz@naver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to compile ozone-wayland in own recipes?
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
X-List-Received-Date: Fri, 11 Mar 2016 09:33:31 -0000
Content-Type: multipart/alternative; boundary=001a113ec71a6a52e6052dc29fa1

--001a113ec71a6a52e6052dc29fa1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 11 March 2016 at 09:13, =EC=9C=A4=EC=98=81=EC=84=9D <earwigz@naver.com> =
wrote:

> I will compile ozone-wayland using my custom recipes.
>
I don't think you should do this.

> if you want to know what is ozone-wayland, please reference this site. "
> https://github.com/01org/ozone-wayland"
>
> The chromium recipe in meta-browser has support for applying the patches
from ozone-wayland.

Ross

--001a113ec71a6a52e6052dc29fa1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 11 March 2016 at 09:13, =EC=9C=A4=EC=98=81=EC=84=9D <span dir=3D"ltr">&l=
t;<a href=3D"mailto:earwigz@naver.com" target=3D"_blank">earwigz@naver.com<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p>I will compile o=
zone-wayland using my custom recipes.</p></blockquote><div>I don&#39;t thin=
k you should do this.=C2=A0</div><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p>if you w=
ant to know what is ozone-wayland, please reference this site. &quot;<a hre=
f=3D"https://github.com/01org/ozone-wayland" target=3D"_blank">https://gith=
ub.com/01org/ozone-wayland</a>&quot;</p><p></p></blockquote></div>The chrom=
ium recipe in meta-browser has support for applying the patches from ozone-=
wayland.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extr=
a">Ross</div></div>

--001a113ec71a6a52e6052dc29fa1--
