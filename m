Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA4FBE00B36; Tue, 17 Nov 2015 10:13:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C4B0E00B23
	for <yocto@yoctoproject.org>; Tue, 17 Nov 2015 10:13:45 -0800 (PST)
Received: by igcph11 with SMTP id ph11so84719713igc.1
	for <yocto@yoctoproject.org>; Tue, 17 Nov 2015 10:13:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=J+mArEayAVZ/hs3gneRk1W0eWDGX1oG0hKYUIZ/YyaU=;
	b=S1hR1bILn2WM13zPaRo1aW5MzomyWoxYDrqHYuPB1m39/lQC8bThxUguO4OlWxSu2m
	XQvBKUm1YnK4LYrPVAcyrq3Yozj0p4E1P94XV6turhzVvvPUefqPbt0acTKj4OfEhUA4
	uof91us8YtZqmPEvv86zIasTxJmaa0Nb1rF/KsBKscqsa2ZMNc5GnPtXLTZ8UWarN+jc
	53DwfZjWPXAkOvVQdYWtOLm4Q05nsuPuo/cJEA1yadIzGSV7lWB5oE3n3hyvNtQYSRWp
	eGyRD3o+2fytwP4sWCuE5yxWSabYPhFc4TDN60yDRUXEyoekvy7anASKNHh3kEOH0VxR
	4aVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=J+mArEayAVZ/hs3gneRk1W0eWDGX1oG0hKYUIZ/YyaU=;
	b=YZBd7wtx986S4x47Pz5WXjHPTM4Uxm+aUnjBUPgpuQ3Xr3Hc7B4gZ1u/Alm6rEUgr+
	uRSwUAuL9ak89T57/F7E9R83j1Y23RWqBudsXfUBSHbh6I4XUfyqRflLHXRLSlq6l1TS
	xXGLXR9JUIjjiQkqGocR/iaw90URJM3UeEHcRPcIt79u6xD5H2MP5YbiwKHgb89u1mBZ
	aY/F5qdkeTjN06lN19jnLIIEMflzQWGNjAN4grvN6K06xbynyAJa2IdIYmKZ0rbeXHI0
	sUV13BwEVAhRJXjcV5kxgyyh2LrVybHnmje80BZ+GhYmGc44ckN7SQwyfcqIvUB6+eTd
	SFRw==
X-Gm-Message-State: ALoCoQnPfj7I02dInuBX6YzRgQBbJrvVqJuOSVuMbkfV82hxKLMQFxd9QMRf8w//pfj2IB71YW3P
X-Received: by 10.50.43.161 with SMTP id x1mr3162214igl.64.1447784025338; Tue,
	17 Nov 2015 10:13:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.136.141 with HTTP; Tue, 17 Nov 2015 10:13:26 -0800 (PST)
In-Reply-To: <7169720.ScqY2G0nCp@peggleto-mobl.ger.corp.intel.com>
References: <564B48D3.7050304@mlbassoc.com>
	<CABcZANnBeR7BN8M1_GaFDQKbQjbfJtg7_4fy=wH76hMV0vdDuQ@mail.gmail.com>
	<7169720.ScqY2G0nCp@peggleto-mobl.ger.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 17 Nov 2015 18:13:26 +0000
Message-ID: <CAJTo0La0SL_MVuCsqrYWrmFJ4k840VEQu3iQjJMHOOWu8XZ06Q@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Christopher Larson <clarson@kergoth.com>, Gary Thomas <gary@mlbassoc.com>
Subject: Re: New warning(s)
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
X-List-Received-Date: Tue, 17 Nov 2015 18:13:49 -0000
Content-Type: multipart/alternative; boundary=089e0111bffe8ad38d0524c07c33

--089e0111bffe8ad38d0524c07c33
Content-Type: text/plain; charset=UTF-8

On 17 November 2015 at 18:02, Paul Eggleton <paul.eggleton@linux.intel.com>
wrote:

> I already sent a patch for this, it hasn't been applied yet:
>
> http://patchwork.openembedded.org/patch/107081/
>

It's in MUT, so should be in master fairly shortly.

Ross

--089e0111bffe8ad38d0524c07c33
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 17 November 2015 at 18:02, Paul Eggleton <span dir=3D"ltr">&lt;<a href=
=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@l=
inux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div=
 id=3D":620" class=3D"a3s" style=3D"overflow:hidden">I already sent a patch=
 for this, it hasn&#39;t been applied yet:<br>
<br>
<a href=3D"http://patchwork.openembedded.org/patch/107081/" rel=3D"noreferr=
er" target=3D"_blank">http://patchwork.openembedded.org/patch/107081/</a></=
div></blockquote></div><br>It&#39;s in MUT, so should be in master fairly s=
hortly.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra=
">Ross</div></div>

--089e0111bffe8ad38d0524c07c33--
