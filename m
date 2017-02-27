Return-Path: <jakobsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A071AE00970; Mon, 27 Feb 2017 02:16:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jakobsg[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78760E00874
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 02:16:48 -0800 (PST)
Received: by mail-io0-f173.google.com with SMTP id g18so28439958ioe.0
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 02:16:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=I/luP2VZiCKTrdEwVdqpZZe5HuH5tvQc4ZGP/fnMlto=;
	b=gt/++IAHsehecwnCiLxWW6pIm3sK8vPow9B9L/hOR5WIRDVnhSnOKrMxCursu0Zrm6
	tuAbwlyU+qaefBNzk0DRrtpxO1iklfvsFVeA1t32GqvHoBso1BgTWVKSculqCIjzBC2z
	3xYoaBUxSmT2Wrtfu5/wyoJOnM5KU1NAtMHWRPAEMwzGGee/z83cxK7I4MFJnUNCL12l
	lpJgsV9BPYgZlUK8D59DQHc22whlTXVFr2aOSnhO5GavESOtsMYTtpae4f4xA1c87nE8
	tg3zDpDA/tNNm3X0XABgIgl1U9/yrrjr1hYdIzTGXDCpwbrFuH9YAZnHXB7HIvCmG4J+
	+jXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=I/luP2VZiCKTrdEwVdqpZZe5HuH5tvQc4ZGP/fnMlto=;
	b=CzE/dBrAX4kismsc0P5AWLMa4A7j3AJgVaFMhhB6n6U41lpfLNFx003E3yrZGQBQh2
	bXss4K3IdJa/MrYISXM2dkxxuK+2RHwGVR10M0Q7tdIUNWTbL07VNSVU6SP2LzIoOrXa
	sWcYEzJwEtU3CmBiJgcN+3qE3ROrdRXsUKCJ/pZ386DYxvhBZpqgF/VVWt3wlvgU6GtN
	64+Dz/d9J8yF3mb9CKqAviR3Bj8utOOKNefwcKD1f6N/bEcLSLr1FO140kv0Pz6ruoan
	byQsZgrA3Q9Is3Vh6VphbhcM7CRzRL7rV+Smbi3v0kTJhI3ktiSqIia4n1KLJHT4yRsQ
	RkRQ==
X-Gm-Message-State: AMke39mc68jwJbn4oO6QY+26Hs2B3c/SCXLfW+hrWDlWcvQHlEnrf0Pah7VV/mODNCuO7YmRKdEtNH6IqGeESQ==
X-Received: by 10.107.22.4 with SMTP id 4mr13281348iow.122.1488190608033; Mon,
	27 Feb 2017 02:16:48 -0800 (PST)
MIME-Version: 1.0
Received: by 10.79.81.69 with HTTP; Mon, 27 Feb 2017 02:16:47 -0800 (PST)
Received: by 10.79.81.69 with HTTP; Mon, 27 Feb 2017 02:16:47 -0800 (PST)
In-Reply-To: <1522729.epmWXj6IpI@peggleto-mobl.ger.corp.intel.com>
References: <CACr_9kHaf_Jqogt0BK8LaXXxrb_L6uhq3=z1ZXvo6M8Dvs4Tiw@mail.gmail.com>
	<CAD4b0_JR7jfR9QfADu3j0xAv85otVmeDdwTLqVEJSDF-xnAnCw@mail.gmail.com>
	<CACr_9kGfECT5fq6rbufeHLf_EcqaMMXPp74A7yEBXgUmPbhYKQ@mail.gmail.com>
	<1522729.epmWXj6IpI@peggleto-mobl.ger.corp.intel.com>
From: Jakob Simon-Gaarde <jakobsg@gmail.com>
Date: Mon, 27 Feb 2017 11:16:47 +0100
Message-ID: <CACr_9kGapirCH5v-zRd8k5v7GcquPM7R5M_P8_pFODD+tWeq+g@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Python3 partial rootfs installation
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
X-List-Received-Date: Mon, 27 Feb 2017 10:16:56 -0000
Content-Type: multipart/alternative; boundary=94eb2c05cb188ccf2d05498060dc

--94eb2c05cb188ccf2d05498060dc
Content-Type: text/plain; charset=UTF-8

You are right. It's working now.

Den 26. feb. 2017 10.04 PM skrev "Paul Eggleton" <
paul.eggleton@linux.intel.com>:

> On Sunday, 26 February 2017 12:10:24 AM NZDT Jakob Simon-Gaarde wrote:
> > Thanks for the answer. I tried adding it as a dependency but I get this:
> > ERROR: Nothing PROVIDES 'python3-modules'
>
> Based on your email, this is a runtime situation you are trying to resolve
> -
> and python3-modules is a runtime target, but that error suggests you are
> adding to DEPENDS which is for build-time dependencies.
>
> You probably want to add python3-modules to IMAGE_INSTALL in your image
> recipe
> or perhaps to RDEPENDS_${PN} in the recipe for the custom software you're
> building.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--94eb2c05cb188ccf2d05498060dc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">You are right. It&#39;s working now.=C2=A0</div><div clas=
s=3D"gmail_extra"><br><div class=3D"gmail_quote">Den 26. feb. 2017 10.04 PM=
 skrev &quot;Paul Eggleton&quot; &lt;<a href=3D"mailto:paul.eggleton@linux.=
intel.com">paul.eggleton@linux.intel.com</a>&gt;:<br type=3D"attribution"><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex">On Sunday, 26 February 2017 12:10:24 AM NZDT =
Jakob Simon-Gaarde wrote:<br>
&gt; Thanks for the answer. I tried adding it as a dependency but I get thi=
s:<br>
&gt; ERROR: Nothing PROVIDES &#39;python3-modules&#39;<br>
<br>
Based on your email, this is a runtime situation you are trying to resolve =
-<br>
and python3-modules is a runtime target, but that error suggests you are<br=
>
adding to DEPENDS which is for build-time dependencies.<br>
<br>
You probably want to add python3-modules to IMAGE_INSTALL in your image rec=
ipe<br>
or perhaps to RDEPENDS_${PN} in the recipe for the custom software you&#39;=
re<br>
building.<br>
<br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</blockquote></div></div>

--94eb2c05cb188ccf2d05498060dc--
