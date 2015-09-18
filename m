Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2BE19E00B5D; Fri, 18 Sep 2015 13:07:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f47.google.com (mail-qg0-f47.google.com
	[209.85.192.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02396E00A9C
	for <yocto@yoctoproject.org>; Fri, 18 Sep 2015 13:07:33 -0700 (PDT)
Received: by qgev79 with SMTP id v79so47817048qge.0
	for <yocto@yoctoproject.org>; Fri, 18 Sep 2015 13:07:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=0dBmiIWyFvFzxB70RLj9r9JA3BJe1HU1ZkwWMSOIQk4=;
	b=j/jSrMRW1xaN7m2mfeLr5BSg9NtNi6mfRKsFA+wMZMP2IpD/ynbbuA7EU4wzWa2PXk
	lXBIlmyl9P/iQboJP7dNzbxAcpuCovFpziSbx4FZWVnVphT58KgQ4eXymHTlPPkGONIr
	DfGFBARAw+4faSbdlZMrP86ksCIFiSOUNNBFsm0/yO93s22Sxz+RfML+90bZGLHqU6NA
	pQuNIQUxG3Np7ExWzL1X5TehjXEWDoODSPZzfuLYBnSjMc8U3jfn+h5QrNxAG97Nulu7
	eEIhtnQuMIfW73WuZrm16dAKDawPq65QEQk/eNe3/FgWI6sCBllzftozJvmKFrRCfnof
	M6wQ==
X-Gm-Message-State: ALoCoQltWxqHpxUeTNTRUiDqpcKxi/sUTTENeVLFDzzzlumOKpXyOMTWP0OBaT3/GtWKGVZ7tupI
X-Received: by 10.140.20.20 with SMTP id 20mr8604316qgi.87.1442606852447; Fri,
	18 Sep 2015 13:07:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.94.86 with HTTP; Fri, 18 Sep 2015 13:07:13 -0700 (PDT)
In-Reply-To: <1960827785.38335.1441967539008.JavaMail.zimbra@visser.se>
References: <1960827785.38335.1441967539008.JavaMail.zimbra@visser.se>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 18 Sep 2015 21:07:13 +0100
Message-ID: <CAJTo0LZY5kfRN3Ed1tBicPSX3yZOYExcO=U6eiccv2AkO4pE+g@mail.gmail.com>
To: Sander Visser <sander@visser.se>, danw@gnome.org
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libsoup license
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
X-List-Received-Date: Fri, 18 Sep 2015 20:07:38 -0000
Content-Type: multipart/alternative; boundary=001a11c13cbcfdcd5305200b1444

--001a11c13cbcfdcd5305200b1444
Content-Type: text/plain; charset=UTF-8

Hi all,

[CC'ing Dan Winship, the libsoup maintainer]

On 11 September 2015 at 11:32, Sander Visser <sander@visser.se> wrote:

> Does anyone know why the license is marked LGPL2 and not LGPL2+ in
> libsoup-2.4_2.50.0.bb? It seems "or (at your option) any later version"
> is allowed via for example libsoup/soup-requester.h.
>
> Nowhere could I see that the "or (at your option) any later version" is
> missing.
>

To be honest libsoup isn't very clear - the COPYING is the standard LGPL
boilerplate, the README just says "LGPL", and very few source files specify
the license at all.

Dan: exactly what license is libsoup under?  LGPL v2 precisely, or LGPL v2
or greater?

Thanks,
Ross

--001a11c13cbcfdcd5305200b1444
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Hi all,</div><div class=3D"gmai=
l_extra"><br></div><div class=3D"gmail_extra">[CC&#39;ing Dan Winship, the =
libsoup maintainer]</div><div class=3D"gmail_extra"><br><div class=3D"gmail=
_quote">On 11 September 2015 at 11:32, Sander Visser <span dir=3D"ltr">&lt;=
<a href=3D"mailto:sander@visser.se" target=3D"_blank">sander@visser.se</a>&=
gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":1fm" class=
=3D"a3s" style=3D"overflow:hidden">Does anyone know why the license is mark=
ed LGPL2 and not LGPL2+ in <a href=3D"http://libsoup-2.4_2.50.0.bb" rel=3D"=
noreferrer" target=3D"_blank">libsoup-2.4_2.50.0.bb</a>? It seems &quot;or =
(at your option) any later version&quot; is allowed via for example libsoup=
/soup-requester.h.<br>
<br>
Nowhere could I see that the &quot;or (at your option) any later version&qu=
ot; is missing.<br></div></blockquote></div><br>To be honest libsoup isn&#3=
9;t very clear - the COPYING is the standard LGPL boilerplate, the README j=
ust says &quot;LGPL&quot;, and very few source files specify the license at=
 all.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">=
Dan: exactly what license is libsoup under?=C2=A0 LGPL v2 precisely, or LGP=
L v2 or greater?</div><div class=3D"gmail_extra"><br></div><div class=3D"gm=
ail_extra">Thanks,</div><div class=3D"gmail_extra">Ross</div></div>

--001a11c13cbcfdcd5305200b1444--
