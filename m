Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66EEFE009BB; Thu, 20 Oct 2016 05:28:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.180 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.180 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f180.google.com (mail-qt0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11E2CE009BB
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 05:28:02 -0700 (PDT)
Received: by mail-qt0-f180.google.com with SMTP id f6so53261247qtd.2
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 05:28:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=TT/fcNfFo4e7hh06gQ3Fft2ogtkAoZgMizo6ERrXHXw=;
	b=Q1qfB9+oesN0D2grX5DfzjUgGPmtSRXMM1w+mqcysnuRrW3uzkCMJyUMgfD4/MEh3S
	huPEDNVNyWsUe9RZIQDOX82dqTR90Lb98ShsXqntP3NyaSd6qgCv1tf474366h37xAvy
	guge0wCjyS160rlDufhJp43/qFvk0mDkl8p8vaxSCJdN4Kex0YZENpqTrUSi9j4f17S0
	ftciEFgLfj650bKOCK73dZk+nqLLE/lJ/8naL6Lb0eeebPmelEvlISx0Q1ty52+4Cpqw
	XEH7juCETrHmPQPxOqDUjLManziQ1hewZDX/2dljyF+PibPaL9VC6FySpFhe1GliveAL
	TJ9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=TT/fcNfFo4e7hh06gQ3Fft2ogtkAoZgMizo6ERrXHXw=;
	b=fLkKYUkPL1QkffTjHx3C4I29mVbQn8Ib9qBvELPvEaNzYVdsGk9+fagzYlnzWsvCSC
	RMz+V22IL7J+zTSHdi1lbnHbMi5tyqEKS13yHcQkPimKo2h75fAQkJVRPH7P7xzsIn4M
	3r30hQTvWdSvXR3hypJmKsjd1o6I2v1elJcPY/Nm/lX/tXZfPIvHhktk8i7uGCAI3++a
	sYj+bgBzfdXD2t+D9NlzZeyXK9lKNzkXcaKtWxF1yGG8xwW5IWgwZ6mmZ+fE54Bs+0W/
	/nE3U1YJOBtFTB8oaoWVd43BySxUMRUb1ysVFm2wwxfOXrDj0BlTeYOeu7hRfs4gL/oj
	dqTw==
X-Gm-Message-State: ABUngvfDYCktnv4dwXYDZ/l3MLPZwlh0ea+i7dFGaFlPfCiVy6tw4IBUcArsxOgpGjJAxx1Y/oTboHAjrUoPAnng
X-Received: by 10.200.33.201 with SMTP id 9mr500934qtz.141.1476966481881; Thu,
	20 Oct 2016 05:28:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.208 with HTTP; Thu, 20 Oct 2016 05:27:41 -0700 (PDT)
In-Reply-To: <a38828bc8f0ba53bf239ff3f1c1097@cweb27.nm.nhnsystem.com>
References: <a38828bc8f0ba53bf239ff3f1c1097@cweb27.nm.nhnsystem.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 20 Oct 2016 13:27:41 +0100
Message-ID: <CAJTo0LaQFpkOtWRjbe=WkKHCsnKJPQqsMqTcC+Ku0abneS+Dqw@mail.gmail.com>
To: =?UTF-8?B?7Jyk7JiB7ISd?= <earwigz@naver.com>
Cc: yoctoproject <yocto@yoctoproject.org>
Subject: Re: confusion about DEPENDS vs RDEPENDS vs PROVIDES
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
X-List-Received-Date: Thu, 20 Oct 2016 12:28:06 -0000
Content-Type: multipart/alternative; boundary=001a114038347fcc80053f4b0e81

--001a114038347fcc80053f4b0e81
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 20 October 2016 at 13:06, =EC=9C=A4=EC=98=81=EC=84=9D <earwigz@naver.com=
> wrote:

> Is there anyone who explain to me..?
>
>
The documentation covers these:

http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-PROV=
IDES
http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-DEPE=
NDS
http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-RDEP=
ENDS

Ross

--001a114038347fcc80053f4b0e81
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 20 October 2016 at 13:06, =EC=9C=A4=EC=98=81=EC=84=9D <span dir=3D"ltr">=
&lt;<a href=3D"mailto:earwigz@naver.com" target=3D"_blank">earwigz@naver.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204=
);border-left-style:solid;padding-left:1ex"><p>Is there anyone who explain =
to me..?</p><p></p></blockquote></div><br>The documentation covers these:</=
div><br><a href=3D"http://www.yoctoproject.org/docs/latest/ref-manual/ref-m=
anual.html#var-PROVIDES">http://www.yoctoproject.org/docs/latest/ref-manual=
/ref-manual.html#var-PROVIDES</a><br><a href=3D"http://www.yoctoproject.org=
/docs/latest/ref-manual/ref-manual.html#var-DEPENDS">http://www.yoctoprojec=
t.org/docs/latest/ref-manual/ref-manual.html#var-DEPENDS</a><div><a href=3D=
"http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-RDE=
PENDS">http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#v=
ar-RDEPENDS</a></div><div><br></div><div>Ross</div></div>

--001a114038347fcc80053f4b0e81--
