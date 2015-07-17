Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24225E009E6; Fri, 17 Jul 2015 03:19:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qk0-f176.google.com (mail-qk0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D5BBE009D2
	for <yocto@yoctoproject.org>; Fri, 17 Jul 2015 03:19:21 -0700 (PDT)
Received: by qkdv3 with SMTP id v3so66744199qkd.3
	for <yocto@yoctoproject.org>; Fri, 17 Jul 2015 03:19:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=xwpYpMp5DgUWAKMTlx8t4maZBatiNz22ifC6+DvoyxA=;
	b=Gm9HA80XzfZhlljeP8c+Mkrn5/79x4tn7/BpHHv4jIvdKHgScNFdCsNeYwzY6NRFWK
	T2IlOCvi9/8+z14ObEXFGCB3x9w208FNPSjRjuDw1vpmlsdkMtB5XfCgHD4B1UcYEsNo
	5wxpgE3jr8TidGD6QFwktcv4mkFbscwCk1f49gSoTm1SQjxDHP2W7CAvlMxSvl/PBH/w
	JqOb+6K9iikbz/tfcGOONeIxR7ZWAi4N0nao8FZhyOejg0ZwEJnyUX2WLY2qLr8OPMqU
	xS+/BY7IQrUQFV9751XecwhsSaYZ+nKXv1yP9vD252PAs6+Oqb1qWqWvTXC2MrToA9JP
	7Xnw==
X-Gm-Message-State: ALoCoQniMtMXtZGfFgDRsKxU4jFzkwTH1RtbBTtvHnCBDTRF3Wp1aUkScFVHh1wg48uyXOkTKSbs
X-Received: by 10.55.15.129 with SMTP id 1mr24149596qkp.29.1437128360590; Fri,
	17 Jul 2015 03:19:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Fri, 17 Jul 2015 03:19:01 -0700 (PDT)
In-Reply-To: <CALkREYC=zehWPk5YmfDiOeaeGdLyriMF5us7kTTjn38mRWpZ+w@mail.gmail.com>
References: <CALkREYC=zehWPk5YmfDiOeaeGdLyriMF5us7kTTjn38mRWpZ+w@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 17 Jul 2015 11:19:01 +0100
Message-ID: <CAJTo0LaWjfrOmgu2wUgb_Vp9-tD+StNwzpBJ4KXBQujz16UK1g@mail.gmail.com>
To: Anooj Gopi <anoojgopi@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: clone multiple git source repository from single recipe file
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
X-List-Received-Date: Fri, 17 Jul 2015 10:19:22 -0000
Content-Type: multipart/alternative; boundary=001a1146f1006e14cc051b0f85c4

--001a1146f1006e14cc051b0f85c4
Content-Type: text/plain; charset=UTF-8

On 17 July 2015 at 10:32, Anooj Gopi <anoojgopi@gmail.com> wrote:

> But now I would like to clone two git repository, which of course have
> different hash value to be checked-out. Is it possible to do that in yocto?
>

Almost the same syntax.  I'm not sure why you're using pn-${BPN} notation
in a recipe, but this is from gstreamer1.0-omx:

SRC_URI = " \
    git://
anongit.freedesktop.org/gstreamer/gst-omx;branch=master;name=gst-omx \
git://
anongit.freedesktop.org/gstreamer/common;destsuffix=git/common;branch=master;name=common
"

SRCREV_gst-omx = "a2db76b048db278ef0aa798e106b7594264e06c0"
SRCREV_common = "5edcd857b2107cd8b78c16232dd10877513ec157"

Basically, give each URI a name, and then use the names in SRCREV overrides.

Ross

--001a1146f1006e14cc051b0f85c4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 17 July 2015 at 10:32, Anooj Gopi <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:anoojgopi@gmail.com" target=3D"_blank">anoojgopi@gmail.com</a>&gt;</span>=
 wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-st=
yle:solid;padding-left:1ex"><div>But now I would like to clone two git repo=
sitory, which of course have different hash value to be checked-out. Is it =
possible to do that in yocto?<br></div></blockquote></div><br>Almost the sa=
me syntax.=C2=A0 I&#39;m not sure why you&#39;re using pn-${BPN} notation i=
n a recipe, but this is from gstreamer1.0-omx:</div><div class=3D"gmail_ext=
ra"><br></div><div class=3D"gmail_extra"><div class=3D"gmail_extra">SRC_URI=
 =3D &quot; \</div><div class=3D"gmail_extra">=C2=A0 =C2=A0 git://<a href=
=3D"http://anongit.freedesktop.org/gstreamer/gst-omx;branch=3Dmaster;name=
=3Dgst-omx">anongit.freedesktop.org/gstreamer/gst-omx;branch=3Dmaster;name=
=3Dgst-omx</a> \=C2=A0</div><div class=3D"gmail_extra">git://<a href=3D"htt=
p://anongit.freedesktop.org/gstreamer/common;destsuffix=3Dgit/common;branch=
=3Dmaster;name=3Dcommon">anongit.freedesktop.org/gstreamer/common;destsuffi=
x=3Dgit/common;branch=3Dmaster;name=3Dcommon</a>&quot;</div><div class=3D"g=
mail_extra"><br></div><div class=3D"gmail_extra">SRCREV_gst-omx =3D &quot;a=
2db76b048db278ef0aa798e106b7594264e06c0&quot;</div><div class=3D"gmail_extr=
a">SRCREV_common =3D &quot;5edcd857b2107cd8b78c16232dd10877513ec157&quot;</=
div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Basical=
ly, give each URI a name, and then use the names in SRCREV overrides.</div>=
<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div><=
/div></div>

--001a1146f1006e14cc051b0f85c4--
