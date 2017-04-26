Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9A39E00B72; Wed, 26 Apr 2017 02:45:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.176 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.176 listed in list.dnswl.org]
Received: from mail-qk0-f176.google.com (mail-qk0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F977E00B01
	for <yocto@yoctoproject.org>; Wed, 26 Apr 2017 02:44:48 -0700 (PDT)
Received: by mail-qk0-f176.google.com with SMTP id u75so69879259qka.3
	for <yocto@yoctoproject.org>; Wed, 26 Apr 2017 02:44:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=CfMxsqaV9qEOqfZ+h5ZF8I8DruD1SPrYRcg0hHwClvc=;
	b=1C3uRmV3Q75XH6N0LafUZD1VIxRmmj+sSkbuwEusLgIkASLUWpOsDaZq6tX09KmzMa
	q/2w78/3toWpz6h+2jtTFZfL67kfef1fnfqOjy3yziLU2psB3JRRYxkbTKz94mm43z6x
	xyC0AwxMvKnVM1M4phWwFB2iOmSgb7kB3/NdslxTjcQ457IfCwKr3TX37rA+Uq2sgyOt
	SPbk6lEqAmUQ6eRffSPztuxpITnjmSkqtvkrUobgNAwRXiw143tEMiacKjb1WrwSeLMJ
	T38ZO7aCRr5Yi+bofOVk9CkZmjYQQ4M1ZqtjaDNydLms0Jw/iL9t9j8hNWOhJtBgVOeC
	S5yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=CfMxsqaV9qEOqfZ+h5ZF8I8DruD1SPrYRcg0hHwClvc=;
	b=R3XCMeJGiF3J1Q4Q4T6ItAFCkfEveIqejipP/mbwxDg0F9iUGqMIpLJMlP5yyWE8Sl
	GEtQXYGX1sQLK9MQDDmflC+jSU81FfJhOUQsjAGqS7eo4B9KgsO3I+3eWQyJansDKIpd
	8K1K8H5qqKOA1N+ZPmOuIa4HSLowRNX2qOAP2tZ8874H8RWrEZC9TEicVCh96gb9a8Kl
	bV/nn30DRBOG4pTeF0QtTd+CFc022lT04magkwJZ/pp1IF0JQ2kHSWSotBBVTmpRP8oy
	5aSb1u5hTjSf1qPTepEetSyKGjcelEgSTglWT3sq2ExrMiidRXJ2REyPKGD1QBbLKVAU
	PzRQ==
X-Gm-Message-State: AN3rC/6NCNqfYw8AcPSHbbXJ7Oc9PJ01+4wOtOSQDxrqKD9LeJbth8Vk
	qbhMDwBzbSN9J0824djh+MbN85JL+TE0
X-Received: by 10.55.17.224 with SMTP id 93mr32046749qkr.244.1493199887516;
	Wed, 26 Apr 2017 02:44:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Wed, 26 Apr 2017 02:44:27 -0700 (PDT)
In-Reply-To: <87fugwyv28.fsf@largeson.i-did-not-set--mail-host-address--so-tickle-me>
References: <CAMKF1spGM+kugUDOB4kF7NAgSCt9vCw8GFT0nLKFRd2tHei=pw@mail.gmail.com>
	<CAJTo0La0mtVGyLysCnqi9EQmT+4L1eYRxgE-TV=3Va45jnt=Xg@mail.gmail.com>
	<CAMKF1sqfvtQPWN5Yuz3RPYkXpneS+XWcYmit_=bcvKGo3_hx8w@mail.gmail.com>
	<CAJTo0LakaSZhJodT2KQx6u0TEaBL5Ruig3oOdfrtCzQUf1cxXg@mail.gmail.com>
	<CAJTo0La+bGDBuJ42yVy79hW2iN3ZhpeyjXrhUApLn-PAi6PYBw@mail.gmail.com>
	<87a875qxeg.fsf@largeson.i-did-not-set--mail-host-address--so-tickle-me>
	<CAJTo0LaLOhPcz8DYQ4wGzVXrP7Qs_Fa7jgrx76wCDAuR8eoWfQ@mail.gmail.com>
	<87fugwyv28.fsf@largeson.i-did-not-set--mail-host-address--so-tickle-me>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 26 Apr 2017 10:44:27 +0100
Message-ID: <CAJTo0LY=s+q9oC6ep=aD8W29U6L4kdnQQchg3OKbM6EhH7tniQ@mail.gmail.com>
To: Nathan Lynch <nathan_lynch@mentor.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>
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
X-List-Received-Date: Wed, 26 Apr 2017 09:45:00 -0000
Content-Type: multipart/alternative; boundary=001a1135cbccdfe1f9054e0eb0f7

--001a1135cbccdfe1f9054e0eb0f7
Content-Type: text/plain; charset=UTF-8

On 25 April 2017 at 23:35, Nathan Lynch <nathan_lynch@mentor.com> wrote:

> Done:
> http://lists.openembedded.org/pipermail/openembedded-core/
> 2017-April/136086.html
>

Thanks!

Ross

--001a1135cbccdfe1f9054e0eb0f7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 25 April 2017 at 23:35, Nathan Lynch <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:nathan_lynch@mentor.com" target=3D"_blank">nathan_lynch@mentor.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":485" class=
=3D"a3s aXjCH m15ba741bfe161812">Done:<br>
<a href=3D"http://lists.openembedded.org/pipermail/openembedded-core/2017-A=
pril/136086.html" rel=3D"noreferrer" target=3D"_blank">http://lists.openemb=
edded.org/<wbr>pipermail/openembedded-core/<wbr>2017-April/136086.html</a><=
/div></blockquote></div><br>Thanks!</div><div class=3D"gmail_extra"><br></d=
iv><div class=3D"gmail_extra">Ross</div></div>

--001a1135cbccdfe1f9054e0eb0f7--
