Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C7E2E00A48; Mon, 15 Jun 2015 23:50:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.52 listed in list.dnswl.org]
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40965E009A1
	for <yocto@yoctoproject.org>; Mon, 15 Jun 2015 23:50:50 -0700 (PDT)
Received: by pabqy3 with SMTP id qy3so6756386pab.3
	for <yocto@yoctoproject.org>; Mon, 15 Jun 2015 23:50:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=TCUs/TqQXq+RPOjI8f7bMNAq0Aku+29Mw8y9aeeZSkY=;
	b=nKt7YaiV+u6P615j8SjtRneDgRxNvCtdjI4QDO9wIa6vGx5sXQ+gRYNJH/QcRAKG8+
	+6hScH6rlvV2KOOJJSGf316cItsQNO3S1YyoedcEZmQomt24WUPB+Mzk0b+mUvOt/p+J
	QhX2Me2TYQmUfig1rjIkK7LbJcceoefXT82BTh1Xa/OSuWvHpWTgHXaA7O4jcHOtMZKi
	np7rmMUQzpaYF+f51zU6y+xwhmXDR0GZVj+tjx52D+jv0T/xGJ/ps9rA4Ag65xGo3j4A
	LDqSyBd+yWs2OpUa8IQpe7dmKahZaQs6lHbZjkGrPrMpwxhDEEWi/fzS9DxKnwFXQL+I
	cVVA==
MIME-Version: 1.0
X-Received: by 10.68.57.170 with SMTP id j10mr56048769pbq.150.1434437450552;
	Mon, 15 Jun 2015 23:50:50 -0700 (PDT)
Received: by 10.70.44.41 with HTTP; Mon, 15 Jun 2015 23:50:50 -0700 (PDT)
In-Reply-To: <557EE4C2.501@linux.intel.com>
References: <557E9EFE.1030703@linux.intel.com>
	<CALbNGRS9UWjVQQh8POPc5zVYOeYa9VaeC7dEfzH3AMs4k9Mjzw@mail.gmail.com>
	<CAJTo0LbRVqw3h_3igs59=DTnaz6nf4w=A5ZpXepmh6xiKtVdPA@mail.gmail.com>
	<557EE4C2.501@linux.intel.com>
Date: Tue, 16 Jun 2015 08:50:50 +0200
Message-ID: <CALbNGRS-xR52wapA2viFa0oZJ6kotFdjhXpb6kyOtpRyn--5=A@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>
Subject: Re: [OE-core] Webkit-gtk will be updated to latest upstream; midori browser to be replaced with Epiphany
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
X-List-Received-Date: Tue, 16 Jun 2015 06:50:53 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jun 15, 2015 at 4:44 PM, Alexander Kanavin
<alexander.kanavin@linux.intel.com> wrote:
> On 06/15/2015 05:24 PM, Burton, Ross wrote:
>
>> If you actually compare the build dependencies, you'll see that Midori
>> and Epiphany are actually almost identical.
>>
>> We need to upgrade WebKit as the release we're shipping has known
>> security flaws and is very old - and the community is rightly moaning
>> about that.  However Midori doesn't build with a recent WebKit... if you
>> have an alternative solution then your thoughts are welcome.
>
>
> Also, Webkit2 itself ships with a tiny browser wrapper called MiniBrowser:
>
> http://blogs.igalia.com/carlosgc/2011/11/04/webkit2-gtk-minibrowser-ported-to-gtk-api/
>
> That may be enough for many people's needs, and they can simply not include
> Epiphany into their images if it's too big and bloated or whatever.
>
>
How about doing same as others do e.g fedora [1-2]: Keep two version
of webkit-gtk based on same recent code:

* gtk2/webkit1
* gtk3/webkit2

Andreas

[1] http://pkgs.fedoraproject.org/cgit/webkitgtk.git/tree/webkitgtk.spec
[2] http://pkgs.fedoraproject.org/cgit/webkitgtk3.git/tree/webkitgtk3.spec

