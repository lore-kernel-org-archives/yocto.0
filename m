Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EF48E00AE4; Tue, 25 Apr 2017 03:19:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.172 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.172 listed in list.dnswl.org]
Received: from mail-qk0-f172.google.com (mail-qk0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63E76E00A9B
	for <yocto@yoctoproject.org>; Tue, 25 Apr 2017 03:19:55 -0700 (PDT)
Received: by mail-qk0-f172.google.com with SMTP id f76so60082700qke.2
	for <yocto@yoctoproject.org>; Tue, 25 Apr 2017 03:19:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=21bcXolbetpb64iJK2lJArjcgrTc0M7V+oFpjaOm4Pw=;
	b=Y+nDJdVvmpGopqHUyMuLJoT+xl0mW3WKmjW0mVesRQGN3jBe9QvIGEjwqW6OI1mOqa
	LoqgQN5LnK3FhWuJcCqS+D3HoYq7n18CjAvWwW45Sr8kriUi3qJo/tphN/8S87RcLW1x
	xsaUawJLcTlmARfyZcueaNo+XvQmL23c0yjJvCbsdOn6uxCZFN5ffxMliqJAUhlDVMWe
	N7dtfmLOvLNbgBX0S92j+9aagg6mOlO62zFx+rUrldI25o3FfGaB/o2FI25g/DKfaC2f
	YYg3FrTZilfFeOO8oKMtPvdypN3xK4kYewThCjqg15niOCX7Vh8IrIxAE4EqitBjz0LM
	0v+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=21bcXolbetpb64iJK2lJArjcgrTc0M7V+oFpjaOm4Pw=;
	b=VKLXoSaZ+7wLEvmVbMa5s84b4qBdWfZGpgyyTP8GCQ6IJvguRaDPQfJOBClFrFjL05
	6dGoWKPwgDM1HRz7SQ/+zqrzsgE2OtvapBGUbKxjK55lx2IHziT0zNEtjFGnJkLJv6Nk
	XOBX+z3Ld0/gHfrmiO0gX32P3BX7kXHC2jyFY/6Z2C6ZsCgKlck08pn8pHe53Cd5aJ8c
	dsyO0WfiBMdFYBRGP7RwXomxd3gqbIsa7lC3LAX2b5ahnp5ET7tQ8bEjAMRsRY0DHuUt
	LAexXRsR+3rrzbzGKVi0b21e6Zncbf8/ub245UpQf4JWRzeIUdxx+qWIwyHpdmXDdICH
	FByA==
X-Gm-Message-State: AN3rC/7bTNZz36jLsb2aK7p+b8a0m7gDvuvP+fmUeVV0n1nidyud5hw/
	I04WL7PqiRYloA7zRjiOPmTo35oi/Ek1
X-Received: by 10.55.17.224 with SMTP id 93mr27151963qkr.244.1493115595424;
	Tue, 25 Apr 2017 03:19:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Tue, 25 Apr 2017 03:19:34 -0700 (PDT)
In-Reply-To: <87a875qxeg.fsf@largeson.i-did-not-set--mail-host-address--so-tickle-me>
References: <CAMKF1spGM+kugUDOB4kF7NAgSCt9vCw8GFT0nLKFRd2tHei=pw@mail.gmail.com>
	<CAJTo0La0mtVGyLysCnqi9EQmT+4L1eYRxgE-TV=3Va45jnt=Xg@mail.gmail.com>
	<CAMKF1sqfvtQPWN5Yuz3RPYkXpneS+XWcYmit_=bcvKGo3_hx8w@mail.gmail.com>
	<CAJTo0LakaSZhJodT2KQx6u0TEaBL5Ruig3oOdfrtCzQUf1cxXg@mail.gmail.com>
	<CAJTo0La+bGDBuJ42yVy79hW2iN3ZhpeyjXrhUApLn-PAi6PYBw@mail.gmail.com>
	<87a875qxeg.fsf@largeson.i-did-not-set--mail-host-address--so-tickle-me>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 25 Apr 2017 11:19:34 +0100
Message-ID: <CAJTo0LaLOhPcz8DYQ4wGzVXrP7Qs_Fa7jgrx76wCDAuR8eoWfQ@mail.gmail.com>
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
X-List-Received-Date: Tue, 25 Apr 2017 10:19:58 -0000
Content-Type: multipart/alternative; boundary=001a1135cbccac9a6f054dfb10c7

--001a1135cbccac9a6f054dfb10c7
Content-Type: text/plain; charset=UTF-8

On 24 April 2017 at 23:00, Nathan Lynch <nathan_lynch@mentor.com> wrote:

> Does adding this patch to lttng-modules work around it?
>

Yes, it fixes the build here.  I'll throw it at the autobuilder now, can
you send a patch with a commit message that isn't "someone told me to try
this"? :)

Ross

--001a1135cbccac9a6f054dfb10c7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 24 April 2017 at 23:00, Nathan Lynch <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:nathan_lynch@mentor.com" target=3D"_blank">nathan_lynch@mentor.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":4eq" class=
=3D"a3s aXjCH m15ba1fae39ac5632">Does adding this patch to <span class=3D"i=
l">lttng</span>-<span class=3D"il">modules</span> work around it?<br></div>=
</blockquote></div><br>Yes, it fixes the build here.=C2=A0 I&#39;ll throw i=
t at the autobuilder now, can you send a patch with a commit message that i=
sn&#39;t &quot;someone told me to try this&quot;? :)</div><div class=3D"gma=
il_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1135cbccac9a6f054dfb10c7--
