Return-Path: <btgoodwin@geontech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4832FE00E16; Fri,  2 Aug 2019 14:55:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.193 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
	[209.85.160.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3637E00E14
	for <yocto@yoctoproject.org>; Fri,  2 Aug 2019 14:55:36 -0700 (PDT)
Received: by mail-qt1-f193.google.com with SMTP id h21so75419231qtn.13
	for <yocto@yoctoproject.org>; Fri, 02 Aug 2019 14:55:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=geontech-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=slmCkAX4+lEEwZtryn/NDmZ3yaxp2Qy/sX0Wz8Jg2JA=;
	b=utH7L6WEH6nW/eZddp0XZdhIR2ssd7Ziah+wnNy1KLXjCJPOBn4yfrHHzxrngzGOTz
	ARf35/0DwhoSWHHFwrkngmkCZneyvLXIDuOgtPg9nZhKNmClO5IrfXd7+NIxoVCIy/2X
	G0UUUp0A6jioyJplgJ3j6LJTlsFqePBvqiIFPpnUw0Z4maYEXNUClG+YUbwGbiIPVjmU
	SiuC8Aw6yaU1Xy+7P95mBetJ0+pRj2m9yk6LUZAjsfY5d+5i0SkxSWDunlVfPuyA06p+
	qoRXKsAuThN0Ln/IkGdtlSqJNrfe8XwHqSr/Vho6FlcQ6gMe7FTlxGyqI2POAzE/DTyw
	PkCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=slmCkAX4+lEEwZtryn/NDmZ3yaxp2Qy/sX0Wz8Jg2JA=;
	b=VPSBuH59ho4kP3FlN9/UeC8htlaezSKV/uCXVOyY/hVBF8BLAyDvsqQhbGJ692bh4J
	+rd8Y2arOpA5pTLxsLhvClrOPF5XruvXSI0FD39Q5mUOueywuZQHCIvSTsPoxIJV5Y8K
	y2Rk4qPkbdCDV7zOfTyuTqYLQcTIksT5Gu1QSetveyo8Mg+xuxJnRcUGu+XTm4TSsjJf
	n6xRA1OTJbez4G5nYwXsbk9ULL0QonWrHX8eF7aDPRYo+p7yLkm5O1ldYs9r+nYObMgL
	ybdheI+jhYs4chcr1YDIPYVabw2BYji1NJXu2ZOTml2msBp4uSw9uQnmu6BeRlZXBN69
	EViQ==
X-Gm-Message-State: APjAAAVngqAuzZPklEwdcalIOmWhD2aAIe2INI/Dv7rciuQh/FfQwMmU
	nZfEJOCkE1dXiLivocNVH+98MrxW0/prFNT7YWoedDy3Fio=
X-Google-Smtp-Source: APXvYqyD1VmDZf+eNAflm4U6N9xWNlvXxzrfUwyrSpObfjD4i3wpx23Zzuq9fI/DEBJb9Hz12UgXcrQkw0YyJSBr7U4=
X-Received: by 2002:a0c:bd18:: with SMTP id
	m24mr100320925qvg.118.1564782936164; 
	Fri, 02 Aug 2019 14:55:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190730183621.26193-1-btgoodwin@geontech.com>
	<20190730183621.26193-2-btgoodwin@geontech.com>
	<fdbce8969ca1a4fe12e4dcf1abaae68d79da0075.camel@rpsys.net>
In-Reply-To: <fdbce8969ca1a4fe12e4dcf1abaae68d79da0075.camel@rpsys.net>
From: Thomas Goodwin <btgoodwin@geontech.com>
Date: Fri, 2 Aug 2019 17:55:25 -0400
Message-ID: <CABudRdzw1neniOu_d7KtmvPnB5pntz0jjrqwLOqjhwTK9ECHKw@mail.gmail.com>
To: Richard Purdie <rpurdie@rpsys.net>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto-autobuilder2][PATCH 2/3] Added remote distribution of config JSON files
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
X-List-Received-Date: Fri, 02 Aug 2019 21:55:38 -0000
Content-Type: multipart/alternative; boundary="0000000000000f9e59058f296bfe"

--0000000000000f9e59058f296bfe
Content-Type: text/plain; charset="UTF-8"

I'm not sure I follow.  This collects everything into the worker's
"builddir/yocto-autobuilder-helper" path (I think; I'm new to buildbot).

My aim was to let the buildbot master the chance to SCM the configuration
files apart from the helper's behavior which should otherwise be consistent
whether we're rebuilding for warrior or morty.  For us this is turning out
to not be "enough" since certain build targets don't exist between
different releases of Poky and we're held back by BSPs to certain releases,
so we need to decouple a bit further than this patch.  The issue could also
be solved with templates that dynamically point to other templates based on
the Force Build branch, revision, etc., but I'm looking for a more simple
approach than a recursive overlay.

Thanks again for all your help and feedback.

Cheers,

Thomas

On Fri, Aug 2, 2019 at 12:41 PM Richard Purdie <rpurdie@rpsys.net> wrote:

> On Tue, 2019-07-30 at 14:36 -0400, Thomas Goodwin wrote:
> > This feature/fix allows the worker to download the
> > autobuilder helper JSON files from the controller
> > rather than having to store them in the
> > yocto-autobuilder-helper repository.  The process
> > installs the file into the worker's
> > builddir/yocto-autobuilder-helper path.
> >
> > Signed-off-by: Thomas Goodwin <btgoodwin@geontech.com>
> > ---
> >  builders.py | 22 ++++++++++++++++++++++
> >  1 file changed, 22 insertions(+)
>
> I like the idea however this is going to break the autobuilders as they
> already use full paths in the variable.
>
> I've merged some of the other patches but this one will need a little
> further thought so we don't break the existing install.
>
> The existing code also allows for different path locations on
> individual workers (e.g. different username) which this would break.
>
> Cheers,
>
> Richard
>
>

--0000000000000f9e59058f296bfe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">I&#39;m not sure I follow.=C2=A0 This col=
lects everything into the worker&#39;s &quot;builddir/yocto-autobuilder-hel=
per&quot; path (I think; I&#39;m new to buildbot).<div><br></div><div>My ai=
m was to let the buildbot master the chance to SCM the configuration files =
apart from the helper&#39;s behavior which should otherwise be consistent w=
hether we&#39;re rebuilding for warrior or morty.=C2=A0=C2=A0For us this is=
 turning out to not be &quot;enough&quot; since certain build targets don&#=
39;t exist between different releases of Poky and we&#39;re held back by BS=
Ps to certain releases, so we need to decouple a bit further than this patc=
h.=C2=A0 The issue could also be solved with templates that dynamically poi=
nt to other templates based on the Force Build branch, revision, etc., but =
I&#39;m looking for a more simple approach than a recursive overlay.<input =
name=3D"virtru-metadata" type=3D"hidden" value=3D"{&quot;email-policy&quot;=
:{&quot;state&quot;:&quot;closed&quot;,&quot;expirationUnit&quot;:&quot;day=
s&quot;,&quot;disableCopyPaste&quot;:false,&quot;disablePrint&quot;:false,&=
quot;disableForwarding&quot;:false,&quot;enableNoauth&quot;:false,&quot;per=
sistentProtection&quot;:false,&quot;expandedWatermarking&quot;:false,&quot;=
expires&quot;:false,&quot;isManaged&quot;:false},&quot;attachments&quot;:{}=
,&quot;compose-id&quot;:&quot;1&quot;,&quot;compose-window&quot;:{&quot;sec=
ure&quot;:false}}"></div><div><br>Thanks again for all your help and feedba=
ck.</div><div><br></div><div>Cheers,</div><div><br></div><div>Thomas</div><=
/div><br><div class=3D"gmail_quote" style=3D""><div dir=3D"ltr" class=3D"gm=
ail_attr">On Fri, Aug 2, 2019 at 12:41 PM Richard Purdie &lt;<a href=3D"mai=
lto:rpurdie@rpsys.net">rpurdie@rpsys.net</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">On Tue, 2019-07-30 at 14:36 -0400, =
Thomas Goodwin wrote:<br>
&gt; This feature/fix allows the worker to download the<br>
&gt; autobuilder helper JSON files from the controller<br>
&gt; rather than having to store them in the<br>
&gt; yocto-autobuilder-helper repository.=C2=A0 The process<br>
&gt; installs the file into the worker&#39;s<br>
&gt; builddir/yocto-autobuilder-helper path.<br>
&gt; <br>
&gt; Signed-off-by: Thomas Goodwin &lt;<a href=3D"mailto:btgoodwin@geontech=
.com" target=3D"_blank">btgoodwin@geontech.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 builders.py | 22 ++++++++++++++++++++++<br>
&gt;=C2=A0 1 file changed, 22 insertions(+)<br>
<br>
I like the idea however this is going to break the autobuilders as they<br>
already use full paths in the variable.<br>
<br>
I&#39;ve merged some of the other patches but this one will need a little<b=
r>
further thought so we don&#39;t break the existing install.<br>
<br>
The existing code also allows for different path locations on<br>
individual workers (e.g. different username) which this would break.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
</blockquote></div></div>

--0000000000000f9e59058f296bfe--
