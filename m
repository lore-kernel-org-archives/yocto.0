Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67FC4E0083C; Thu,  2 Feb 2017 00:44:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.180 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.180 listed in list.dnswl.org]
Received: from mail-qt0-f180.google.com (mail-qt0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B79F4E004E5
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2017 00:44:12 -0800 (PST)
Received: by mail-qt0-f180.google.com with SMTP id x49so17362817qtc.2
	for <yocto@yoctoproject.org>; Thu, 02 Feb 2017 00:44:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=bphU2cyKi5umUSVutR6BHxhg72QZ92xmekMEn/4/79k=;
	b=UVYMVgHjTU1bSDTkGx2YXjFuK2gzQyvluY4Phz8SrPt4UtptC4+3U+xagq6dL8pl+X
	9p533/6uJy/WZSSuoX7yx116LE2Rli0CM3q9le4AyBzutLpKbgxmLOzPB5LxlR0+GCM8
	ZWCYHfO343qrhWZ3jMF3zLd6pehkwYZOgDiiD/HYS/gVEu2Y8W0qz6LJli4k75UZY6OX
	TCSHsRJF85IG499thYCVNwvSsWXkw0vyHlOoetg8nsd+tD0iJIBwZRoR+VU95ucTO6B2
	/Dv6F2Q8lPsb9UqddtC5T7Edn8fgFLG7/lh9RMbQ7ZYxFsrXwDucR6sJYTOGdoD3TdGk
	zfTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=bphU2cyKi5umUSVutR6BHxhg72QZ92xmekMEn/4/79k=;
	b=CUnUPy0sfB48KN+bGEqGg7mq54aVUk8JuSdaCy2v9iNOVUBE31PgzfMwUlGave9zi0
	LacofMQ5bwDbyFIRLPVA6sL4zQCFzwdwBBbnViiJPtbbztH+Uy7NCLH3tVZi6ul1xW1b
	L6cRMEn25/4St7Z2dyLdmoZoGDSfkad9PZtD3ocLGpOD4EWQlTSNXwoXnxMWRT4Zf/lE
	xVUGk200wZSbiXD7Pkx3Nno5p/IhZuAGiXwQVb6ZsOCv4n2id0J19GNI3PvtxbRwlvbD
	mOKOENaTooWuFE5VURnSSJhEl4rmsZ62ZQyDX8hC3ZJI1YwJFAGgTppAyUNklad+UdK/
	TfAw==
X-Gm-Message-State: AMke39mVvsOAroV8nE0Arn2VwPS3EjJw8QHWcRc6NJgCS8KmdYpCWFDAoS2iEoegyjFo4ZZWcKNpz/S4qxW7e6xM
X-Received: by 10.55.15.231 with SMTP id 100mr6868320qkp.244.1486025052007;
	Thu, 02 Feb 2017 00:44:12 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Thu, 2 Feb 2017 00:43:51 -0800 (PST)
In-Reply-To: <OF4FB9DFFD.52F1E88C-ONC12580BB.002DEC1F-C12580BB.002E638E@esa-grimma.de>
References: <OF4FB9DFFD.52F1E88C-ONC12580BB.002DEC1F-C12580BB.002E638E@esa-grimma.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 2 Feb 2017 08:43:51 +0000
Message-ID: <CAJTo0LbUOOaxcUCZhKiMHCcyAk7dv2N4mNWeGDfROOpHfVZJ1g@mail.gmail.com>
To: S.Jaritz@esa-grimma.de
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to setup apt-get to work togehter with the packages build with yocto?
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
X-List-Received-Date: Thu, 02 Feb 2017 08:44:15 -0000
Content-Type: multipart/alternative; boundary=001a114760325a44720547882b42

--001a114760325a44720547882b42
Content-Type: text/plain; charset=UTF-8

On 2 February 2017 at 08:26, <S.Jaritz@esa-grimma.de> wrote:

> I like to setup a central host for the packages build with yocto. The goal
> is, that everyone can download the "new" packages from a server in the
> local network. I am looking for a description how to archive that or some
> tips to start from.
>

I've not tried it with dpkg/apt, but setting PACKAGE_FEED_URIS to the base
URL of the feeds works well with opkg and should work on all package types.

Ross

--001a114760325a44720547882b42
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 2 February 2017 at 08:26,  <span dir=3D"ltr">&lt;<a href=3D"mailto:S.Jar=
itz@esa-grimma.de" target=3D"_blank">S.Jaritz@esa-grimma.de</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><font size=3D"2" face=3D"sans-seri=
f">I like to setup a central host for the
packages build with yocto. The goal is, that everyone can download the
&quot;new&quot; packages from a server in the local network. I am looking
for a description how to archive that or some tips to start from.</font>
<br></blockquote></div><br>I&#39;ve not tried it with dpkg/apt, but setting=
 PACKAGE_FEED_URIS to the base URL of the feeds works well with opkg and sh=
ould work on all package types.</div><div class=3D"gmail_extra"><br></div><=
div class=3D"gmail_extra">Ross</div></div>

--001a114760325a44720547882b42--
