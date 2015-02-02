Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5F69E008A6; Mon,  2 Feb 2015 08:48:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.47 listed in list.dnswl.org]
Received: from mail-yh0-f47.google.com (mail-yh0-f47.google.com
	[209.85.213.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24892E00824
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 08:48:47 -0800 (PST)
Received: by mail-yh0-f47.google.com with SMTP id z6so16398422yhz.6
	for <yocto@yoctoproject.org>; Mon, 02 Feb 2015 08:48:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=I56+HfKaX0j9f7Z8Cxmvk0kKFVneSe0RWmMuymSDn1U=;
	b=kXTWXW2+LgX0vkN1N6hetjnBfNEfY9ElZ4VRKlvYL4qfs7VWlOS6AIxX9tQbqB+E4y
	T6sbf5kB88MQySSPHH8kym87NZAbkcoP/Pn4VBJtrhqF4RZ6+uuhoHMMDqGumAJX63qs
	OrkyHGNB/SFNjunrdG9P43muv9+sib9miL8jY6T45aTUaVOh1iygDRkvJc7RFVNgt+Wv
	ZLpWv10UOBT+wSDoiFJnHSFpdbAhiUmiCgQVi3zBe9qCqJe90H/+iWsVafE7lhUX2tNz
	hs6DdzSec/V4wc2dDZ9GsD+yLj6No4UcuvN132LQ2LPZKHQashe9RW8jxSvcb9uILQVH
	fR3w==
X-Received: by 10.236.21.234 with SMTP id r70mr8470962yhr.70.1422895726775;
	Mon, 02 Feb 2015 08:48:46 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.170.205.88 with HTTP; Mon, 2 Feb 2015 08:48:26 -0800 (PST)
In-Reply-To: <54CFA908.7010507@mlbassoc.com>
References: <54CFA908.7010507@mlbassoc.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Mon, 2 Feb 2015 09:48:26 -0700
X-Google-Sender-Auth: FGxqu9NuwE49z8QODqWbO3ZtGF0
Message-ID: <CABcZANmY5-_wgSZp2xb=20Og27mcDJ_e7_QFZHGnHV67L1vr_g@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: sstate management
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
X-List-Received-Date: Mon, 02 Feb 2015 16:48:52 -0000
Content-Type: multipart/alternative; boundary=089e01536fcc58d34a050e1dbaba

--089e01536fcc58d34a050e1dbaba
Content-Type: text/plain; charset=UTF-8

On Mon, Feb 2, 2015 at 9:42 AM, Gary Thomas <gary@mlbassoc.com> wrote:

> * The sstate-cache for a given build/target seems to grow
>   without bounds.  I have one build which I've been reusing
>   since last November has grown to 62GB.  A very similar
>   build which hasn't see quite so many 'bakes' is only 27GB.
>
>   Is there some maintenance to be done on the sstate-cache?
>   I'm thinking I want to set up a shared cache which might
>   last for a long time and I would like to only keep the bits
>   that are really needed.
>

In the past i've either used sstate-cache-management.sh or ensured that
SSTATE_DIR is on a mount with atime enabled and just periodically wiped
anything that hasn't been accessed in over a week.

* The second operational question I have is if I have a shared
>   sstate cache and I make some sort of build, what is the best
>   way (if any) to share any newly created objects so that my
>   other builds can make use of them?
>

I doubt there's a "best" on that. Personally I either use a shared
filesystem path (e.g. nfs) or hook up rsync.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--089e01536fcc58d34a050e1dbaba
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Mon, Feb 2, 2015 at 9:42 AM, Gary Thomas <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":1r0" class=3D"a3=
s" style=3D"overflow:hidden">* The sstate-cache for a given build/target se=
ems to grow<br>
=C2=A0 without bounds.=C2=A0 I have one build which I&#39;ve been reusing<b=
r>
=C2=A0 since last November has grown to 62GB.=C2=A0 A very similar<br>
=C2=A0 build which hasn&#39;t see quite so many &#39;bakes&#39; is only 27G=
B.<br>
<br>
=C2=A0 Is there some maintenance to be done on the sstate-cache?<br>
=C2=A0 I&#39;m thinking I want to set up a shared cache which might<br>
=C2=A0 last for a long time and I would like to only keep the bits<br>
=C2=A0 that are really needed.<br></div></blockquote><div><br></div><div>In=
 the past i&#39;ve either used sstate-cache-management.sh or ensured that S=
STATE_DIR is on a mount with atime enabled and just periodically wiped anyt=
hing that hasn&#39;t been accessed in over a week.</div><div><br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex"><div id=3D":1r0" class=3D"a3s" style=3D"overflow=
:hidden">
* The second operational question I have is if I have a shared<br>
=C2=A0 sstate cache and I make some sort of build, what is the best<br>
=C2=A0 way (if any) to share any newly created objects so that my<br>
=C2=A0 other builds can make use of them?</div></blockquote></div><br>I dou=
bt there&#39;s a &quot;best&quot; on that. Personally I either use a shared=
 filesystem path (e.g. nfs) or hook up rsync.<br>-- <br><div class=3D"gmail=
_signature">Christopher Larson<br>clarson at kergoth dot com<br>Founder - B=
itBake, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software E=
ngineer, Mentor Graphics</div>
</div></div>

--089e01536fcc58d34a050e1dbaba--
