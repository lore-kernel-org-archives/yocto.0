Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65497E00C08; Thu, 15 Sep 2016 00:53:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.44 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3342E009EF
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2016 00:53:25 -0700 (PDT)
Received: by mail-wm0-f44.google.com with SMTP id b187so82962154wme.1
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2016 00:53:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Fs7N4JeAlGBAju6RFzivNM13PazOy94fKKd3ci8WCN4=;
	b=zP+GNVqBA9WKEVOdfAkFxofKC+EFygC5G/4lzHdMNJDXihJ7z2V2mduQO2o7oOP47G
	WDz9MhuCwchsklHB1p30+oYMJrhp/9dq/AslQVTMjXNPjwfrEMF/MOIPIIxh+3N+F4hk
	0IiDraZZmj5Xoz4YCMVwlwOzGxlWoD0jPJi/3At/d1Pj9x1kJ66V1CutJzaDVnwxNdu7
	ql46jGv16z8vKTahVdARi3Sxbrai80MEgnrcjCfOQaadtiMRPckJM+AKuZ0sCoQlT4bj
	Li07ADCo2x/mJfb84HZ7EkMvoottspsoVGqZHyjGxl6lLTP5PFsj5aAIWuzkkfmbXgpH
	YUVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Fs7N4JeAlGBAju6RFzivNM13PazOy94fKKd3ci8WCN4=;
	b=Gg13w1Zygzi/fPmxOH6zeR05s097TuULgmY3efx+E40Tnuela/H44zo1bLL/XP62lp
	6hKNTdfBr7DCOhkVb3kP97CiDNEcE3UxzxBcFKpCFRtgbA+NXRRZDwcKTI07avwXLfSH
	tDwK95erCisK7zi2gJpvw57JlOqSlaYcFlLoGatIabGlOd9DAchCoP26+DTJJZIRibqN
	U37sXWg7t5eySNk28MxiolDvou3274dA87t3Irf8aKKuVemaqp3UgsCvTLECMRazzZZF
	QMuUtCXp07ybTN9Aa5Ra8/jd3WHXIXB0YdqL9wgWJLAylHpdKCN36xhsI5OJh0AJGXFX
	USJw==
X-Gm-Message-State: AE9vXwPAv5PiIvHb7IsGZK4dHkfIoCVyb8NKLccsZp/Lcv35FaMmugptR0M4j7fs+InfJwr+zSI7Z+XUN84LBQ==
X-Received: by 10.194.21.200 with SMTP id x8mr7253598wje.129.1473926004680;
	Thu, 15 Sep 2016 00:53:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.190.233 with HTTP; Thu, 15 Sep 2016 00:53:24 -0700 (PDT)
In-Reply-To: <d53dce10-2665-20e3-cf39-2addb85e7e28@mlbassoc.com>
References: <d53dce10-2665-20e3-cf39-2addb85e7e28@mlbassoc.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Thu, 15 Sep 2016 00:53:24 -0700
Message-ID: <CAJ86T=XwFAVaM38ANWoU+TqAAhuG31c+R9hTKJy3XwQuWmbq5g@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Schizophrenic build
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
X-List-Received-Date: Thu, 15 Sep 2016 07:53:29 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Sep 14, 2016 at 2:02 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> I just built for my shiny new RaspberryPi-3 and noticed this:
>   $ ls -l tmp/work
>   total 32
>   drwxrwxr-x  13 gthomas gthomas  4096 Sep 13 05:40 all-amltd-linux
>   drwxrwxr-x   3 gthomas gthomas  4096 Sep 13 05:36 all-amltd-linux-gnueabi
>   drwxrwxr-x 271 gthomas gthomas 12288 Sep 13 09:20
> cortexa7hf-neon-vfpv4-amltd-linux-gnueabi
>   drwxrwxr-x   3 gthomas gthomas  4096 Sep 13 05:31
> cortexa7t2hf-neon-vfpv4-amltd-linux-gnueabi
>   drwxrwxr-x  20 gthomas gthomas  4096 Sep 13 18:42
> raspberrypi3-amltd-linux-gnueabi
>   drwxrwxr-x 145 gthomas gthomas  4096 Sep 13 07:05 x86_64-linux
>
> Interestingly, the cortexa7t2hf-neon-vfpv4-amltd-linux-gnueabi tree
> [currently]
> only contains webkitgtk (which currently isn't building, under
> investigation).
>
> Any idea why this split?

Quoting from the recipe:

  # https://bugzilla.yoctoproject.org/show_bug.cgi?id=9474
  # https://bugs.webkit.org/show_bug.cgi?id=159880
  # JSC JIT can build on ARMv7 with -marm, but doesn't work on runtime.
  # Upstream only tests regularly the JSC JIT on ARMv7 with Thumb2 (-mthumb).

  http://git.openembedded.org/openembedded-core/tree/meta/recipes-sato/webkit/webkitgtk_2.12.5.bb#n98


> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

