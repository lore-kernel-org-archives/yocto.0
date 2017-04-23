Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E70E1E007BA; Sun, 23 Apr 2017 15:04:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.171 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC91DE00349
	for <yocto@yoctoproject.org>; Sun, 23 Apr 2017 15:04:49 -0700 (PDT)
Received: by mail-qk0-f171.google.com with SMTP id y63so74771408qkd.1
	for <yocto@yoctoproject.org>; Sun, 23 Apr 2017 15:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=23X4LwhXHaiv5x1KYaf8bGtKH7UD7A1MfEZYIqN/lvg=;
	b=VyIvsrIpTncmKc9M5b7ZSRQ+7B/tLWap3zv2oHJ4NeuGaPwIXpDRwOddC1HlNpd3+d
	8/rMV6jJzQvXt0S2NpDo5i6Qv+QR3kzLiUKp7Js7X9jCEaHQ4Akb6omgvKzMx3Iw5wWX
	FdnKuSEi720SN4HZSn8n/qmJWEt3bOHWEQhMsZXrPf0fNwPdRBKiRUwDzdVAYyOb+XJq
	Gxkmow/fr5/LqPFUt8Qdb6XQe0rKQOfIqDQlGa3Az35sVo6xRRknethW59P1iUBqBdkq
	FqJKA7CM38tcmw6aeFSGt29DuV9iVeydlErj59EuF64ArcXMj2uZPS35CJjkZ8DU/WZ3
	O9tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=23X4LwhXHaiv5x1KYaf8bGtKH7UD7A1MfEZYIqN/lvg=;
	b=CuuUreEorQXQO/Z7CdYZhvSd10GBdvA01R1YS1nHtXfrZq5IQ4mU/JyPLUE56LfK4W
	syAE5Hh1OKuLh5GgmU8h3PBjo8j21QR6SuPx5IIJWwDPO4BI/dgrJDY8SOOkHuyJmAyK
	cfs+8X63IatQvqZh7wLj3IExryLOISoVJk//LtSvRMyTc5tPVXM1JLwsg6VoEs+NL7Ll
	HlIMMAa3f805kSOAIjyByswrfGNoiUR1aLRswFkkv9PjmMeiDjqO3Zp/JSgm8jIwviUI
	G8juzQgyPBEHS2sVcvwR+YEYYXsTQWaRHCYOlGlY3MpEfPsDory6ozPDyKHsZTLvLu3q
	MxoA==
X-Gm-Message-State: AN3rC/5cWO95SdV1ELEstx/mt3jaJYtxp67q6RxXJZbhl64AyBP5I/eQ
	XmsXk59vbmcEXbuZFKt9WOvZcOqauu6/
X-Received: by 10.55.115.65 with SMTP id o62mr22087191qkc.26.1492985088526;
	Sun, 23 Apr 2017 15:04:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Sun, 23 Apr 2017 15:04:28 -0700 (PDT)
In-Reply-To: <CAMKF1spGM+kugUDOB4kF7NAgSCt9vCw8GFT0nLKFRd2tHei=pw@mail.gmail.com>
References: <CAMKF1spGM+kugUDOB4kF7NAgSCt9vCw8GFT0nLKFRd2tHei=pw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sun, 23 Apr 2017 23:04:28 +0100
Message-ID: <CAJTo0La0mtVGyLysCnqi9EQmT+4L1eYRxgE-TV=3Va45jnt=Xg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
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
X-List-Received-Date: Sun, 23 Apr 2017 22:04:53 -0000
Content-Type: multipart/alternative; boundary=001a114fdea2db9a0a054ddcadec

--001a114fdea2db9a0a054ddcadec
Content-Type: text/plain; charset=UTF-8

On 16 April 2017 at 16:50, Khem Raj <raj.khem@gmail.com> wrote:

> I have put together recipes for upcoming gcc-7 major release as well
> as glibc 2.26 release, which we would target for next release ( 2.4 )
>

I threw these at the autobuilder and the errors are starting to appear:

http://errors.yoctoproject.org/Errors/Latest/?filter=
eddf6362e17899113f10cf53ed0db8a4b13ff3fc&type=commit

Repeated diffutils and rpcbind failures, but linux-yocto and grub too (I
have your grub fix already).

Ross

--001a114fdea2db9a0a054ddcadec
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 16 April 2017 at 16:50, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto=
:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left-width:1px;border-left-style:solid;border-left-color:rgb(204,20=
4,204);padding-left:1ex"><div id=3D"gmail-m_8714932811043796775gmail-:2du" =
class=3D"gmail-m_8714932811043796775gmail-a3s gmail-m_8714932811043796775gm=
ail-aXjCH gmail-m_8714932811043796775gmail-m15b77762b05f0bdb">I have put to=
gether recipes for upcoming <span class=3D"gmail-m_8714932811043796775gmail=
-il">gcc</span>-7 major release as well<br>
as glibc 2.26 release, which we would target for next release ( 2.4 )<br></=
div></blockquote></div><br>I threw these at the autobuilder and the errors =
are starting to appear:</div><div class=3D"gmail_extra"><br></div><div clas=
s=3D"gmail_extra"><a href=3D"http://errors.yoctoproject.org/Errors/Latest/?=
filter=3Deddf6362e17899113f10cf53ed0db8a4b13ff3fc&amp;type=3Dcommit" target=
=3D"_blank">http://errors.yoctoproject.<wbr>org/Errors/Latest/?filter=3D<wb=
r>eddf6362e17899113f10cf53ed0db8<wbr>a4b13ff3fc&amp;type=3Dcommit</a><br></=
div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Repeate=
d diffutils and rpcbind failures, but linux-yocto and grub too (I have your=
 grub fix already).</div><div class=3D"gmail_extra"><br></div><div class=3D=
"gmail_extra">Ross</div></div>

--001a114fdea2db9a0a054ddcadec--
