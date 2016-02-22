Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F0E0E00C31; Mon, 22 Feb 2016 07:38:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DB55E00838
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2016 07:38:32 -0800 (PST)
Received: by mail-ig0-f173.google.com with SMTP id y8so89163912igp.0
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2016 07:38:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=htZ64aH5sVsBNAv6rOq6bgjxKiqR1aD/XEDLxWswjoI=;
	b=fhA54yoPQweSfl7go8afPAvEJ8OAnJSQRNPFJZ95yoaPBV5BdvPKPP9kaFTRqzwsyQ
	u3S0WUrgY40tVke1cqD9flygZvl48FjC1QInp7PqPNjZAV9x8iV27vPSa6aZn+l7tJNm
	+nCSLXXJ4iIDDnwnSU7zLyXKYM8780LvOPqsZPMZ3pGfjsRZIIGskE3fglcozEXnRzRp
	clTzNOyiuIPvk1jkuMXmzmjFVqlxYhxfNGKVucATSt4TtudpaYhizB2HbyVhiwy0AXcC
	Zhw2tmKOTAhCjF2A8bz1ZF8Sn0C7qKLh86ldnmWNXTWIUJi+3+GzIY91lWnj1CVemdte
	YYlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=htZ64aH5sVsBNAv6rOq6bgjxKiqR1aD/XEDLxWswjoI=;
	b=A3WvhdwNFrBJXwKJsiTdL4mT97UfWVfLdL0cAYulDkmA5jyeMtmG13ku4uMVjBicuH
	Wb1WacQHaPVXGFC9GcnRiOdjOIUO4HioZSaCvplXmYePu7jpNgujMKkBinEHMS5+BZPN
	Qf2bMDOv0TM3zSZ3eewD0aylxOTKHc2ZsZrwLkjZwm06/st4T6fArCNnrUxW1vEiNZnO
	N2fwLwmUbGyUNkgyG7BXPls1DkwzhJtm8pv0Dx6LR4t9XbdOVdNN5c+molmBr1c8H375
	ItQ1oSop8OMptBvzpT0XKy8/xEBcw1mArgWCIq2YgzI/b7FEUt2onqj3ujsMzZVa9rlp
	DobA==
X-Gm-Message-State: AG10YORVm1WmJ4zFSsjp40QEoPX0AlkafAcfwX/EBsjnIYeQkUDY1MyuLE2g4W03k890AZ+JvHqJAJZPTKhUDq0t
X-Received: by 10.50.138.72 with SMTP id qo8mr11789753igb.81.1456155511919;
	Mon, 22 Feb 2016 07:38:31 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.130.214 with HTTP; Mon, 22 Feb 2016 07:37:52 -0800 (PST)
In-Reply-To: <1456154103-13478-4-git-send-email-anibal.limon@linux.intel.com>
References: <1456154103-13478-1-git-send-email-anibal.limon@linux.intel.com>
	<1456154103-13478-4-git-send-email-anibal.limon@linux.intel.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Date: Mon, 22 Feb 2016 15:37:52 +0000
Message-ID: <CAPhnLPA4+MpqnAOW67b9u+B+dxzG=kgV2-FqbydKw3vH63sMew@mail.gmail.com>
To: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [[PATCHv2][autobuilder] 4/4] buildset-config.toaster: Remove unused template toaster-build.
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
X-List-Received-Date: Mon, 22 Feb 2016 15:38:36 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I'm going to pull all but this patch (4/4), because I'll eventually
need this configuration.

-b

On 22 February 2016 at 15:15, An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.in=
tel.com> wrote:
> Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.intel.com>
> ---
>  buildset-config.toaster/toaster-build.conf | 29 ------------------------=
-----
>  1 file changed, 29 deletions(-)
>  delete mode 100644 buildset-config.toaster/toaster-build.conf
>
> diff --git a/buildset-config.toaster/toaster-build.conf b/buildset-config=
.toaster/toaster-build.conf
> deleted file mode 100644
> index 09a03e2..0000000
> --- a/buildset-config.toaster/toaster-build.conf
> +++ /dev/null
> @@ -1,29 +0,0 @@
> -[toaster-build]
> -builders: 'example-worker'
> -props: [{'atext':{'prop_type':'StringParameter',
> -                       'size': 15,
> -                       'name': 'atext',
> -                       'default': '',
> -                       'label':'<hr><h3> auto.conf:</h3>'}},
> -        {'bbtext':{'prop_type':'StringParameter',
> -                       'size': 15,
> -                       'name': 'bbtext',
> -                       'default': '',
> -                       'label':'<hr><h3> bblayers.conf:</h3>'}},
> -        {'images':{'prop_type':'StringParameter',
> -                       'size': 15,
> -                       'name': 'images',
> -                       'default': '',
> -                       'label':'<hr><h3> images:</h3>'}},
> -        {'layers':{'prop_type':'StringParameter',
> -                       'size': 15,
> -                       'name': 'layers',
> -                       'default': '',
> -                       'label':'<hr><h3> repo string (ast):</h3>'}}]
> -steps: [{'SetDest':{}},
> -        {'CheckOutToasterLayers': {}},
> -        {'RunPreamble': {}},
> -        {'GetDistroVersion' : {'distro': 'poky'}},
> -        {'CreateAutoConf': {'atext' : '#TOASTER'}},
> -        {'CreateBBLayersConf': {'bbtext' : '#TOASTER'}},
> -        {'BuildImages': {'images': '#TOASTER'}}]
> --
> 2.1.4
>



--=20
Elizabeth Flanagan
Yocto Project
Build and Release

