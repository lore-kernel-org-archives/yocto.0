Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45F17E00CD6; Fri, 30 Sep 2016 01:24:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.182 listed in list.dnswl.org]
Received: from mail-yw0-f182.google.com (mail-yw0-f182.google.com
	[209.85.161.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED5B9E00B47
	for <yocto@yoctoproject.org>; Fri, 30 Sep 2016 01:24:46 -0700 (PDT)
Received: by mail-yw0-f182.google.com with SMTP id t67so64264858ywg.3
	for <yocto@yoctoproject.org>; Fri, 30 Sep 2016 01:24:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=dUJSf2y2trycXD5KSFD+JV/0AYu6NIzaiR1DskZNCaE=;
	b=Lsh08bGn2T06TU/2r7CHdnaMe8myvPjQ/MmRxLbM/nLlOOfgmQMMSALMuzBugjNQOo
	AvJYXrsNB7qfQsnzdru71iKQ8psZbVH0L8U5gjayEVxvndaB1My5jHUg66sDvUgIkE9P
	HsdP4/8/SDV1M7bQHkWbtZuMAbj4oyl9Jru8wOYWaahePx+BUPWETtKJzCvd9QA8/dia
	RQxfdE4JbFKdTZ62Y4MoiiECxDJXQ9QPOl+sFpK4HSFQlPxNOTjOCQaSnB1echVGZooY
	UUDEBwINK1DYX9nx1yqe9aFWpzv9a9sWoqs61fTWwtHdVxFf2NWqTFywA4vDtl6mF8o/
	iRTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=dUJSf2y2trycXD5KSFD+JV/0AYu6NIzaiR1DskZNCaE=;
	b=FPhOGGOa5N+6VMdPLW2pEvVtB3L67bNfJ3zrlpBtUsS+DHbkKoClojeGhdM5u/IVFL
	f9MNcaPWTEGU/eWgOJjnr5h+iM4E2E+tRGAShlK2FXHbxhUMx7tlnCfi6sc+ifNFLcOO
	LSvRF/6nkIfdB8xCNLhDgt1dzcrHacpY7Gn9jbI3y9Cyp90xEzh5pRv0NRgnt5rEsmaJ
	sV0VC+Ax1s+/13uDQe5dZcLDeeuEE4s3dlFb9o3uBAP0DBOChcE0KHt4uP2enxHHMlKG
	KqyfmfdhpiR0Aj6QlJmgHOJ1sRoJWg6TU13KInkd9NvspTCKXCwBN7eyMrQ7tMxFh/nL
	4L7A==
X-Gm-Message-State: AA6/9RlBhtQjHeXkTjbIXJ6FKSUqoJ7TvSajoDjakGjJ5aJxJ1JPfsum4nk+1aTaGLCWPtKrFJoj5m6E0QHMtCCI
X-Received: by 10.129.109.213 with SMTP id i204mr3291952ywc.84.1475223885879; 
	Fri, 30 Sep 2016 01:24:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.13.206.3 with HTTP; Fri, 30 Sep 2016 01:24:15 -0700 (PDT)
In-Reply-To: <HE1PR01MB1883682C2AB332B0A62FDB6192CD0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
References: <HE1PR01MB18834F369C7B2C7149C9A56592CA0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
	<CAHiDW_GJ1cJaX7ehQqoUCySk5renSb6oLnaY9ziERRjQSNH8PQ@mail.gmail.com>
	<HE1PR01MB1883682C2AB332B0A62FDB6192CD0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Fri, 30 Sep 2016 11:24:15 +0300
Message-ID: <CAHiDW_EY_PBOyHni+VVtyL4qAOTQKQFitorW-b3xRCGZwYjsUQ@mail.gmail.com>
To: Karim ATIKI <karim_atiki@hotmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [meta-toraxdex] unrecoverable build error
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
X-List-Received-Date: Fri, 30 Sep 2016 08:24:50 -0000
Content-Type: multipart/alternative; boundary=001a114dad78aed4af053db5530f

--001a114dad78aed4af053db5530f
Content-Type: text/plain; charset=UTF-8

On 26 September 2016 at 15:00, Karim ATIKI <karim_atiki@hotmail.com> wrote:
>
> Hi Jussi,
>
> >10-evdev.conf was moved from xserver-xorg to to the driver. If you are
using krogoth, xserver-xorg really should be new enough (>=1.18.0) to not
install the file.
> >Does meta-toradex maybe provide an older xorg?
>
> Actually, I don't know.
> In which kind of file can I find this information ?

Hi and sorry for taking a few days, I missed this message on monday.

You should look for a xserver-xorg_*.bb recipe in the layer.

You haven't mentioned what the layer is exactly, but e.g. git://
git.toradex.com/meta-toradex.git does provide an older xserver:
http://git.toradex.com/cgit/meta-toradex.git/tree/recipes-graphics/xorg-xserver
. Since this layer has a higher BBFILE_PRIORITY than oe-core its
xserver-xorg will be chosen even if the recipe version is lower than the
one in oe-core. That said the README in this layer explicitly states it's
meant for fido branches...

Jussi

--001a114dad78aed4af053db5530f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div>On 26 September 2016 at 15:00, Karim ATIKI =
&lt;<a href=3D"mailto:karim_atiki@hotmail.com">karim_atiki@hotmail.com</a>&=
gt; wrote:<br>&gt;<br>&gt; Hi Jussi,<br>&gt;<br>&gt; &gt;10-evdev.conf was =
moved from xserver-xorg to to the driver. If you are using krogoth, xserver=
-xorg really should be new enough (&gt;=3D1.18.0) to not install the file. =
<br>&gt; &gt;Does meta-toradex maybe provide an older xorg?<br>&gt;<br>&gt;=
 Actually, I don&#39;t know.<br>&gt; In which kind of file can I find this =
information ?<br><br><div>Hi and sorry for taking a few days, I missed this=
 message on monday.<br></div><div><br></div><div>You should look for a xser=
ver-xorg_*.bb recipe in the layer.=C2=A0</div><div><br></div><div>You haven=
&#39;t mentioned what the layer is exactly, but e.g. git://<a href=3D"http:=
//git.toradex.com/meta-toradex.git">git.toradex.com/meta-toradex.git</a> do=
es provide an older xserver:=C2=A0<a href=3D"http://git.toradex.com/cgit/me=
ta-toradex.git/tree/recipes-graphics/xorg-xserver">http://git.toradex.com/c=
git/meta-toradex.git/tree/recipes-graphics/xorg-xserver</a> . Since this la=
yer has a higher BBFILE_PRIORITY than oe-core its xserver-xorg will be chos=
en even if the recipe version is lower than the one in oe-core. That said t=
he README in this layer explicitly states it&#39;s meant for fido branches.=
..</div><div><br></div><div>Jussi</div><div><br></div></div>

--001a114dad78aed4af053db5530f--
