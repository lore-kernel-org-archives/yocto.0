Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f172.google.com (mail-lb0-f172.google.com
	[209.85.217.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6A0AE003E3
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2013 22:50:42 -0700 (PDT)
Received: by mail-lb0-f172.google.com with SMTP id v20so869986lbc.3
	for <yocto@yoctoproject.org>; Wed, 03 Jul 2013 22:50:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=Pp6YkorR99KiPAZAd4YAVhDuGLPfAK0A7f99YjWQcSk=;
	b=Q+PBIs0d87Zx30pBHRO+oT+k5nMnu1sweQWc8wGIwshFR4XEuB0V+QrNoshSohgFBN
	Lfuthxo4ON3UB4WmuimfURf8kyNZYuWE+7QktOVbY/Wd/h9dKISML0vH7gjVit5m+MkJ
	U3ne3J/OMyD93XVockq/PT88ag2ZGNXYlsOk4RMG1oOvmocFQCjR3Woy2eOooWHq2LTM
	veTF+IGzM/UsI81CHXnD8WgjS+l9r+x294uWh67wwLZl1jMImdSgsojzqdXHf6THHmSS
	S1mNMjk6+n8pKBSxHu8Bn6J6hk5/rQRtDVzVlH2rJV/pB/7rrosVIRdzTdsyH3gPTXik
	PdLA==
X-Received: by 10.112.140.231 with SMTP id rj7mr2808500lbb.16.1372917041610;
	Wed, 03 Jul 2013 22:50:41 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.3.5 with HTTP; Wed, 3 Jul 2013 22:50:20 -0700 (PDT)
In-Reply-To: <CALmOhgk03z=B1aAuav0DmN31FW_EhnV9mXMbxDHKtpF4-0RmPQ@mail.gmail.com>
References: <CALmOhgk03z=B1aAuav0DmN31FW_EhnV9mXMbxDHKtpF4-0RmPQ@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 3 Jul 2013 22:50:20 -0700
X-Google-Sender-Auth: tDtGxtNR1kGzwydsIezSrGnSolQ
Message-ID: <CABcZANmw1DkHKxctfeesF8RwN_AmG0iuxV-dHGnq-t_MO2fYJA@mail.gmail.com>
To: Trevor Woerner <trevor.woerner@linaro.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: sstate-cache hit/miss
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
X-List-Received-Date: Thu, 04 Jul 2013 05:50:44 -0000
Content-Type: multipart/alternative; boundary=001a11c26a3092476c04e0a9286a

--001a11c26a3092476c04e0a9286a
Content-Type: text/plain; charset=UTF-8

On Wed, Jul 3, 2013 at 8:54 PM, Trevor Woerner <trevor.woerner@linaro.org>wrote:

> Is there a simple way to determine how well (or not) the sstate-cache
> is being hit during a build?
>

It's not ideal, but we're using
http://git.yoctoproject.org/cgit/cgit.cgi/meta-mentor/tree/classes/buildstats-summary.bbclass
at
the moment, which displays, at the end of a build, the number of
do_populate_sysroot tasks run vs do_populate_sysroot_setscene, as an
indicator of what % of recipes were built from scratch.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a11c26a3092476c04e0a9286a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On W=
ed, Jul 3, 2013 at 8:54 PM, Trevor Woerner <span dir=3D"ltr">&lt;<a href=3D=
"mailto:trevor.woerner@linaro.org" target=3D"_blank">trevor.woerner@linaro.=
org</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div id=3D":5h" style=3D"overflow:hidden">Is there a simpl=
e way to determine how well (or not) the sstate-cache<br>


is being hit during a build?<br></div></blockquote><div><br></div><div styl=
e>It&#39;s not ideal, but we&#39;re using=C2=A0<a href=3D"http://git.yoctop=
roject.org/cgit/cgit.cgi/meta-mentor/tree/classes/buildstats-summary.bbclas=
s">http://git.yoctoproject.org/cgit/cgit.cgi/meta-mentor/tree/classes/build=
stats-summary.bbclass</a>=C2=A0at the moment, which displays, at the end of=
 a build, the number of do_populate_sysroot tasks run vs do_populate_sysroo=
t_setscene, as an indicator of what % of recipes were built from scratch.</=
div>

</div>-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - =
BitBake, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software =
Engineer, Mentor Graphics
</div></div>

--001a11c26a3092476c04e0a9286a--
