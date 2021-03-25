Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.6196.1616668680395082613
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Mar 2021 03:38:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aruba.it header.s=a1 header.b=ddQTwmqs;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 198.145.29.25, mailfrom: mauro@faresoftware.it)
Received: from smtpcmd15176.aruba.it (smtpcmd02101.aruba.it [62.149.158.101])
	by mail.yoctoproject.org (Postfix) with ESMTP id 7DC5238C0839
	for <yocto@yoctoproject.org>; Thu, 25 Mar 2021 10:37:58 +0000 (UTC)
Received: from z600 ([93.38.119.136])
	by Aruba Outgoing Smtp  with ESMTPSA
	id PNMxlYKqsbsviPNNElPi1h; Thu, 25 Mar 2021 11:37:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1616668676; bh=oaiKBcVYeoBVgcUrLrYZh+OjQ6yB+W5u2y2/LkQOt4o=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=ddQTwmqsiEuWWySVI6tUtWoHpcTGsV9ZTOFKx8x8Z+kf80oOoTq3TD92dobPACchW
	 ABRPvkpyBgIJDzdoR4w3YBssQow73Rs1zDyqoiuf19EkE6/ubtVYzdENf78wOPL0ck
	 G2WpeZ0ZgiSjZG3shyKhvu0Dyse04GhPjGq247qlsYSwvUjBRgK4v4po17ZSZhumjr
	 y2iP5vzAk28rZWzCQxGl5vPz32dfqZ1fcL/RBuDjuivmVbYwagzXC/wOA/EVJgp/Vg
	 u/zEAuVlpNOo6H2fbwX8QvfJ5scArsNEfyXg0hpjHzgbrP6GqGrIo5ntYyo6E2ZXuY
	 IyDFNqKPACFNQ==
Date: Thu, 25 Mar 2021 11:37:31 +0100
From: "Mauro Ziliani" <mauro@faresoftware.it>
To: "=?utf-8?Q?yocto=40yoctoproject.org?=" <yocto@yoctoproject.org>
Message-ID: <9148424E-9A7A-4D3F-B703-8D8485C1F726@getmailspring.com>
In-Reply-To: <166F85D665F6651B.20818@lists.yoctoproject.org>
References: <166F85D665F6651B.20818@lists.yoctoproject.org>
Subject: Re: [yocto] Howto read bitbake -g files?
X-Mailer: Mailspring
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfCWZB1NC+g9d86gipvV6Xbp8xdS4rPV26CyQ7S1hrJxMU2FxRp3rLGGaR06YccWhCRAZZgWwUJcJqpr9YIEE0UhsZ5QXKlC/b9xYEDzBeDJM85D+CJ3Y
 Tx5OOeP/kC17a3ifQcx96z6EkRAKIKbuVuaXjjLt9blEUn01suEdh34g
Content-Type: multipart/alternative; boundary="605c67eb_151bf645_4f22"

--605c67eb_151bf645_4f22
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

An example about my question

Inside package-depends.dot I see this
"opencv-dev" [label="opencv-dev(opencv) :3.1+gitAUTOINC+92387b1ef8-r0\n/Sources/softfx/krogoth/sources/meta-openembedded/meta-oe/recipes-support/opencv/opencv_3.1.bb"]
I need to remote opencv-dev from final image.
In pn-depends.dot I see
"opencv" -> "opencv-dev" [style=dashed]
I understand that
opencv generates opencv-dev from the recipe opencv_3.1.bb

Sent from Mailspring (https://getmailspring.com/), the best free email app for work
On mar 25 2021, at 8:39 am, Mauro Ziliani <mauro@faresoftware.it> wrote:
> Hi all
>
> I have to look for the recipes put in my image the *-dev packages.
> I removed dev-pkgs and dng-pkgs from IMAGE_FEATURES and debug tweaks from DISTRO_FEATURES.
> I don't IMAGE_INSTALL_append any *-dev packages
>
> I generate bitbake -g image, but I don't produce the PDF because is unreadable.
> So I read the dot source. I use dot and I know the syntax.
> But I don't how to read the graph.
>
> MZ
>
>
>
> Sent from Mailspring (https://getmailspring.com/), the best free email app for work
> 


--605c67eb_151bf645_4f22
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<div>An example about my question</div><br><div>Inside package-depends.dot =
I see this</div><br><div>"opencv-dev" [label=3D"opencv-dev(opencv) :3.1+git=
AUTOINC+92387b1ef8-r0\n/Sources/softfx/krogoth/sources/meta-openembedded/me=
ta-oe/recipes-support/opencv/opencv_3.1.bb"]</div><br><div>I need to remote=
 opencv-dev from final image.</div><br><div>In pn-depends.dot I see</div><b=
r><div>"opencv" -&gt; "opencv-dev" [style=3Ddashed]</div><br><div>I underst=
and that</div><div>opencv generates opencv-dev from the recipe opencv_3.1.b=
b</div><br><br><br><div><signature id=3D"initial"><div><div>Sent from <a hr=
ef=3D"https://getmailspring.com/">Mailspring</a>, the best free email app f=
or work</div></div></signature></div><div class=3D"gmail_quote_attribution"=
>On mar 25 2021, at 8:39 am, Mauro Ziliani &lt;mauro@faresoftware.it&gt; wr=
ote:</div><blockquote><div>Hi all</div><br><div>I have to look for the reci=
pes put in my image the *-dev packages.</div><br><div>I removed dev-pkgs an=
d dng-pkgs from IMAGE_FEATURES and debug tweaks from DISTRO_FEATURES.</div>=
<div>I don't IMAGE_INSTALL_append any *-dev packages</div><br><div>I genera=
te bitbake&nbsp; -g image, but I don't produce the PDF because is unreadabl=
e.</div><br><div>So I read the dot source. I use dot and I know the syntax.=
</div><br><div>But I don't how to read the graph.</div><br><br><div>MZ</div=
><br><br><br><br><div><div><div>Sent from <a href=3D"https://getmailspring.=
com/" title=3D"https://getmailspring.com/">Mailspring</a>, the best free em=
ail app for work</div></div></div><br><div></div></blockquote>

--605c67eb_151bf645_4f22--
