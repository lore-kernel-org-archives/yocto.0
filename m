Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02EC3E00CCC; Wed, 18 May 2016 04:32:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B58BAE00C46
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 04:32:38 -0700 (PDT)
Received: by mail-io0-f175.google.com with SMTP id 190so60640449iow.1
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 04:32:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=KM6hwZDNJl2QDcThIR/6JTHmG835lKSf2P4DFvVHOGo=;
	b=x0/KcXWo+lUV+AyKULQ5Acu8iHMYDz4SPSBAGkNkHYj+LWPw65WUvjJihRtrTh8XBg
	BCA2oQt4rOKZdoTBVAlj4gBcZy0bDw7vLMyvZvO45BKEstXalso0jo3z2QcasKpZaBHU
	4wn+seIqwXcJtJfOBm2X2sPWzCMRZ8JxH4203T2sPeB8ieqjFfCSlXgLa2xlLrnUk8OV
	4SnlcLl6sZJHDp9ML2Ro2MNHXiEyAItNytfcWL348j7LK7ExOR/K5l4CkMk33sT81cQT
	W7mo2t/1MLJQ8QHoeVfzO0YkWcc9XtA7YCDBJkrbKuJPfaT+Dd/+Dhz01fTj5yQrWsf/
	mEkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=KM6hwZDNJl2QDcThIR/6JTHmG835lKSf2P4DFvVHOGo=;
	b=jcM0ojzpCGlgxdIAYFbqRnRqvCer1BVtZQxnESH+sAG0VPyXo2JesmVqKr7+a4zOmF
	koB3xLqw7MecjxwTmat2FSp1UFueQtbdIxKLzZ4gJ9KHRahMzkPjJEjP5Fygfir+69Bm
	UX1MrPLsjSKeJRkjr6FHGYMlPdbIuiLT0zXz/DAO0Rj5qV4oemZgO4N/3IA0yuXbIPiR
	o32iU33vch1PUwiMa5kPc774zJNY1oEH3viDKrUikKAvC9i0VFJKWvq0LkjC+HFhywBY
	4IlXlLOqiCkxn3kb3FuJ1O0dj0u4lv49xi4CGFsQy5c4GTm8XAu0A2eZLOQYTD85D1ng
	DP/w==
X-Gm-Message-State: AOPr4FW8q2bbxOsbH5OOGrVgjZ0K5D83ASk04bVV00CgGga7IbFBhtA9PjP1m8TZ9PRKChw8RYG1SfBz+avKCnAe
X-Received: by 10.107.135.211 with SMTP id r80mr5018476ioi.133.1463571158364; 
	Wed, 18 May 2016 04:32:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Wed, 18 May 2016 04:32:19 -0700 (PDT)
In-Reply-To: <CAHiDW_G+M+q9Jq6FXr=eqCcLcy7EEjHn-ZKjwHy09uN-oKs4sg@mail.gmail.com>
References: <cover.1461913316.git.jussi.kukkonen@intel.com>
	<50e502ee999733a064eb5b45ba87450648485929.1461913316.git.jussi.kukkonen@intel.com>
	<CAJTo0Lbg14X-m8BarjZtD7SQW7_tTmSL0XvnOTTq-sawO+9iSQ@mail.gmail.com>
	<CAHiDW_G+M+q9Jq6FXr=eqCcLcy7EEjHn-ZKjwHy09uN-oKs4sg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 18 May 2016 12:32:19 +0100
Message-ID: <CAJTo0LaHNuFa7XG7dKbBdD_k4rh8dOj-_n_EtqMf7t3hV0WBEQ@mail.gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [screenshot][PATCH 1/1] Quick port to Gtk/Gdk 3
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
X-List-Received-Date: Wed, 18 May 2016 11:32:43 -0000
Content-Type: multipart/alternative; boundary=001a113ed20aff899b05331c36f1

--001a113ed20aff899b05331c36f1
Content-Type: text/plain; charset=UTF-8

On 2 May 2016 at 08:48, Jussi Kukkonen <jussi.kukkonen@intel.com> wrote:

> The grab code was trickier with current API (which is why I left it as
> is), but I took another look and it turns out that code has never
> actually been used...
>
> So I removed _grab_lock() and _release_lock(), and replaced STOCK
> items with text.
> I've added these changes to the same branch (should now compile
> without warnings):
>   git://github.com/jku/sato-screenshot gtk3
>   https://github.com/jku/sato-screenshot/tree/gtk3
>

Merged and tagged, thanks Jussi.

Ross

--001a113ed20aff899b05331c36f1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 2 May 2016 at 08:48, Jussi Kukkonen <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:jussi.kukkonen@intel.com" target=3D"_blank">jussi.kukkonen@intel.com</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":bb5" clas=
s=3D"a3s aXjCH">The grab code was trickier with current API (which is why I=
 left it as<br>
is), but I took another look and it turns out that code has never<br>
actually been used...<br>
<br>
So I removed _grab_lock() and _release_lock(), and replaced STOCK<br>
items with text.<br>
I&#39;ve added these changes to the same branch (should now compile<br>
without warnings):<br>
=C2=A0 git://<a href=3D"http://github.com/jku/sato-screenshot" rel=3D"noref=
errer" target=3D"_blank">github.com/jku/sato-screenshot</a> <span class=3D"=
il">gtk3</span><br>
=C2=A0 <a href=3D"https://github.com/jku/sato-screenshot/tree/gtk3" rel=3D"=
noreferrer" target=3D"_blank">https://github.com/jku/sato-screenshot/tree/<=
span class=3D"il">gtk3</span></a></div></blockquote></div><br>Merged and ta=
gged, thanks Jussi.</div><div class=3D"gmail_extra"><br></div><div class=3D=
"gmail_extra">Ross</div></div>

--001a113ed20aff899b05331c36f1--
