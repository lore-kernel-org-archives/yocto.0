Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57607E00963; Sun,  5 Apr 2015 12:39:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW,WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.180 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qk0-f180.google.com (mail-qk0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A86F7E002F9
	for <yocto@yoctoproject.org>; Sun,  5 Apr 2015 12:39:16 -0700 (PDT)
Received: by qku63 with SMTP id 63so10728513qku.3
	for <yocto@yoctoproject.org>; Sun, 05 Apr 2015 12:39:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=+v639htbXPyeiR8yMWZrgCXszsFWqGqpthZEiQDifsA=;
	b=T8jVxmj88q/jb1Phbf+oH77yE+RgGaGmRoiXg9OEd7fXGkNSEoohEZkLzOe7yRhGH3
	YpbHUENxkU4kVsqpUWaXypydkGErsSaGkwUL9SOnjqz/QI3QWx0Fvqeov8xG8IlUP3pR
	H7kv9TOpgiWgokjRVVshEacghLvJjmBuSZ4CASHwnk+gI1I9IXFSwbw8IFHzEFyDQJ6D
	9/tbm+zLo25bOtERsUhwtTXPg4Bx3LeJriCR2bJ1TzGNtPaCLqfU3jzMcrDkzRYrXSMK
	HkHY8GBvEjegdXtd4irmzF+pzmXGks9+Dq5d5l47ChagYmDIKg8vclwLpyb7r+3a4jfp
	GoxQ==
X-Gm-Message-State: ALoCoQmCHjPHc838B0NRpxHUmRkhnmcRD2XN76Ao+BZ4NkFJORh3ySxntwPhm9XJVY+uFRmjNKe2
X-Received: by 10.55.49.147 with SMTP id x141mr22498902qkx.23.1428262755116;
	Sun, 05 Apr 2015 12:39:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.203 with HTTP; Sun, 5 Apr 2015 12:38:54 -0700 (PDT)
In-Reply-To: <E0AAEDF37958A64591322A370796C7897C5CE9@post>
References: <E0AAEDF37958A64591322A370796C7897C5CE9@post>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sun, 5 Apr 2015 20:38:54 +0100
Message-ID: <CAJTo0LZaNnEGaO2M=kdC3k5eavsAn+f3xQjCwnevMC0hQcoMbw@mail.gmail.com>
To: Rickard Bremer <rickard.bremer@tritech.se>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Parse Error
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
X-List-Received-Date: Sun, 05 Apr 2015 19:39:17 -0000
Content-Type: multipart/alternative; boundary=001a11471b642a3ed50512ff56cf

--001a11471b642a3ed50512ff56cf
Content-Type: text/plain; charset=UTF-8

On 5 April 2015 at 15:43, Rickard Bremer <rickard.bremer@tritech.se> wrote:

> $ bitbake core-image-minimal
> ERROR: ParseError at
> /var/lib/jenkins/workspace/thesis-build-yocto/meta-openembedded/meta-oe/recipes-core/packagegroups/
> packagegroup-basic.bb:12: Could not inherit file classes/bluetooth.bbclass
>

Looks like your meta-oe is from master but your oe-core is from a release
branch?  bluetooth.bbclass is only in oe-core master (and the shortly to be
released 1.8 aka "Fido").

Ross

--001a11471b642a3ed50512ff56cf
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 5 April 2015 at 15:43, Rickard Bremer <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:rickard.bremer@tritech.se" target=3D"_blank">rickard.bremer@tritech.s=
e</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div style=3D"dir=
ection:ltr;font-family:Tahoma;color:#000000;font-size:10pt">$ bitbake core-=
image-minimal<br>
ERROR: ParseError at /var/lib/jenkins/workspace/thesis-build-yocto/meta-ope=
nembedded/meta-oe/recipes-core/packagegroups/<a href=3D"http://packagegroup=
-basic.bb:12" target=3D"_blank">packagegroup-basic.bb:12</a>: Could not inh=
erit file classes/bluetooth.bbclass<br></div></blockquote></div><br>Looks l=
ike your meta-oe is from master but your oe-core is from a release branch? =
=C2=A0bluetooth.bbclass is only in oe-core master (and the shortly to be re=
leased 1.8 aka &quot;Fido&quot;).</div><div class=3D"gmail_extra"><br></div=
><div class=3D"gmail_extra">Ross</div></div>

--001a11471b642a3ed50512ff56cf--
