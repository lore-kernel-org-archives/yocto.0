Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB36CE008D4; Mon, 20 Jul 2015 08:40:00 -0700 (PDT)
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
	*      [209.85.220.170 listed in list.dnswl.org]
Received: from mail-qk0-f170.google.com (mail-qk0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C304E008D4
	for <yocto@yoctoproject.org>; Mon, 20 Jul 2015 08:39:51 -0700 (PDT)
Received: by qkfc129 with SMTP id c129so71615660qkf.1
	for <yocto@yoctoproject.org>; Mon, 20 Jul 2015 08:39:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=JjF65VUD26I7hP2cU/YbI1f9exP1ae91Dnvt2edq9+o=;
	b=hjSVlvrHYr9IS47nHKmXgHkC4yIW/EvJPBA+e2gDEG/13l621n3p8ckhK/Y07MhRwk
	2rSZvzQsneSICH/b6PMTd4fzU2Q/6iQV7retaEViRuS2ZzaVeZm1jb8Hsa7kY2MXTwyQ
	ED77Qe29SfIvbtJxcrQCuz3a0rvws0v/ofnLi78xjD6P4Tpqw9sP1UdCNnid+7MlnboG
	9ZIocmE22bb//H8BgQ61w6hxX4hCntiDfNYB7D0Cvam9tJCeW8CY1OLYNfZPaa3LT18Y
	mVjR4fnOG2LyQwWImvUHXKX6b8+g8LlFkbs9DhfTISi8gCX9gTc+RoeE9iCIcVOI3dqd
	r1Uw==
X-Gm-Message-State: ALoCoQmh+DM71zsJgwC0kgPl3blFyWQPF5kJz7A9LcFr9iHLX+i5xXjynEeHE2DzFpIUL+oLs9Lk
X-Received: by 10.55.22.169 with SMTP id 41mr16230084qkw.13.1437406790941;
	Mon, 20 Jul 2015 08:39:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Mon, 20 Jul 2015 08:39:31 -0700 (PDT)
In-Reply-To: <55AD13AC.3010802@mlbassoc.com>
References: <55AD13AC.3010802@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 20 Jul 2015 16:39:31 +0100
Message-ID: <CAJTo0LY=mS1xJ5kW-ogFNY=T60qpyWP0MofdTK4_XKckzh5mfg@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: New/unfamiliar messages
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
X-List-Received-Date: Mon, 20 Jul 2015 15:40:00 -0000
Content-Type: multipart/alternative; boundary=001a11496e902c0ee1051b50594a

--001a11496e902c0ee1051b50594a
Content-Type: text/plain; charset=UTF-8

On 20 July 2015 at 16:28, Gary Thomas <gary@mlbassoc.com> wrote:

>   NOTE: Stamp
> /home/local/rpi2_2015-03-05/tmp/stamps/i686-linux/dbus-native/1.8.16-r0 is
> not reachable, removing related manifests
>       ... many more
>
> What do these mean and should I be worried about seeing them?
>

That basically means that e.g. the dbus-native in the layers is newer than
the version in the sysroot, so it is now removing dbus-native 1.8.16 from
the sysroot so it can later install 1.8.<something newer>.  Now this code
has pretty much proven itself we can probably remove those messages.

Previously it just wrote over the top and hoped for the best, with logic to
error out if one native recipe wrote over another recipe's files.  This was
good for determinism but bad for moving files between recipes or renaming
recipes (which was impossible).

Ross

--001a11496e902c0ee1051b50594a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 20 July 2015 at 16:28, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mail=
to:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div id=3D":5f5" class=3D"a3s" style=
=3D"overflow:hidden">=C2=A0 NOTE: Stamp /home/local/rpi2_2015-03-05/tmp/sta=
mps/i686-linux/dbus-native/1.8.16-r0 is not reachable, removing related man=
ifests<br>
=C2=A0 =C2=A0 =C2=A0 ... many more<br>
<br>
What do these mean and should I be worried about seeing them?</div></blockq=
uote><div><br></div><div>That basically means that e.g. the dbus-native in =
the layers is newer than the version in the sysroot, so it is now removing =
dbus-native 1.8.16 from the sysroot so it can later install 1.8.&lt;somethi=
ng newer&gt;.=C2=A0 Now this code has pretty much proven itself we can prob=
ably remove those messages.</div><div><br></div><div>Previously it just wro=
te over the top and hoped for the best, with logic to error out if one nati=
ve recipe wrote over another recipe&#39;s files.=C2=A0 This was good for de=
terminism but bad for moving files between recipes or renaming recipes (whi=
ch was impossible).</div><div><br></div><div>Ross=C2=A0</div></div></div></=
div>

--001a11496e902c0ee1051b50594a--
