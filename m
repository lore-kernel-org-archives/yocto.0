Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2ABBDE00D44; Thu,  1 Dec 2016 14:44:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.194 listed in dnsbl.sorbs.net]
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6049E00D3D
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2016 14:44:18 -0800 (PST)
Received: by mail-io0-f194.google.com with SMTP id h133so4797991ioe.2
	for <yocto@yoctoproject.org>; Thu, 01 Dec 2016 14:44:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=2IG9zvk2mIr1kJ9GTOWu2sGy1qy8VeLu+y9RyYMZpsk=;
	b=hkWcaafVzK02S66QIfBOF5WCHEbvs2DRVtvsqJ4REaiWyk3fFBlvCmSPUsZUkRbMqS
	TOsqcBefMNCA2dckh4PjcmSnWfgXPr+twFhFIxKW7JXXZF9pvQvfIg6T5r9dZ91Ixs4q
	SiYEiZKeqWZTPOGYSXT1/SYaAdCJkdvLB/5hfr7c0YRz3B7FiKud7ALx8MknIWKuvcqu
	dUwMbBXFPyIMUwtE42Zpv5RzNsBEan8gkc3//Ckd0kQtrFfeN6/JBWs5gPCy/L36MEkO
	qQE5QkAVzjZ5vhN1kqzwycugZN/OJqkCmyQoJbyoVQJM/wSVpa/8R8h5im4ozEunS4aQ
	e0ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=2IG9zvk2mIr1kJ9GTOWu2sGy1qy8VeLu+y9RyYMZpsk=;
	b=VHpHFYx77AqDdhKkQSdfi7+4saJthtb3CZX0VxrD8HThaJ1dD1H45xuzy87pAOuoPw
	mBKsTgNDvReeUlpRAlgWI2euu700Tv8+bMD9Gv1tnTQQIYg1R3RO7zBJriBOQ6sdQmYn
	1vF04hBbrThtEriirVpVS3ZFubBYEn79Dqv0vSOklO2sI54nmEsvYfVc4YagOXig3bXZ
	imVoB6pTLB30WH4cQjRF1zwrQHX8NCz5GV2fSB20xVaYGRhnP0P+6x7nUlh8g02x24lA
	bSPo5wjiPWTDES+HubW7BPn7tgMa/C5DyK0JFNmKQMsYoVXW0sRSVUkMuEoWWDq3eNPk
	3HJA==
X-Gm-Message-State: AKaTC00wkpm2ijBRtYH6s1cJH0yQMXegPIMyPPC3T+a6A4NCRM3RTSpoLFUubpzQ0bGenA==
X-Received: by 10.36.43.193 with SMTP id h184mr98431ita.29.1480632257944;
	Thu, 01 Dec 2016 14:44:17 -0800 (PST)
Received: from openSUSE-i7.site (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	o13sm30144itb.18.2016.12.01.14.44.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 01 Dec 2016 14:44:17 -0800 (PST)
Date: Thu, 1 Dec 2016 17:44:15 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Message-ID: <20161201224415.GA4271@openSUSE-i7.site>
References: <20161201200550.GA31925@openSUSE-i7.site>
	<CADkTA4OX9crgydX7FWBs6hQ1AYr3rOsGhokNPG+fdZNKef_-7w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CADkTA4OX9crgydX7FWBs6hQ1AYr3rOsGhokNPG+fdZNKef_-7w@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
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
X-List-Received-Date: Thu, 01 Dec 2016 22:44:21 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Thu 2016-12-01 @ 05:28:20 PM, Bruce Ashfield wrote:
> Gah, that's my bad. I'm currently in transit for a trip to Europe, but I'll
> fix this
> to use mktmp and friends tomorrow and send out a patch.

Great, thanks :-)

I think there might be a second issue too.

When scc-cmds/patch.cmd is run from the native sysroot, it errors out as
follows:

	| /z/layerindex-master/raspi2-basic/tmp-glibc/sysroots/x86_64-linux/usr/bin/scc-cmds/patch.cmd: line 29: : No such file or directory

Line 29 of patch.cmd looks like:

	eval echo "\"patches/${cbranch_name}/${relative_patch_dir}/${simple_patch_name}\"" >> "${branch_patch_queue}"

I *think* it's complaining about "${branch_patch_queue}" but I can't be
certain. Philip is also seeing this (second) issue too. Does that look like
something you can figure out, or should I keep digging?

