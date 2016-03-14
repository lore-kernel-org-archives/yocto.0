Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 817A8E00D55; Mon, 14 Mar 2016 08:57:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BBF1E00C23
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 08:57:44 -0700 (PDT)
Received: by mail-io0-f178.google.com with SMTP id g203so227701173iof.2
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 08:57:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kergoth-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=x9nUiggbYjqlrRIvSxn+RxIf0Rn74H0fut8qkenm8EQ=;
	b=e9H7rBg0ZD1QOr137G5t6UjTB2vQ8aj36PRTv9pKVRU2m+e0UTK+bhXlsxHs1Af+fR
	xKTyiUwZ4ztmjQGawBeLr3UKlg6riOtUd+VnTVZfa5oFKB5c4b5G3Kh9ZFQdDLeYS0Fh
	vWp4NSHb4oU/75S3j2Qns4TNFwEBvDkvTl55dlsSmCNtsW3MO7Oyg5vRJ5+cAJdYQQ5b
	VxdGA0q5Wzt3LazKDN6JsXo+0qJ38aWmsU4MchXBUtPVXIrhVzsedD4vipzvm9fjPKHd
	sZX0y5Dgd0jKBC1VqoXdJqywDBusuHRIRmqNK6r0oluvhWJqpFkiBDoAk7nAeYXLq0oE
	DVzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=x9nUiggbYjqlrRIvSxn+RxIf0Rn74H0fut8qkenm8EQ=;
	b=OMBObXwhewOGmW3jkMtNDeZzjiQsMaQbwj3eWlofiDytpjFvt6fmjKYYyGPL2oqs1M
	lGB+dWmbIrjCyx6ghdfHzJR/b4o0bDa3JP4lLotSyA/uhRHV7fOJWAtlNkWkdC/1Sedi
	SFqbwQjTgX4HI0dTgfhj4NCy0bEKKpxg2PeddrGF5UckcDWftXxnaSXY857RSjZEZxkh
	omAmiXzrZb5nHhQ2+zQCZv6QuqWi9YnuyItDyWCTGaHHRlA4WpmwKInFwXLnz8oWNDSI
	givj61zbeNRp7J359wM/R+8CedBUyliMGlA5Fl9OrmSXnkTLSvu6xJPndeg3V5wmvgrX
	uA0w==
X-Gm-Message-State: AD7BkJLFa4ZnjOgh7IirBB0e9LAXYYN8uzq2UYAj5i+shQ3uiDu2Tj3RsJ1Hb7ySVjJCfA6zhJfgP5cHyysvCA==
X-Received: by 10.107.169.68 with SMTP id s65mr24872969ioe.126.1457971064285; 
	Mon, 14 Mar 2016 08:57:44 -0700 (PDT)
MIME-Version: 1.0
References: <56E6B182.1060505@mlbassoc.com>
	<CAJTo0LZYi3PK2KJC3vqrN2AVwMGSN=dVZZckWk_0XpNsvu9jeA@mail.gmail.com>
	<56E6B3BF.7020307@mlbassoc.com> <56E6C05A.2020509@mlbassoc.com>
	<20160314135809.GD2560@jama>
In-Reply-To: <20160314135809.GD2560@jama>
From: Christopher Larson <clarson@kergoth.com>
Date: Mon, 14 Mar 2016 15:57:34 +0000
Message-ID: <CABcZANniEAaqMin_+C-3O9-avJnUWGgnW9_kCDMTVXhAiyb=5A@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>, Gary Thomas <gary@mlbassoc.com>
Cc: yocto@yoctoproject.org
Subject: Re: Strange build dependency
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
X-List-Received-Date: Mon, 14 Mar 2016 15:57:48 -0000
Content-Type: multipart/alternative; boundary=001a114226886131b5052e04574a

--001a114226886131b5052e04574a
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 14, 2016 at 6:55 AM Martin Jansa <martin.jansa@gmail.com> wrote:

> On Mon, Mar 14, 2016 at 02:44:58PM +0100, Gary Thomas wrote:
> > On 03/14/2016 01:51 PM, Gary Thomas wrote:
> > > On 03/14/2016 01:46 PM, Burton, Ross wrote:
> > >>
> > >> On 14 March 2016 at 12:41, Gary Thomas <gary@mlbassoc.com <mailto:
> gary@mlbassoc.com>> wrote:
> > >>
> > >>     How can I find out what's going on here?
> > >>
> > >>
> > >> bitbake-whatchanged is generally helpful here.  Do a build in one
> configuration, switch to the other, run
> > >> bitbake-whatchanged.  It will identify the hashes that have changed
> and try and chase them down.
> > >>
> > >> That said perl is quite a deep recipe so rebuilding that will
> certainly bubble up the tree causing all sorts of rebuilds.
> > >
> > > Thanks, I'll give this a try.
> > >
> >
> > I've run this and I still don't have a clue.  Here's what I got.  Maybe
> > you can explain what I'm seeing?
>
> You can also create snapshot before and after the change with
> scripts/sstate-diff-machines.sh and compare the signatures manually.
>

bitbake -S printdiff is a useful option as well.

--001a114226886131b5052e04574a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Mon=
, Mar 14, 2016 at 6:55 AM Martin Jansa &lt;<a href=3D"mailto:martin.jansa@g=
mail.com">martin.jansa@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">On Mon, Mar 14, 2016 at 02:44:58PM +0100, Gary Thomas wrote:<=
br>
&gt; On 03/14/2016 01:51 PM, Gary Thomas wrote:<br>
&gt; &gt; On 03/14/2016 01:46 PM, Burton, Ross wrote:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; On 14 March 2016 at 12:41, Gary Thomas &lt;<a href=3D"mailto:=
gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a> &lt;mailto:<a hr=
ef=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;=
&gt; wrote:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0How can I find out what&#39;s going on her=
e?<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; bitbake-whatchanged is generally helpful here.=C2=A0 Do a bui=
ld in one configuration, switch to the other, run<br>
&gt; &gt;&gt; bitbake-whatchanged.=C2=A0 It will identify the hashes that h=
ave changed and try and chase them down.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; That said perl is quite a deep recipe so rebuilding that will=
 certainly bubble up the tree causing all sorts of rebuilds.<br>
&gt; &gt;<br>
&gt; &gt; Thanks, I&#39;ll give this a try.<br>
&gt; &gt;<br>
&gt;<br>
&gt; I&#39;ve run this and I still don&#39;t have a clue.=C2=A0 Here&#39;s =
what I got.=C2=A0 Maybe<br>
&gt; you can explain what I&#39;m seeing?<br>
<br>
You can also create snapshot before and after the change with<br>
scripts/sstate-diff-machines.sh and compare the signatures manually.<br></b=
lockquote><div><br></div><div>bitbake -S printdiff is a useful option as we=
ll.</div></div></div>

--001a114226886131b5052e04574a--
