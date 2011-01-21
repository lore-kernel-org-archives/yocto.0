Return-Path: <diego.sueiro@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 42B3F4C80BD4
	for <yocto@yoctoproject.org>; Thu, 20 Jan 2011 18:41:56 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so1276748iwn.35
	for <yocto@yoctoproject.org>; Thu, 20 Jan 2011 16:41:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=JC3OQ6g4sgAf+S1+DBNlC4AV1MRq/XR47LrYqi/BsR8=;
	b=YvydjH5PfveyyvW4WBD9cPh3zAr80tS10BhHikSbAODJChwIdmqC9ACfOh+WJOWn6R
	Kgx+oq7xbhEUw1H+JWJ4Xfny7A5JbhDXHIG14o0hS52xr2Hs8KYA73eqO/XKvHnYS04z
	QhfKR3jVz/hJ9dlOE1/Ux4LqPfzqpmuw7c1GA=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	b=nJnX9B8iDO5p9P6WqoqB3TjVw1w4rbUci0Z3xQItUBgtCj+//WtyeeKivgc6XcnQP+
	WGVPBLHyfdyIX7aCxO4RFS8MSF5u8uDj+G+om/vUaxiOuYvIhk18l1T/w9z15n/qTAeB
	vy4OPjYfrIgU5xlKHVabI6a0Yy9v2g5M0Tt+s=
Received: by 10.42.176.2 with SMTP id bc2mr3454911icb.517.1295570515774; Thu,
	20 Jan 2011 16:41:55 -0800 (PST)
MIME-Version: 1.0
Received: by 10.42.226.70 with HTTP; Thu, 20 Jan 2011 16:41:35 -0800 (PST)
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA9504ED898A@orsmsx504.amr.corp.intel.com>
References: <AANLkTi=XdyonrJRV03znEbLf5r67rVWOLBiAJrWoYE8E@mail.gmail.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9504ED88CD@orsmsx504.amr.corp.intel.com>
	<AANLkTinm1j+_J_7=dsjEx=rnsOhQH1vwfKZPzPsdP7++@mail.gmail.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9504ED898A@orsmsx504.amr.corp.intel.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Thu, 20 Jan 2011 22:41:35 -0200
Message-ID: <AANLkTik0yFXOtDnXQaC2z7htnF0ak8g++GhzKLaL7RJ-@mail.gmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Eclipse Plugin Yocto Project Settings
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 21 Jan 2011 00:41:56 -0000
Content-Type: multipart/alternative; boundary=90e6ba6e887e5fcc0f049a50844e

--90e6ba6e887e5fcc0f049a50844e
Content-Type: text/plain; charset=ISO-8859-1

Jessica,

Thanks for the explanations.

After sourcing environment-setup-armv5te-poky-linux-gnueabi file I get lots
of this message printed on the terminal:

pseudo: Couldn't open .//var/pseudo/pseudo.pid: No such file or directory
pseudo: can't create socket: pseudo.socket (Too many open files)

And some messages like:

tar: ./usr/games/inertia: Cannot change ownership to uid 0, gid 0: Function
not implemented
tar: ./usr/games/inertia: Cannot change mode to rwxr-xr-x: Function not
implemented

Is it a normal behavior?



Rgds,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/


On Thu, Jan 20, 2011 at 10:15 PM, Zhang, Jessica <jessica.zhang@intel.com>wrote:

> environment-setup-targetarch-poky-linux

--90e6ba6e887e5fcc0f049a50844e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Jessica,<div><br></div><div>Thanks for the explanations.</div><div><br></di=
v><div>After sourcing=A0environment-setup-armv5te-poky-linux-gnueabi file I=
 get lots of this message printed on the terminal:</div><blockquote class=
=3D"webkit-indent-blockquote" style=3D"margin: 0 0 0 40px; border: none; pa=
dding: 0px;">

<div>pseudo: Couldn&#39;t open .//var/pseudo/pseudo.pid: No such file or di=
rectory</div><div>pseudo: can&#39;t create socket: pseudo.socket (Too many =
open files)</div></blockquote>And some messages like:<blockquote class=3D"w=
ebkit-indent-blockquote" style=3D"margin: 0 0 0 40px; border: none; padding=
: 0px;">

<div><div>tar: ./usr/games/inertia: Cannot change ownership to uid 0, gid 0=
: Function not implemented</div></div><div><div>tar: ./usr/games/inertia: C=
annot change mode to rwxr-xr-x: Function not implemented</div></div><div>

<br></div></blockquote><div><div>Is it a normal behavior?</div><div><br></d=
iv><div><br></div><div><br></div><div><div>Rgds,</div><div><br></div>--<br>=
*dS<br>Diego Sueiro<br><br>/*long live rock &#39;n roll*/<br>
<br><br><div class=3D"gmail_quote">On Thu, Jan 20, 2011 at 10:15 PM, Zhang,=
 Jessica <span dir=3D"ltr">&lt;<a href=3D"mailto:jessica.zhang@intel.com">j=
essica.zhang@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex;">

<font color=3D"#0000ff" size=3D"2" face=3D"Arial">environment-setup-targeta=
rch-poky-linux</font></blockquote></div><br></div></div>

--90e6ba6e887e5fcc0f049a50844e--
