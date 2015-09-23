Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DD98E00FF4; Wed, 23 Sep 2015 12:41:39 -0700 (PDT)
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
	*      [209.85.192.54 listed in list.dnswl.org]
Received: from mail-qg0-f54.google.com (mail-qg0-f54.google.com
	[209.85.192.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 510F5E00AB0
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 12:41:34 -0700 (PDT)
Received: by qgt47 with SMTP id 47so28132371qgt.2
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 12:41:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=VQmIWfHH2mCmjeBriZraZA2x4zk8dzClIT+WjYj42Nw=;
	b=JGCDd+8Qxi9Vf7OjwWtOnkcE4dkuPw9SO6JBm3hqQtherzH1VVbiUGWMgtAqb2la2t
	vLxSt93Qj7IxQLHzyXtCQjrhYAgFt4PTvCH7PJvqtNeTgYf1jcjgTcAFa8peNMdWBqpt
	qrqweqobt8PGN+zh0MVKN0e/JZTGPl0dmV7eAh0MgyKQiV1XpojD5rPdY7pl5MM3mcST
	yKAAzW5GSYWeVRnNig3BisvjAY+FNX1VHcRFspc5+nGol8OITIYEXoKyLQzwMnbGvCZU
	MoN5JcH47GK8ug9QIbo1fNJEDX0znQbf2W10aed8GqgNtHfix8YRXLEnqspGztYkkO72
	4Osw==
X-Gm-Message-State: ALoCoQk5AG7DEsQUdbyBgSvXBiVV0RT03SV72l/yOPMjNRg4llmp4xl+4RGHWZbnYoW9V8UjENxw
X-Received: by 10.140.93.53 with SMTP id c50mr38054757qge.59.1443037294425;
	Wed, 23 Sep 2015 12:41:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.94.86 with HTTP; Wed, 23 Sep 2015 12:41:14 -0700 (PDT)
In-Reply-To: <CAF3SDA5EL7FCf5pp9Bj2i3iR8Q8esFGGn9m31NrknxGOwrWg9g@mail.gmail.com>
References: <20150923132707.4b1dfc77@seebs-worktop>
	<CAF3SDA5EL7FCf5pp9Bj2i3iR8Q8esFGGn9m31NrknxGOwrWg9g@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 23 Sep 2015 20:41:14 +0100
Message-ID: <CAJTo0Lbxnov1czjowK5k4NZDrO=9qP871tTAGdrVzw5zmeCYxw@mail.gmail.com>
To: "Daniel." <danielhilst@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-mingw] gcc 5.2 partial patches
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
X-List-Received-Date: Wed, 23 Sep 2015 19:41:39 -0000
Content-Type: multipart/alternative; boundary=001a113a63c0551a3305206f4ded

--001a113a63c0551a3305206f4ded
Content-Type: text/plain; charset=UTF-8

On 23 September 2015 at 20:33, Daniel. <danielhilst@gmail.com> wrote:

> I'm really curious, what that % means on recipe names?
>

It's a wildcard character that's only valid on bbappends: instead of
needing to version accurately you can say recipe_1.%.bbappend to append to
all 1.* versions of recipe.

Ross

--001a113a63c0551a3305206f4ded
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 23 September 2015 at 20:33, Daniel. <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:danielhilst@gmail.com" target=3D"_blank">danielhilst@gmail.com</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div>I&#39;m really curious=
, what that % means on recipe names?<br></div></blockquote></div><br>It&#39=
;s a wildcard character that&#39;s only valid on bbappends: instead of need=
ing to version accurately you can say recipe_1.%.bbappend to append to all =
1.* versions of recipe.</div><div class=3D"gmail_extra"><br></div><div clas=
s=3D"gmail_extra">Ross</div></div>

--001a113a63c0551a3305206f4ded--
