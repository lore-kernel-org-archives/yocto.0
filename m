Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7DE3E00D42; Thu,  1 Dec 2016 06:06:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.181 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5ADDE00D40
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2016 06:06:48 -0800 (PST)
Received: by mail-io0-f181.google.com with SMTP id a124so424438551ioe.2
	for <yocto@yoctoproject.org>; Thu, 01 Dec 2016 06:06:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=kk0/DK1wr88q0aYI7bp3RR0KiOWPQFnhhnSJa9fjpio=;
	b=uYzza0Km+Ex5pJWNtiFHIJJO8aspqFjEwfNtYxgXIH109UTSY305/5EJbDWLu+J/yM
	VQlPicFDBIL6LZMgIydjbtNs1airaQaYaPd2A2mrNmRVrrqYzI9HbUYpP/Z5v/eR6RBj
	qzjHp87wJLjO4CTchg1NDqFKsuE2IN44XgF2HXEYJAF+E3d5Z63iiZZ4/qI7A/UigI18
	KTzGIc8VArkZw/z4Zw2XjHueDEwvhRJEJlhZCyskDUtdYPgIGQO0SlprR1cT/qeMpPVz
	j9O9uwaYNbyBDFuJP25O35yS6oM+3aiDJFEEAJO4x/XBHoii2o0Ui49FXcuo6BhCv+/j
	9RTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=kk0/DK1wr88q0aYI7bp3RR0KiOWPQFnhhnSJa9fjpio=;
	b=EWg/U3VPLoSL8RFkFwffr1IVsSUdG9JYmq0zBddScZ9WnEwxvR7HgluAsVrbMR/Q9v
	rGrdFIfj5lOBWBiIg2scMwbKxDZwVwaGAJXFGFtO09IoSIXzBrzXXfZOmJ/XPk9Cpvvd
	8xC561nI8l+G85SqiCrc0oPO7BzV5x4xnrPM5pgS7HqqL5MK9YlkOhjV87K98Yx9B+/+
	b7RSLYO/QSbJ1uCxnmoQR3Ph7C6bmy5QHGbh8LqgmIEqP3IRuLMJ3uJZukqg1N4YT72C
	CvHIfTyyJiLWUVfMtju2byZLEdXa7CeR75veINAmAyHXlom/3tRwT21pOuaw1Yer2uuK
	mnjQ==
X-Gm-Message-State: AKaTC02ZXKx4/tt9sBNpYxTEFt8BiysL/btnFMKGPfqiJKobbfiDaIqQJXfRSigPwYsXIXfE
X-Received: by 10.36.26.23 with SMTP id 23mr33372352iti.84.1480601208195;
	Thu, 01 Dec 2016 06:06:48 -0800 (PST)
Received: from pohly-mobl1 (p57A56C74.dip0.t-ipconnect.de. [87.165.108.116])
	by smtp.gmail.com with ESMTPSA id f4sm291544ioa.18.2016.12.01.06.06.46
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 01 Dec 2016 06:06:47 -0800 (PST)
Message-ID: <1480601205.6873.317.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
Date: Thu, 01 Dec 2016 15:06:45 +0100
In-Reply-To: <20161121162904.20027-2-git@andred.net>
References: <20161121162904.20027-1-git@andred.net>
	<20161121162904.20027-2-git@andred.net>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-swupd][PATCH 2/2] swupd-client: don't unconditionally depend on bash
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
X-List-Received-Date: Thu, 01 Dec 2016 14:06:57 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2016-11-21 at 16:29 +0000, André Draszik wrote:
> The swupd client itself does not depend on bash anymore since
> version 3.3.0. Any posix shell is fine. So let's move the
> runtime dependency to the appropriate place.
> 
> If some layer's oe-swupd-helpers.bbappend does introduce
> a bash dependency, it should just state that dependency
> itself.
> 
> As the shell now be provided by bash or busybox, also add
> an appropriate entry to SIGGEN_EXCLUDE_SAFE_RECIPE_DEPS.

Makes sense, I'll submit soon.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




