Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4FE3E00837; Mon, 17 Nov 2014 03:06:03 -0800 (PST)
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
	*      [209.85.192.50 listed in list.dnswl.org]
Received: from mail-qg0-f50.google.com (mail-qg0-f50.google.com
	[209.85.192.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E340E0071C
	for <yocto@yoctoproject.org>; Mon, 17 Nov 2014 03:05:50 -0800 (PST)
Received: by mail-qg0-f50.google.com with SMTP id e89so3992931qgf.9
	for <yocto@yoctoproject.org>; Mon, 17 Nov 2014 03:05:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=1kM/zk7SJ0G6WTj8lM6/aXSj0Y9vdP3Uf28GCUOQ/KI=;
	b=Fxr4Sb4XP0lQDySiObdAj3seXmasu05JlV/XfEsR41zByDjyq95ZRAqWYVvQug7qax
	w4RYZ2/xLkITQif5aTOZyi+yVP0XLGeTzIv4EPvP5pFBxGoMO1eK/+o93JR2fokS7wrt
	uVgTm8G27qriUU7TEf0ApNZy5+LjspUFFKe4K1QEmrWYHpldv+7kkIMToWkYj6AslAZr
	9pFOBbXZEYrbnqpamUBVr5uvNndbc3IJkt1hFBwK+g1zsRNmOJ3NqtsqF7V9f9f43MS8
	oar0sEStjXDhxPW7l467tj/XDm1kJkUNT95CKBSpZ9aYLH+ncQ6VxlU8tnl8rTWLMuVc
	UK0g==
X-Gm-Message-State: ALoCoQmcNZ1NcBF0u7i5fe8jhsiB0q3CrWEAbo6fvAHOB8X72UEd+hJAOBfybNgxG+TyHNkLubb6
X-Received: by 10.140.94.233 with SMTP id g96mr12806185qge.77.1416222350431;
	Mon, 17 Nov 2014 03:05:50 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.48.231 with HTTP; Mon, 17 Nov 2014 03:05:30 -0800 (PST)
In-Reply-To: <5469A2FA.6020004@topic.nl>
References: <5464AB4D.8020409@topic.nl>
	<CAJTo0Lb35s=8_JkTwxtkOskW0c+WX3U7pz5erBKSvYXVxE3riw@mail.gmail.com>
	<5464ADD9.1090604@topic.nl> <5464AFCC.5010709@topic.nl>
	<CAJTo0LbFLKJ304sCbSGZW0w9rpEe5oN5Ao3bAr8a-yLjNrRKkQ@mail.gmail.com>
	<CALXw4G6V7CWLx5HJvvHg7WRkALHpqZji4EXq8x0f_coxQD3AFQ@mail.gmail.com>
	<5469A2FA.6020004@topic.nl>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 17 Nov 2014 11:05:30 +0000
Message-ID: <CAJTo0LbHPwBg0yK__-140TFeHpgu7p7QcYizpz2QSOxZvGRXhw@mail.gmail.com>
To: Mike Looijmans <mike.looijmans@topic.nl>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Sato image touchscreen calibration is borked
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
X-List-Received-Date: Mon, 17 Nov 2014 11:06:04 -0000
Content-Type: multipart/alternative; boundary=001a113a7bd01eea7405080bf645

--001a113a7bd01eea7405080bf645
Content-Type: text/plain; charset=UTF-8

On 17 November 2014 07:25, Mike Looijmans <mike.looijmans@topic.nl> wrote:

> BTW, you can use tslib with xorg. This is what I have set up as I find
>> ts_calibrate easier to work with.
>>
>
> Interesting option, can you elaborate on that (in particular, in
> combination with Yocto builds)?


meta-oe has xf86-input-tslib.  Installing that might still work.  It's been
untouched since 2009 which is why I assumed it would have bit-rotted by now.

Ross

--001a113a7bd01eea7405080bf645
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 17 November 2014 07:25, Mike Looijmans <span dir=3D"ltr">&lt;<a href=3D"=
mailto:mike.looijmans@topic.nl" target=3D"_blank">mike.looijmans@topic.nl</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><span class=3D"">BTW, you can use tslib with xorg. This is what =
I have set up as I find<br>
ts_calibrate easier to work with.<br>
</span></blockquote>
<br>
Interesting option, can you elaborate on that (in particular, in combinatio=
n with Yocto builds)?</blockquote></div><br>meta-oe has xf86-input-tslib.=
=C2=A0 Installing that might still work.=C2=A0 It&#39;s been untouched sinc=
e 2009 which is why I assumed it would have bit-rotted by now.</div><div cl=
ass=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a113a7bd01eea7405080bf645--
