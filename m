Return-Path: <vidal.develone@gmail.com>
Received: from mail-qc0-f173.google.com (mail-qc0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B60BE0162F
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 08:45:43 -0700 (PDT)
Received: by mail-qc0-f173.google.com with SMTP id l13so2768217qcy.18
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 08:45:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=kCIEMhmuFP+Gbugx9I0CZBjwFceAxf4vlrPbxC1bb+c=;
	b=HlOps+w/CB9MRHKaoKUji6d+BrJA8/476KGZeg15+sw9Zzts3rsj2Rf9uM+bmcdV5o
	m2pvR0WBbQBeNAfuHxc7HXkhwcJmOuBnOLPvR9TGxocsOs6jyQ37ZkYoAP19Cxv4sXYR
	TGRPS1A0f/5c3kA0kvcfdrJgtBCdvQoUUekfpiG9lzS8Hx/9gOoLwED978t0LcOOWZu1
	cUwOwLkiuEIsjt8XcJPItRvbgt6cR2IPMUBqEPzkdWDHGElojI09MxnRoXWW2fJR7ux2
	8tgOKTaKZ9In+lmZFyoUDYrOH8xejwfqwTCCO2jz/YTt9wKUq2IcGTKbkRpJ2bBtcH9M
	/HYw==
MIME-Version: 1.0
X-Received: by 10.224.32.66 with SMTP id b2mr5665807qad.80.1382111143068; Fri,
	18 Oct 2013 08:45:43 -0700 (PDT)
Received: by 10.96.26.37 with HTTP; Fri, 18 Oct 2013 08:45:43 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1310181143280.20578@oneiric>
References: <CANwz6nzWhGoeO8RsfokpmvbUV1VCotW77JwK_5yVCkmbgZJ5JA@mail.gmail.com>
	<alpine.DEB.2.02.1310181106180.11380@oneiric>
	<CANwz6nzPRmP8oV_ipYtg1rRkBF8uGKtpfz5HxV21yMJx=Yuuug@mail.gmail.com>
	<alpine.DEB.2.02.1310181117430.13073@oneiric>
	<CANwz6nxNV66HHVc1BK83_ojK=F_TgdumALYrgmmvDZ0CM3xu5g@mail.gmail.com>
	<alpine.DEB.2.02.1310181143280.20578@oneiric>
Date: Fri, 18 Oct 2013 09:45:43 -0600
Message-ID: <CANwz6nz_3p=AuBX80L0oq8QgT_3VVG8KvDUp9D6genQVTgFOcg@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: uImage instead of zImage
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
X-List-Received-Date: Fri, 18 Oct 2013 15:45:44 -0000
Content-Type: multipart/alternative; boundary=001a11c2c2fcb9091b04e905d3e9

--001a11c2c2fcb9091b04e905d3e9
Content-Type: text/plain; charset=ISO-8859-1

---------- Forwarded message ----------
From: Robert P. J. Day <rpjday@crashcourse.ca>
Date: Fri, Oct 18, 2013 at 9:44 AM
Subject: Re: [yocto] uImage instead of zImage
To: Edward Vidal <vidal.develone@gmail.com>


On Fri, 18 Oct 2013, Edward Vidal wrote:

> Hello
> When I changed the uEnv.txt file I get the same error.
> I also have a zImage-omap3-beagle-xm.dtb which is new with this build is
this the correct name.
> MLO u-boot.img zImage uEnv.txt and zImage-omap3-beagle-xm.dtb are the
files on my DOS partition.
> Thanks

  you should not be emailing to me directly, you should respond to
this on the mailing list so that others can benefit from the
discussion.

rday

--001a11c2c2fcb9091b04e905d3e9
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote">---------- Forwarded me=
ssage ----------<br>From: <b class=3D"gmail_sendername">Robert P. J. Day</b=
> <span dir=3D"ltr">&lt;<a href=3D"mailto:rpjday@crashcourse.ca">rpjday@cra=
shcourse.ca</a>&gt;</span><br>
Date: Fri, Oct 18, 2013 at 9:44 AM<br>Subject: Re: [yocto] uImage instead o=
f zImage<br>To: Edward Vidal &lt;<a href=3D"mailto:vidal.develone@gmail.com=
">vidal.develone@gmail.com</a>&gt;<br><br><br><div class=3D"im">On Fri, 18 =
Oct 2013, Edward Vidal wrote:<br>

<br>
</div><div class=3D"im">&gt; Hello<br>
&gt; When I changed the uEnv.txt file I get the same error.<br>
&gt; I also have a zImage-omap3-beagle-xm.dtb which is new with this build =
is this the correct name.<br>
&gt; MLO u-boot.img zImage uEnv.txt and zImage-omap3-beagle-xm.dtb are the =
files on my DOS partition.<br>
&gt; Thanks<br>
<br>
</div>=A0 you should not be emailing to me directly, you should respond to<=
br>
this on the mailing list so that others can benefit from the<br>
discussion.<br>
<br>
rday<br>
</div><br></div>

--001a11c2c2fcb9091b04e905d3e9--
