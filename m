Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7975AE00A07; Mon,  6 Jul 2015 01:40:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-la0-f43.google.com (mail-la0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B95F8E009BE
	for <yocto@yoctoproject.org>; Mon,  6 Jul 2015 01:40:09 -0700 (PDT)
Received: by laar3 with SMTP id r3so145911262laa.0
	for <yocto@yoctoproject.org>; Mon, 06 Jul 2015 01:40:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:references:mime-version:content-type:content-disposition
	:in-reply-to:organization:user-agent;
	bh=zfdh4F2K5bhSCkc9dZOyctsxISMViZ65A2yoJ6vOYNs=;
	b=gVNsNzBf9VL4szTV3SmyKdVCTVtu+P/AAXAxqGEoc2RQV1giTU6p1uHd3JVwH/+tJI
	SccuitQwXngoz27LtD+m3VOx2hQoJrBGeCfuQYmKLQ83bSiL3oD1aXtUw7bHIhbQ9daH
	cX/JrkfGE+Pa/eMSwj+RKWQXJ24jfC2GCzvTCaY2ELGX/tD0OxSIE9gQl2O3rFoCe0Dj
	Gi+YPyocmz/29jssxOa+w/ZzxPNaR6MCe8S8gsZ0mWdWdKZjbRTPEBQ/JOKaHgpPor+J
	dxAfB8rCqyQ+tlixB/4CHzPHhqkL3GwTs8VAPLG0GJnOAyDMNHAXxO8X5OsMOA5bXF9X
	zObQ==
X-Gm-Message-State: ALoCoQlRM4ht5WMeup0yMu9WilO2Wu3S9EKFnLR2u0zYcgQu9SQbtfEGb9HLNhpL6rzjK2npk2+i
X-Received: by 10.152.21.193 with SMTP id x1mr25713781lae.94.1436172007749;
	Mon, 06 Jul 2015 01:40:07 -0700 (PDT)
Received: from ad.chargestorm.se (213-64-219-84-no126.business.telia.com.
	[213.64.219.84])
	by mx.google.com with ESMTPSA id t15sm4528217lbk.0.2015.07.06.01.40.06
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 06 Jul 2015 01:40:06 -0700 (PDT)
Date: Mon, 6 Jul 2015 10:40:05 +0200
From: Anders Darander <anders@chargestorm.se>
To: yocto@yoctoproject.org
Message-ID: <20150706084005.GA8098@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <1435292188-29514-1-git-send-email-jon.szymaniak@gmail.com>
	<CAJTo0LaKZsvvC4hKZrJiX6r2=Q+JL48+i3fBVQauDDYNtPn+og@mail.gmail.com>
	<20150706051954.GF6806@ulm-bmuc496424.bmw-carit.de>
MIME-Version: 1.0
In-Reply-To: <20150706051954.GF6806@ulm-bmuc496424.bmw-carit.de>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [meta-raspberrypi][PATCH] firmware.inc: Fetch a zip instead of cloning a git repo
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
X-List-Received-Date: Mon, 06 Jul 2015 08:40:13 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

* Clemens Lang <clemens.lang@bmw-carit.de> [150706 07:24]:
> On Fri, Jun 26, 2015 at 09:31:14AM +0100, Burton, Ross wrote:
> > Github also can and will regenerate these tarballs whenever it feels
> > like it, so you'll need to periodically update the checksums.
> > Obviously as existing developers will tend to have the tarballs cached
> > locally, it can be a while before this failure is reported back.

> While that does happen from time to time it's pretty rare. I see maybe
> one case of this every couple of months in MacPorts. 

Well, we've tried this before, and the changed checksums is causing us
all a lot of problems.

> Additionally, after a while the checksums generally change back again
> in almost all cases.

Well, then that's almost twice as bad... That means that once the
changed checksum has been detected and patches been submitted, it's
likely to change again... :(

> So, yes, this brings its own set of problems, but is still a worthwhile
> improvement over the current situation IMO.

Well, no. Tarballs that has changing checksums is not acceptable. It's
going to break new builds, new autobuilders, etc, and just cause
everyone unacceptable pain.

It's going to give a lot of us a huge support nightmare again...

If the checksums can be guaranteed to be stable, then, yes, such a
change can be looked upon.

Shallow clones is in this case a lot more likely to be usefull, though,
implementing that might have a few issues on it's own...

Cheers,
Anders

-- 
Anders Darander
ChargeStorm AB / eStorm AB

