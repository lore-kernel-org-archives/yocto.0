Return-Path: <krussell7711@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59733E01243; Thu, 11 Aug 2016 14:14:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bkylerussell[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.182 listed in list.dnswl.org]
Received: from mail-yb0-f182.google.com (mail-yb0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28D5AE01239
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 14:14:49 -0700 (PDT)
Received: by mail-yb0-f182.google.com with SMTP id x196so2775341ybe.1
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 14:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=iHhX+k+4Meyc2P18DobxUgF7+BC9Rm5aqDphGA1yT3E=;
	b=iZdMbf4d3OO83oZ8yujbRNQOlqj72xVeXe5YUJixUJdrgWECemV67rHXV+AeIIWLol
	b4/6fvx7bWoO6XGBfls+RCMQqu3NEHwYQPOqS6CA90TmaEVr8/mNDAlX2LRdFzyCtTaZ
	aoxFXzSH6ycJ6Nq/rR+fF58T3cR7fZe+5yDJ3OqwvgorHwnZtWZu1nG9JhO4PYvTkKY4
	DHp3y5EQtyX2ylWvN2niAvvVkUA6gK8tHbep+4cmZP8Ozs7A5Q1I+3cHY7KbFX6A2Ntj
	DaNUUx4q3d983ybR1e9iMKxvLk9bhEp+tNiTuRX65JhJSruZrvQ/XT/xQcsYCo1QGH6y
	+IWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=iHhX+k+4Meyc2P18DobxUgF7+BC9Rm5aqDphGA1yT3E=;
	b=B7n9JjWmSiEZluPN6EJjMLZek6lCQ3+flhsW87Y1JYZgE6fufTiPp1nYFBAGlNbhE/
	8UWaL/UK7VuAy+//EAO6fq2v9YQqHLnZScBiqWzRFx+jxqWOUtbEmalkYyKAj0CO8zro
	F4Be3DL36jqYFsraBRE7/+YawpnonD93weAFrPF2ucH032XFcAntx2u0rcC0O0zGWNpT
	iUbQ2IaN85XfDJ3pzFwY5ko5CIlug2H/+1dG7WcJ76C+vmnSg6dNhsQbUHIfUQtRWVNf
	0Y1ToQQOQ51TCXZbLyy5caUi0LCgv0pZ7pkmfKbXcvPXh1ZRlTM/0Iebl/PCQH9pRv99
	kmhA==
X-Gm-Message-State: AEkoousMBsD0xOGal4pLKRoqWIBY3racatnJDydh8jWJzHdWAKhVUPycsUO3P0ojBStrK/u/qSzplaLDlLzjeA==
X-Received: by 10.37.34.3 with SMTP id i3mr7690795ybi.143.1470950088226; Thu,
	11 Aug 2016 14:14:48 -0700 (PDT)
MIME-Version: 1.0
Sender: krussell7711@gmail.com
Received: by 10.129.132.20 with HTTP; Thu, 11 Aug 2016 14:14:27 -0700 (PDT)
In-Reply-To: <CAMKF1sqbt7sqTjys_B5+vfXhNoXzzQLSL_tO3j_Xb7Dq-FZh3g@mail.gmail.com>
References: <1470052915-2839-1-git-send-email-bkylerussell@gmail.com>
	<CAJTo0LZKE9cf8i5x2Cz7AjT3ve_BVFTcMbLhHa8Ys+bkaz+BVA@mail.gmail.com>
	<CAFrQVPPN3iVVakjYLGOBnP=rc5oeO40SfEV5s6tyE4jiN9Z_eA@mail.gmail.com>
	<CAMKF1sqbt7sqTjys_B5+vfXhNoXzzQLSL_tO3j_Xb7Dq-FZh3g@mail.gmail.com>
From: Kyle Russell <bkylerussell@gmail.com>
Date: Thu, 11 Aug 2016 17:14:27 -0400
X-Google-Sender-Auth: yhZVXVJzDtvtQtpnLAXFIHC-4J4
Message-ID: <CAFrQVPNSvxoiyZ9Y7UZZhArG3VLT5CPfOUcdd0fgqrJPL-_nDQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta][PATCH v2] python-3.4-manifest: Add some missing RDEPENDS
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
X-List-Received-Date: Thu, 11 Aug 2016 21:14:53 -0000
Content-Type: multipart/alternative; boundary=001a11c156bc7dbb960539d24152

--001a11c156bc7dbb960539d24152
Content-Type: text/plain; charset=UTF-8

In case anyone is interested, I posted an update for both the script and
.inc to openembedded-core (which now has master at python 3.5), but it
doesn't seem to have gone anywhere yet.

http://lists.openembedded.org/pipermail/openembedded-core/2016-August/124672.html

On Mon, Aug 1, 2016 at 9:56 AM, Khem Raj <raj.khem@gmail.com> wrote:

> and when patch is ready send it to openembedded-core ml
>
> On Mon, Aug 1, 2016 at 6:49 AM, Kyle Russell <bkylerussell@gmail.com>
> wrote:
> > Well, that makes sense.  I'm just tripping all over this one.
> >
> > On Mon, Aug 1, 2016 at 8:29 AM, Burton, Ross <ross.burton@intel.com>
> wrote:
> >>
> >>
> >> On 1 August 2016 at 13:01, Kyle Russell <bkylerussell@gmail.com> wrote:
> >>>
> >>>  scripts/contrib/python/generate-manifest-3.4.py | 10 +++++-----
> >>
> >>
> >> Sorry, but you need to edit the script and then run the script, so the
> >> patch contains both the script and inc file changes.
> >>
> >> Ross
> >
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--001a11c156bc7dbb960539d24152
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">In case anyone is interested, I posted an update for both =
the script and .inc to openembedded-core (which now has master at python 3.=
5), but it doesn&#39;t seem to have gone anywhere yet.<div><br></div><div><=
a href=3D"http://lists.openembedded.org/pipermail/openembedded-core/2016-Au=
gust/124672.html">http://lists.openembedded.org/pipermail/openembedded-core=
/2016-August/124672.html</a><br></div></div><div class=3D"gmail_extra"><br>=
<div class=3D"gmail_quote">On Mon, Aug 1, 2016 at 9:56 AM, Khem Raj <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.=
khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">and =
when patch is ready send it to openembedded-core ml<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On Mon, Aug 1, 2016 at 6:49 AM, Kyle Russell &lt;<a href=3D"mailto:bkylerus=
sell@gmail.com">bkylerussell@gmail.com</a>&gt; wrote:<br>
&gt; Well, that makes sense.=C2=A0 I&#39;m just tripping all over this one.=
<br>
&gt;<br>
&gt; On Mon, Aug 1, 2016 at 8:29 AM, Burton, Ross &lt;<a href=3D"mailto:ros=
s.burton@intel.com">ross.burton@intel.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On 1 August 2016 at 13:01, Kyle Russell &lt;<a href=3D"mailto:bkyl=
erussell@gmail.com">bkylerussell@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 scripts/contrib/python/<a href=3D"http://generate-manife=
st-3.4.py" rel=3D"noreferrer" target=3D"_blank">generat<wbr>e-manifest-3.4.=
py</a> | 10 +++++-----<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Sorry, but you need to edit the script and then run the script, so=
 the<br>
&gt;&gt; patch contains both the script and inc file changes.<br>
&gt;&gt;<br>
&gt;&gt; Ross<br>
&gt;<br>
&gt;<br>
&gt;<br>
</div></div><div class=3D"HOEnZb"><div class=3D"h5">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
&gt;<br>
</div></div></blockquote></div><br></div>

--001a11c156bc7dbb960539d24152--
