Return-Path: <jefro.net@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22D63E002A5
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 10:15:35 -0700 (PDT)
Received: by iagt4 with SMTP id t4so1874056iag.35
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 10:15:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=11XC7QiNH4UNnvgBkDSH69NjJhmfZ8RCVhcALYqlZkg=;
	b=EZocwE6ZxLiaqNDHWEXT7Fnx0LvcAid/lUYS8aVffbreAWT0aFLYrG3r+zxeK/jDmO
	fUJRJaMAH4AaXk60cyERSVS8hiqHPkOrjWT3I2K0Bi9ZPLx7qshqhjMqypXOnGXLFRbV
	/UCnOqdaJ1Jt/7LZr5ILuhdHzK+LAfAhyAEJD0jHaFqLYFFYT9QXDwQeeQl2FtIPrqr+
	/Cjm1w8tL0JIGXYD19iqcF2MbVglp/cWZ/P/s1FAB9H6hmGxB5v9hJgD7ngNCAGIP7j9
	AMgaec5UNimUj97YE2fmF1ecVVZyFe2xO8iOLjGULGxyMMBYR1TxZlgU95dxDnFEx68Q
	/vFg==
MIME-Version: 1.0
Received: by 10.50.1.200 with SMTP id 8mr2383042igo.65.1345742132680; Thu, 23
	Aug 2012 10:15:32 -0700 (PDT)
Sender: jefro.net@gmail.com
Received: by 10.64.50.231 with HTTP; Thu, 23 Aug 2012 10:15:32 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1208211251090.14771@oneiric>
References: <CAMv4DROy+nzU-6ESb2FGQyok33C7e6hV7EoOhN_5sq8PSCTxYA@mail.gmail.com>
	<CA+YB3rYnSio1LLL_awAUM55FaMwdQoxsyanopVTOmmNHmGRqwA@mail.gmail.com>
	<alpine.DEB.2.02.1208211215490.14178@oneiric>
	<2350730.VsPNl426oH@helios>
	<alpine.DEB.2.02.1208211251090.14771@oneiric>
Date: Thu, 23 Aug 2012 10:15:32 -0700
X-Google-Sender-Auth: VNsWXKpi-wy-RiI73vwTxq5ixXM
Message-ID: <CA+YB3rZH1y_cZzh=bhbcj1yk+P3jyHT+6a=28smHKs76qkoj6Q@mail.gmail.com>
From: Jeff Osier-Mixon <jefro@jefro.net>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: adding packages in my Yocto
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
X-List-Received-Date: Thu, 23 Aug 2012 17:15:35 -0000
Content-Type: multipart/alternative; boundary=e89a8f502e0cc7188a04c7f201ad

--e89a8f502e0cc7188a04c7f201ad
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Aug 21, 2012 at 9:51 AM, Robert P. J. Day <rpjday@crashcourse.ca>wrote:

>
>   if there's no objection, i added how to add multiple packages as
> well, just below that.
>

No objection at all - we set it up as a wiki just for that purpose, thanks
for adding

-- 
Jeff Osier-Mixon http://jefro.net/blog
Yocto Project Community Manager @Intel http://yoctoproject.org

--e89a8f502e0cc7188a04c7f201ad
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Tue, Aug 21, 2012 at 9:51 AM, Robert =
P. J. Day <span dir=3D"ltr">&lt;<a href=3D"mailto:rpjday@crashcourse.ca" ta=
rget=3D"_blank">rpjday@crashcourse.ca</a>&gt;</span> wrote:<br><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex">
<div class=3D"HOEnZb"><div class=3D"h5"><br>
</div></div>=A0 if there&#39;s no objection, i added how to add multiple pa=
ckages as<br>
well, just below that.<br>
<div class=3D"HOEnZb"><div class=3D"h5"></div></div></blockquote></div><div=
><br></div><div>No objection at all - we set it up as a wiki just for that =
purpose, thanks for adding</div><div><br></div>-- <br>Jeff Osier-Mixon <a h=
ref=3D"http://jefro.net/blog" target=3D"_blank">http://jefro.net/blog</a><d=
iv>
Yocto Project Community Manager @Intel <a href=3D"http://yoctoproject.org" =
target=3D"_blank">http://yoctoproject.org</a></div><br>

--e89a8f502e0cc7188a04c7f201ad--
