Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3386E00C3A; Mon,  8 Feb 2016 09:36:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f182.google.com (mail-ig0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1770E00951
	for <yocto@yoctoproject.org>; Mon,  8 Feb 2016 09:36:24 -0800 (PST)
Received: by mail-ig0-f182.google.com with SMTP id ik10so90873577igb.1
	for <yocto@yoctoproject.org>; Mon, 08 Feb 2016 09:36:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=WmYVUVwGbvF4G8gxf5ny0fw2jS6D9PcJf1g488IasSA=;
	b=Cxre5bVv+5qnEKi4Tvwo0Idj7OuXdhG/CbxB5nIde+7Lk2oZlIMNn0uD1AeZvZWqrm
	64E216+qbkoB6QMzSnmHlvfhblEmIFq8Jr/pxuNENcFRCQz0grD5gg7rAg9xOQ+bVF7C
	wbA0ol1yiGdk2cZwmOup3Sk8mQT9X6X3LTb5nYgiTZvQYW+i2xJP8stQ5R2FLVMIdS4Z
	jZO3mHyjVxEkafIf902snF2fTCLufDcTmw5z1tSCVi8U1FlE4fbYLz8jOjEHohn1Hrpd
	wy3ePBLkh72NrrgGk3czf4xndLEjdve+8wYgCu2MCQrgaMDlgSLYuTrAj0PRGItJdlvi
	cHKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=WmYVUVwGbvF4G8gxf5ny0fw2jS6D9PcJf1g488IasSA=;
	b=VGOphIx0V2CfRkbsfnJkXATDvNX9mtgT1NiNQzrlPay/OOIa+kpOlkFwmf4o125Tv6
	xUJ5x0QKWMFLZlmXwtDlYoxXU2b84OHt2Y9XrIhAFo3+O4EVVuZq15sZsEPwRywddKpX
	z7s0CSxns7e68ySxSOZsWQBk6EAZYaz3yg/sE+FUNe9OOqM5FivY/RbuJBIZNCtSJOdZ
	c9ZehPN78lQUtNVok+226AinZN+rSt/53QKpggvQzpDk/sZFSJSSvTzbNnYx51glVph5
	d4Ku+ZZg3DGYGKWEyI4Ttrtcnzmav8fx44ACzzkAbXAsNTiPgTm2DbjCvD34iaqNzw4d
	V9ew==
X-Gm-Message-State: AG10YOSo0yMEeoHej4+jGqwi7fhS72Vlbg2OJCi5dHCi1yr1a42HqSgtZFhknI7Cpwl28nbkOjiuQeXbt4A6Vu4N
X-Received: by 10.50.23.108 with SMTP id l12mr36256igf.78.1454952983860; Mon,
	08 Feb 2016 09:36:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Mon, 8 Feb 2016 09:36:04 -0800 (PST)
In-Reply-To: <D3B58608AFC8B244BA0ACD53B2AE612598EEF674@vistrex4.vi.vector.int>
References: <D3B58608AFC8B244BA0ACD53B2AE612598EEF5C6@vistrex4.vi.vector.int>
	<D3B58608AFC8B244BA0ACD53B2AE612598EEF622@vistrex4.vi.vector.int>
	<CAJTo0Lav44kxc8i-VDSEUrHdFAaC7kjrLG97w2pmOjw+TZvM0Q@mail.gmail.com>
	<D3B58608AFC8B244BA0ACD53B2AE612598EEF674@vistrex4.vi.vector.int>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 8 Feb 2016 17:36:04 +0000
Message-ID: <CAJTo0LbKvXCKgzzMGC7P4bq65+n04kM3nL0f4+KXL3n+PP4QNw@mail.gmail.com>
To: "Baumann, Michael" <Michael.Baumann@vector.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to create a named_pipe in my image
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
X-List-Received-Date: Mon, 08 Feb 2016 17:36:25 -0000
Content-Type: multipart/alternative; boundary=089e0149cbe8c4b32d052b45a3aa

--089e0149cbe8c4b32d052b45a3aa
Content-Type: text/plain; charset=UTF-8

On 8 February 2016 at 16:39, Baumann, Michael <Michael.Baumann@vector.com>
wrote:

> Switching to rpm package showed the same behavior.
>
> Is there another workaround than a post install script?
>
>
So I had a quick look at this.  The fifo certainly ends up in the resulting
ipk at least, but as you say package_qa hangs.  It's probably encountering
a non-file and breaking somewhere.  A really nasty workaround until this is
fixed would be to put in your recipe:

python do_package_qa() {}

(to stub out the package_qa task)

Ross

--089e0149cbe8c4b32d052b45a3aa
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 8 February 2016 at 16:39, Baumann, Michael <span dir=3D"ltr">&lt;<a href=
=3D"mailto:Michael.Baumann@vector.com" target=3D"_blank">Michael.Baumann@ve=
ctor.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p class=
=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&=
quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Switching to rpm p=
ackage showed the same behavior.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Is there a=
nother workaround than a post install script?<u></u><u></u></span></p>
<p class=3D"MsoNormal"></p></blockquote></div><br>So I had a quick look at =
this.=C2=A0 The fifo certainly ends up in the resulting ipk at least, but a=
s you say package_qa hangs.=C2=A0 It&#39;s probably encountering a non-file=
 and breaking somewhere.=C2=A0 A really nasty workaround until this is fixe=
d would be to put in your recipe:</div><div class=3D"gmail_extra"><br></div=
><div class=3D"gmail_extra">python do_package_qa() {}</div><div class=3D"gm=
ail_extra"><br></div><div class=3D"gmail_extra">(to stub out the package_qa=
 task)</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"=
>Ross</div></div>

--089e0149cbe8c4b32d052b45a3aa--
