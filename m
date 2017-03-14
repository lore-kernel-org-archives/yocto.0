Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E351BE00995; Tue, 14 Mar 2017 03:06:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.181 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.181 listed in list.dnswl.org]
Received: from mail-qk0-f181.google.com (mail-qk0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BF2BE00901
	for <yocto@yoctoproject.org>; Tue, 14 Mar 2017 03:06:13 -0700 (PDT)
Received: by mail-qk0-f181.google.com with SMTP id y76so243568206qkb.0
	for <yocto@yoctoproject.org>; Tue, 14 Mar 2017 03:06:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Dkbl8bO7uaux4N6z7TdFLYnx7nhZunQpg5RgEf4L7zo=;
	b=ecQNabwqc9gG0gZJoxTmLBPCcNhpouTz77Ydy6AK3pv/RUh/Y4y8RjUWU0fCQjTvkv
	2gyiaqrTpLU3Ni67toOW8fzDpekTPh+s2e/T2WF+qq+KP1kKZ4Lqp9gEfO4pJMvntHA1
	7NlP+uDFeVbwfGPHX+RYsmcRLk02Ss5Fz6RIvvkl/qvotRCVz0EIFMvfsk+I8P+On7UO
	UfltcFZq6hOTfgnwTPTkIDenZ3d9+y6E2meFSUfqovfBV/0qVmtYkwSINd7VnopwiI2f
	t/lBX0PAVregb7zIcl2/eXnOeLB15fpW7URNFvwCViaJR/RGMPlJid/OBBgvbHO6PISa
	uCCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Dkbl8bO7uaux4N6z7TdFLYnx7nhZunQpg5RgEf4L7zo=;
	b=FZVQbQgwDdD7WA5TYLXIfgBhK0tA6EE3dj7IwqeZ7pRHLVouN/lisLu6u9Jvn0fb8r
	cyAEcOHss5Qce17d4+5/6pHSk4t3m6ZAJckwdXtt3E20YDzwC/C2eADokXwNgG4asFMc
	9f714ZcRdywdhJgT/up20jA0InzSUUzq/lf0l8zK9IbTqpBKsgCyDwglmNpSNWn1LaRE
	+oWG6c6NGGtMxcpMIcZTNOmGb+Fq9JvgyyOox9pF4iShO+nn/wg91agEmz31Rnp4C+4m
	dQNiLF4D+TVB1PFFAg/SwghA3iA1TxovUatd7kitIFh80T6ssWYhOeHu8KkVP8+pKDg/
	Fnjg==
X-Gm-Message-State: AFeK/H3SniEswwnnWz4Xb7auNaV9j46cBeR5nPEDNLLIjWQx/BkXp/hZfnzOQ2AZoxpESQ7pJW4a1h/0uWjmn89H
X-Received: by 10.55.175.195 with SMTP id y186mr35496507qke.26.1489485971674; 
	Tue, 14 Mar 2017 03:06:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Tue, 14 Mar 2017 03:05:51 -0700 (PDT)
In-Reply-To: <CALDHXteTtgxuKk_6iO4c8GhGqzTo_DVHS7jAB6tGijnY5ivORA@mail.gmail.com>
References: <CALDHXteTtgxuKk_6iO4c8GhGqzTo_DVHS7jAB6tGijnY5ivORA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 14 Mar 2017 10:05:51 +0000
Message-ID: <CAJTo0LbwTORRPSw7TkYLDkg0MSw7w8BXCrDZHU=fu_ze2wg++g@mail.gmail.com>
To: ravikiran j <ravikiran.j@mistralsolutions.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: core-image-minimal-xfce error
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
X-List-Received-Date: Tue, 14 Mar 2017 10:06:15 -0000
Content-Type: multipart/alternative; boundary=94eb2c06093c3d71f7054aadfa90

--94eb2c06093c3d71f7054aadfa90
Content-Type: text/plain; charset=UTF-8

On 14 March 2017 at 09:20, ravikiran j <ravikiran.j@mistralsolutions.com>
wrote:

>
> *ERROR: ExpansionError during parsing
> /home/mistral/yocto/poky/meta-openembedded/meta-xfce/recipes-xfce/xfce4-power-manager/xfce4-power-manager_1.6.0.bb
> <http://xfce4-power-manager_1.6.0.bb>: Failure expanding variable
> PACKAGECONFIG, expression was ${@bb.utils.filter('DISTRO_FEATURES',
> 'systemd', d)} which triggered exception AttributeError: 'module' object
> has no attribute 'filter'*


This error message tells me that you're using meta-openembedded master, not
krogoth.  Checkout the correct branch of meta-openembedded.

Ross

--94eb2c06093c3d71f7054aadfa90
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 14 March 2017 at 09:20, ravikiran j <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:ravikiran.j@mistralsolutions.com" target=3D"_blank">ravikiran.j@mistral=
solutions.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><b>ER=
ROR: ExpansionError during parsing /home/mistral/yocto/poky/meta-<wbr>opene=
mbedded/meta-xfce/<wbr>recipes-xfce/xfce4-power-<wbr>manager/<a href=3D"htt=
p://xfce4-power-manager_1.6.0.bb" target=3D"_blank">xfce4-power-manager_1.<=
wbr>6.0.bb</a>: Failure expanding variable PACKAGECONFIG, expression was ${=
@bb.utils.filter(&#39;DISTRO_<wbr>FEATURES&#39;, &#39;systemd&#39;, d)} whi=
ch triggered exception AttributeError: &#39;module&#39; object has no attri=
bute &#39;filter&#39;<br></b></blockquote></div><br>This error message tell=
s me that you&#39;re using meta-openembedded master, not krogoth.=C2=A0 Che=
ckout the correct branch of meta-openembedded.</div><div class=3D"gmail_ext=
ra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--94eb2c06093c3d71f7054aadfa90--
