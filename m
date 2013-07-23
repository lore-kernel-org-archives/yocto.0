Return-Path: <b.hutchman@gmail.com>
Received: from mail-ea0-f179.google.com (mail-ea0-f179.google.com
	[209.85.215.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41642E0152B
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2013 10:23:47 -0700 (PDT)
Received: by mail-ea0-f179.google.com with SMTP id b15so4643166eae.24
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2013 10:23:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=+HLGPenuekknPjyXyLYgkES3w1ZuPrRgFC/78kkhVPM=;
	b=OAhnysJPEamg/tlqpDPXqL+g6mpKbwdFTIU3UhsunZ3nAhe72jcR7Dq/GPGbPDK5ca
	sZb6WGVnYLdA2JTUTmcj9DF3P3kFbghNCACPPPOcJ+OOCYVO1mMCLIaVsml+lh3L1kr+
	mgTnoTzAV4IWh01XDIY0yGxfQ3OLqcNX83ee6RJEtW3HpXBfw128VebR0xvan7FcrEBZ
	LDhNyULxTv0Ha4gcLnVT9gLnJ7/Z8abn7mIHWMUha3nohf1sDlOPYwC+0qE+WZUHcIoT
	0xSye9ZW0FeOBtqPWOzsgEyXDO11m9iOFjgE3oLuV1/qWMM9vpyk6VhREVqvaMhGv2YJ
	WqVg==
MIME-Version: 1.0
X-Received: by 10.14.219.6 with SMTP id l6mr32776142eep.152.1374600226320;
	Tue, 23 Jul 2013 10:23:46 -0700 (PDT)
Received: by 10.223.195.69 with HTTP; Tue, 23 Jul 2013 10:23:46 -0700 (PDT)
In-Reply-To: <4860044.KltMD8WHhS@helios>
References: <CAFZh4h9-+XQBWxHh22zQ+jwQBYiaUwifzcdpLPF2kU+kn5Pg9A@mail.gmail.com>
	<4860044.KltMD8WHhS@helios>
Date: Tue, 23 Jul 2013 13:23:46 -0400
Message-ID: <CAFZh4h_PG+MAFjgyq-RyTRs-NX9DqJ46hggBqbrN8m1K=J-bog@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Should I be worried about this nativesdk-packagegroup-sdk-host warning while building meta-toolchain
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
X-List-Received-Date: Tue, 23 Jul 2013 17:23:51 -0000
Content-Type: multipart/alternative; boundary=047d7b603c1432d81404e2310e77

--047d7b603c1432d81404e2310e77
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Jul 23, 2013 at 1:19 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> Hi Brian,
>
> Did you perhaps build meta-toolchain and then change MACHINE and build it
> again? What happened prior to this build?
>
>
> I ran bitbake meta-toolchain and when that was complete I edited my
local.conf and uncommented the following line so I would get a 32 bit
toolchain:
SDKMACHINE ?= "i686"

... and then I ran bitbake meta-toolchain again and that is when the
messages appeared that I copied in the OP.

Regards,

Brian

--047d7b603c1432d81404e2310e77
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 23, 2013 at 1:19 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@=
linux.intel.com</a>&gt;</span> wrote:<br><div class=3D"gmail_quote"><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex">
Hi Brian,<br>
<div class=3D"im"><br></div>Did you perhaps build meta-toolchain and then c=
hange MACHINE and build it<br>
again? What happened prior to this build?<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br><br></div></div></blockquote><d=
iv>I ran bitbake meta-toolchain and when that was complete I edited my loca=
l.conf and uncommented the following line so I would get a 32 bit toolchain=
:</div>
<div>SDKMACHINE ?=3D &quot;i686&quot;</div><div><br></div><div>... and then=
 I ran bitbake meta-toolchain again and that is when the messages appeared =
that I copied in the OP.</div><div><br></div><div>Regards,</div><div><br>
</div><div>Brian</div><div>=A0</div></div><br>

--047d7b603c1432d81404e2310e77--
