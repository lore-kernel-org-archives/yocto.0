Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39964E00CAF; Wed,  6 Mar 2019 12:29:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
	[209.85.166.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13F66E00BCC
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2019 12:29:49 -0800 (PST)
Received: by mail-io1-f42.google.com with SMTP id p18so11393044ioh.5
	for <yocto@yoctoproject.org>; Wed, 06 Mar 2019 12:29:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=1h1NYaOqghjupMMeMFkda89k5+At7BC8ae10TyXUFHU=;
	b=HNd6LYFFUxJnHB1xVn8XCvHu6cMWqp0VmRJVD1VPBbFzdk/PdlpHhtQMuymGjMnF78
	CWo7ApGjflVtfrZ2YnfoGln9AM1QSNZj+VrGTWS/nC7w4lTzi5BlmLNUE/XuVJ/NNZ3Z
	us1mMTCiCnxJtqoVqfuNGY4AljT4bszanw58H5IzfK5mrUiDV6IYNHGMmsupPDwsHayo
	7pte7uM0hUCXWtZN6/9LiMgGvCDW389+RcYAqvglRq+gJ5NC2q/cQEPWpmzS0wSM0xac
	nQmVmStSTiaEsSRXFWQ+XI2htK2YYVLpyU18Q/cBBlSQOdsBeJimF3fjNeYDdu/o4MkB
	mYIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=1h1NYaOqghjupMMeMFkda89k5+At7BC8ae10TyXUFHU=;
	b=lP5clVbC3qo1W19sQlwA09yIS+3m45h47ShL/L06SU4ingfbHaGX+rmbvRXU4DNdjz
	npdyzuc+pZdRIHgMIB9SQr6Pdj82Nt9d2ybFDs0wfeCSPdH/mIUUOU3BmScD0KPWtKHC
	I37YR8i++njCenZK6JAxFDVL0q9oaQY0j0wdDcEKpxRqWranwIbvIDFFnIqTgJDqZLe9
	mlxHWVp+aWuYJ7e4ZWHkhVCpGAqcVwz9m5NI01vU3buhIdJpykW7NoQbY1njfKAL5qJP
	sYdyDWDH/KWAe/4bDz84Sf8/lXZNZneKNHKXb38xupmgkRCEVk0eB8gNSeUy291pTxsL
	mrQQ==
X-Gm-Message-State: APjAAAUMzk0yf2KjFuD1M16rOhmG+9FeRenjy+On0UmHTBoBTGpO7m/n
	lqzY824zi79FFPUS7MSOnw8h6Oj7ntF0tWIJfto8UJeJ9wk=
X-Google-Smtp-Source: APXvYqypyI3WOSbsYxxtQBkz3WSiQg6llzhcMuuEEdpFCLIQlPS+tipxy1rI3QLbQhmeInb9OGA8eVUT7mqQkcqdRVk=
X-Received: by 2002:a5d:848b:: with SMTP id t11mr3856226iom.270.1551904189456; 
	Wed, 06 Mar 2019 12:29:49 -0800 (PST)
MIME-Version: 1.0
References: <4d30a0e379c74c9e673fd65721463b04@mail.kylheku.com>
	<fd98415c1d3aebb569a588bfa0faf9f3d86ca9cd.camel@linuxfoundation.org>
	<e21f2565c099e27ab58c7c7feaafdb95@mail.kylheku.com>
In-Reply-To: <e21f2565c099e27ab58c7c7feaafdb95@mail.kylheku.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 6 Mar 2019 20:29:37 +0000
Message-ID: <CAJTo0LZ=ebR2Mao_-vyFN8YTg2pfse2Ls476pb5hHZaQGMBpkA@mail.gmail.com>
To: "Kaz Kylheku (poky)" <442-103-8455@kylheku.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Incremental rebuild doesn't pick up FILES changes.
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
X-List-Received-Date: Wed, 06 Mar 2019 20:29:53 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, 6 Mar 2019 at 20:14, Kaz Kylheku (poky)
<442-103-8455@kylheku.com> wrote:
> So, the issues are now is that
>
> FILES_${PN}_remove = "${libdir}/python2.7/encodings"
>
> in fact does not work, as I believed.

Have a look at python.bb.  Specifically:

PACKAGES_remove = "${PN}"

There is no PN being packaged.

What are you actually trying to do?

Ross

