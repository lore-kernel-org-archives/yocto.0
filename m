Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64A15E0086B; Mon,  7 Mar 2016 12:05:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5D36E00803
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 12:05:48 -0800 (PST)
Received: by mail-ig0-f177.google.com with SMTP id ir4so57246846igb.1
	for <yocto@yoctoproject.org>; Mon, 07 Mar 2016 12:05:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=KfdUaa7oJVCbOKiXBx4lPzaQTjqAkAp6Bj4GLhxbvVc=;
	b=OAVcMVy2+jF1U3EK6ZJxr4gX6zwbZcShCXM7WhmurzRc+uFoOZOXwqNsHzP+PkzaBq
	t8jAuTriF7BIYQTVV+3gr8Q3XtVmBLGmNYo8+2uUzbQeXmBaolj0ZK2csm6gAAAOXTw0
	DvSu8k1bIN7uSRkB/W3FYTSUebRresFBzbLVduyN2b8bbTOGEcwb5Tie+dIWpRTr4oYe
	FsoU5IAyCMhl7d6zt1v2lrZ9j4+gwb5scxibNInEsCYMoYxyOZ+KyqvW5sdQ8CobyvXN
	JNQMYYLmvSin3INWRXOs39W4sSRlIPDHOYXlLY47gXzsG64cXEBjpJb11jrxV3f+4I8L
	iocw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=KfdUaa7oJVCbOKiXBx4lPzaQTjqAkAp6Bj4GLhxbvVc=;
	b=hZ465hB3PPKFg04OyurITRiBMhBqXBdR4iHhTWEI6YyKftgISQ2wQgZn+HBtIMSydG
	usO//4+iaUJok//P+I66WB63SgqrKvA4HmzlDJKFwvpmmWKbHO1m91piJHUjpOxcmviX
	EBg4Mm2/P3YGdaOcHj33XwYfB8XBL4D0xu8adzjISbWwi+KnbsobagqGRm3xx2MSRWDD
	ABCxTF/Ntjf+qp3GrrqKxz/IlyJ4VEDm+fEd/Jm+Mk3TUHv82hV6ld4a37aGCfL/ZykV
	bmxTZ7ZGmE4+Q8MVY5/iXi2MobXnmlppmwUUaMz3gMxblr6kInePIxOkiBmjTTtnQ6aE
	R8+Q==
X-Gm-Message-State: AD7BkJLJUdv0gHDeD+uOI7BbAwXK++qdo15vZ9elz/IYeZ6hSgrpZbLRCgD3NY/yWENK9H8JIDtjMkvg1uHboOYl
X-Received: by 10.50.118.67 with SMTP id kk3mr13162148igb.64.1457381148093;
	Mon, 07 Mar 2016 12:05:48 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Mon, 7 Mar 2016 12:05:28 -0800 (PST)
In-Reply-To: <BAY181-W50B0A075391862300C0057AEB10@phx.gbl>
References: <BAY181-W50B0A075391862300C0057AEB10@phx.gbl>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 7 Mar 2016 20:05:28 +0000
Message-ID: <CAJTo0LY9iyRBDD+otav3mgWZMOfajHKhCDfnFHpSWNCR=H07gw@mail.gmail.com>
To: Mark Brown <mkbrown32@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Failed to fetch URL git://gitorious.org/raw2rgbpnm/raw2rgbpnm.git
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
X-List-Received-Date: Mon, 07 Mar 2016 20:05:50 -0000
Content-Type: multipart/alternative; boundary=089e0122a0d4a2a799052d7afdf3

--089e0122a0d4a2a799052d7afdf3
Content-Type: text/plain; charset=UTF-8

On 7 March 2016 at 19:11, Mark Brown <mkbrown32@hotmail.com> wrote:

> WARNING: Failed to fetch URL git://
> gitorious.org/raw2rgbpnm/raw2rgbpnm.git;protocol=git, attempting MIRRORS
> if available
> ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
> Cloning into bare repository
> '/home/bbusr/build/downloads/git2/gitorious.org.raw2rgbpnm.raw2rgbpnm.git'...
> fatal: unable to connect to gitorious.org:
> gitorious.org[0: 64.13.172.37]: errno=Connection refused
> gitorious.org[1: 2a02:c0:1014::1]: errno=Network is unreachable
>

$ git clone git://gitorious.org/raw2rgbpnm/raw2rgbpnm.git
Cloning into 'raw2rgbpnm'...
fatal: unable to connect to gitorious.org:
gitorious.org[0: 64.13.172.37]: errno=Connection refused
gitorious.org[1: 2a02:c0:1014::1]: errno=No route to host

$ git clone http://gitorious.org/raw2rgbpnm/raw2rgbpnm.git
Cloning into 'raw2rgbpnm'...
remote: Counting objects: 112, done.
remote: Compressing objects: 100% (109/109), done.
remote: Total 112 (delta 75), reused 0 (delta 0)
Receiving objects: 100% (112/112), 34.05 KiB | 0 bytes/s, done.
Resolving deltas: 100% (75/75), done.
Checking connectivity... done.

Looks like when gitorious was shut down and archived they turned off the
smart transport leaving just http, which makes sense.  You'll have to
update the recipe to set ;protocol=http.

Ross

--089e0122a0d4a2a799052d7afdf3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 7 March 2016 at 19:11, Mark Brown <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:mkbrown32@hotmail.com" target=3D"_blank">mkbrown32@hotmail.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-lef=
t-style:solid;padding-left:1ex"><div dir=3D"ltr">WARNING: Failed to fetch U=
RL git://<a href=3D"http://gitorious.org/raw2rgbpnm/raw2rgbpnm.git;protocol=
=3Dgit" target=3D"_blank">gitorious.org/raw2rgbpnm/raw2rgbpnm.git;protocol=
=3Dgit</a>, attempting MIRRORS if available<br>ERROR: Fetcher failure: Fetc=
h command failed with exit code 128, output:<br>Cloning into bare repositor=
y &#39;/home/bbusr/build/downloads/git2/gitorious.org.raw2rgbpnm.raw2rgbpnm=
.git&#39;...<br>fatal: unable to connect to <a href=3D"http://gitorious.org=
" target=3D"_blank">gitorious.org</a>:<br><a href=3D"http://gitorious.org" =
target=3D"_blank">gitorious.org</a>[0: 64.13.172.37]: errno=3DConnection re=
fused<br><a href=3D"http://gitorious.org" target=3D"_blank">gitorious.org</=
a>[1: 2a02:c0:1014::1]: errno=3DNetwork is unreachable</div></blockquote></=
div><br><div class=3D"gmail_extra">$ git clone git://<a href=3D"http://gito=
rious.org/raw2rgbpnm/raw2rgbpnm.git">gitorious.org/raw2rgbpnm/raw2rgbpnm.gi=
t</a></div><div class=3D"gmail_extra">Cloning into &#39;raw2rgbpnm&#39;...<=
/div><div class=3D"gmail_extra">fatal: unable to connect to <a href=3D"http=
://gitorious.org">gitorious.org</a>:</div><div class=3D"gmail_extra"><a hre=
f=3D"http://gitorious.org">gitorious.org</a>[0: 64.13.172.37]: errno=3DConn=
ection refused</div><div class=3D"gmail_extra"><a href=3D"http://gitorious.=
org">gitorious.org</a>[1: 2a02:c0:1014::1]: errno=3DNo route to host</div><=
div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">$ git clone =
<a href=3D"http://gitorious.org/raw2rgbpnm/raw2rgbpnm.git">http://gitorious=
.org/raw2rgbpnm/raw2rgbpnm.git</a></div><div class=3D"gmail_extra">Cloning =
into &#39;raw2rgbpnm&#39;...</div><div class=3D"gmail_extra">remote: Counti=
ng objects: 112, done.</div><div class=3D"gmail_extra">remote: Compressing =
objects: 100% (109/109), done.</div><div class=3D"gmail_extra">remote: Tota=
l 112 (delta 75), reused 0 (delta 0)</div><div class=3D"gmail_extra">Receiv=
ing objects: 100% (112/112), 34.05 KiB | 0 bytes/s, done.</div><div class=
=3D"gmail_extra">Resolving deltas: 100% (75/75), done.</div><div class=3D"g=
mail_extra">Checking connectivity... done.</div><div class=3D"gmail_extra">=
<br></div><div class=3D"gmail_extra">Looks like when gitorious was shut dow=
n and archived they turned off the smart transport leaving just http, which=
 makes sense.=C2=A0 You&#39;ll have to update the recipe to set ;protocol=
=3Dhttp.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extr=
a">Ross</div></div></div>

--089e0122a0d4a2a799052d7afdf3--
