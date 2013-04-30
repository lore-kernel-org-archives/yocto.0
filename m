Return-Path: <katutxakurra@gmail.com>
Received: from mail-ia0-f177.google.com (mail-ia0-f177.google.com
	[209.85.210.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D567E014BE
	for <yocto@yoctoproject.org>; Tue, 30 Apr 2013 03:43:18 -0700 (PDT)
Received: by mail-ia0-f177.google.com with SMTP id y26so313066iab.36
	for <yocto@yoctoproject.org>; Tue, 30 Apr 2013 03:43:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=h2J0dtTT2CW3acAkrlVmmKtIS5bT0OufIsW13pYXPjI=;
	b=nfsqKei2uZRXBj277Mp71hIW3bO4MPcJtV6hjiZEa/VTH1j1J1qhnWOuRm9R2hCMie
	luzhD75D/Oy8JCfZeo3psQ9+inFqNgecfYaDY9cIRSmqkT9TYy4Y0SDnyEosPu5PAKZh
	CqNFxTOWNainVjw8e7KOmACdDL0B72sGtXhsYJbqY5CC85e0Fd39dSvs1iyxacUm2xnG
	DOtu1MrjqiRDiWr+Fag4HpjNznjwBbJM67KxtWW7wtNW2LbIFk9pHHann7FL8dwIEUWy
	y088MM3ICqf8an0uOoSncgIrlrSaya+oxenCRGZN5wgCrz3KkLnBb8d5mmswIZWN4TfV
	pKTw==
MIME-Version: 1.0
X-Received: by 10.50.114.6 with SMTP id jc6mr3870972igb.109.1367318597869;
	Tue, 30 Apr 2013 03:43:17 -0700 (PDT)
Received: by 10.50.53.212 with HTTP; Tue, 30 Apr 2013 03:43:17 -0700 (PDT)
In-Reply-To: <1880759.tbsCZiBHaq@helios>
References: <CAAGt+t04eUOBF3ZXeGVGatFh3V-vB3GWJ+JNtiWtH49hYUTUFw@mail.gmail.com>
	<1432842.YTVMpTaA9y@helios>
	<CAM1ZcoXyXBizAYoHG0rXXbyZ1QaAL6eUFD1ZstwoAGb_43qUmw@mail.gmail.com>
	<1880759.tbsCZiBHaq@helios>
Date: Tue, 30 Apr 2013 11:43:17 +0100
Message-ID: <CAM1ZcoU=fPrCJapjVcm=9m+dLK7LKA5-1-yCfRdWyVYjqd3rEw@mail.gmail.com>
From: Katu Txakur <katutxakurra@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Zafrullah Syed <zafrullahmehdi@gmail.com>,
	Satya Swaroop Damarla <satyaswaroop.damarla@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: poky: Bitbake nothing provides error
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
X-List-Received-Date: Tue, 30 Apr 2013 10:43:18 -0000
Content-Type: multipart/alternative; boundary=047d7b41412252297c04db91ab93

--047d7b41412252297c04db91ab93
Content-Type: text/plain; charset=ISO-8859-1

Thank you Paul


2013/4/29 Paul Eggleton <paul.eggleton@linux.intel.com>

> On Monday 29 April 2013 15:07:27 Katu Txakur wrote:
> > The instructions in
> >
> https://github.com/gumstix/Gumstix-YoctoProject-Repo/blob/master/README.md
> > worked
> > for me, at least you can get them and have a look at the
> > build/conf/local.conf file.
> >
> > Paul, how can get the recipes and related files that I find in the
> > layerindex?
>
> Typically, if you find a recipe in the layer index, assuming it isn't a
> distribution layer, you would add the layer it is contained in to your
> conf/bblayers.conf rather than trying to extract the single recipe and all
> the
> files it needs. To do this:
>
> 1) Click on the layer link on the right hand side of the recipe list or
> within
> the page for the recipe
>
> 2) Grab the git URL for the layer repository (assuming JavaScript is
> enabled
> in your browser you can click once on the arrow on the left to select the
> text
> and then you can copy it easily)
>
> 3) Clone that repository somewhere on your machine
>
> 4) Add the path to the layer (including the subdirectory if specified on
> the
> layer index page for the layer) to conf/bblayers.conf
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--047d7b41412252297c04db91ab93
Content-Type: text/html; charset=ISO-8859-1

<div dir="ltr">Thank you Paul</div><div class="gmail_extra"><br><br><div class="gmail_quote">2013/4/29 Paul Eggleton <span dir="ltr">&lt;<a href="mailto:paul.eggleton@linux.intel.com" target="_blank">paul.eggleton@linux.intel.com</a>&gt;</span><br>
<blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class="im">On Monday 29 April 2013 15:07:27 Katu Txakur wrote:<br>
&gt; The instructions in<br>
&gt; <a href="https://github.com/gumstix/Gumstix-YoctoProject-Repo/blob/master/README.md" target="_blank">https://github.com/gumstix/Gumstix-YoctoProject-Repo/blob/master/README.md</a><br>
&gt; worked<br>
&gt; for me, at least you can get them and have a look at the<br>
&gt; build/conf/local.conf file.<br>
&gt;<br>
&gt; Paul, how can get the recipes and related files that I find in the<br>
&gt; layerindex?<br>
<br>
</div>Typically, if you find a recipe in the layer index, assuming it isn&#39;t a<br>
distribution layer, you would add the layer it is contained in to your<br>
conf/bblayers.conf rather than trying to extract the single recipe and all the<br>
files it needs. To do this:<br>
<br>
1) Click on the layer link on the right hand side of the recipe list or within<br>
the page for the recipe<br>
<br>
2) Grab the git URL for the layer repository (assuming JavaScript is enabled<br>
in your browser you can click once on the arrow on the left to select the text<br>
and then you can copy it easily)<br>
<br>
3) Clone that repository somewhere on your machine<br>
<br>
4) Add the path to the layer (including the subdirectory if specified on the<br>
layer index page for the layer) to conf/bblayers.conf<br>
<div class="HOEnZb"><div class="h5"><br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br></div>

--047d7b41412252297c04db91ab93--
