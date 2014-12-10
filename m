Return-Path: <alexandru.damian@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F5C7E00930; Wed, 10 Dec 2014 03:14:20 -0800 (PST)
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
	*      [209.85.218.45 listed in list.dnswl.org]
Received: from mail-oi0-f45.google.com (mail-oi0-f45.google.com
	[209.85.218.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41581E00922
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 03:14:14 -0800 (PST)
Received: by mail-oi0-f45.google.com with SMTP id a141so1836296oig.4
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 03:14:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=fQNiYvJANIVVcYugHRAiTy/jdTgLWG72Tcv4XQjSQSw=;
	b=fjBZ0yZWnevFqhL3mK94uKaPNgn5yFigopYpcI6hnfVrQyR/oaLsGIDBceB3FBwhgw
	3L0/o22+CRIdpEXZh/ktnrB3vCXvZmLRiKHEd/rWVHW9KqzhKaILlC0fbgme3xQSeWw+
	EL09pYj+Yuj3fVvCYAdAEAD58W0LIzgoftCe3KgMlrqRb4yqv0WI2Q5BWzJPXjfyIw8g
	Rr26XLYNgQq8atcOxKXS3ntq2nuVDHLiUUod/4P0xfsf26XN/p1/2aw4xqXwi/EwHvg1
	n1LlXdtWkle2pdKbf51y8JwHU/y6UgLNdpo7uoXV+2xXOKW4n4GormZ8zClOx7lXZ1wU
	vTsw==
X-Gm-Message-State: ALoCoQlyxLUp4oInLUEg512aSoFmpwcoqIOruYN2G+vAuGf43tmnoWtjsisNXnenQGWVk/pq2Ylj
X-Received: by 10.202.66.70 with SMTP id p67mr2110591oia.10.1418210053626;
	Wed, 10 Dec 2014 03:14:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.134.71 with HTTP; Wed, 10 Dec 2014 03:13:53 -0800 (PST)
In-Reply-To: <CAPhnLPAJhemtHnbRQcfQrJc--xjgqS47MkA96YPKFwaBueYM0w@mail.gmail.com>
References: <CAJ2CSBtOSTYuXDyn885Z2o-h05Rob-R2Q6CB85BEJVbXhtcdjw@mail.gmail.com>
	<CAPhnLPAJhemtHnbRQcfQrJc--xjgqS47MkA96YPKFwaBueYM0w@mail.gmail.com>
From: "Damian, Alexandru" <alexandru.damian@intel.com>
Date: Wed, 10 Dec 2014 11:13:53 +0000
Message-ID: <CAJ2CSBsau7yx2LCnw4nOu5c0vTRayJgZcfNEiMXKqm6U59anEg@mail.gmail.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: RFC - enable toaster on the autobuilder
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
X-List-Received-Date: Wed, 10 Dec 2014 11:14:20 -0000
Content-Type: multipart/alternative; boundary=001a113dd27e76bd220509dac23d

--001a113dd27e76bd220509dac23d
Content-Type: text/plain; charset=UTF-8

Hi,

Thanks for the quick reply -

yes, Toaster needs buildhistory; it also needs the "toaster" bbclass in the
INHERIT list.

I'll make the changes and re-submit.

Cheers,
Alex

On Tue, Dec 9, 2014 at 6:07 PM, Flanagan, Elizabeth <
elizabeth.flanagan@intel.com> wrote:

> A few initial comments.
>
> TOASTER_UPLOADURL needs to be added to
> config/autobuilder.conf.example. It would also be nice if it was added
> to docs. Please set it to a localhost URL and comment it out for the
> time being.
>
> Also, can we make it TOASTER_UPLOAD_URL. It matches my naming
> convention for config strings a bit closer.
>
> If toaster needs buildhistory, I'm going to have to do some work on
> getting buildhistory to setup automatically on an autobuilder install
> (or at least document how to do it).
>
> -b
>
> On Tue, Dec 9, 2014 at 8:42 AM, Damian, Alexandru
> <alexandru.damian@intel.com> wrote:
> > Hello,
> >
> > I'm sending a patchset to enable Toaster logging for the autobuilder -
> can
> > you please review and comment ?
> >
> > I have pending Bitbake patchset (poky-contrib:adamian/devel-settings)
> > Bitbake that adds two toaster-on-autobuilder related features:
> > 1. build event logging flag (-w) will write an UI event log file
> > 2. toaster end point that receives a log file over a HTTP POST request
> and
> > loads the data in the toaster database
> >
> > Based on this approach, I've created an autobuilder patchset that
> enables 1.
> > at all times, and 2. uploads the data to a Toaster server if such server
> is
> > specified in the build configuration
> >
> > Can you please review:
> >
> > poky-contrib: adamian/autobuilder-enable-toaster
> >
> >
> > Thanks,
> > Alex
> >
> > --
> > Alex Damian
> > Yocto Project
> > SSG / OTC
> >
> > ---------------------------------------------------------------------
> > Intel Corporation (UK) Limited
> > Registered No. 1134945 (England)
> > Registered Office: Pipers Way, Swindon SN3 1RJ
> > VAT No: 860 2173 47
> >
> > This e-mail and any attachments may contain confidential material for
> > the sole use of the intended recipient(s). Any review or distribution
> > by others is strictly prohibited. If you are not the intended
> > recipient, please contact the sender and delete all copies.
>
>
>
> --
> Elizabeth Flanagan
> Yocto Project
> Build and Release
>



-- 
Alex Damian
Yocto Project
SSG / OTC

--001a113dd27e76bd220509dac23d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:tahoma,s=
ans-serif">Hi,<br><br>Thanks for the quick reply -<br><br>yes, Toaster need=
s buildhistory; it also needs the &quot;toaster&quot; bbclass in the INHERI=
T list.<br><br></div><div class=3D"gmail_default" style=3D"font-family:taho=
ma,sans-serif">I&#39;ll make the changes and re-submit.<br></div><div class=
=3D"gmail_default" style=3D"font-family:tahoma,sans-serif"><br>Cheers,<br>A=
lex<br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote=
">On Tue, Dec 9, 2014 at 6:07 PM, Flanagan, Elizabeth <span dir=3D"ltr">&lt=
;<a href=3D"mailto:elizabeth.flanagan@intel.com" target=3D"_blank">elizabet=
h.flanagan@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">A few initial comments.<br>
<br>
TOASTER_UPLOADURL needs to be added to<br>
config/autobuilder.conf.example. It would also be nice if it was added<br>
to docs. Please set it to a localhost URL and comment it out for the<br>
time being.<br>
<br>
Also, can we make it TOASTER_UPLOAD_URL. It matches my naming<br>
convention for config strings a bit closer.<br>
<br>
If toaster needs buildhistory, I&#39;m going to have to do some work on<br>
getting buildhistory to setup automatically on an autobuilder install<br>
(or at least document how to do it).<br>
<br>
-b<br>
<div><div class=3D"h5"><br>
On Tue, Dec 9, 2014 at 8:42 AM, Damian, Alexandru<br>
&lt;<a href=3D"mailto:alexandru.damian@intel.com">alexandru.damian@intel.co=
m</a>&gt; wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; I&#39;m sending a patchset to enable Toaster logging for the autobuild=
er - can<br>
&gt; you please review and comment ?<br>
&gt;<br>
&gt; I have pending Bitbake patchset (poky-contrib:adamian/devel-settings)<=
br>
&gt; Bitbake that adds two toaster-on-autobuilder related features:<br>
&gt; 1. build event logging flag (-w) will write an UI event log file<br>
&gt; 2. toaster end point that receives a log file over a HTTP POST request=
 and<br>
&gt; loads the data in the toaster database<br>
&gt;<br>
&gt; Based on this approach, I&#39;ve created an autobuilder patchset that =
enables 1.<br>
&gt; at all times, and 2. uploads the data to a Toaster server if such serv=
er is<br>
&gt; specified in the build configuration<br>
&gt;<br>
&gt; Can you please review:<br>
&gt;<br>
&gt; poky-contrib: adamian/autobuilder-enable-toaster<br>
&gt;<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Alex<br>
&gt;<br>
&gt; --<br>
&gt; Alex Damian<br>
&gt; Yocto Project<br>
&gt; SSG / OTC<br>
&gt;<br>
</div></div>&gt; ----------------------------------------------------------=
-----------<br>
&gt; Intel Corporation (UK) Limited<br>
&gt; Registered No. 1134945 (England)<br>
&gt; Registered Office: Pipers Way, Swindon SN3 1RJ<br>
&gt; VAT No: 860 2173 47<br>
&gt;<br>
&gt; This e-mail and any attachments may contain confidential material for<=
br>
&gt; the sole use of the intended recipient(s). Any review or distribution<=
br>
&gt; by others is strictly prohibited. If you are not the intended<br>
&gt; recipient, please contact the sender and delete all copies.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
<br>
--<br>
Elizabeth Flanagan<br>
Yocto Project<br>
Build and Release<br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div clas=
s=3D"gmail_signature"><div dir=3D"ltr">Alex Damian<div>Yocto Project<br></d=
iv><div>SSG / OTC=C2=A0</div></div></div>
</div>

--001a113dd27e76bd220509dac23d--
