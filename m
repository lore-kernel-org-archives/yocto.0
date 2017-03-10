Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3F0CE00A30; Fri, 10 Mar 2017 10:15:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.171 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f171.google.com (mail-ua0-f171.google.com
	[209.85.217.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FBB6E00A16
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 10:15:54 -0800 (PST)
Received: by mail-ua0-f171.google.com with SMTP id f54so117479845uaa.1
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 10:15:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=VzKVtmSO2wDt6pd6FJpTv8x2T24HLv6Y0RIopBdtzns=;
	b=Q16WKa7Jj+4kUSiBD1YS5+DwX0Q/1yMQGiKkQywaHNHBG3H/o2wDbgve4isjBzIjUi
	FJIdWJ2QGKg4jyQ/+eZabHB1Sm+tpsV84d9dnIiTAqtrkuBsIO4QiUgGQ+NYUXjyzP42
	3aFvMo2RGZVDe6w06BGnqowUJ0maRkTTaP1Wi/D6pNEDUdcbDYzbuvc4SvR4o3K3Rqds
	a0gfP882BaQ/ThBrR3jqCcc6NinJQj7rUiRjw0J7bhQziGLtCSszb5kWRqS0HHRqSvrx
	+4533WcAFPr906C8d0DH2JffEPHuYOCN3r0yWCTVrwmZQ2T6FDbjm+2JyW1Bwg4h9eyS
	Jqjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=VzKVtmSO2wDt6pd6FJpTv8x2T24HLv6Y0RIopBdtzns=;
	b=msXVAXUZcKxsHoH/EnZ3ZmMHqVM9GKEAEqDPLfVXdufKGIwoAv3K0TVx36+rRksvWy
	Y4r8pbZPKVHGgxD4dz653raGOWEdfgOOUp3n/sUoIBDFWC9LVqnsSILF/ue4BTtpg6sJ
	4sORr1sF8nao7rmdRDapZtR7u9kyJVTmIGgmKmTVne6ry3ZYGp2n6ohp8VkUlmFbqFLg
	TxPXfH7N5XOzQhfeglHIC3pL42EM7K+gUdG39FVQLX7jF3jl7bbpWnuDSttawC8RVTbj
	4LJJ4jd9j0MFQlYC5D5qTyVAZZzFgsHdxvx0sPSWa1wPX1H3cHt0WF0YPhHs32w4F65Z
	Fb9A==
X-Gm-Message-State: AMke39lWLTL5FB8zv7+8LmeVUZRCbDWVHE1oB1F/ebRsvp6B0nZJ8tKTS4EQTjWYtneMWIRtSde2Dx8iLrmCiA==
X-Received: by 10.176.64.225 with SMTP id i88mr10279210uad.60.1489169754154;
	Fri, 10 Mar 2017 10:15:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.39.37 with HTTP; Fri, 10 Mar 2017 10:15:23 -0800 (PST)
In-Reply-To: <HK2PR0401MB149200CF1FFB30976C65F1C0C6200@HK2PR0401MB1492.apcprd04.prod.outlook.com>
References: <mailman.63189.1489153806.15860.yocto@yoctoproject.org>
	<HK2PR0401MB149200CF1FFB30976C65F1C0C6200@HK2PR0401MB1492.apcprd04.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 10 Mar 2017 10:15:23 -0800
Message-ID: <CAMKF1sqfy8Rq5fQ5aDRK8T5AefffdEYahN2JHxkibF7hPK7_0g@mail.gmail.com>
To: Suneetha Lakshmi G <suneetha.g@tataelxsi.co.in>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: help
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
X-List-Received-Date: Fri, 10 Mar 2017 18:15:57 -0000
Content-Type: multipart/alternative; boundary=94eb2c12370a34ed28054a645a13

--94eb2c12370a34ed28054a645a13
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 10, 2017 at 6:25 AM, Suneetha Lakshmi G <
suneetha.g@tataelxsi.co.in> wrote:

> Hi All,
>
>
> Im new to yocto and trying to build for my customer device im facing this
> issue.
>
>
> | arm-linux-gnueabi-xgcc: error: unrecognized command line option
> '-mgeneral-regs-only'
> | arm-linux-gnueabi-xgcc: error: unrecognized command line option
> '-mcmodel=3Dlarge'
> | make: *** [opkg-compare-versions] Error 1
> | ERROR: oe_runmake failed
>
> Please guide how to progress further.
>
>
=E2=80=8Bxgcc is internal name during building/testing gcc itself, which pa=
ckage it
failing like this for you ?

--94eb2c12370a34ed28054a645a13
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e,monospace"><br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_q=
uote">On Fri, Mar 10, 2017 at 6:25 AM, Suneetha Lakshmi G <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:suneetha.g@tataelxsi.co.in" target=3D"_blank">suneet=
ha.g@tataelxsi.co.in</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">




<div dir=3D"ltr">
<div id=3D"m_7987613208375907027divtagdefaultwrapper" style=3D"font-size:12=
pt;color:#000000;font-family:Calibri,Arial,Helvetica,sans-serif" dir=3D"ltr=
">
<p>Hi All,</p>
<p><br>
</p>
<p>Im new to yocto and trying=C2=A0to build for my=C2=A0customer device im =
facing this issue.</p>
<p><br>
</p>
<p></p>
<div>| arm-linux-gnueabi-xgcc: error: unrecognized command line option &#39=
;-mgeneral-regs-only&#39;<br>
| arm-linux-gnueabi-xgcc: error: unrecognized command line option &#39;-mcm=
odel=3Dlarge&#39;<br>
| make: *** [opkg-compare-versions] Error 1<br>
| ERROR: oe_runmake failed</div>
<div><br>
</div>
<div>Please guide how to progress further.</div>
<div><br></div></div></div></blockquote><div><br></div><div class=3D"gmail_=
default" style=3D"font-family:monospace,monospace">=E2=80=8Bxgcc is interna=
l name during building/testing gcc itself, which package it failing like th=
is for you ?</div></div></div></div>

--94eb2c12370a34ed28054a645a13--
