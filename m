Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 646D6E009C8; Thu, 16 Apr 2015 23:00:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.42 listed in list.dnswl.org]
Received: from mail-la0-f42.google.com (mail-la0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20A5BE00965
	for <yocto@yoctoproject.org>; Thu, 16 Apr 2015 23:00:39 -0700 (PDT)
Received: by lagv1 with SMTP id v1so72533624lag.3
	for <yocto@yoctoproject.org>; Thu, 16 Apr 2015 23:00:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:references:mime-version:content-type:content-disposition
	:in-reply-to:organization:user-agent;
	bh=/zyBVF8Db6oEWVzJz4dMOH5azVnHKkG++XqHaVlFYEg=;
	b=VxraVf/hiBJRiQlN5xzXewVYXYl7iQq0MLwKvS/rslS/Fj+u0w3rcLtzcTrFG2I9zf
	JvrEUGdfd4a+NBuQJ9g3bWJSR5GGA3MgijckBq9DZar+uzGK+Q1GNcZQzn4FkuPM5jQ8
	xa/lxI2s3/rf6eQ3MJbu462qDXsS1Wp7cRUZFg4eng8rUXXL9tYRkXdSbCdumwB5lbnt
	yCzy7pms8V7JcYUFvFaY3MgOmY8vkqNKFzAQQitktaqT50cCwVhSnErYPlNqQsYuYLp5
	54C916Wr5mPGXxFdXqrWvVm6ijdi3Y1NeMIejZHak5XU1+HAMgeXbjDyIKpPmoJPjlAC
	VdxA==
X-Gm-Message-State: ALoCoQm9GrVxpWlvhCooPaxQFxDW4KsEAPgU+za95Ib6sw/nXqpTJDweewRGDvgdtN8T2OTDK7U8
X-Received: by 10.112.189.102 with SMTP id gh6mr1081984lbc.115.1429250436964; 
	Thu, 16 Apr 2015 23:00:36 -0700 (PDT)
Received: from ad.chargestorm.se (213-64-219-84-no126.business.telia.com.
	[213.64.219.84])
	by mx.google.com with ESMTPSA id a7sm2175540lbc.48.2015.04.16.23.00.35
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Apr 2015 23:00:36 -0700 (PDT)
Date: Fri, 17 Apr 2015 08:00:34 +0200
From: Anders Darander <anders@chargestorm.se>
To: yocto@yoctoproject.org
Message-ID: <20150417060034.GA19955@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <552FAFAF.30005@eschenauer.be>
	<F14AEF751653024287138321000C846AF4814FF5@BOS-DAG1.zone1.flir.net>
MIME-Version: 1.0
In-Reply-To: <F14AEF751653024287138321000C846AF4814FF5@BOS-DAG1.zone1.flir.net>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: A simpler way to apply custom config files to an image ?
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
X-List-Received-Date: Fri, 17 Apr 2015 06:00:42 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

* Smith, Virgil <Virgil.Smith@flir.com> [150416 17:33]:

> > I want to customize various config file of an image I'm building (e.g.
> > network interfaces, sshd banner, hostapd, etc..).

> Paul Eggleton just gave a response to a similar question "Force install package last"
> https://lists.yoctoproject.org/pipermail/yocto/2015-April/024548.html

> > - If not possible and I have to stick with bbappend to every recipe
> > concerned, then how could I do it in the case of a config file
> > coming from the source package instead of the recipe ?

> If I understand you correctly, that would be a patch.  For "unchecked"
> whole replacement of files, I've seen bbappends with a do_patch_append
> function to copy files (specified individually in SRC_URI like patch
> files) from the base of the work dir to the correct path under the
> source directory.

Unless the buildprocess heavily modifies the config file, I wouldn't
create a patch to patch it in the source tree. I'd rather just add the
complete config file to FILES +=... and then replace the one from the
source package with my copy in a do_install_appen() function.

This is by far the simplest way of those two.

Cheers,
Anders

-- 
Anders Darander
ChargeStorm AB / eStorm AB

