Return-Path: <anton@advancedtelematic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75417E009C2; Fri, 24 Feb 2017 07:25:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f169.google.com (mail-wr0-f169.google.com
	[209.85.128.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E2A3E009A7
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2017 07:25:19 -0800 (PST)
Received: by mail-wr0-f169.google.com with SMTP id o22so9693259wro.1
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2017 07:25:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=advancedtelematic.com; s=google;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=B7T6/1oMZMBXmQ1+hkxdEUnrdfs7wqBO7u5RFOdIn6c=;
	b=KfhTUvfLVv/ymEa/XQZRkOaGL/kK8yTDTCFuNuQtypaYNBOxXbB0iNC9BU1yhRYRoa
	ATmN8vTp990TkaHep4PicNsxVRoW+DZ5dDgo2o0g4ewlCIjjLupqyxhxrPYnc2Wu5I99
	+nuUZ5uzMokKRKdcTFWRwK5RlkVptU91Hn3Kw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=B7T6/1oMZMBXmQ1+hkxdEUnrdfs7wqBO7u5RFOdIn6c=;
	b=ce7Eyjx74Jt24XXPat3B8oJpEmEPrtRn2e4DE9o0W7SBrbw/PfLLnWwlM5ItjACiUH
	YXaqAGJVO7cxMJy/ii+2yg4vA0nWqi4gjxeLpcHz46itEwIDn7zJfAVfe/p0De6LeLrh
	SQSPHF4bLRP9pTLUx2k4mu4ts9rC5opWF/n9sgcgrorhuifmDd7DPNixYAur0SuPzZac
	HKjQp9FKI53b8ifLPef9GVHH4Phwx3Ylqp0DFDAOtBfz2Lz37PsdneuvrZWkH/8FPEr8
	dui0q3IXNH15bbbe9VsPTYZwmHKfIMCfWOxhD/DCUb514aIpgY0ky7ifrSSb+C4cdKXS
	7vSg==
X-Gm-Message-State: AMke39lkyBjaYr9bGQl3HyG34krzj7PZ2FHyyHDKbC3VY423NOeHc0spMWKb0sOI4BvaqA==
X-Received: by 10.223.153.208 with SMTP id y74mr2974656wrb.81.1487949917934;
	Fri, 24 Feb 2017 07:25:17 -0800 (PST)
Received: from [192.168.1.109] (p57bf9f95.dip0.t-ipconnect.de.
	[87.191.159.149])
	by smtp.gmail.com with ESMTPSA id g6sm2711810wmc.30.2017.02.24.07.25.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 24 Feb 2017 07:25:17 -0800 (PST)
To: Seebs <seebs@seebs.net>
References: <20170224144815.7243-1-anton@advancedtelematic.com>
	<20170224090515.48425389@seebsdell>
From: Anton Gerasimov <anton@advancedtelematic.com>
Message-ID: <f8c08da4-b88a-1c04-238b-e70be65fd59d@advancedtelematic.com>
Date: Fri, 24 Feb 2017 16:18:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <20170224090515.48425389@seebsdell>
Cc: yocto@yoctoproject.org
Subject: Re: [pseudo][PATCH 1/1] Filter out erroneous POSIX ACLs
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
X-List-Received-Date: Fri, 24 Feb 2017 15:25:21 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi Peter,

to reproduce the difference, you just need a kernel with POSIX ACL
enabled for your FS (e.g. CONFIG_FS_POSIX_ACL=3Dy;
CONFIG_EXT4_FS_POSIX_ACL=3Dy). The problem is that 'cp -a' when copying a=

directory without any ACLs attached will for whatever reason try to
assign an empty posix_acl_default list to the target directory. Linux
kernel will always filter it out, but pseudo just creates empty list.
Later in the build process, when bootable image is created, it will
instantiate a directory with empty posix_acl_default list on the
bootable media. When you will try to perform certain operations on such
directory (e.g. creating another directory inside it), kernel, namely
ext4_get_acl, if I resemble correctly, will return EINVAL error, so the
resulting filesystem will be effectively broken in many ways.

There is an issue [1] in Automotive Grade Linux Jira with an example of
erroneous behaviour. The tricky part of it is that the error itself can
not be reproduced easily: although I have one kernel config of a machine
that makes broken images, I couldn't repeat it on later kernel versions.
But the setfattr/getfattr behaviour difference that causes that error
can be reproduced quite easily on any kernel with ACLs enabled.

[1] (Starting with Jan-Simon Moeller's comment on 26th of October)
https://jira.automotivelinux.org/browse/SPEC-254?focusedCommentId=3D11313=
&page=3Dcom.atlassian.jira.plugin.system.issuetabpanels:comment-tabpanel#=
comment-11313

On 02/24/2017 04:05 PM, Seebs wrote:
> On Fri, 24 Feb 2017 15:48:15 +0100
> anton@advancedtelematic.com wrote:
>
>> From: Anton Gerasimov <anton@advancedtelematic.com>
>>
>> The difference between what we see in pseudo and what happens without
>> pseudo can be seen by typing:
>>
>>     mkdir setfattr-test
>>     setfattr -n system.posix_acl_default -v 0x02000000 setfattr-test
>>     getfattr -n system.posix_acl_default setfattr-test
>>
>> Under some kernel configurations this difference leads to annoying
>> errors, e.g. directories copied with 'cp -a' get broken in a fancy
>> way.
> Can you expand on this? What is happening to make the "erroneous" ACLs?=

> What kernel configurations?
>
> -s

--=20
Anton Gerasimov, ATS Advanced Telematic Systems GmbH
Kantstrasse 162, 10623 Berlin
Managing Directors: Dirk P=F6schl, Armin G. Schmidt
Register Court: HRB 151501 B, Amtsgericht Charlottenburg



