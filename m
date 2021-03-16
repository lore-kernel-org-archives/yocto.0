Received: from smtp.vivaldi.net (smtp.vivaldi.net [31.209.137.12])
 by mx.groups.io with SMTP id smtpd.web09.5047.1615878452671158580
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Mar 2021 00:07:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vivaldi.net header.s=default header.b=IL4PvNW8;
 spf=pass (domain: vivaldi.net, ip: 31.209.137.12, mailfrom: jchludzinski@vivaldi.net)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id 17D83BD0FA;
	Tue, 16 Mar 2021 07:07:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 17D83BD0FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1615878450;
	bh=DUOGsi5jmCG/gyi+k3PtD1QpaKRNVfVREo5Agcee9ck=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=IL4PvNW8AF0SW5EFlhkEBuQtFW9emrtIKdnM54z+cwgbIsTHbWr7t+meRMZ9VFS8Y
	 2ls/ZperFsV9fXujfyArKqd6XLDlHfE+SbzcMS4huG0tTZ129Pc02zLBzAzaKjzcd9
	 7NI0Q8VwfiT8QMOO3CMQq05dNpPt3AVkGH/0gy3yQbce1Q1NXNM4yAb/rTHpwq97/b
	 BinbuGJ3WVDr6jAxcq5hRcsOvv9YOAg/aLOJ8vzxXtP0cr04Tx9yk255s/nOpT6Seo
	 GIXGkAbSGJX/qNBaBZ/OWWGyQxKTbPMNFTSpta9bH8cOgHgBC9D1/ABvT+XzLiQFVz
	 nD1drETTUXi9g==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo.viv.dc01 [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EzWIN1OS2LTE; Tue, 16 Mar 2021 07:07:26 +0000 (UTC)
Date: Tue, 16 Mar 2021 03:07:26 -0400
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 2B5AABD064
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1615878446;
	bh=DUOGsi5jmCG/gyi+k3PtD1QpaKRNVfVREo5Agcee9ck=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=BFJrU8xOcDFOYUwREFGqWZ+kZkRTjx6dWjdmGx7/PRP4lDKDkfxsU6c69bNC8Ybce
	 HP12Lb2/iwWxgIAdtHt9MD/Ge+bYlLBwGqjCICxleBUJ6S7fBNe/1LEHW9AJGUBDe1
	 uXdgqnKOS4X1+lub0Aq3bXZmrd+P/LjzOTljEPl01r9XbVcd5qW87bjH1bNVKdCzPw
	 mplQSUt7bc+fg2TU6XydsmGCIhJjavVlbz/1vTqLyXRNhAKVVH4flGjSOO38Zmt0wc
	 88KWXDgWJ6V6ochkJ4OXxiz0/0k6DL2xnljzkPGpE7gxkTkUZJT7E2A4wq+MpiEVjQ
	 eWjmT1ehb4TjA==
From: "jchludzinski" <jchludzinski@vivaldi.net>
To: akuster <akuster808@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Building test code?
In-Reply-To: <503454c9-ea3c-6ecb-bfdf-eb5fce6feeee@gmail.com>
References: <bdb239f7ebf89f1567d5fbd2530fa12c@vivaldi.net>
 <503454c9-ea3c-6ecb-bfdf-eb5fce6feeee@gmail.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <247c426e3db4a7f031aad842303134f1@vivaldi.net>
X-Sender: jchludzinski@vivaldi.net
Content-Type: multipart/alternative;
 boundary="=_7bf4043ff0154033b9c379664f48c061"

--=_7bf4043ff0154033b9c379664f48c061
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=US-ASCII;
 format=flowed

It certainly appears to be BUT I'm not certain what I'm looking at? 

What is _meta-openembedded_? 

Is it a GIT repo that can be cloned and built? 

How do I use this to build _spidev-test_?

---John 

On 2021-03-15 19:54, akuster wrote: 

> On 3/15/21 4:11 PM, jchludzinski via lists.yoctoproject.org wrote: 
> 
>> I got a piece of code from github:
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/tools/spi/spidev_test.c
>> 
>> I'd like to add it somewhere under /*tools/testing*/ and build it there.
>> 
>> Not sure if this is appropriate? If so, how do I go about this?
>> 
>> If not, what's the best way to build this?
> 
> Is this what you are looking for?
> https://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-kernel/spidev-test/spidev-test.bb
> 
> -armin 
> 
>> 
> 
> 

--=_7bf4043ff0154033b9c379664f48c061
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=
=3DUTF-8" /></head><body style=3D'font-size: 10pt; font-family: Verdana,Ge=
neva,sans-serif'>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace"=
>It certainly appears to be BUT I'm not certain what I'm looking at? <br />=
<br />What is <span style=3D"text-decoration: underline;"><em><strong>meta-=
openembedded</strong></em></span>? <br /><br />Is it a GIT repo that can be=
 cloned and built? <br /><br />How do I use this to build <em>spidev-test</=
em>?<br /><br />---John</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace"=
><br /><br />On 2021-03-15 19:54, akuster wrote:
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff =
2px solid; margin: 0">On 3/15/21 4:11 PM, jchludzinski via lists.yoctoproje=
ct.org wrote:
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff =
2px solid; margin: 0">I got a piece of code from github:<br /><a href=3D"ht=
tps://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/tools=
/spi/spidev_test.c" target=3D"_blank" rel=3D"noopener noreferrer">https://g=
it.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/tools/spi/sp=
idev_test.c</a><br /><br />I'd like to add it somewhere under /*tools/testi=
ng*/ and build it there.<br /><br />Not sure if this is appropriate? If so,=
 how do I go about this?<br /><br />If not, what's the best way to build th=
is?</blockquote>
<br />Is this what you are looking for?<br />&nbsp;<a href=3D"https://git.=
openembedded.org/meta-openembedded/tree/meta-oe/recipes-kernel/spidev-test/=
spidev-test.bb" target=3D"_blank" rel=3D"noopener noreferrer">https://git.o=
penembedded.org/meta-openembedded/tree/meta-oe/recipes-kernel/spidev-test/s=
pidev-test.bb</a><br /><br />-armin
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff =
2px solid; margin: 0"><br /><br /><br /></blockquote>
<br /><br /><br /></blockquote>
</div>
</body></html>

--=_7bf4043ff0154033b9c379664f48c061--
