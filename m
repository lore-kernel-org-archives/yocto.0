Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13A3FE00BEA; Mon, 13 Nov 2017 08:37:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.47 listed in dnsbl.sorbs.net]
Received: from mail-it0-f47.google.com (mail-it0-f47.google.com
	[209.85.214.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47EC6E00928
	for <yocto@yoctoproject.org>; Mon, 13 Nov 2017 08:37:44 -0800 (PST)
Received: by mail-it0-f47.google.com with SMTP id 72so10129241itl.5
	for <yocto@yoctoproject.org>; Mon, 13 Nov 2017 08:37:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=A+5uDDQ3QanteNFx1TZghpquatp4F3tgS2X83NqYLCs=;
	b=gHoxFt7bhCFee7VcpDDfiYki1qKUeKmOo31utGBb5BlnrM7kiLArhzxxxITHnDqbnQ
	R0ywL0YUf7FGajY13Id/1peUe4ts5YtUx1fxiseRlPs8AjOyLQwrJXDQOdXqRotoN4JA
	0ZrNSKtANk0/eAyw/bmsi6/HhvpNj75AkiGG12oo0HsC2khJg8o9g50bCyVOGqxHMa/u
	JByVQe/Z8/QjJfMDEVVTVgazV8zf7WV5r0Z07WjUs5OOhKbG7hjVpI5ndjsSaYbwTc+S
	+YQ9h1HZblXtj1LwX3pmJWkcYfwdAVrq+hD99OnHU4cnU//m1dSG5/cTqqEwaSDlevo2
	QVzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=A+5uDDQ3QanteNFx1TZghpquatp4F3tgS2X83NqYLCs=;
	b=J9+iEZv03J9vuvXQyUmx12p46il90zw+VdYS4PUI/YwQRNLUvXxlwHgDV3/fg1dwX2
	4aGlwpw9BmomioMrb2cedgMJbmQSgo90NinkAFSDuP6HY76Ul0XOra4YnvMCV3vFxX0l
	iv00A/LC45De41B9bi4usOa276fTZBnV1i7R3FWZLpkQvEzW9tItU9O37Rk7uI+TV6q3
	2tTUhwobMXGCsj6ThPZyKUdrQFiJL16jXMZSm/rcmyCPABXvBD9klTj/y9x3lcuP7Q5V
	IVvtg1kX9ACyh/784ii+38EnIZMODlh2tG7hc7ojKPdNEN4zOGvpSK2Ew1fKwUJf9cN3
	gWJQ==
X-Gm-Message-State: AJaThX4y7GrEU04dbyrWocWXgo+T6uGEWs2EmpR0gy/4pO/Xr+U+f/4z
	NUJ8pojr/M8poPs3vKLHUgQxtRobw2oh7cu4uUv+mg==
X-Google-Smtp-Source: AGs4zMbfMB/eDnvtFX20GpTfh/whftKdnLUBr6kyvkQx6x7gWh97TaBvXVBgpLa+uUkvi6kAz/Vlc3qQs8KMXwUO5qM=
X-Received: by 10.36.125.76 with SMTP id b73mr11283061itc.10.1510591064023;
	Mon, 13 Nov 2017 08:37:44 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.171.196 with HTTP; Mon, 13 Nov 2017 08:37:23 -0800 (PST)
In-Reply-To: <CAG8GRtgq1qPe78V+fu-C6Mb7WZ_+B6_8r9Z0u594PLNE0BWR4w@mail.gmail.com>
References: <CAG8GRtgq1qPe78V+fu-C6Mb7WZ_+B6_8r9Z0u594PLNE0BWR4w@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 13 Nov 2017 16:37:23 +0000
Message-ID: <CAJTo0LY8QPcMKQgPDYsRwRYBwy86g3XO34y2EzCkYWFDTHd2cQ@mail.gmail.com>
To: Chris Hughes <89dragon@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Bitbake fails when enabling tools-testapps
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
X-List-Received-Date: Mon, 13 Nov 2017 16:37:46 -0000
Content-Type: multipart/alternative; boundary="001a11444174c5c6c1055ddfe374"

--001a11444174c5c6c1055ddfe374
Content-Type: text/plain; charset="UTF-8"

On 12 November 2017 at 08:18, Chris Hughes <89dragon@gmail.com> wrote:

>   - nothing provides at needed by ltp-20170116-r0.corei7_64
>

Well at is part of oe-core so that should have been built.  "bitbake at" to
see why, or if that works then rebuilding your image should work (although
it really should have been built already).

Ross

--001a11444174c5c6c1055ddfe374
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 12 November 2017 at 08:18, Chris Hughes <span dir=3D"lt=
r">&lt;<a href=3D"mailto:89dragon@gmail.com" target=3D"_blank">89dragon@gma=
il.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=3D"gm=
ail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div>=C2=A0=
 - nothing provides at needed by ltp-20170116-r0.corei7_64</div></div></div=
></blockquote><div><br></div><div>Well at is part of oe-core so that should=
 have been built. =C2=A0&quot;bitbake at&quot; to see why, or if that works=
 then rebuilding your image should work (although it really should have bee=
n built already).</div><div><br></div><div>Ross</div></div></div></div>

--001a11444174c5c6c1055ddfe374--
