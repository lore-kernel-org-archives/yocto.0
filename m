Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8257E0049F; Sun, 22 Jan 2017 03:42:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.51 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.51 listed in dnsbl.sorbs.net]
Received: from mail-it0-f51.google.com (mail-it0-f51.google.com
	[209.85.214.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F594E00480
	for <yocto@yoctoproject.org>; Sun, 22 Jan 2017 03:42:29 -0800 (PST)
Received: by mail-it0-f51.google.com with SMTP id 203so47362691ith.0
	for <yocto@yoctoproject.org>; Sun, 22 Jan 2017 03:42:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=AlsE6Tm4DjHuQI/Df9VZrAuG+zv0eNagUbVdbsjTuCA=;
	b=1pccLOzC2H3oto30X7Svs3MJSKVeDvncqAuY9M5wo2Lasy/PkmVWRM8MZb9OZxCko1
	xlme2FmspqPGf4nQWNUx/L2bbdLbIIkeIg46oU9LGJHZDlj3o1UX6n+y2armTWLVJq22
	IDgiuUn/8Md0VgfbsonlUtF7mL1KJkZCWRrQCWL0yEvoOOZdCgrSKMaNdseque2/UYAd
	BjNlrTt3VBj8Ss831ha6XC4PmzT0VXll5BE+WpPJFqP848dQ7vRR/MCUBO5UDc1lkfQj
	R2XXEhyfrGOTIicdyJXl6TbnvKnQrz50MDJG+nq5xTVSl6AZxag/ZYVWqZrca1jamH7R
	AF/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=AlsE6Tm4DjHuQI/Df9VZrAuG+zv0eNagUbVdbsjTuCA=;
	b=HjQI5aXeomslaEJXNTwiauW4/EfQxeWLSR0z08qnHMZPMB8My1fcu6JhN4rtLdQ9ZJ
	0bmhfmw7OOwzFdTv7NHWBF93e2w3SiYOPZO+fern1Mpn7EK41B86tkAKvI+q7CkOdFEM
	5eYYwafio1wSapmrxc8jklX71YjlFsTWLMTRzG4f7iDkfT++lLjZN3EYPBtu2BbN7kfj
	4U20AJujv035MlSmyhh7GgJZTzv3vZ/TwyqpwAsB7uuGaYMWe+2gwDLjzRyvQVFTSI6n
	w+vJphJ44JjjET0YpA6lID5KI59vBKzgtfa1nAM1U+2knN+2Q4V2xv5jpcjeiFqud3At
	2amA==
X-Gm-Message-State: AIkVDXIAsIt3tuEmKgK39sqL5zFxCUAQYNVNEExXxkbRy8Fn6LUP11+v6b4ZYrlZBxzMjjbS
X-Received: by 10.36.86.4 with SMTP id o4mr10905611itb.83.1485085348348;
	Sun, 22 Jan 2017 03:42:28 -0800 (PST)
Received: from pohly-mobl1 (p5DE8E414.dip0.t-ipconnect.de. [93.232.228.20])
	by smtp.gmail.com with ESMTPSA id s1sm4620539itb.21.2017.01.22.03.42.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 22 Jan 2017 03:42:27 -0800 (PST)
Message-ID: <1485085344.20333.7.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: "Eswaran Vinothkumar (BEG-PT/PJ-IOT1)" <Vinothkumar.Eswaran@de.bosch.com>
Date: Sun, 22 Jan 2017 12:42:24 +0100
In-Reply-To: <b2610f4ee0fe434e9820784963e2e0c3@FE-MBX1014.de.bosch.com>
References: <b2610f4ee0fe434e9820784963e2e0c3@FE-MBX1014.de.bosch.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto - Building initramfs to run a shell script for the support of IMA/EVM
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
X-List-Received-Date: Sun, 22 Jan 2017 11:42:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2017-01-20 at 12:44 +0000, Eswaran Vinothkumar (BEG-PT/PJ-IOT1)
wrote:
> We are using initramfs to run a script which before mounting the root
> file system checks for ima policy and also responsible for loading the
> evm-keys. In short, the initramfs contains a script which is executed
> before mounting the main root file system.

Ostro OS does the same, with IMA activated via a plugin for the
initramfs-framework (a set of scripts in OE-core).

meta-integrity:
https://github.com/01org/meta-intel-iot-security/tree/master/meta-integrity

IMA plugin:
https://github.com/01org/meta-intel-iot-security/tree/master/meta-integrity/recipes-core/initrdscripts

Full initramfs using this is ostro-initramfs.bb in:
https://github.com/ostroproject/ostro-os/tree/master/meta-ostro/recipes-image/images

Perhaps this will give you some ideas how to do this, or can even be
used as-is?

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




