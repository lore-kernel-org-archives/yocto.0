Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 362F0E009B9; Thu, 16 Feb 2017 06:36:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.177 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.177 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f177.google.com (mail-qt0-f177.google.com
	[209.85.216.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0D7CE00510
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 06:36:48 -0800 (PST)
Received: by mail-qt0-f177.google.com with SMTP id w20so15430763qtb.1
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 06:36:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=NSr7+a3XKFftaCUHd82NUPiAXp/yB7PN0k7rzXVAkYk=;
	b=bQlIoTbmTSgCqv9E1Ufk56fLABlnf+zoAlR8eeG3cl+GczPGS+uuqOIR6BJwB90NrF
	NKykUTBsLrRYlQXmJWIBrUj/cGnt/2wn19ZJROSjL4dyz871ZHqdPw3udAOjOApOEcGI
	mAYbTIjFthDdfIRDoexKMVGTjyize6gNM3rGbdsJHG0bcZIhGN2u+5N4amiJNl1KzOy7
	/NMCN8pxNYpY0gFQJw132zEXHAL1wvjFt2j5gDv1zRitVlNheXzk1ZPlov/ZxM/At3gF
	4zMFDdSDaw5/DPPTOMmRqgretMz/yRdT+p3kmmoTDg9kQgrzjo8PBCNf/I+3LftdXVXZ
	8m6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=NSr7+a3XKFftaCUHd82NUPiAXp/yB7PN0k7rzXVAkYk=;
	b=ijFFa+7XExknWCzecxBbKRjK+PaHfkA41u3yxxl9a299l3A7MmTY7Zc5jX7TZZxM0u
	bWlzO8AhyDSEZaX4Uiy3B2gQBvRouoarw/zLxzG4WJlIYkz34PzffFyF9Vyph5Kcmtz5
	x+bHAf4pz1HLJWMwqYdkpLCEwUXFtStDkBKNjvYixvwbjvlaJpn8rd15anLbBg1EF+jU
	23roSObZhxylIa5UI5ylvOAJjy5Zqcsy8ulW2BJwsT4+cTFg+ush7yAC8MZv8QhYiXaz
	mIS1pu25fvVvEQEINoKrTtt5c/fyM9qQ2CBs7850pOr7DGBTFweThRR7OAhbPxc/hAZT
	/qNg==
X-Gm-Message-State: AMke39kkLGgaqAvSyv16Pmmdgw6uRBr9oarXGGykNIo0+HDog9rjCTzTbBIz0GPSUTSjPs6+fypt13j73XTn1Q==
X-Received: by 10.200.39.212 with SMTP id x20mr2228340qtx.109.1487255807572;
	Thu, 16 Feb 2017 06:36:47 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.39.252 with HTTP; Thu, 16 Feb 2017 06:36:47 -0800 (PST)
In-Reply-To: <CAK18fxE4+8s3QAWm9mVQQjimvAQ1FSL44yWwuGEyDcWki5Tbpw@mail.gmail.com>
References: <CAK18fxE4+8s3QAWm9mVQQjimvAQ1FSL44yWwuGEyDcWki5Tbpw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Thu, 16 Feb 2017 09:36:47 -0500
Message-ID: <CAHUNapT4KhdpWB2EecbjcDCP-qQv+t6-JYfmt9NPB31btU6k-Q@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>,
	Michael Halstead <mhalstead@linuxfoundation.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Change ssh key for meta-raspberrypi
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
X-List-Received-Date: Thu, 16 Feb 2017 14:36:49 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 15, 2017 at 7:11 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> Who do
> I have to talk to get this configured?


Michael Halstead (CC'ed)

