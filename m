Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86D55E00C9A; Thu,  4 Feb 2016 04:32:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44A6BE00C94
	for <yocto@yoctoproject.org>; Thu,  4 Feb 2016 04:32:29 -0800 (PST)
Received: by mail-io0-f182.google.com with SMTP id 9so91129828iom.1
	for <yocto@yoctoproject.org>; Thu, 04 Feb 2016 04:32:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=kHunxAsRq9BRvYh40Ww6/sg+RdXCn09353iMr6gOwhY=;
	b=Ap69xL9uDwdJP1SUik3UYOX0oyIJf7HFqr2noD29JQf3ynqb+0EgcRvTm7sLNcTeQA
	gcEQdm4wLHOroeQRadQCxPIRViN7QihK1aHQDAj7zxxuwE7A+SFdTC1dm3Gm23Z30a7n
	d1srddXQXiRXtJrb0Ww79J/zBJ7jKckv7FP4U8086bloPz2Zx4NV5BaMGDJMSjsI6vKX
	Hwvyai3Zm9PeA3ICL55MJew80b3wmXDUPa/72rLgzpXke2gP06fmtzEWYIXeSg6Y9vKt
	6wQGeevOdtmdAF3PoOyeAeHbF0L9Fn/EGC4Nv6G80WGU0pjJDn1T8//xA36idxEHhbK8
	nRdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=kHunxAsRq9BRvYh40Ww6/sg+RdXCn09353iMr6gOwhY=;
	b=DvSXpF9TtOD+OGnWRNqdZwndDLIfSMLDfONYK9mz4I3v/9RhrYhIc+hNfC3IbSSV8v
	eelivXqFTkPyrwVWAuT8MLTJ2UIZo5FXhxZzPJ1YgFLtXmrP/Ph1EDt1phiDlxOJAQHR
	f8QTFEApVuvJaIBT945OdSVf0eSOEjg5KJVdW8Hwug4MvlJomTh/QDsXF2PKUiFIeNRZ
	YH+RMQGPGjcfZW2hGRBjFnAe7xfFLifya3NpsDPP3c+h1YKMLxhmpMPg5UjTCBMTsp3z
	JnBADDK75YPmhjBiB3IVxLVMmn/AiK69LoGf5Nez/uXLk8upfvwCCAonTcwF+Vbn9WOg
	Hmyg==
X-Gm-Message-State: AG10YOQc/MaZTqdnsWriLeg3B9oeyFQt6huQ7M2iMYr7YIUQkC+sxEd0IiJ8rXpGl+UytK9VkiWDFVe/9frFtf51
X-Received: by 10.107.10.157 with SMTP id 29mr9794568iok.133.1454589149490;
	Thu, 04 Feb 2016 04:32:29 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Thu, 4 Feb 2016 04:32:10 -0800 (PST)
In-Reply-To: <op.yca5dm1gmnlnty@pc-mls.ecafaros.local>
References: <op.yca5dm1gmnlnty@pc-mls.ecafaros.local>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 4 Feb 2016 12:32:10 +0000
Message-ID: <CAJTo0LbbiN_wp+f0xB9r1BdAPWaR8NghWUDsXXUpO9QeJ+mBCQ@mail.gmail.com>
To: idealsim <idealsim@laposte.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto and linux mint 17.3
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
X-List-Received-Date: Thu, 04 Feb 2016 12:32:32 -0000
Content-Type: multipart/alternative; boundary=001a113f8df88cc490052af0edcc

--001a113f8df88cc490052af0edcc
Content-Type: text/plain; charset=UTF-8

On 4 February 2016 at 12:09, idealsim <idealsim@laposte.net> wrote:

>   apparently bb can't import pysqlite2 ? I already install pip install
> pysqlite libsqlite3-dev but nothing to solve my problem ... An idea to
> resolve this please ?
>

Did that install a pysqlite for python 3?  bitbake uses python2.

Ross

--001a113f8df88cc490052af0edcc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 4 February 2016 at 12:09, idealsim <span dir=3D"ltr">&lt;<a href=3D"mail=
to:idealsim@laposte.net" target=3D"_blank">idealsim@laposte.net</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div>=C2=A0
<span style=3D"color:rgb(51,51,51);font-family:&#39;Lucida Grande&#39;,&#39=
;Trebuchet MS&#39;,Verdana,Helvetica,Arial,sans-serif;font-size:13px;font-s=
tyle:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;li=
ne-height:18.2px;text-align:start;text-indent:0px;text-transform:none;white=
-space:normal;word-spacing:0px;display:inline!important;float:none;backgrou=
nd-color:rgb(224,237,211)">apparently bb can&#39;t import pysqlite2 ? I alr=
eady install pip install pysqlite libsqlite3-dev but nothing to solve my pr=
oblem ... An idea to resolve this please ?</span>
<br></div></blockquote></div><br>Did that install a pysqlite for python 3? =
=C2=A0bitbake uses python2.</div><div class=3D"gmail_extra"><br></div><div =
class=3D"gmail_extra">Ross</div></div>

--001a113f8df88cc490052af0edcc--
