Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E414E00D58; Mon,  2 May 2016 01:22:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.41 listed in list.dnswl.org]
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07D83E00D4F
	for <yocto@yoctoproject.org>; Mon,  2 May 2016 01:22:44 -0700 (PDT)
Received: by mail-oi0-f41.google.com with SMTP id x19so181300976oix.2
	for <yocto@yoctoproject.org>; Mon, 02 May 2016 01:22:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=nCJjvt8OMvA2SfmlCWv7h3WQMOWuxqWvTqqWH2MuBPQ=;
	b=ORVBFG94N6inhuqIqpcXiMmX/ARnL4lFkdXJTlMogMqh11S/3bAHXHjJCzEswCA2zR
	WPzUjHogfixWoaHVrq1SzQz7lv6igmgMc+oQHy6RQmMicSTvVFmx8TTPlLRc5iBp4zC3
	w6gd77lKMr5dqSCCplorj+OiGjg7gCg+NjbNBBWu7sBERH8myZQC6HCbcQgO9WkurqDb
	tqoAEerUt2bbBsUtvoF/gFLBx2ZwDbvnZ3c9gQeV5Hg2A8xf9pinayHQ/OrwSdHXId6C
	mFu/mcD/mZsF7pxISHeIqYtb+vLzuLQ9rsAMT7Y8WirbaBeDoabw7V7xNbffrp7TvsfY
	CKgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=nCJjvt8OMvA2SfmlCWv7h3WQMOWuxqWvTqqWH2MuBPQ=;
	b=mUpsu5aWTMx68sBlb39k3nIy1YPQopeloCojhwAWLyXH+Z5STeixldpFifbTzKLzzM
	saBRdao0KdhDF3F1n49//8mEDF/yOuKGcEpFjvM+Je8KkE8PmNhoQFRxEigRHgCaFltc
	o2Nq2gFWamVAhIc0VCjDrlTykIgCtUhp+TKqxwsco+N2WNu4gVVhB6OhY/vld3tTZY6D
	Oo6ZJ52CcdWBLHXC3XGH7WfYeF/8/sTIgV3v2WAMbxmPg1qBq3D1TBOmsCzdTwA4KrTj
	J8V4TeQ/QLCOeoa15rLzTDFOukPkKkuvv+FAKW3wNwTLHZXPF0tY5dTEZZ/DzJsLcoxo
	gsjQ==
X-Gm-Message-State: AOPr4FV2MJVra+Lx+DAHlkL3prFo0rdLdiCzd2S9i47gdxOoWz6rFaAttrwKrxPLVjzq/bsuWw29PBzbS1Idwz5o
X-Received: by 10.157.12.168 with SMTP id b37mr13280602otb.4.1462177363866;
	Mon, 02 May 2016 01:22:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.173.193 with HTTP; Mon, 2 May 2016 01:22:14 -0700 (PDT)
In-Reply-To: <CAJTo0LZs7fBXjUwskfcjCwN6eWKxmPxxtFpmABG06dodyR736w@mail.gmail.com>
References: <cover.1461926785.git.jussi.kukkonen@intel.com>
	<570f4f447c75829576e4c22cf3ce8ce676a80936.1461926785.git.jussi.kukkonen@intel.com>
	<CAJTo0LZs7fBXjUwskfcjCwN6eWKxmPxxtFpmABG06dodyR736w@mail.gmail.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Mon, 2 May 2016 11:22:14 +0300
Message-ID: <CAHiDW_FPgQCgPc-a0iXkcsqOXg16hvnjdNLQcJbeuwdCRHeiEQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [matchbox-config-gtk][PATCH 1/1] Port to Gtk+3
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
X-List-Received-Date: Mon, 02 May 2016 08:22:48 -0000
Content-Type: text/plain; charset=UTF-8

On 29 April 2016 at 18:36, Burton, Ross <ross.burton@intel.com> wrote:
> Hi,
>
> mb-appearance.c: In function 'new_frame':
> mb-appearance.c:352:3: warning: 'gtk_alignment_get_type' is deprecated
> [-Wdeprecated-declarations]
>    *align = g_object_new (GTK_TYPE_ALIGNMENT,
>    ^
> In file included from /usr/include/gtk-3.0/gtk/gtk.h:248:0,
>                  from mb-appearance.c:28:
> /usr/include/gtk-3.0/gtk/deprecated/gtkalignment.h:77:12: note: declared
> here
>  GType      gtk_alignment_get_type   (void) G_GNUC_CONST;
>             ^
> mb-appearance.c: In function 'main':
> mb-appearance.c:385:41: warning: 'GtkStock' is deprecated
> [-Wdeprecated-declarations]
>                                          GTK_STOCK_CLOSE,
> GTK_RESPONSE_CLOSE,
>                                          ^
>
> Should be simple to fix?

I was sure I handled these already ... but no, sorry about that. I
pushed a commit into the same branch to fix the above issues:

  git://github.com/jku/matchbox-config-gtk gtk3
  https://github.com/jku/matchbox-config-gtk/tree/gtk3

Jussi

