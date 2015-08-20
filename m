Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA40EE00A6C; Wed, 19 Aug 2015 21:46:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
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
	*      [209.85.213.174 listed in list.dnswl.org]
Received: from mail-ig0-f174.google.com (mail-ig0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 883F7E009EF
	for <yocto@yoctoproject.org>; Wed, 19 Aug 2015 21:46:38 -0700 (PDT)
Received: by igxp17 with SMTP id p17so121353054igx.1
	for <yocto@yoctoproject.org>; Wed, 19 Aug 2015 21:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=rl9Ad9lrFpobjzsD6WXAzyXIbzEjvDUJHdrmlIh7Ol0=;
	b=b4rGJ6YEpJwtx0uhBcCiydia+1Ox7YUlZHPIYeSBe/ktEw1E+z7PvrKy3+ld+blI5D
	KOIxbSo6s21Om835DphWG+MJPmQC6aXWywaz67TjS7ffsTBHVTjH/GwdRcsyEuw3wGjo
	cqipdYF1rZHQ6d1ERLk9oDItXTHexoCLJWR5maNN0liW0YFKrkxvrIeOC9yIUEV24vVP
	8plJhjjb8DkKO5NlLREhnBGAKU8EbL6K88StJCwa+iBe2F9M6g9UgDyXbkxn3YgFeekz
	ZsDyVJts/Rv+AT0rDJXCOyYkezYlOG7QQnKnfHXbKtjsiYW0HBRnf2BwuAMCieGmwqzO
	3Wjw==
MIME-Version: 1.0
X-Received: by 10.50.93.102 with SMTP id ct6mr5095807igb.75.1440045997990;
	Wed, 19 Aug 2015 21:46:37 -0700 (PDT)
Received: by 10.107.38.79 with HTTP; Wed, 19 Aug 2015 21:46:37 -0700 (PDT)
Received: by 10.107.38.79 with HTTP; Wed, 19 Aug 2015 21:46:37 -0700 (PDT)
In-Reply-To: <CAN-NoH0rEOzkb3ds_pm2CW334ErC=4Fi4eMY31s_Ppq-S-+gGg@mail.gmail.com>
References: <CAN-NoH0rEOzkb3ds_pm2CW334ErC=4Fi4eMY31s_Ppq-S-+gGg@mail.gmail.com>
Date: Wed, 19 Aug 2015 21:46:37 -0700
Message-ID: <CAMKF1sodHUti7FTjcjb9Gmf5o+QgEaNeBdWiY5OPapOR6YyX+A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Richard Cagley <rcagley@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: libqtphonon4-dev
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
X-List-Received-Date: Thu, 20 Aug 2015 04:46:46 -0000
Content-Type: multipart/alternative; boundary=047d7b1602752babed051db6d66c

--047d7b1602752babed051db6d66c
Content-Type: text/plain; charset=UTF-8

On Aug 19, 2015 2:29 PM, "Richard Cagley" <rcagley@gmail.com> wrote:
>
> i'm on poky master branch. When I try to bitbake meta-toolchain-qt I'm
> getting a error I don't know how to go about solving
>
> Computing transaction...error: Can't install
> packagegroup-qt-toolchain-target-1.0-r0@all: no package provides
> libqtphonon4-dev

This means that libqtphonon4-dev is.empty genetated and deleted since thats
the default behaviour. So you need to put ALLOW_EMPTY somewhere to avoid
that. And please use -cpopulate_sdk targets to create sdks and not meta
toolchain targets any more
>
> This is with pretty much default configs except I've changed the
> MACHINE to zc702-zynq7
>
> Any ideas?
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--047d7b1602752babed051db6d66c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On Aug 19, 2015 2:29 PM, &quot;Richard Cagley&quot; &lt;<a href=3D"mailto:r=
cagley@gmail.com">rcagley@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; i&#39;m on poky master branch. When I try to bitbake meta-toolchain-qt=
 I&#39;m<br>
&gt; getting a error I don&#39;t know how to go about solving<br>
&gt;<br>
&gt; Computing transaction...error: Can&#39;t install<br>
&gt; packagegroup-qt-toolchain-target-1.0-r0@all: no package provides<br>
&gt; libqtphonon4-dev</p>
<p dir=3D"ltr">This means that libqtphonon4-dev is.empty genetated and dele=
ted since thats the default behaviour. So you need to put ALLOW_EMPTY somew=
here to avoid that. And please use -cpopulate_sdk targets to create sdks an=
d not meta toolchain targets any more<br>
&gt;<br>
&gt; This is with pretty much default configs except I&#39;ve changed the<b=
r>
&gt; MACHINE to zc702-zynq7<br>
&gt;<br>
&gt; Any ideas?<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
</p>

--047d7b1602752babed051db6d66c--
