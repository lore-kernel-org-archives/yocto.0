Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D860EE00B5F; Tue,  9 Apr 2019 03:11:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f178.google.com (mail-it1-f178.google.com
	[209.85.166.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5920EE00AC5
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2019 03:11:16 -0700 (PDT)
Received: by mail-it1-f178.google.com with SMTP id f22so3951494ita.3
	for <yocto@yoctoproject.org>; Tue, 09 Apr 2019 03:11:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=SZXxCghnBZWKZgz3lzvU9mJnbAHHq9A9iuUPfPVYSGU=;
	b=JQJkXIdlZZQzi4eCATBWncttpPbpuzoey6Pb4P44yGiJzJLjdGjTIzDKR+7ZfqEoAh
	q/Fa6fl6xkaSqUZpJNeZW+jVWruFP4e9Rat2JlVN3W7DEpegNiRFNwjMHv5IbRVN2+6p
	6tAHH/kKlB/aZtLypAd7IL/xiCmRUGknKmeCe62wEDUt0kiPRzK89ss1/VYQwbNdKZ+s
	y6vt/x3xea1O0tV/s754ZvhVwgGVpPFeJ5z3gZZQ67Y68MjcI/UzG9g5rDiYoEkmyXOc
	sGChkxi7xCM91xjWqk8ZYef4/jbCUKwxEwP5LqNeew3lG91LcXcqKeBuBC1DTNxiAYsS
	mXfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=SZXxCghnBZWKZgz3lzvU9mJnbAHHq9A9iuUPfPVYSGU=;
	b=Kxy0RumlSig7BslnU+4MFp9usf4V0idSPIoKe81Lt/jE+AyYaDg1Zg+P0B0cKzsikP
	sw+a6ZjsNWGhqQuiV26t4ExnxMwLz9tGGOImbDq8ryZjXzsiHtpVfnpXa0WPo5/eRLCy
	BNdC+GHt7mBWLz1PnE2Edl6B5AA4ium2QzTLJTATjQMrO2yfsKL1YsA8pOGcDLs1+/e0
	hfb6zFfoAchr4TyU+TSTsyERQpKGXoSoYNbiKWRXLU/alAswNtlcSkAgr06Zl0z6QRoh
	oXSbjvuf9xq7TA+Z41Xx2xJl0t50goLmt+Aed45tWxwDp5jom1EwHpgCzThCaDxTXJId
	L9rA==
X-Gm-Message-State: APjAAAUZvamJM6QBohK8+PGZYc/bhZVMu/NYXztJKmGhMlYrazoZVcwO
	+iVvjU58tPD+3AP10jG9uieqZZplypRga9Gug3WIjcYq
X-Google-Smtp-Source: APXvYqxe4KVnvnZOBjCUkk/IOojJFmMPt0F3wAPT/cmGE9aJHTBvl3uzAg+3dmGOmcyW3KMjEWTA2y9cZ0jzGLEBpRA=
X-Received: by 2002:a24:d643:: with SMTP id o64mr23881265itg.148.1554804675719;
	Tue, 09 Apr 2019 03:11:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190404115301.1820604a@phoenix.invalid>
	<CAJTo0LbwKobcEg8qp0NY-EaEtkgyBHLoVNSBH41brjoOJPw_Vw@mail.gmail.com>
	<20190409094450.6a180445@phoenix.invalid>
	<CAJTo0LY2nx8PUBywRwBtFv2otHq5OKPBYv9fpuvpftnCe0Zp7w@mail.gmail.com>
	<20190409120329.0c68afca@phoenix.invalid>
In-Reply-To: <20190409120329.0c68afca@phoenix.invalid>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 9 Apr 2019 11:11:04 +0100
Message-ID: <CAJTo0LbNzZs=Ba=PmVzAKrK0FsVNVPSKCud6AMgGUgt+q4osWw@mail.gmail.com>
To: Guenther Meyer <d.s.e@sordidmusic.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Metadata is missing in some Python packages
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
X-List-Received-Date: Tue, 09 Apr 2019 10:11:17 -0000
Content-Type: text/plain; charset="UTF-8"

So for me they're in python3-twisted-core on target, and if you have
the right DEPENDS then it should be there for build time.

Ross

On Tue, 9 Apr 2019 at 11:03, Guenther Meyer <d.s.e@sordidmusic.com> wrote:
>
> On Tue, 9 Apr 2019 10:55:38 +0100
> "Burton, Ross" <ross.burton@intel.com> wrote:
>
> > Specifically for twisted, do you mean these files:
> >
> > python3-twisted-core:
> >         /usr/lib/python3.7/site-packages/Twisted-18.4.0-py3.7.egg-info/PKG-INFO
> >         /usr/lib/python3.7/site-packages/Twisted-18.4.0-py3.7.egg-info/SOURCES.txt
> >         /usr/lib/python3.7/site-packages/Twisted-18.4.0-py3.7.egg-info/dependency_links.txt
> >         /usr/lib/python3.7/site-packages/Twisted-18.4.0-py3.7.egg-info/entry_points.txt
> >         /usr/lib/python3.7/site-packages/Twisted-18.4.0-py3.7.egg-info/not-zip-safe
> >         /usr/lib/python3.7/site-packages/Twisted-18.4.0-py3.7.egg-info/requires.txt
>
> yes, exactly.
>
>
> --
> Summer-Hack-Session 2.8
> http://session.pestilenz.org/session2/
>

