Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BEA5E0098A; Thu, 26 Jan 2017 18:00:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f44.google.com (mail-pg0-f44.google.com [74.125.83.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8412BE00961
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2017 18:00:54 -0800 (PST)
Received: by mail-pg0-f44.google.com with SMTP id 204so77128372pge.0
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2017 18:00:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=9ExHpu1mgGkrb8bZp+VBU0MDYD3y9Kahi4BbOv6XIM0=;
	b=f0v0peW91IVsZ/q1mC8yD+RODj4hmEnD+esdXtmbSqzice+0FEh022GQr9rsvyEmvc
	cV+nnZljSSTRccrM9P9BpbijLl5672sU4ToF4ZMj+8pgGtcOkIvlI76t+JL+KLlqDFSw
	lRrAYbHi9zadPNZruK+j+ZZrcPnwRSbjt8U9cTc4g3fUeZngEpajhVmERpYHQ/nrlv76
	6h9zgKlcec0hUJYZt+1a9etruTDBtYyjpZL+qoxHCyeikoNb13uMjfYi5srpfK6BCg9B
	L1aaTM19PRKIx7NPbeKhjij1WWvHHa6DV1L6WCOUmnKyVsXYVIjdwevaw6nEKCrH72r1
	wTKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=9ExHpu1mgGkrb8bZp+VBU0MDYD3y9Kahi4BbOv6XIM0=;
	b=YIxP7pK40fjNHWvScjnlu5PfXPPvjgjw7EHgITwupxpkGnornpQYFRWz4GoXwTSIZo
	2DdTRsTvq/MI+zssa0B0ML4sQG+SrxVok9WEb/48MM2gESci4mN/Tu+y5CLkR69N2dKZ
	U9zcXxxpBXelMQxkfIYGJ61CTNdzsOuef+SlZTiySBj1I6xlJ+zeyLDP0NkkZqlANcTG
	zR1zCLHtcgY7fCljCkUb8GQ1Vr9KpkbBpHFGU9u+sUsrHTFHlxgLUlMqnAQQseX0qC4S
	kVcbFuO2uI26+jdjjk7zGa7u7Sc8UHm3K1bvygYdbIolZvlPgYyMtVG0WdMUhPt7sP0M
	43pg==
X-Gm-Message-State: AIkVDXLIKsS0Rtx6EuoI594Pp59E8bno98TbhQKktHjMALQ0Q6fIeELQiXG5vIoWnRalow==
X-Received: by 10.98.144.218 with SMTP id q87mr6496196pfk.51.1485482453557;
	Thu, 26 Jan 2017 18:00:53 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:6524:a1c0:a396:fda9])
	by smtp.gmail.com with ESMTPSA id r8sm6233073pfi.82.2017.01.26.18.00.52
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 26 Jan 2017 18:00:53 -0800 (PST)
To: yocto@yoctoproject.org
References: <a7383673-0d71-e73c-9f18-0ffc5f6e9ba7@attocore.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <5341b042-9589-20ab-0e37-257abdb9c1fd@gmail.com>
Date: Thu, 26 Jan 2017 18:00:52 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.6.0
MIME-Version: 1.0
In-Reply-To: <a7383673-0d71-e73c-9f18-0ffc5f6e9ba7@attocore.com>
Subject: Re: mips64 with 'seh' instruction?
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
X-List-Received-Date: Fri, 27 Jan 2017 02:00:57 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit



On 1/26/17 2:26 AM, Jason Cooper wrote:
> Folks,
> 
> I'm trying to build a mips64 toolchain and qemu runtime. I can build and
> run code but if I link with a third-party library that contains the
> 'seh' assembly instruction the executable is killed with SIGILL Illegal
> Instruction, when run with qemu.
> 
> If I run the program on the target it works fine. Looking at the
> disassembly shows me that this is when qemu is trying to execute the
> 'seh' instruction. This is Krogoth 2.1.2 with:
> 
> MACHINE = "qemumips64"
> TARGET_FPU = "soft"
> DEFAULTTUNE = "mips64-nf"
> TUNE_FEATURES = "n64 bigendian"
> 
> The 'seh' instruction was introduced in mips32 Release 2, I believe. I
> tried a DEFAULTTUNE of "mips32r2" and a few others but they did not
> help... or perhaps I should be looking at the qemu code?

Right. qemu supports seh/seb for long time for mips32r2, so I believe
first you should see if we are invoking qemu with right machine type
which is based on mips32r2 architecture. A quick look into runqemu code
shows that we are using -machine malta which may be mips32r1 emulation

> 
> Thanks
> 
> Jason
> 
> 
> 

