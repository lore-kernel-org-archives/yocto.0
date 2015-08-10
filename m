Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D5B2E006EE; Mon, 10 Aug 2015 04:16:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qk0-f175.google.com (mail-qk0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7D84E00306
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 04:16:30 -0700 (PDT)
Received: by qkfj126 with SMTP id j126so5362081qkf.0
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 04:16:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=HGmIf59t6wzvaqvOqb9Q84D1BH8ai84EeqATCgVXG/0=;
	b=SKblnzoOAL+5Dd5b/F/HMqmoZsXVyUD3y2xt/wJ096JCZB36dsaCKQWZfKKxAI+T7I
	MJkxEUMjrngKokhaMCrF8sye4WfYcZ9onF+BIG6/UNY6WtJpd2u51ABQmvBnnfzahfMR
	0sP01kxAHVTxnI7OmzZJkSnX4+oivirNL1KzRMsmlRNNhH6o6A1mRngcQybJ7v6w1egJ
	RLumFaxNo+7vSBj6G14gdZaXvDoNz1jhPOc8JN5AVS0dCXzZOMVO6OVF/tOPTdXdAjrH
	Z9CN83dJq/b1/0nK+HOqig3xytH4zZ19uWao03Qmj0LmFBvakNIMR7582eYDpLbT+XaF
	8ZPQ==
X-Gm-Message-State: ALoCoQnEdWaqb5Qis5vNAwZjNCfEFiUnvGX/f29i1GPtMoFuf32lkiiNmr99q+RzzuqmoYNojMeH
X-Received: by 10.55.20.207 with SMTP id 76mr9054732qku.67.1439205389793; Mon,
	10 Aug 2015 04:16:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.98.67 with HTTP; Mon, 10 Aug 2015 04:16:10 -0700 (PDT)
In-Reply-To: <CACTu1LjN5JStnAA8Gyu=xJED4feXTpj7JA-GNiE_f7JbKUhy_w@mail.gmail.com>
References: <CACTu1LjN5JStnAA8Gyu=xJED4feXTpj7JA-GNiE_f7JbKUhy_w@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 10 Aug 2015 12:16:10 +0100
Message-ID: <CAJTo0LYOJ_T3rTg9o2=Qo1twUfHFi1OTKBBnLqed1u+rxHKWTw@mail.gmail.com>
To: yocto yocto <yoctomailinglist@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Header-Files of DEPEND recipe not found
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
X-List-Received-Date: Mon, 10 Aug 2015 11:16:32 -0000
Content-Type: multipart/alternative; boundary=001a11400532049230051cf31ecc

--001a11400532049230051cf31ecc
Content-Type: text/plain; charset=UTF-8

On 10 August 2015 at 12:13, yocto yocto <yoctomailinglist@gmail.com> wrote:

> However, when compiling my own recipe I get compiling errors ("soci.h not
> found"). I am 100% sure that I specified the correct paths.
>

The headers are likely installed in the sysroot, but your script can't find
them.  The first step would be to verify that the sysroot does in fact have
the headers installed in, and then you'll have to debug your configure
scripts to find out why they don't find the headers.  Sharing your recipe
and sources will help here.

Ross

--001a11400532049230051cf31ecc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 10 August 2015 at 12:13, yocto yocto <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:yoctomailinglist@gmail.com" target=3D"_blank">yoctomailinglist@gmail.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>However, wh=
en compiling my own recipe I get compiling errors (&quot;soci.h not found&q=
uot;). I am 100% sure that I specified the correct paths.</div><div></div><=
/blockquote></div><br>The headers are likely installed in the sysroot, but =
your script can&#39;t find them.=C2=A0 The first step would be to verify th=
at the sysroot does in fact have the headers installed in, and then you&#39=
;ll have to debug your configure scripts to find out why they don&#39;t fin=
d the headers.=C2=A0 Sharing your recipe and sources will help here.</div><=
div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></=
div>

--001a11400532049230051cf31ecc--
