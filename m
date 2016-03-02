Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E709DE00D48; Wed,  2 Mar 2016 04:51:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F3CFE00D33
	for <yocto@yoctoproject.org>; Wed,  2 Mar 2016 04:51:17 -0800 (PST)
Received: by mail-io0-f169.google.com with SMTP id g203so257823556iof.2
	for <yocto@yoctoproject.org>; Wed, 02 Mar 2016 04:51:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=rO7+5s1Clao3r73OXZePOEdkc3oFx+3y9SZKTQaIXB8=;
	b=Mo77V+XqrTt5f7sVox8Zhwu1+TbqEyck45UreEeqKYeKCQIvGWkRSni6IQdFFRf0Wq
	w7ZdiTNPX523P2w9U7njH6Rn2xlvBm9vRJjKE6MFBK0PIzsYf4zkTGjxIihytZi0Gj6V
	0yFlT51vOrLvuy6YGO/UNsE9syIda3vr/mCG3eowdHfg9LgulY80T5DlE9xALi/urVdf
	VI/rx5jRSt7SuFRPli1HyjRoeKrcAV4/5Bzjkm4lrqdmnHPe0iHDn59pknyD2CarTOX9
	edrUVzNCFZy0t8o52TrE41Og4VMs/Gl72DjElpzrprA2TQhYYo1PgdG6KYwUnMGAw823
	5Umw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=rO7+5s1Clao3r73OXZePOEdkc3oFx+3y9SZKTQaIXB8=;
	b=PMo+UQCw5qzzG15eK5YMJionzUBASopMSrAn6s74pV1OzKO+7cQIw+Scws/bsLlyX6
	iUGxwBigsFdT4hS0AaCjWCqIz5WTsjm6ct602s4IvIcAB8FUZx6Z0sv6YnBoZkOglt2i
	G9YT3YLBOGus1tlMYETs8C0K2rc93AeD/W6jJLjfa2tsBzlBmucxEdY40+xmpzX83CMf
	cfXC1XapTKexBBlLvUDmEBJjVe1VK/Z4f0Oslnd/usRJJfmN/Fda3yQd8l1xr+gvmM3B
	5+J6TIDj63IPTn/gUihxXhPfXRboA3o3w0cx75PCQzbMU6Op2X7cLQAsbhlQSjh0OwXa
	5yww==
X-Gm-Message-State: AD7BkJIa8VGjmTCc42XPKWCJj8CBF+5KXQqqcTppqgz5CnrUJYjsd5AsGlF4TQtAP4Ox9OxfYpWybIXO7KMOK2yU
X-Received: by 10.107.134.37 with SMTP id i37mr5530894iod.148.1456923076722;
	Wed, 02 Mar 2016 04:51:16 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Wed, 2 Mar 2016 04:50:57 -0800 (PST)
In-Reply-To: <CAJTo0LbfmyO6d3sX5VSi8hLJnWh+cE73UAY4h5Fg=+_7Pkwzog@mail.gmail.com>
References: <1456876322-11550-1-git-send-email-johannes.pointner@gmail.com>
	<CAJTo0LYtJC5ROMveR3ze8PwZjYVZrO98bJQ6MubmuPmPog2oaA@mail.gmail.com>
	<CAHvQdo1934XFM62FZfQXs8JrakeCyS-e0q+vUgE-Q+uUAVtOvA@mail.gmail.com>
	<CAJTo0LbfmyO6d3sX5VSi8hLJnWh+cE73UAY4h5Fg=+_7Pkwzog@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 2 Mar 2016 12:50:57 +0000
Message-ID: <CAJTo0LYJsTjvjUOpUFKTupmg3g6ChdKHm1NuEAyKvyTNp5R+6g@mail.gmail.com>
To: Johannes Pointner <h4nn35.work@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [xcursor-transparent-theme][Patch] Add several cursors
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
X-List-Received-Date: Wed, 02 Mar 2016 12:51:21 -0000
Content-Type: multipart/alternative; boundary=001a113ed006741b1c052d1056b0

--001a113ed006741b1c052d1056b0
Content-Type: text/plain; charset=UTF-8

On 2 March 2016 at 12:48, Burton, Ross <ross.burton@intel.com> wrote:

> How do you handle users switching between applications in that case? Or
> the application crashing and leaving you without a cursor?  If a particular
> application should hide the cursor them it should just hide the cursor, if
> the entire UI shouldn't have a cursor then use -nocursor.
>

Or if you're using matchbox-window-manager, pass -use_cursor no, which will
also hide it system-wide.

Ross

--001a113ed006741b1c052d1056b0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 2 March 2016 at 12:48, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"gmail_extra">=
How do you handle users switching between applications in that case? Or the=
 application crashing and leaving you without a cursor?=C2=A0 If a particul=
ar application should hide the cursor them it should just hide the cursor, =
if the entire UI shouldn&#39;t have a cursor then use -nocursor.</div><div =
class=3D"gmail_extra"></div></blockquote></div><br>Or if you&#39;re using m=
atchbox-window-manager, pass -use_cursor no, which will also hide it system=
-wide.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"=
>Ross</div></div>

--001a113ed006741b1c052d1056b0--
