Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57FFBE00DA0; Tue,  5 Jul 2016 03:16:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81287E00D8D
	for <yocto@yoctoproject.org>; Tue,  5 Jul 2016 03:16:20 -0700 (PDT)
Received: by mail-io0-f171.google.com with SMTP id g13so168880546ioj.1
	for <yocto@yoctoproject.org>; Tue, 05 Jul 2016 03:16:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=sU/GUXP3oD5uhvvk6rtwdsZhwoyKT6YeZjfJWx9/wgQ=;
	b=u6USBy9CZTPWk2S5mEIRHvArP+p5HUwWrYSd5Y422Eljx3YMBYDef9aNyHfLWaEubg
	9UpXDNAJ5DnvKdCneBgynA0VQXFbijx9vWhUB1LNqsoOH3YMFEb2uwGbmUwLINKSuNyG
	gvWJmJkDqsTjef2fCdp53G6PF3okEnr6OXy/CrmBh6RzAVaI8q+vbIXXtagMhPsdMaBC
	J6x7DGhCBTOpYl9ag4AWItmnzUaUmzcob4kENMsdCMltbexX/Xb6EoQtkOVVpMqvEzyl
	TEpK59Cwsb9kEKP/Hrp7f2mq8gfm0mY6y2ntewQ+J+aoyEeCtHPgHxmAU/dX4WOY1t8P
	v4lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=sU/GUXP3oD5uhvvk6rtwdsZhwoyKT6YeZjfJWx9/wgQ=;
	b=T9VEgG0RP68pIib6USfv+cJWxWezUgiO0e09xvmQ05/E2wsUDarJuFFVEqtlzBxrxe
	Itip/nKGVlQ+N0PXQhmZL4OZFw99uY1Z0mRBsfEiNb5NahX2yeqG2m8/+64nUUvWRVqs
	3NY8/ZcH4z7ansWKKnXzqI1Rf1hwtLfBKCbbZD7AoNrGYN2pumlpC3f3+iluWFBhysRc
	FJ1PMf1i+OBH81hCEkt1kCTAavsj+JbSG966wL0P9eBOskOmXY3HWBZKjV2qZdtwPeEq
	H2Ae1LiijP59Yc+vHWm/q3wEpwQUYZtU93IZwRYUpAHThH259WjiNvjdrZ/oQxGLRXRB
	RqsA==
X-Gm-Message-State: ALyK8tLBT2OfT370jKAOy/v8+DJ5FHKtCgIPa7M+CNyfIBxlIaU1XAn2hUFJICcBXGwGye87viNXIcQssqonGBEv
X-Received: by 10.107.154.210 with SMTP id c201mr11578311ioe.99.1467713780091; 
	Tue, 05 Jul 2016 03:16:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.142.151 with HTTP; Tue, 5 Jul 2016 03:16:00 -0700 (PDT)
In-Reply-To: <dd76bbae443f4c82a36406a58e07e665@XCH-ALN-006.cisco.com>
References: <cebe898af3ab435595255b7915ba3e38@XCH-ALN-006.cisco.com>
	<CAJTo0LZq6EOSZuD7KFd4EP1TMkoST4MTSCyejs3cgjgE1vj7_Q@mail.gmail.com>
	<dd76bbae443f4c82a36406a58e07e665@XCH-ALN-006.cisco.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 5 Jul 2016 11:16:00 +0100
Message-ID: <CAJTo0Lad+=DQvdw0v8NdWzsezK747AEL6s7kR6Bz2m5eQH7J=w@mail.gmail.com>
To: "Chandra Mishra (chanmish)" <chanmish@cisco.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto build cross toolchain issue
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
X-List-Received-Date: Tue, 05 Jul 2016 10:16:24 -0000
Content-Type: multipart/alternative; boundary=001a1140fab67ea2bc0536e0be69

--001a1140fab67ea2bc0536e0be69
Content-Type: text/plain; charset=UTF-8

On 5 July 2016 at 11:06, Chandra Mishra (chanmish) <chanmish@cisco.com>
wrote:

> Thanks Ross for your suggestion. It worked for me. But in the past it
> worked for me with old sequence but different gcc cross toolchain, so not
> thinking of changing the order.
>
>
Newer toolchain may have different inter-dependencies, so exposing link
order problems that were hidden before.

Ross

--001a1140fab67ea2bc0536e0be69
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 5 July 2016 at 11:06, Chandra Mishra (chanmish) <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:chanmish@cisco.com" target=3D"_blank">chanmish@cisco.com</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p class=3D"MsoNormal=
"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-seri=
f;color:#1f497d">Thanks Ross for your suggestion. It worked for me. But in =
the past it worked for me with old sequence but different gcc cross toolcha=
in, so not thinking of changing
 the order.=C2=A0 <u></u><u></u></span></p><span class=3D"">
<p class=3D"MsoNormal"></p></span></blockquote></div><br>Newer toolchain ma=
y have different inter-dependencies, so exposing link order problems that w=
ere hidden before.</div><div class=3D"gmail_extra"><br></div><div class=3D"=
gmail_extra">Ross</div></div>

--001a1140fab67ea2bc0536e0be69--
