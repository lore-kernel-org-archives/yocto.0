Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F96CE0083D; Fri,  2 Dec 2016 12:34:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.174 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.174 listed in list.dnswl.org]
Received: from mail-qt0-f174.google.com (mail-qt0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38E2AE007AA
	for <yocto@yoctoproject.org>; Fri,  2 Dec 2016 12:34:53 -0800 (PST)
Received: by mail-qt0-f174.google.com with SMTP id c47so263279643qtc.2
	for <yocto@yoctoproject.org>; Fri, 02 Dec 2016 12:34:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DPDaR0j323oYT5ltV6RPufN7f2cIqjhwV9M4yMk8fSk=;
	b=FvVXPxMBqdJ8nxrDsz7tvGnaoRQq3l5wCwLU8j8+AxsQqC01DQae0Bv4U+cOWjZOaE
	B32PqL+g10sc0OjZ2XtAjBJ4TUq+9uMODoNanMurWg4+lwg5fVuarD9Nilh6xFPCQm7q
	h8X6Og6TI4KGzl1Xz9YlYyvDbRU6hsgrWMcorNQsM3RnSKoiVA6ns8icbfv7U0daiFP6
	ZvxZV9fE6WrpWIyB4xF0NL4dUfFhLeJ+ehNBw2pVSEOA8WyGgvveTI3yAf4kQsbQSigy
	+IQZE/6tWsGvwoeEO9d+mUL9ZQmw5Up7IqJ4D9sKjONnMaStPlFWsPG0bOAZLVdbHhma
	ZqsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=DPDaR0j323oYT5ltV6RPufN7f2cIqjhwV9M4yMk8fSk=;
	b=JTvqsJhbzRkRLWCPgp6NF6ZpnfwPQQdYqmltyJZ4NL6IgrAUXqYXLKrWsxRCXNI+87
	CmnNEnuXugwkJS20sW3N4PMqOccytUjOyREvyAcdsISHewRfDuKI7AHD0LNLLfa5m22z
	K+GMdlC7SrnJhoMT5caFM2oqhR2BlOy+wVwhjqL90hf1cbM7kbdRy62iBjf6mF7cUUaY
	4RK4t0YgwYZH7AihbuzcZ7zYBqcDhvf0IxXLagN4k+xoo72dCh0BdGMkxM4nXu95d/ZC
	AfPhMfAtSYYOzk/V1BRJRKRG5R3vbLkphawSQ0mn4S3i0JiazJjEgaZWY+S3tfs6yJp2
	6OMQ==
X-Gm-Message-State: AKaTC01kF/i1k2pRtQBiipoaLH6dfM92zDd1Df2cuick3RE5D9n10PTL7E3aSf12OCYp4YtgQdhZav64B/ySYSZ+
X-Received: by 10.237.37.77 with SMTP id w13mr44895566qtc.197.1480710892778;
	Fri, 02 Dec 2016 12:34:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.106.99 with HTTP; Fri, 2 Dec 2016 12:34:32 -0800 (PST)
In-Reply-To: <CAGMNF6ViY9i1Rx5Qf4AsSaoqTLhCuSGvJoxOo5SC6NFwKTfknQ@mail.gmail.com>
References: <CAGMNF6VXO9PzmXEb-tPHnw7zxRAM-pUgHa3O2XUVKE2xYidD1A@mail.gmail.com>
	<aad8d580-b2f9-4cd1-9e2a-d355f6f7cf2e@linux.intel.com>
	<CAGMNF6ViY9i1Rx5Qf4AsSaoqTLhCuSGvJoxOo5SC6NFwKTfknQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 2 Dec 2016 20:34:32 +0000
Message-ID: <CAJTo0LbdWVMcYkOW-GN7SWNqGj7Vt=nrAjz+LbsS9vuyCmqDsA@mail.gmail.com>
To: Kun Yi <kunyi@google.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto doesn't recognize cross-compiled binaries inside SDK
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
X-List-Received-Date: Fri, 02 Dec 2016 20:34:55 -0000
Content-Type: multipart/alternative; boundary=001a114108eac79d920542b2dea7

--001a114108eac79d920542b2dea7
Content-Type: text/plain; charset=UTF-8

On 2 December 2016 at 18:36, Kun Yi <kunyi@google.com> wrote:

> Thanks for the explanation Alex! Will give the alternative you suggested a
> try.
> As I understand I will need to instruct Yocto to fetch necessary
> "native" toolchains and libs to compile the native variant recipe.
> Doesn't that make my recipe non-portable to other host architectures?
>

You can use BBCLASSEXTEND to make a native form of the recipe, or not use
the cross compilers.  But if you want to  actually test your code as it
should be executed then you'll need to run it either on the target, or in a
system qemu (which will need a complete rootfs).

Ross

--001a114108eac79d920542b2dea7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 2 December 2016 at 18:36, Kun Yi <span dir=3D"ltr">&lt;<a href=3D"mailto=
:kunyi@google.com" target=3D"_blank">kunyi@google.com</a>&gt;</span> wrote:=
<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><div id=3D":tm" class=3D"a3s aXjCH m158c=
0d3e66d7dce7">Thanks for the explanation Alex! Will give the alternative yo=
u suggested a try.<br>
As I understand I will need to instruct Yocto to fetch necessary<br>
&quot;native&quot; toolchains and libs to compile the native variant recipe=
.<br>
Doesn&#39;t that make my recipe non-portable to other host architectures?<b=
r></div></blockquote><div><br></div><div>You can use BBCLASSEXTEND to make =
a native form of the recipe, or not use the cross compilers.=C2=A0 But if y=
ou want to =C2=A0actually test your code as it should be executed then you&=
#39;ll need to run it either on the target, or in a system qemu (which will=
 need a complete rootfs).</div><div><br></div><div>Ross=C2=A0</div></div><b=
r></div></div>

--001a114108eac79d920542b2dea7--
