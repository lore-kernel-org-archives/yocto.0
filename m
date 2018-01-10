Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8545FE00E18; Wed, 10 Jan 2018 01:58:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 109BAE00D99
	for <yocto@yoctoproject.org>; Wed, 10 Jan 2018 01:58:54 -0800 (PST)
Received: by mail-wm0-f42.google.com with SMTP id r78so574034wme.0
	for <yocto@yoctoproject.org>; Wed, 10 Jan 2018 01:58:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:date:in-reply-to:references:organization
	:mime-version:content-transfer-encoding;
	bh=20MuIDbYzbQsVTjbnCOC9vd5mha7Zux4ML2ZD1SNOpo=;
	b=bUS7idQ+i2nSv8udfyl6gFGIERRSixcV+kKYC3Ip3L7xz6wHsPksl+8VT/4m+3s3Z5
	YkryPq0DuE9lFsU4CDCr51lMQzD+f8tOqH7eQcmeysnObeRxmW69qoM08++ORLXUNCrW
	ogpZhtOCIF+2Yr+IDULLinlEzNj3DDIMy4sruJ8TbKaK4x45c2CiuUQefIfYpLagAups
	rjy1GaxkI0sqmk6ZGH8JjuJLTmU5KUOxyd0NSilEONKTw4y3hKel9yb/ubJMOB/zyZ7J
	scZ+oTf/4jjdvkV3YOcZ9/Y4hRZ061Ovvc9v4dkXzyJXXuLOUXP7w1RcaxNw18topLlb
	Efdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=20MuIDbYzbQsVTjbnCOC9vd5mha7Zux4ML2ZD1SNOpo=;
	b=j9Glo+VFH1wcMB6bY4m2Vyt3zCqF5DXUA+6tSuRZLWkKL4kuGQtFFRU2BIwRUUKjGJ
	E/OWaFmyftlAGQUXeWJVhzOkTLQIERkbyU7eHk7HmPKUekFObm2/WqgcBqFo9TYfa+Gm
	S73S/Y+tePOKmTuPH4cF0t+bxKRhlrlqZkaoxbOxYnLpFuzyds2CP74gTzIcWUqfwK4o
	GSjzp/o2r9IwVUYN6KFWyWbQwWyzX7TIOnGsoJ1cqbm0HKKoN4+68K4ku38IfDHDNclV
	q18yi0CR9/NvtgfYzYWOJlm/1HK5GK7zeihn8+qWjvO3f8JDSw//XoWylZ6KZogmRn0F
	dV9w==
X-Gm-Message-State: AKGB3mLn+bhSRX44jwLwuQA88xvKSs9tDdYCGWX1KGZp4wifnO7XSlJU
	oCfwZ0F+aNIo2uzgpkpLHsWJ
X-Google-Smtp-Source: ACJfBot6PL0Ce23qbUHCT8tglyR+d20IM0SCmf2g5tp4WTiZ6Zve6iXYD1HRxiXxnrvmuswyYGqG0w==
X-Received: by 10.28.194.68 with SMTP id s65mr15705802wmf.90.1515578334118;
	Wed, 10 Jan 2018 01:58:54 -0800 (PST)
Received: from pohly-mobl1 (p54BD55C5.dip0.t-ipconnect.de. [84.189.85.197])
	by smtp.gmail.com with ESMTPSA id g203sm643306wmd.0.2018.01.10.01.58.52
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 10 Jan 2018 01:58:52 -0800 (PST)
Message-ID: <1515578331.6718.20.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Ingo Flaschberger <ingo.flaschberger@gmail.com>, yocto@yoctoproject.org
Date: Wed, 10 Jan 2018 10:58:51 +0100
In-Reply-To: <4e7d3d4d-12b5-3e5c-94be-084fbbc22daf@gmail.com>
References: <1513785034.5979.256.camel@intel.com>
	<20171220155058.8961-1-patrick.ohly@intel.com>
	<8524e767-204b-2e4f-9971-d0c51862de0c@gmail.com>
	<1515517050.6718.15.camel@intel.com>
	<4e7d3d4d-12b5-3e5c-94be-084fbbc22daf@gmail.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.22.6-1+deb9u1 
Mime-Version: 1.0
Subject: Re: [meta-swupd][PATCH 1/1] bundles.py: allow username/password encoded in URLs
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
X-List-Received-Date: Wed, 10 Jan 2018 09:58:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2018-01-09 at 19:28 +0100, Ingo Flaschberger wrote:
> Dear Patrick,
> 
> it works if you replace:
>      manager.add_password(None, parsed_url, parsed_url.username, 
> parsed_url.password)
> with:
>       manager.add_password(None, new_url, parsed_url.username, 
> parsed_url.password)

I assume this works on top of my proposal. To avoid such ambiguity and
the risk that something gets merged that is still incomplete, please
post the entire patch as tested by you. The right way would be "git
send-email", but I can also take "git diff" attached to an email.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.



