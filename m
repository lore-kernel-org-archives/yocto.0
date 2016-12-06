Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FC1DE00BF3; Tue,  6 Dec 2016 13:32:32 -0800 (PST)
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
	*      [209.85.223.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.193 listed in dnsbl.sorbs.net]
Received: from mail-io0-f193.google.com (mail-io0-f193.google.com
	[209.85.223.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B421E00BB1
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2016 13:32:28 -0800 (PST)
Received: by mail-io0-f193.google.com with SMTP id r94so9286539ioe.1
	for <yocto@yoctoproject.org>; Tue, 06 Dec 2016 13:32:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=MgeiQo+lL1rN/ldHNmKGzKPyfYzrFxYcnWqZPhzsnxE=;
	b=T2sJL9x5k3a66DMq+evM+sS5Mu3Hp5gJx2Bx3eJN+FLelX7olPZpzlIrWTFLCSHaVO
	RAnHNkX5MzImbzTSQ34/3Tb7i5T2vN4fA24A/Wxlvi5+NDF+G57pCzVHSXk/b6TqegYP
	ulj0W8ROfHaDPm5NsEjkKubB68YIIKhpQ8v85qqun5PKntvocGhqK5L7L1ufruk7eNaD
	UBUahflRe6c44JqBKqbp5PBYviL8vvjZjwI4+TaG7dRqiXUWuiwhca5gwb1IYOlWIh7R
	sm6RAbLv1gBcInYoRwJTQYdTGy/qyTTkKuwEIEhLlxZN4Jq5qHONmYBNd35+ctehBAcM
	l3Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=MgeiQo+lL1rN/ldHNmKGzKPyfYzrFxYcnWqZPhzsnxE=;
	b=FwuH/qh0PCKiCf9wKcP182q5j4O5xrIr6rOJAd3qiVGy2D6KITdjOdtDkB8kGb18uw
	yPGQ4lpBTNiHhyk90ikWFBWAn5NrnXXsjN9p051BjwxJROlAWophZg4AkSrYGEgXBTaQ
	TsPPRDblEJzIRtc3fmOfyYqDVhr5kLp2B5ebCfq2d7I/4BXEH01Rp7SGrI+wc8OM2kMs
	0Zq6srLTRiVPGxIeM7MhmZzzhn79chzkcMoDUaLv8IzaU/qHbUe1japM8A4qoydquvxL
	h4WnPtmhZYxo+pMl3wyGnAnqnclHNjVIY2OJtnkVKiP619KmgiG2oZJundYJFaCpyZD+
	gP/A==
X-Gm-Message-State: AKaTC02VBjeO8TDGcIjCs93MYtfqiDFU2Th5Ke8ZZ15tGC7xe7CDYisVsbDXxpTotZb6rQ==
X-Received: by 10.36.26.23 with SMTP id 23mr631895iti.84.1481059947821;
	Tue, 06 Dec 2016 13:32:27 -0800 (PST)
Received: from openSUSE-i7.site ([45.72.150.99])
	by smtp.gmail.com with ESMTPSA id
	w188sm2142678itc.9.2016.12.06.13.32.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 06 Dec 2016 13:32:26 -0800 (PST)
Date: Tue, 6 Dec 2016 16:32:24 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20161206213224.GA22102@openSUSE-i7.site>
References: <19a9d76a-2c15-551a-2fce-55d8b8cfe1d0@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <19a9d76a-2c15-551a-2fce-55d8b8cfe1d0@mlbassoc.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Current master broken
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
X-List-Received-Date: Tue, 06 Dec 2016 21:32:32 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Just to clarify, in the last couple days, there have been *two* major issues
that have independently broken raspi builds:

1) the rebase of the raspi kernel repository at
   git://github.com/raspberrypi/linux.git
2) a bug in a recent commit to oe-core's kernel tools

Andrei pushed patches today to update the src revs so, as of this moment, the
SRC_URIs in meta-raspberrypi should be valid.

A patch for the kernel tools in oe-core is on the mailing list; hopefully it
will be pushed to master soon. Incidentally, this same bad commit also
included a second bug that made it impossible for two different users on the
same machine to perform OE builds. The fix addresses both issues.

