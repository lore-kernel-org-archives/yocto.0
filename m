Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 358D1E00D00; Wed, 27 Feb 2019 13:49:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f172.google.com (mail-it1-f172.google.com
	[209.85.166.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2046E00C1B
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 13:49:13 -0800 (PST)
Received: by mail-it1-f172.google.com with SMTP id l139so10321746ita.5
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 13:49:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=+ZkpkBgNWMKUg5QathC2wlhNPW5SaQ14puRXhkiOcPU=;
	b=kvhXmx5UYBuAAoTfsNRDz9cti1EqZ6UUNcngbAWJhc17yqybaZkulDyxjwwKslXD8G
	74nKQ9zjlqySaaDfXbofKp+4NJD4nrsPjqimpeGbpu1Yg4gsZAqQeUHFMKPkVXpe4Mis
	uzC3qouKv7Jl56Dw6rdJnwUvpoFdG3flvxUE6PjrolpEScapWGt5w2pCioSx1IdcE3nw
	VE724ivRvpLTtuM2eCW9txEz3HIvikB2M7MczzbeakkF5eqCYnnwQxV6geFaSjRS+eYz
	gQXDTkQ1aH8AmF614vZBaKozorQkQfrBEeJQjMQZjN+XcHILzstp71Er6P7hky9KFwJK
	S4+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=+ZkpkBgNWMKUg5QathC2wlhNPW5SaQ14puRXhkiOcPU=;
	b=D6vfw5aau7X9FzOmsCoofYlkT00e2y5r3cWrCbJoQkdzp+hO7Bjwc45qj5CsqSoehF
	8G/zIgouLLxZMEe5FCqR7Lhg1pfqxtDL35+hl1l1XmF+JztwQdlSM7NPdGP3FV89TN+z
	pBlIEPeXOE9sMQ6UrF4Q9dSPDZP449/kXYlqi+cU0iy/d7qix57kpScyFtW2odQ6BUGQ
	IwuUUiFf30E4YK+Vuf01OYxmEA0uN72Dbu1G/BMr//Z/akB1j2s2roUi9QgpIUgNRvxC
	Ng0CQT0CPwNTGtOurDN2zi8ncMsjyue4efBAw7yZBdODRS4iLefdLM/FoR0UTw9+KIYn
	1MpQ==
X-Gm-Message-State: AHQUAuaYExFx+pL9vY1Wv33CNexkXaQAKu8e/kT5rVUnTE+oD4LUhOKb
	Grk+piUkSBVTrjfhnQMvPZlsxIUmUSav6rb8kD+3nDJz
X-Google-Smtp-Source: AHgI3IafL8nQoOidclAE0NRDUcYyt9LCQmGgTBf06SgXb4H08pIldFBsKgIjRCu4i/LE1r9lOGCayfvi0Qh0rNagI9s=
X-Received: by 2002:a02:240d:: with SMTP id f13mr2820519jaa.105.1551304153072; 
	Wed, 27 Feb 2019 13:49:13 -0800 (PST)
MIME-Version: 1.0
References: <63908e27-9243-16f9-aa65-e0c0d3e23af1@innodelec.ch>
	<20190227170614.GV12046@bill-the-cat>
	<93dcfef4-e49f-a683-0f5b-3acdb9dbb663@innodelec.ch>
	<20190227200902.GG12046@bill-the-cat>
	<20190227214037.GA11051@localhost>
In-Reply-To: <20190227214037.GA11051@localhost>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 27 Feb 2019 21:49:02 +0000
Message-ID: <CAJTo0LZLmbzj5b0gZ7ZfGTT1KisMekhv91KAwEDrQ9p5GN5_eA@mail.gmail.com>
To: Adrian Bunk <bunk@stusta.de>
Cc: Tom Rini <trini@konsulko.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Removing busybox
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
X-List-Received-Date: Wed, 27 Feb 2019 21:49:14 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, 27 Feb 2019 at 21:41, Adrian Bunk <bunk@stusta.de> wrote:
> It is not obvious to me what usecases people have in mind for
> getting rid of busybox, and whether everyone is aware that
> something like "all busybox commands replaced" is *very*
> expensive regarding filesystem size.

Considering many of the people who are trying to not install a single
byte of busybox are also installing toybox, the GPL is often the
reason.  Not sure how to square that with also using Linux though...

Ross

