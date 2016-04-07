Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29565E00C28; Thu,  7 Apr 2016 06:35:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f171.google.com (mail-ig0-f171.google.com
	[209.85.213.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C03D1E006D3
	for <yocto@yoctoproject.org>; Thu,  7 Apr 2016 06:35:55 -0700 (PDT)
Received: by mail-ig0-f171.google.com with SMTP id f1so153497455igr.1
	for <yocto@yoctoproject.org>; Thu, 07 Apr 2016 06:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=cLdO14FjOpZsDPN7CRBicTG4ly4FHMgZ48jUY73TQNA=;
	b=haoqwkdzNlLss9/Jek42rErVO/NwjrlwcweOUlDLPpb7WrMA/hsX62bDLbRlImY/5a
	CB3h+UdBRkv7eEZZRYVu7oHcVuzigg2kwQj6CTxOVujYVp9ZAUz07w8FW87zwWc9SnuR
	9kZ7B+YWcJes0liKCPELCtj10b+GhjcdipBs2dieWfwD6/DBi2OswZVrHa4CvV7AeR3p
	DdpofTRv/6l54GknYLYW6Uqfcce/gSnPb2P5ArQbq0/a1ueJ8aYllPaAzB5kxcfCS/74
	hz843xG8mG3KyitMRYIvYozAHMtzBiTAg0HHCbHMAnu1K+AXgUF60l1ducmqoYf+PJUd
	p+xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=cLdO14FjOpZsDPN7CRBicTG4ly4FHMgZ48jUY73TQNA=;
	b=Qa+NHtnhKO5RbZaLpOOEDaagGb29ucx5dgCXiVFBLO1VOUbynND3RaGn/l2bgV/FT2
	fKkYbNxNXk08A2bYvhH/+15RJ2BIF1b8k3RK0Ugeg2yHfSVIzMF3/3E93o45P21hM2pw
	bCOj/G721QoomQU6YxzwK+WS7DOoZdSINma4AfGgftiirEQAnHPK1fA+R1jgrJ5SocQ6
	+b0gZ+4Tiq+1mZhZ8etoFDRMmJ9Q65NierxqGpKJ8fWNB9uOr9j1l9xXS4rTP7Kq8soI
	WiD/rtn2UJifvpblOxX1F+pwVrFQj7LGu4OR+TYWCcMA0cax7KqkedLGSyXiBCJW0GD7
	eU3g==
X-Gm-Message-State: AD7BkJLYc/Obk1OJGh84FE5fj8S6YmEAU8AhedOFRaTrE9iqZWq6nSKngpcgCm2vLghEeMhd3F4VTtLQcz8o0KDU
X-Received: by 10.50.232.47 with SMTP id tl15mr790257igc.64.1460036154486;
	Thu, 07 Apr 2016 06:35:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.132.24 with HTTP; Thu, 7 Apr 2016 06:35:35 -0700 (PDT)
In-Reply-To: <57066063.1010008@linux.intel.com>
References: <DUB130-W48119310217EFF39E1E035DA9F0@phx.gbl>
	<CAJTo0LbdXCPtc7PF_25Yc00T0pt=Ptq12whkehT5LVnnwS7RtA@mail.gmail.com>
	<DUB130-W492E3B0F53AE2AA9EE0F0ADA9F0@phx.gbl>
	<CAJTo0Lbg10pM7VT0ZiaqC7r5YwvdX9_c3X9P=vrPdFX3C6maLQ@mail.gmail.com>
	<DUB130-W30F71C6509C95E9FA2606EDA9F0@phx.gbl>
	<CAJTo0LYa+BZxy47950p8g7HqgRFQiHCeS3ZThtetopm-1ZDScg@mail.gmail.com>
	<57066063.1010008@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 7 Apr 2016 14:35:35 +0100
Message-ID: <CAJTo0LbNeUEY-K2LW9Fw3Nh64yh65aQPXC4jS4-1JAmLM7c3PQ@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Python GObject Errors on yocto-2.1_M3.rc2
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
X-List-Received-Date: Thu, 07 Apr 2016 13:35:58 -0000
Content-Type: multipart/alternative; boundary=f46d04289bc9590dd0052fe52846

--f46d04289bc9590dd0052fe52846
Content-Type: text/plain; charset=UTF-8

On 7 April 2016 at 14:28, Alexander Kanavin <
alexander.kanavin@linux.intel.com> wrote:

> You need to change the inherits to pull in python3native.  Sadly
>> flipping between py2 and py3 isn't trivial.
>>
>
> I think 'git revert 7f7c9ab29eba0e58916629ca13dc4a494535ce19' should do
> the trick, how come you don't remember writing it :)
>
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=7f7c9ab29eba0e58916629ca13dc4a494535ce19
>

Yeah, that. :)  Annoyingly it's not just a PACKAGECONFIG due to how
python-native works.

Ross

--f46d04289bc9590dd0052fe52846
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 7 April 2016 at 14:28, Alexander Kanavin <span dir=3D"ltr">&lt;<a href=
=3D"mailto:alexander.kanavin@linux.intel.com" target=3D"_blank">alexander.k=
anavin@linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex"><span class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex">You need to change the =
inherits to pull in python3native.=C2=A0 Sadly<br>
flipping between py2 and py3 isn&#39;t trivial.<br>
</blockquote>
<br></span>
I think &#39;git revert 7f7c9ab29eba0e58916629ca13dc4a494535ce19&#39; shoul=
d do the trick, how come you don&#39;t remember writing it :)<br>
<br>
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D7f7c=
9ab29eba0e58916629ca13dc4a494535ce19" rel=3D"noreferrer" target=3D"_blank">=
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D7f7c9ab29eba0e5=
8916629ca13dc4a494535ce19</a><br></blockquote></div><br>Yeah, that. :) =C2=
=A0Annoyingly it&#39;s not just a PACKAGECONFIG due to how python-native wo=
rks.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">R=
oss</div></div>

--f46d04289bc9590dd0052fe52846--
