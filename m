Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73146E00A45; Fri, 26 Jun 2015 07:20:08 -0700 (PDT)
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
	*      [209.85.220.177 listed in list.dnswl.org]
Received: from mail-qk0-f177.google.com (mail-qk0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2091BE00A2C
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2015 07:20:05 -0700 (PDT)
Received: by qkhu186 with SMTP id u186so55776366qkh.0
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2015 07:20:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=LE4sJdHxK6xHq8jliTfJpAEJ3v9/OCZLbR05Aq/Jd3w=;
	b=FwQ8l3kAUFC93a3LI0cD7pS1KLNvyanDtXKoF1MsxQZFTwdtBUyMY8m6X2LEsfTVTh
	zbR1yZixU2vWvQYfp/tfqoRaynrPLxSeEMpQW6XpUDmGdjDP0m74MczYOuzNo9d7c1/I
	QfOweOwn3C42QqrpIcaWtCMdcXBzO4OcQDtqp/AtCEZGN2ao58wJV80zzA0mQ/kPgigj
	+FCJqv7SQWyKBq+2x0PzMhjXveU7tWxUW/eztws1Xc4vp3GCBYHNpmP1UfnyWfbdpodn
	mt3O4IRMuJMGxS9qOxP9ct1Bx4kgmQsGq7oAA77HL452fYHqr6hOaw2+ZZaPW3kcbSD3
	V0dA==
X-Gm-Message-State: ALoCoQkenh8v6Rk/ZYwJJUoIKOy4gBlbPj1Gv6YLkVfjUD7OFX/wYYjEbyj/PRvtoOV3AUE1PPx6
X-Received: by 10.140.88.5 with SMTP id s5mr2461454qgd.59.1435328404752; Fri,
	26 Jun 2015 07:20:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Fri, 26 Jun 2015 07:19:43 -0700 (PDT)
In-Reply-To: <CANge7vUQG3p3L7R5ZiZJJ62=zsYoGdjieiHwHktPD7yQ-ZsPag@mail.gmail.com>
References: <1435292188-29514-1-git-send-email-jon.szymaniak@gmail.com>
	<CAJTo0LaKZsvvC4hKZrJiX6r2=Q+JL48+i3fBVQauDDYNtPn+og@mail.gmail.com>
	<CANge7vUQG3p3L7R5ZiZJJ62=zsYoGdjieiHwHktPD7yQ-ZsPag@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 26 Jun 2015 15:19:43 +0100
Message-ID: <CAJTo0LaJuRxg86a9rF8LiW2xB=cjt9px4+7NLQ0fdy94PwXLVA@mail.gmail.com>
To: Jon Szymaniak <jon.szymaniak@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] firmware.inc: Fetch a zip instead of cloning a git repo
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
X-List-Received-Date: Fri, 26 Jun 2015 14:20:08 -0000
Content-Type: multipart/alternative; boundary=001a11c11874b39fe805196c6f73

--001a11c11874b39fe805196c6f73
Content-Type: text/plain; charset=UTF-8

On 26 June 2015 at 15:16, Jon Szymaniak <jon.szymaniak@gmail.com> wrote:

> I'm open to other suggestions as well, as this was just a first stab at
> it. I've been seeing that cloning this git repo containing binary firmware
> blobs takes an absurd amount of time, if it even finishes at all
> successfully.
>

I believe github offers hosting of "release" tarballs too, so upstream
could take advantage of that.  Having verified checksums of firmware is
useful from a security point of view as you can't really inspect the
sources for it...

Ross

--001a11c11874b39fe805196c6f73
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 26 June 2015 at 15:16, Jon Szymaniak <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:jon.szymaniak@gmail.com" target=3D"_blank">jon.szymaniak@gmail.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"gmail_ex=
tra">I&#39;m open to other suggestions as well, as this was just a first st=
ab at it. I&#39;ve been seeing that cloning this git repo containing binary=
 firmware blobs takes an absurd amount of time, if it even finishes at all =
successfully.<br></div></blockquote></div><br>I believe github offers hosti=
ng of &quot;release&quot; tarballs too, so upstream could take advantage of=
 that.=C2=A0 Having verified checksums of firmware is useful from a securit=
y point of view as you can&#39;t really inspect the sources for it...</div>=
<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div><=
/div>

--001a11c11874b39fe805196c6f73--
