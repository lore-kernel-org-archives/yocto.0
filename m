Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C959DE00C40; Tue,  6 Oct 2015 07:09:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qk0-f175.google.com (mail-qk0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4489AE00B27
	for <yocto@yoctoproject.org>; Tue,  6 Oct 2015 07:09:14 -0700 (PDT)
Received: by qkht68 with SMTP id t68so1767955qkh.3
	for <yocto@yoctoproject.org>; Tue, 06 Oct 2015 07:09:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=gAMZasgBM3TzN25h+k7NKCHaaREUGsVh2tE+nEqyOTE=;
	b=Lprk8Y/Cs0EhFGa/0kxRps2j8tSqKYDMOWsWRHm7EwYZXv82/YIcNxrpSAM3jaDBgv
	oGhMn4++416gS3tIRONloYiDBVnjYoqY5XDlM9jDbP89Ti1MOe6oBQ94NgP7fKGHQFtZ
	0jkHvxndnpZBzckg7SAODsVPsazI4/W82vDUYBoLwH9pvLIeS8qBwSJpPd0nqd3y8WON
	2ClAnq8F/6CcQb//57/IDBmE7NUjf67lzqGaBV9GfWfdGW67dJMyKvmgdMvYkGJ3edmP
	GE4dMrdaoDSprJvCfTNuUPw02cemM2Fv+zN72uIQchado8SI+cJrBHqFEWLtzyC+uLoV
	bc8Q==
X-Gm-Message-State: ALoCoQmJhxgWKROVr99eESC7RuH1tYh24fLbcjdbIwTL5DlqSqYrjVA3OaxAP53ACOeXcLgQrCKz
X-Received: by 10.55.221.9 with SMTP id n9mr12255367qki.64.1444140553165; Tue,
	06 Oct 2015 07:09:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.94.86 with HTTP; Tue, 6 Oct 2015 07:08:53 -0700 (PDT)
In-Reply-To: <CALLyC8Tuhi2kD7XNUdo8EfTpTYCB8EgYHNLi2N9iaeMRO27q9Q@mail.gmail.com>
References: <CALLyC8Tuhi2kD7XNUdo8EfTpTYCB8EgYHNLi2N9iaeMRO27q9Q@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 6 Oct 2015 15:08:53 +0100
Message-ID: <CAJTo0LZCUREargkyUdJt3_RFTmChqcxN3tigDz2qqLZDwtiAyg@mail.gmail.com>
To: Vivek Per <pervivek@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Why RDEPENDS wont install packages in rootfs
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
X-List-Received-Date: Tue, 06 Oct 2015 14:09:16 -0000
Content-Type: multipart/alternative; boundary=001a1149d604ad95680521702c49

--001a1149d604ad95680521702c49
Content-Type: text/plain; charset=UTF-8

On 6 October 2015 at 14:24, Vivek Per <pervivek@gmail.com> wrote:

>      I am including RDEPENDS += " <package>" variable in rootfs-image.bb
> . why RDEPENDS won't install packages in roofts. I can install packages
> through IMAGE_INSTALL.can any one tell me the  reason why RDEPENDS wont
> install packages in rootfs  .
>

Because images do not behave like packages.  Use IMAGE_INSTALL and friends
(CORE_IMAGE_EXTRA_INSTALL for example) to install packages into images.

Ross

--001a1149d604ad95680521702c49
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 6 October 2015 at 14:24, Vivek Per <span dir=3D"ltr">&lt;<a href=3D"mail=
to:pervivek@gmail.com" target=3D"_blank">pervivek@gmail.com</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><div>=C2=A0 =C2=A0 =C2=A0I am incl=
uding RDEPENDS +=3D &quot; &lt;package&gt;&quot; variable in <a href=3D"htt=
p://rootfs-image.bb" target=3D"_blank">rootfs-image.bb</a> . why RDEPENDS w=
on&#39;t install packages in roofts. I can install packages through IMAGE_I=
NSTALL.can any one tell me the =C2=A0reason why RDEPENDS wont install packa=
ges in rootfs =C2=A0.</div><div></div></blockquote></div><br>Because images=
 do not behave like packages.=C2=A0 Use IMAGE_INSTALL and friends (CORE_IMA=
GE_EXTRA_INSTALL for example) to install packages into images.</div><div cl=
ass=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1149d604ad95680521702c49--
