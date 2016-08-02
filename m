Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31ABCE00F5A; Tue,  2 Aug 2016 04:47:01 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04223E00F51
	for <yocto@yoctoproject.org>; Tue,  2 Aug 2016 04:46:56 -0700 (PDT)
Received: by mail-io0-f181.google.com with SMTP id q83so210417489iod.1
	for <yocto@yoctoproject.org>; Tue, 02 Aug 2016 04:46:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=VtRw0LN+E0T7mvXft8XEzc//DX7hTgS/K5Cql67Oibg=;
	b=sppKP8fly9M3DrhwHH2wVa0H4p6NtxXKWkqrYp9jlhJ80C0I1HlbfBVlBOPdJ4piuZ
	N0GSmyplE10vZED4b5B4f/bDX51T5uZnNgtX7hUeAP7gxP5meUUceWpXMMzzFb3I9Sbg
	IuA9VAW/7Xn+6rHJEPEuBQ1AQ4kRQQBH8Pd0p62U5i9yX445dGNyBCE4VkIovEOwt+mK
	vVQj4Iv8aeVsst/+jF4B5WFcJ1QPunQY8vmZZWRk+hKUx872gScmHe405aPEqgYvG0Ls
	3Y2C1fpuHo4hGXeH4Mf3xQvNZZ0bsFMmDRWyF+TWZxKmmjmfWmfm1UDCqCu1fg3X8IWw
	3EEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=VtRw0LN+E0T7mvXft8XEzc//DX7hTgS/K5Cql67Oibg=;
	b=SDKZr7lEaEA3ZijQ+5GamE57Z2BD+FqHwXz7w+FWMXIeEcsD6g1jLijZquzpo07O5o
	7Ydi0nSxJq+oqzQRb3XaqETMr4VDbwwmEBx5vAFFOspRkDqOocLGguXpVUZf56ucKt7N
	6JjDzdsp9ADmufcyLAo5iWrZzg9/27jrOtKLGICKRfJrMuuGsoN10gawYxISq02neRnA
	J7PiFgc5HHiBLembrEqK/lPBVHgevT6t4it2JTUMEQ/Zl4IP9X+oFbL/o0cTJfMGp26v
	KIj5xHP7RIS49AM4G87GAvKssLa7raUiO5iniWztOyyzZpKV9N+Hlm+fLQMv2QE4FLqn
	SAug==
X-Gm-Message-State: AEkoout5GDfVL6WSo6s2iv0FHAbw0zBioQbCJ46/LZnBj4/kKFHRlZ8VLH3rTWjek+gevW9lJmUJQsHMaYOx8uK2
X-Received: by 10.107.138.212 with SMTP id c81mr58932676ioj.148.1470138416073; 
	Tue, 02 Aug 2016 04:46:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Tue, 2 Aug 2016 04:46:35 -0700 (PDT)
In-Reply-To: <BN3PR1201MB0963E0F226A49187386F552FA5050@BN3PR1201MB0963.namprd12.prod.outlook.com>
References: <BN3PR1201MB0963E0F226A49187386F552FA5050@BN3PR1201MB0963.namprd12.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 2 Aug 2016 12:46:35 +0100
Message-ID: <CAJTo0Lbuz_YzfQ2EKb1Hw2zT-fM2C0+PYNzwWFa0511UKeW7-A@mail.gmail.com>
To: Richard Zhang <richard.zhang@pica8.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libnetconf recipe configure error
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
X-List-Received-Date: Tue, 02 Aug 2016 11:47:01 -0000
Content-Type: multipart/alternative; boundary=001a113ed9320fa9b605391546cf

--001a113ed9320fa9b605391546cf
Content-Type: text/plain; charset=UTF-8

On 2 August 2016 at 08:56, Richard Zhang <richard.zhang@pica8.com> wrote:

> checking for xml2-config... yes
>
> ERROR: /usr/bin/xml2-config should not be used, use an alternative such as
> pkg-config
>
> ERROR: /usr/bin/xml2-config should not be used, use an alternative such as
> pkg-config
>
> checking for xmlDOMWrapReconcileNamespaces in -lxml2... no
>
> checking for xslt-config... yes
>
> ERROR: /usr/bin/xslt-config should not be used, use an alternative such as
> pkg-config
>
> ERROR: /usr/bin/xslt-config should not be used, use an alternative such as
> pkg-config
>
>
This is the problem.  xml2-config and xslt-config are broken in
cross-compile situations, so you need to patch libnetconf's configure.ac to
use pkgconfig instead of those scripts.

Ross

--001a113ed9320fa9b605391546cf
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 2 August 2016 at 08:56, Richard Zhang <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:richard.zhang@pica8.com" target=3D"_blank">richard.zhang@pica8.com</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p class=3D"MsoNormal=
" align=3D"left" style=3D"text-align:left;text-autospace:none"><span lang=
=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun">checking for xml2-=
config... yes<u></u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
>ERROR: /usr/bin/xml2-config should not be used, use an alternative such as=
 pkg-config<u></u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
>ERROR: /usr/bin/xml2-config should not be used, use an alternative such as=
 pkg-config<u></u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
>checking for xmlDOMWrapReconcileNamespaces in -lxml2... no<u></u><u></u></=
span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
>checking for xslt-config... yes<u></u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
>ERROR: /usr/bin/xslt-config should not be used, use an alternative such as=
 pkg-config<u></u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:SimSun"=
>ERROR: /usr/bin/xslt-config should not be used, use an alternative such as=
 pkg-config<u></u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"left" style=3D"text-align:left;text-autospa=
ce:none"></p></blockquote></div><br>This is the problem. =C2=A0xml2-config =
and xslt-config are broken in cross-compile situations, so you need to patc=
h libnetconf&#39;s <a href=3D"http://configure.ac">configure.ac</a> to use =
pkgconfig instead of those scripts.</div><div class=3D"gmail_extra"><br></d=
iv><div class=3D"gmail_extra">Ross</div></div>

--001a113ed9320fa9b605391546cf--
