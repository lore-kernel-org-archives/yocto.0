Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BF2DE004FF; Tue, 22 Jul 2014 08:44:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f174.google.com (mail-lb0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6FCFE0074B
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 08:44:32 -0700 (PDT)
Received: by mail-lb0-f174.google.com with SMTP id c11so6229970lbj.33
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 08:44:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=gRtejsU3Cy77yWbR1K6tYTKTm/xC9ob2FDFLC4ZmSm0=;
	b=pKTFEVKMhUNzj2BMTDbVtWAislUiiIaJ2O+FYW1HvQsH4RrleYQObArNp1bhDFIaD0
	75F51ymujAmbNJA2kPprf5oWun8XKK+KPS0g7IESzsJN+CA+gfsQIHt52uW47avfCY5q
	ZaicFrMh7TFWpTswI96pZMF+jb+i+AUv71er9FdCq3w7jCOg0V6gOLhStsiVuxiGDWkH
	l/GXIYIn+lgNfbW3nT/rYEq5ySIU9fudayc3EiaXSwOFZIk4QSVspCw+ofB+ri1QHImY
	qKfx5ixam12pwiVfzhQDhy4FxjNyaWmY934+6yHl+wiozGkm/7QeApb3KHdeYPGRiYFw
	2aLg==
X-Received: by 10.112.42.45 with SMTP id k13mr12094202lbl.88.1406043871323;
	Tue, 22 Jul 2014 08:44:31 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.63.72 with HTTP; Tue, 22 Jul 2014 08:44:11 -0700 (PDT)
In-Reply-To: <1406029381.16746.16.camel@localhost.localdomain>
References: <1406029381.16746.16.camel@localhost.localdomain>
From: Christopher Larson <clarson@kergoth.com>
Date: Tue, 22 Jul 2014 08:44:11 -0700
X-Google-Sender-Auth: iscmN9X38FdJ5cxHP4vFt0YbHA8
Message-ID: <CABcZANk2U6p4RzqNF8WptVgpZ63MVDTLsgHY36__W4bB2vK-RQ@mail.gmail.com>
To: maciej.borzecki@open-rnd.pl
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: read only rootfs & systemd
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
X-List-Received-Date: Tue, 22 Jul 2014 15:44:45 -0000
Content-Type: multipart/alternative; boundary=001a113364207d2c5f04feca1906

--001a113364207d2c5f04feca1906
Content-Type: text/plain; charset=UTF-8

On Tue, Jul 22, 2014 at 4:43 AM, Maciek Borzecki <
maciej.borzecki@open-rnd.pl> wrote:

> Is read-only-rootfs supported on systemd setups?
>
> The current dev manual is not clear about this. Also in image.bbclass
> there are comments that read_only_rootfs_hook supports only sysvinit
> setups.
>

Not in oe-core, no. https://github.com/MentorEmbedded/meta-ro-rootfs is how
we're handling it at mentor today, we haven't gotten around to pursuing an
upstream solution, whether integration of this or something else, as of
yet. If you follow the instructions at
https://github.com/MentorEmbedded/meta-ro-rootfs#usage it should work fine
for you.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a113364207d2c5f04feca1906
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, Jul 22, 2014 at 4:43 AM, Maciek Borzecki <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:maciej.borzecki@open-rnd.pl" target=3D"_blank">maciej.borzeck=
i@open-rnd.pl</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div id=3D":ov" class=3D"=
" style=3D"overflow:hidden">Is read-only-rootfs supported on systemd setups=
?<br>

<br>
The current dev manual is not clear about this. Also in image.bbclass<br>
there are comments that read_only_rootfs_hook supports only sysvinit<br>
setups.</div></blockquote></div><br></div><div class=3D"gmail_extra">Not in=
 oe-core, no. <a href=3D"https://github.com/MentorEmbedded/meta-ro-rootfs">=
https://github.com/MentorEmbedded/meta-ro-rootfs</a> is how we&#39;re handl=
ing it at mentor today, we haven&#39;t gotten around to pursuing an upstrea=
m solution, whether integration of this or something else, as of yet. If yo=
u follow the instructions at <a href=3D"https://github.com/MentorEmbedded/m=
eta-ro-rootfs#usage">https://github.com/MentorEmbedded/meta-ro-rootfs#usage=
</a> it should work fine for you.<br>

-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics
</div></div>

--001a113364207d2c5f04feca1906--
