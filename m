Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B66A3E00D4A; Thu,  1 Dec 2016 15:53:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AD8DE00D3F
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2016 15:53:54 -0800 (PST)
Received: by mail-qk0-f171.google.com with SMTP id q130so75398185qke.1
	for <yocto@yoctoproject.org>; Thu, 01 Dec 2016 15:53:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=et/xYVkIcwP/Uy3tISjck6vvyeJGSuYbMXDqzPUJnWQ=;
	b=fMWqLmiUEsqN9LOw+Bo+SuYwAjE2tr4DyeHpJ3ZHhejgHWYLZ3/IGSY2TCqceI9DkS
	NHF8Ojg4XhexWco7DtHCUuxXhSmPVdFzMOqF7WFR+HmM3TLUMpO5OGTK/zlzLrcmuEyE
	z268FfDQfoVGYmopYMGmvU2G5pI1jB6FzGkFDhg3Wh7W+NzZ5niSWnTYahG2J28sZfFZ
	fehp59l0WUyK3YT65wHjamnUTEqpPnTLRjDTjDLlZ62Kn3+CiuNElGIELq0GSifuuQCA
	mCpD6/Wv7dxl0lEGY0ql+bVfODAtxZN0uzmR0J9ITzOzZbcgaZVS+Q5JnI6nz/fKI3w2
	BZ1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=et/xYVkIcwP/Uy3tISjck6vvyeJGSuYbMXDqzPUJnWQ=;
	b=c5w03lyNSFbCq/E6ZfBTrNbO4/inQOwvaO2nclPrV/NYhne4O5Lg1GdOtGsOo6w4c/
	UDBEvQCbF8MgYbn/JjPaqamj0i/WVYJCHgDDZXJpuHRLEjN5CTWvQJltAmeM0fvrpv31
	WtrVEQl4FPoCgYQS1fYe02A5bNNXtfwMxcYXgu/cZgKp7pjzwW0sxrbQziBFfKrhLKU7
	XsZaY7fY0BQcTs58Q9ykBKVTSjyPsygFwyU1YbMBVUzaGHeq+CxGSgfY327Hgv9OBJD6
	fNTtFyqbO1PgOs5q2WkN4CJ/hVUh4ot6aBsm8ESq61mxjLo9TMwoLxH2TSApihfhszAq
	e38g==
X-Gm-Message-State: AKaTC010lSGw7fc9FkIjvUsCTPSIWmdK8DUdbCjPt9ZPAOrq1rwBc7ZKvWqnF4mYQ5C/3Xqz5gzPdNR0X+vqCw==
X-Received: by 10.55.94.135 with SMTP id s129mr34160129qkb.124.1480636433793; 
	Thu, 01 Dec 2016 15:53:53 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.45.227 with HTTP; Thu, 1 Dec 2016 15:53:53 -0800 (PST)
In-Reply-To: <7643af55-5a52-1a8c-bc0a-c711be62ec7e@windriver.com>
References: <20161201200550.GA31925@openSUSE-i7.site>
	<CADkTA4OX9crgydX7FWBs6hQ1AYr3rOsGhokNPG+fdZNKef_-7w@mail.gmail.com>
	<20161201224415.GA4271@openSUSE-i7.site>
	<ece5577e-1fa2-aa07-fca4-716875ec921b@windriver.com>
	<20161201230921.GA4961@openSUSE-i7.site>
	<7643af55-5a52-1a8c-bc0a-c711be62ec7e@windriver.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Thu, 1 Dec 2016 18:53:53 -0500
Message-ID: <CAHUNapRGCKjd=-NPASZWy+igKXceiuOKEehPvjCFQ2LEv5zNjw@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: yocto-kernel-tools and multiple users
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
X-List-Received-Date: Thu, 01 Dec 2016 23:53:56 -0000
Content-Type: text/plain; charset=UTF-8

Awesome! Thanks :-)

