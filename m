Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7073E00C96; Wed, 16 Sep 2015 00:44:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f50.google.com (mail-qg0-f50.google.com
	[209.85.192.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0C4CE00BAD
	for <yocto@yoctoproject.org>; Wed, 16 Sep 2015 00:44:27 -0700 (PDT)
Received: by qgev79 with SMTP id v79so164172426qge.0
	for <yocto@yoctoproject.org>; Wed, 16 Sep 2015 00:44:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=+ucp8BogZ3U/rnm4KhXgx52vzOFXFGA/6Hf7n2t2vZY=;
	b=Ii4D0fq/BZt9KcH5Gaf78CYJxX4I0JwWdgVQenITqzSrM0FxgXQxvZUO7PbhuuHzPD
	AhkvJd+VOViK88VXn1vzojR+DKE85X7q8+UEbhhVdf2TBfz39UkBBSIVCt2Y7b5U+ETB
	it2FndemKsNDbZyUOuNz+2emFjItY3Ab73RQqpDGnCwGHDaFdiq7n4DAhesqz1nRBG0v
	w/6ISGDhV92L88iVsrlfmw2cb8+Sk9eIfETi0JTk/x0KNr2zTodKpdcNf7JPEoGrHEo2
	L78UCZtx46HOG1CN1Uff+ZWeAIomAIm6eF5ONwCfbuabdooUli/yDA1NeHc5Z4MD64uZ
	kSDw==
X-Gm-Message-State: ALoCoQmhwozG+s3Ev1dhrhWYi2d1rug1FF2kAHROju9JZJeIYVdxL7nXXlg1z7ZMLmbU5afIIcNv
X-Received: by 10.140.93.53 with SMTP id c50mr38675348qge.59.1442389467366;
	Wed, 16 Sep 2015 00:44:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.94.86 with HTTP; Wed, 16 Sep 2015 00:44:07 -0700 (PDT)
In-Reply-To: <55F846D8.4020808@gmail.com>
References: <55F822C0.8030404@windriver.com>
	<55f84188.e17c420a.cd394.2235SMTPIN_ADDED_BROKEN@mx.google.com>
	<55F846D8.4020808@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 16 Sep 2015 08:44:07 +0100
Message-ID: <CAJTo0LaXx_DR7j0og26UK7mvmmR6fPk6ZnGiyVSOeGfw7JYQ7g@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Dumping sysvinit
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
X-List-Received-Date: Wed, 16 Sep 2015 07:44:31 -0000
Content-Type: multipart/alternative; boundary=001a113a63c0d4a47f051fd877dd

--001a113a63c0d4a47f051fd877dd
Content-Type: text/plain; charset=UTF-8

On 15 September 2015 at 17:27, Trevor Woerner <twoerner@gmail.com> wrote:

> I think if you remove/comment-out the last of those 3 lines or install
> your host's SDL-devel package you'll solve this issue (?)
>

Yes, that's right.  Either disable the graphical qemu support, or install
the host's sdl-devel package so it can build.

Ross

--001a113a63c0d4a47f051fd877dd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 15 September 2015 at 17:27, Trevor Woerner <span dir=3D"ltr">&lt;<a href=
=3D"mailto:twoerner@gmail.com" target=3D"_blank">twoerner@gmail.com</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":20c" class=3D"=
a3s" style=3D"overflow:hidden">I think if you remove/comment-out the last o=
f those 3 lines or install<br>
your host&#39;s SDL-devel package you&#39;ll solve this issue (?)<br></div>=
</blockquote><div><br></div><div>Yes, that&#39;s right.=C2=A0 Either disabl=
e the graphical qemu support, or install the host&#39;s sdl-devel package s=
o it can build.</div><div><br></div><div>Ross=C2=A0</div></div><br></div></=
div>

--001a113a63c0d4a47f051fd877dd--
