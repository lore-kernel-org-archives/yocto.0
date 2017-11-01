Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0AEBFE00B67; Wed,  1 Nov 2017 11:05:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.176 listed in dnsbl.sorbs.net]
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8DB5E00928
	for <yocto@yoctoproject.org>; Wed,  1 Nov 2017 11:05:29 -0700 (PDT)
Received: by mail-io0-f176.google.com with SMTP id d66so7082355ioe.5
	for <yocto@yoctoproject.org>; Wed, 01 Nov 2017 11:05:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=mHI7vTlZKx32Wa6f8+o9uWMWikGC3IA3rDCMWffdJe0=;
	b=mMUtRYzGIJZjbuX/gO/338/RU7hka8tGWLOlhmi/6iOfucKBwfdvlU/CQ+x9tJq57O
	O2RhUFF6RT3AtSkK+LuFhArEy2f4nvv6l9EcnK3TbuLJL15mH3gQ75phIqKu3jah/LPr
	OaSG9UGS2z811hMrZ6dCm1tBbCKfEmk1QhDWfbHY63MOuvL3Qr3n/G9F6CXK993H6BGN
	K2iXy4EmdE0DwCm8abPxZgGPct9bbcaobzBy2SqC2qGZaa+DEgqjLPDNUBLVoYgJ6xlF
	KxSZVm0WK3+L06p2UnmC7rqfM7pYx34cro/l5LyDEXfYuWM5nMB2H0MUxWx4Vr1IagyO
	wP2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=mHI7vTlZKx32Wa6f8+o9uWMWikGC3IA3rDCMWffdJe0=;
	b=k1x4K4CG23jn7oO0Qlm+UE5G+mtMqqAwVTqHU0O+LojrdWCPKqyLsCl7g8QhJkDZR5
	WCOza3/qokx44aPm3Nzis0DJRE/iw5KpKdQ8EJ57EbvSj+1ijV5YXxJIov2ADRNbeTjk
	PDcjmyuD1cn4A9fOlaVStcfOVNR3zw2L3ahbEATlLCw2P6JxOKRUt6aUSBTPX1gLFb3A
	MhopAHShk4O3mbXx1PTSEppGN1JwK1IyQ+c9wbChS1VJdIFBBMuUdzrMf592JofLZOR8
	9F05dq+gis4qocjhV6tLPUtzQUuolyWTN1IGK5VLX9oCTlUvsGh2k0Hf6q6WxwzhTKYL
	kx4Q==
X-Gm-Message-State: AJaThX7gdnXktuY2eHAq6lgqStcbwrXYV6y/zdJyqSw/mYhau9HbDFE+
	oJpbe0b4Lch6TgrihdiwR5bas/7/9b25mAY4bGbaMw==
X-Google-Smtp-Source: ABhQp+T0arz7KphM1i0nS2jCIxFRz3VpBJZrK6lu42BlmNePUuWPAgHEzqqslI7eGc4kyhFBVvrQ1ZfD1aTUfjBCqQY=
X-Received: by 10.107.18.67 with SMTP id a64mr936188ioj.165.1509559528853;
	Wed, 01 Nov 2017 11:05:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.176.10 with HTTP; Wed, 1 Nov 2017 11:05:08 -0700 (PDT)
In-Reply-To: <CAOT_U5ZYFa_5Ua0swNRGyxG+hV9xNtTzGuEe5yGzYG4rDxsdNQ@mail.gmail.com>
References: <CAOT_U5ZYFa_5Ua0swNRGyxG+hV9xNtTzGuEe5yGzYG4rDxsdNQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 1 Nov 2017 18:05:08 +0000
Message-ID: <CAJTo0LZLx=qMPWvu8rxugRy1JQzL3MKO2MwHcBtarqxgokHvGQ@mail.gmail.com>
To: Alan Martinovic <alan.martinovic@senic.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Debugging a build issue in an isolated enviroment
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
X-List-Received-Date: Wed, 01 Nov 2017 18:05:31 -0000
Content-Type: multipart/alternative; boundary="001a113ee9b27c30c1055cefb793"

--001a113ee9b27c30c1055cefb793
Content-Type: text/plain; charset="UTF-8"

On 1 November 2017 at 17:38, Alan Martinovic <alan.martinovic@senic.com>
wrote:

> Is there a way to run the above listed make command with the same
> environment as it is run when the error is produced?
>

$ bitbake <recipe> -c devshell

This drops you in a new terminal with the same environment that bitbake
sets up, and in ../temp/ you'll find run.do_compile and so on, which are
the scripts that bitbake runs for each task.

(you need to fix your recipe so that it forces the use of ${BUILD_CC}
instead of cc)

Ross

--001a113ee9b27c30c1055cefb793
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 1 November 2017 at 17:38, Alan Martinovic <span dir=3D"=
ltr">&lt;<a href=3D"mailto:alan.martinovic@senic.com" target=3D"_blank">ala=
n.martinovic@senic.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra">=
<div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Is there a way to=
 run the above listed make command with the same<br>
environment as it is run when the error is produced?<br></blockquote><div><=
br></div><div>$ bitbake &lt;recipe&gt; -c devshell</div><div><br></div><div=
>This drops you in a new terminal with the same environment that bitbake se=
ts up, and in ../temp/ you&#39;ll find run.do_compile and so on, which are =
the scripts that bitbake runs for each task.</div><div><br></div><div>(you =
need to fix your recipe so that it forces the use of ${BUILD_CC} instead of=
 cc)</div><div><br></div><div>Ross</div></div></div></div>

--001a113ee9b27c30c1055cefb793--
