Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BF54E0094C; Tue, 10 Feb 2015 01:15:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.50 listed in list.dnswl.org]
Received: from mail-la0-f50.google.com (mail-la0-f50.google.com
	[209.85.215.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C423E00945
	for <yocto@yoctoproject.org>; Tue, 10 Feb 2015 01:15:04 -0800 (PST)
Received: by labgq15 with SMTP id gq15so18872817lab.6
	for <yocto@yoctoproject.org>; Tue, 10 Feb 2015 01:15:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-type
	:content-disposition:in-reply-to:organization:user-agent;
	bh=nfuGtu4W9k12t3wNRxK6CljrHPR5pcDvVc9o/GgGNAE=;
	b=YACbvy1ZOQV+5aDHiUT3WPcIAAhcR+MZatM5Mxr16PQcp+KVB/o12SNHfS7iIqtzG7
	bfOIEyf0OIJRnaUjV4jDUtT0+NQTuQwx8ZKuWSr6qXJdeiYu+uzb6wI/lXobEJEzP2V4
	j2hW/DR91/mBuCIyAc6L0AU/KGGhMCMGf7xX6E7ZyBFBKl7VavniBiDyXcZRwLHX7G7V
	/KghLUtz4k5vMU4eFqoXBonNrk8m/KknMcFdYubSPZHLeXhhM0bGkxju0ioisaI2vjSP
	0XZmtH82LnYibS35V88QzAHplRx7HIBonkXLPtbCP4L8JXxZvtVRIPyLX3hrAe3iOZBj
	1f5Q==
X-Gm-Message-State: ALoCoQlcsIAVJKy+8C6GAzO1c6uboT1YpIRsykkXHpopRQTtIiZRRYjZeata2qJGZeO6gRpIRMMH
X-Received: by 10.112.78.39 with SMTP id y7mr22326089lbw.58.1423559702376;
	Tue, 10 Feb 2015 01:15:02 -0800 (PST)
Received: from ad.chargestorm.se (c-83-233-221-90.cust.bredband2.com.
	[83.233.221.90])
	by mx.google.com with ESMTPSA id c9sm2583562lae.21.2015.02.10.01.15.01
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 10 Feb 2015 01:15:01 -0800 (PST)
Date: Tue, 10 Feb 2015 10:14:59 +0100
From: Anders Darander <anders@chargestorm.se>
To: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
Message-ID: <20150210091459.GA8081@ad.chargestorm.se>
Mail-Followup-To: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>,
	Victor Rodriguez <vm.rod25@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <F38A866CD026F746A3BF0928A84397BE3A34C510@AZ-FFEXMB01.global.avaya.com>
	<CAK5mtew20WE6O2rAuNNTqMpFU2jydOBoHYVnqzRxODD5EAGvAw@mail.gmail.com>
	<F38A866CD026F746A3BF0928A84397BE3A34C5C7@AZ-FFEXMB01.global.avaya.com>
	<20150209141335.GC12554@ad.chargestorm.se>
	<F38A866CD026F746A3BF0928A84397BE3A34C71F@AZ-FFEXMB01.global.avaya.com>
MIME-Version: 1.0
In-Reply-To: <F38A866CD026F746A3BF0928A84397BE3A34C71F@AZ-FFEXMB01.global.avaya.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Multiple packages from single recipe file
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
X-List-Received-Date: Tue, 10 Feb 2015 09:15:08 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

I'm not really following what you'd like to learn...

* Bipnesh, Abhinav (Abhinav) <abhinavbipnesh@avaya.com> [150209 17:43]:
> We have done on similar line for one of the package. We have to write
> another recipe for a package in which we need to just create packages
> and delivery it.  But we need to do it for couple of directories i.e.
> let say 10 directories.  Previously we have an script which perform
> some conversion and then create package in loop i.e. creating RPM in
> loop for such package.  Now we want to achieve the same using a
> recipe.  One of the solution is to write 10 such recipe and creating a
> package, But it means we need to check-out 10 times the code and then
> create the package.  But we are looking for some optimize way to do so
> as below

> 1. Check out all 10 directories in one shot.

Are these in different repositories or tarball? Or what do you mean with
"check out"?

> 2. Write small shell script code and call do_install() passing ${S}
> and ${D} as argument to create the package. Here we are also looking
> for package name for each such call different say package-1-ro.rpm
> package-2.r0.rpm etc.

Just write a do_install(), that installs all the files from your above
list in it's correct place.

Make sure that FILES_${PN} includes all the locations where you want to
pick-up files.

If you're creating multiple packages, just ensure that
FILES_${PN}-pkg1 = "..."
FILES_${PN}-pkg2 = "..."
etc
points to which files you want packaged in which package. 

> 3. Also avoid calling do_compile() as there is no makefile its plain
> file repo which need to be packaged.

Just create an empty do_compile(). Or you could remove do_package() from
the task list for this recipe, though, it's slightly easier to just
provide an empty do_compile().

Cheers,
Anders

-- 
Anders Darander
ChargeStorm AB / eStorm AB

