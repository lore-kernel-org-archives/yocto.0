Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6FBEE007BA; Mon, 24 Apr 2017 02:10:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.177 listed in list.dnswl.org]
Received: from mail-qt0-f177.google.com (mail-qt0-f177.google.com
	[209.85.216.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7741EE00349
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 02:10:09 -0700 (PDT)
Received: by mail-qt0-f177.google.com with SMTP id g60so108275813qtd.3
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 02:10:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=H4+PUM7njEgtRmTiHD2PYpmZdk5vWWwfhXxAYGycgdI=;
	b=MhCmd7NSQ2Fi9vIgqeuB8V7w2WjOrOxHhlR/hu9M5QXXtx2yxIT/lAS4aiy1XjSjVl
	qxqdFIDK5CXWQbkncEkYmJNR18aPazAC3onoOGtAJpzEHeA4+sfAq0nVYoRkfkSCva9o
	v6SQNZamjFSSE12+9QnWJyamdGxjOycHR8wjwFBBIpYDTFI1edp4luWdLaap1IxuFLRl
	hW9b8FdCxY55ysVUzGX6cO4HPxOMTq8b9Dr/RzKOSlSRJksAoOt4yD6xkqQY5vaY7CTd
	UrZOORk1jxJ3+qdH3H3HCRFbWId+WCYKKELzfORsIGQSzW6ijeLdcDHRnYNY9v5/htKr
	oxTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=H4+PUM7njEgtRmTiHD2PYpmZdk5vWWwfhXxAYGycgdI=;
	b=uMUnHYrM6fxBQBuFleVE8Bv/6wof+CSKsEJGPXIjYwECSXY8vdbLf9WH58ZZxtGU6K
	9tgFEY4IVEQTDf16JSTAqjLfpTwVsJuvOes8jH+OeAOgY2uGiuo6JTLMMdA3PnrIFIzI
	+iyNvF9+tJzMPc/9794rGyusfONryytFnMNCsTNS99IJtGHfvYsUui2q5VP+VOZmVLCg
	jde5OaefXdDRxSDP5F1V3B1VimiV1BoIcsJ0dg41ZMxP0sjPzBzEE51YMrUivtXZm+dV
	ApT28PIB4pKeVp/yKvSPFJzbQoO6ZcODvupOQpj95RdHspp3VHYAqL9UD4HDCzPM3tvJ
	cP4A==
X-Gm-Message-State: AN3rC/4IQm/asz6q2Z25ZXf3O81kxtPIdSVMzywllIYjqzhE9o+virzv
	uayNbsUbFGRRfE4wxo08wzV301bx5C8t
X-Received: by 10.200.46.26 with SMTP id r26mr26701948qta.197.1493025009433;
	Mon, 24 Apr 2017 02:10:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Mon, 24 Apr 2017 02:09:49 -0700 (PDT)
In-Reply-To: <CAMKF1sqfvtQPWN5Yuz3RPYkXpneS+XWcYmit_=bcvKGo3_hx8w@mail.gmail.com>
References: <CAMKF1spGM+kugUDOB4kF7NAgSCt9vCw8GFT0nLKFRd2tHei=pw@mail.gmail.com>
	<CAJTo0La0mtVGyLysCnqi9EQmT+4L1eYRxgE-TV=3Va45jnt=Xg@mail.gmail.com>
	<CAMKF1sqfvtQPWN5Yuz3RPYkXpneS+XWcYmit_=bcvKGo3_hx8w@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 24 Apr 2017 10:09:49 +0100
Message-ID: <CAJTo0LakaSZhJodT2KQx6u0TEaBL5Ruig3oOdfrtCzQUf1cxXg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] gcc7 and glibc-2.26 recipes
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
X-List-Received-Date: Mon, 24 Apr 2017 09:10:13 -0000
Content-Type: multipart/alternative; boundary=001a114708cc5417c1054de5f97b

--001a114708cc5417c1054de5f97b
Content-Type: text/plain; charset=UTF-8

On 24 April 2017 at 06:45, Khem Raj <raj.khem@gmail.com> wrote:

> There are few other fixes that needs to be in there. glibc and gcc recipes
> also needed some fixes. I have pushed the whole series to kraj/master
> branch on contrib repo
>
> http://git.openembedded.org/openembedded-core-contrib/log/?h=kraj/master
>
> give it a whirl again.
>

All merged, I'll fire in a moment.

Thanks Khem!

Ross

--001a114708cc5417c1054de5f97b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 24 April 2017 at 06:45, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto=
:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div id=3D":2e" class=3D"a3s aXjCH m=
15b9e7edf85c6650">There are few other fixes that needs to be in there. glib=
c and <span class=3D"il">gcc</span> recipes<br>
also needed some fixes. I have pushed the whole series to kraj/master<br>
branch on contrib repo<br>
<br>
<a href=3D"http://git.openembedded.org/openembedded-core-contrib/log/?h=3Dk=
raj/master" rel=3D"noreferrer" target=3D"_blank">http://git.openembedded.or=
g/<wbr>openembedded-core-contrib/log/<wbr>?h=3Dkraj/master</a><br>
<br>
give it a whirl again.<br></div></blockquote></div><br>All merged, I&#39;ll=
 fire in a moment.</div><div class=3D"gmail_extra"><br></div><div class=3D"=
gmail_extra">Thanks Khem!</div><div class=3D"gmail_extra"><br></div><div cl=
ass=3D"gmail_extra">Ross</div></div>

--001a114708cc5417c1054de5f97b--
