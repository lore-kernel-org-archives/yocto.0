Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11885E00A28; Wed, 22 Jul 2015 06:04:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.176 listed in list.dnswl.org]
Received: from mail-qk0-f176.google.com (mail-qk0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D80FCE009DF
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 06:04:50 -0700 (PDT)
Received: by qkfc129 with SMTP id c129so109665054qkf.1
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 06:04:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=0/IUhAQKUcadb1OD38BOooDO7XFZJHC23WqAGQHfsjY=;
	b=W6/tyOrU+tITCKfuraHaSPp9ipdhmIG1vyWfaVVSQ0bBWA+7D9393/83MwWXalMOD/
	brfmlyPQAfAH4GImCUtXwkHbPLuT4l8GyZbG3ElFpf+S+X4dzFr1kGZlnEYNs3Ps+X76
	fbyEd0VwmlH6fwGSxQm2Pj1yiOwBdPADfQBC/gIDN23BQy8qWQyrDYDAq2nD2nYIMz9d
	fOhgHzr8Oq/JkKI08EcX5HsnX+nLvItFbZLq3y9soPzsxc0GX7iduTw9rWWlPa6tXoZ0
	RUkJiCD/BwkcT1WjM86OK7Ni0uPUa7GWdm8NvIp3383qvQ7QHNtremSBK2QiDPFy+u/O
	Wugw==
X-Gm-Message-State: ALoCoQn8NrqN4m6G0K0df30G5mw6IGNBCSpcSyUm2ev+3IkSXulAhe3PqjdRjJQA0n06B028TTov
X-Received: by 10.140.231.19 with SMTP id b19mr3445515qhc.22.1437570289627;
	Wed, 22 Jul 2015 06:04:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.195 with HTTP; Wed, 22 Jul 2015 06:04:30 -0700 (PDT)
In-Reply-To: <55AF8C69.60102@mlbassoc.com>
References: <55AF8C69.60102@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 22 Jul 2015 14:04:30 +0100
Message-ID: <CAJTo0LYbn+U9vTiLXp2mi0EPxoUWksD9=jJCQCdGSwwXWAOHgA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Proper use of remove and append
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
X-List-Received-Date: Wed, 22 Jul 2015 13:04:56 -0000
Content-Type: multipart/alternative; boundary=001a11c12f00740dd4051b766a0c

--001a11c12f00740dd4051b766a0c
Content-Type: text/plain; charset=UTF-8

On 22 July 2015 at 13:28, Gary Thomas <gary@mlbassoc.com> wrote:

> This didn't work:
>   PACKAGECONFIG_pn-opencv_remove = "libv4l"
> but this did:
>   PACKAGECONFIG_remove_pn-opencv = "libv4l"
>

Correct.  _append and _remove go first.

Until _remove was added I remembered this by thinking "overrides are
alphabetical", so _append goes first.  That's not the actual rule, but
helped concrete the ordering in my mind!

Ross

--001a11c12f00740dd4051b766a0c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 22 July 2015 at 13:28, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mail=
to:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div id=3D":22f" class=3D"a3s" style=
=3D"overflow:hidden">This didn&#39;t work:<br>
=C2=A0 PACKAGECONFIG_pn-opencv_remove =3D &quot;libv4l&quot;<br>
but this did:<br>
=C2=A0 PACKAGECONFIG_remove_pn-opencv =3D &quot;libv4l&quot;<br></div></blo=
ckquote></div><br>Correct. =C2=A0_append and _remove go first.</div><div cl=
ass=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Until _remove was =
added I remembered this by thinking &quot;overrides are alphabetical&quot;,=
 so _append goes first.=C2=A0 That&#39;s not the actual rule, but helped co=
ncrete the ordering in my mind!</div><div class=3D"gmail_extra"><br></div><=
div class=3D"gmail_extra">Ross</div></div>

--001a11c12f00740dd4051b766a0c--
