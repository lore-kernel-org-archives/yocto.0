Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18623E00BC8; Tue, 14 Aug 2018 10:30:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
	[209.85.208.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5ABE3E009C2
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 10:30:54 -0700 (PDT)
Received: by mail-ed1-f67.google.com with SMTP id t2-v6so10524293edr.5
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 10:30:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=SRKFUTVpRI4KOtBiCalIv4MI81fv0roXiWpneudk+PI=;
	b=oRXop5ML0NCBnIunvDpq9wm60B8hDY4Zo2Sjff3qS+m6YhQp9LdrBCuOjx0k0n1MRp
	5Xswm0vE5IwIo+e4nHhHPkG1J2Lbrm/zoR6oEBOxveHmMJzIa+YUF9Pv70HH8+erFNRG
	Y7+8kx58fqVVgKuyxB6oPPYHLNE+86fp8I/P0F6CJLX5V11irGJXP3MoIwrzc7Oa0MOc
	n87DAcHGrPICEgltWBH8czX2TLW40c5SFiKKqAqXktQ0g3AsU74JZbv5ewDKeWHkXHoi
	G5v69PgN3ODIVF6iOyoEckQeHPfulMaQLQ9S0tKWYe4WmJGXNHcP3lKya5ozBhHiDN3b
	CJHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=SRKFUTVpRI4KOtBiCalIv4MI81fv0roXiWpneudk+PI=;
	b=jK6gqrQod0dU43somQX7Qs9RP9eO7fSu1GhYmDdpdFS8w4c5KJJmLywP+DBmKGMCbj
	RL51V9bEqY5uYDISJEnzuAU5zY9qf4Sn8t0MssZSBlxpG27xmJgjG5nPIcOX1CRqwGyA
	7P1mB/kXMPsmaNNO7smKhcvmStcOZhgOLExtLju8DQzd5MV1PKwBB0KGu6Ca2VcKn8Wp
	pzCigDpuermMlcoJm/eojJJtu2+nLmk6//5alzWS3nVfk7PKkoJy9aGJ+Fs9WJLmSD/3
	A4N2nohvJoFTWe0cPd/BhyKvG1cgbylAVvoKWEQ2MviWpMuX7Tt0pden/tz+CFVudzCM
	MRrA==
X-Gm-Message-State: AOUpUlEYI1W2zTMkCVQ7Nn+dC7SDxdXAaWcU27KHLCeAQaoF28RxjV7g
	4ihTMRCNjj6og491NfcoFie/wCGDAw5zSqJgn6I=
X-Google-Smtp-Source: AA+uWPwg8mUbOYOjnjQRkX2djj9YhBOB7hUCSZ5u5t8Fa6KLf1IMf1rP/HmXuv4BJhABrcQZ9RUrj5PRWd/piNH+HUg=
X-Received: by 2002:aa7:d1cb:: with SMTP id
	g11-v6mr27950871edp.163.1534267853453; 
	Tue, 14 Aug 2018 10:30:53 -0700 (PDT)
MIME-Version: 1.0
References: <1509905058-65701-1-git-send-email-yevgenyp@pointgrab.com>
	<14e3f1bc-7768-460c-e8fe-d696321d16f7@pointgrab.com>
In-Reply-To: <14e3f1bc-7768-460c-e8fe-d696321d16f7@pointgrab.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Tue, 14 Aug 2018 10:30:41 -0700
Message-ID: <CAFNP8OsKJOok3=RdBQCTd1AqSGVvf0xo1O2XRPdX2ttRe3a71Q@mail.gmail.com>
To: yevgenyp@pointgrab.com
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto-docs][PATCH] ref-manual: Removed misleading paragraph in siteinfo section
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
X-List-Received-Date: Tue, 14 Aug 2018 17:30:55 -0000
Content-Type: multipart/alternative; boundary="00000000000065411e05736892aa"

--00000000000065411e05736892aa
Content-Type: text/plain; charset="UTF-8"

Yevgeny and Richard,

See the siteinfo.bbclass section here -
https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#ref-classes-siteinfo
.

Paragraph removed.

Thanks,
Scott

On Tue, Aug 14, 2018 at 4:38 AM Yevgeny Popovych <yevgenyp@pointgrab.com>
wrote:

> Hello Scott.
>
> siteinfo was removed from base.bbclass by Richard Purdie in 2010
> (commit 185cb38f1319856b4bdaaf4d9a73b5056be53d54 in openembedded-core).
>
> Richard, can you confirm/reject this change?
>
> Thanks!
>
>
> On 11/05/2017 08:04 PM, Yevgeny Popovych wrote:
> > ..on the inclusion of siteinfo.bbclass in base.bbclass.
> > This is not true since 2010.
> >
> > Signed-off-by: Yevgeny Popovych <yevgenyp@pointgrab.com>
> > ---
> >  documentation/ref-manual/ref-classes.xml | 6 ------
> >  1 file changed, 6 deletions(-)
> >
> > diff --git a/documentation/ref-manual/ref-classes.xml
> b/documentation/ref-manual/ref-classes.xml
> > index 5961d3e..fe41f9e 100644
> > --- a/documentation/ref-manual/ref-classes.xml
> > +++ b/documentation/ref-manual/ref-classes.xml
> > @@ -3134,12 +3134,6 @@ This check was removed for YP 2.3 release
> >          and <filename><link
> linkend='var-SITEINFO_BITS'>SITEINFO_BITS</link></filename>
> >          that can be used elsewhere in the metadata.
> >      </para>
> > -
> > -    <para>
> > -        Because the
> > -        <link
> linkend='ref-classes-base'><filename>base</filename></link> class
> > -        includes the <filename>siteinfo</filename> class, it is always
> active.
> > -    </para>
> >  </section>
> >
> >  <section id='ref-classes-spdx'>
> >
>
> --
> Sincerely,
> Yevgeny Popovych
>

--00000000000065411e05736892aa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Yevgeny and Richard, <br></div><div><br></div><div>Se=
e the siteinfo.bbclass section here - <a href=3D"https://yoctoproject.org/d=
ocs/2.6/ref-manual/ref-manual.html#ref-classes-siteinfo">https://yoctoproje=
ct.org/docs/2.6/ref-manual/ref-manual.html#ref-classes-siteinfo</a>.</div><=
div><br></div><div>Paragraph removed.</div><div><br></div><div>Thanks, <br>=
</div><div>Scott<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr">On Tue, Aug 14, 2018 at 4:38 AM Yevgeny Popovych &lt;<a href=3D"mailto=
:yevgenyp@pointgrab.com">yevgenyp@pointgrab.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex">Hello Scott.<br>
<br>
siteinfo was removed from base.bbclass by Richard Purdie in 2010<br>
(commit 185cb38f1319856b4bdaaf4d9a73b5056be53d54 in openembedded-core).<br>
<br>
Richard, can you confirm/reject this change?<br>
<br>
Thanks!<br>
<br>
<br>
On 11/05/2017 08:04 PM, Yevgeny Popovych wrote:<br>
&gt; ..on the inclusion of siteinfo.bbclass in base.bbclass.<br>
&gt; This is not true since 2010.<br>
&gt; <br>
&gt; Signed-off-by: Yevgeny Popovych &lt;<a href=3D"mailto:yevgenyp@pointgr=
ab.com" target=3D"_blank">yevgenyp@pointgrab.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 documentation/ref-manual/ref-classes.xml | 6 ------<br>
&gt;=C2=A0 1 file changed, 6 deletions(-)<br>
&gt; <br>
&gt; diff --git a/documentation/ref-manual/ref-classes.xml b/documentation/=
ref-manual/ref-classes.xml<br>
&gt; index 5961d3e..fe41f9e 100644<br>
&gt; --- a/documentation/ref-manual/ref-classes.xml<br>
&gt; +++ b/documentation/ref-manual/ref-classes.xml<br>
&gt; @@ -3134,12 +3134,6 @@ This check was removed for YP 2.3 release<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 and &lt;filename&gt;&lt;link linkend=
=3D&#39;var-SITEINFO_BITS&#39;&gt;SITEINFO_BITS&lt;/link&gt;&lt;/filename&g=
t;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 that can be used elsewhere in the me=
tadata.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &lt;/para&gt;<br>
&gt; -<br>
&gt; -=C2=A0 =C2=A0 &lt;para&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 Because the<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;link linkend=3D&#39;ref-classes-base&=
#39;&gt;&lt;filename&gt;base&lt;/filename&gt;&lt;/link&gt; class<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 includes the &lt;filename&gt;siteinfo&lt;=
/filename&gt; class, it is always active.<br>
&gt; -=C2=A0 =C2=A0 &lt;/para&gt;<br>
&gt;=C2=A0 &lt;/section&gt;<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 &lt;section id=3D&#39;ref-classes-spdx&#39;&gt;<br>
&gt; <br>
<br>
-- <br>
Sincerely,<br>
Yevgeny Popovych<br>
</blockquote></div>

--00000000000065411e05736892aa--
