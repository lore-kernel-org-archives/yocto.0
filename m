Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81EAEE00D00; Tue, 25 Jun 2019 03:10:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [62.149.156.161 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd14161.aruba.it (smtpcmd14161.aruba.it [62.149.156.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07358E00BAF
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 03:10:48 -0700 (PDT)
Received: from [192.168.24.172] ([93.38.119.136])
	by smtpcmd14.ad.aruba.it with bizsmtp
	id UyAn2000b2wfazh01yAn3F; Tue, 25 Jun 2019 12:10:47 +0200
To: "Burton, Ross" <ross.burton@intel.com>
References: <a0336aa1-3a09-3b10-8c0b-d0233933f14d@faresoftware.it>
	<CAJTo0Lba0Osk-q=WU1TwiWCMC4rEZ6wut2xnPgbpwiWCiVdxvg@mail.gmail.com>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <ad7d1fe6-19ef-2b56-2f5b-5f6393fe4b80@faresoftware.it>
Date: Tue, 25 Jun 2019 12:10:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAJTo0Lba0Osk-q=WU1TwiWCMC4rEZ6wut2xnPgbpwiWCiVdxvg@mail.gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1561457447; bh=qLAHRImphXWFR7Q7ZX9vAiJQG+QFD+/Yvr2P1oSJI5M=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=V+lWHCQnzroy1b2X8F5Bs8fVyGoJB/NuMWNeNOlkc3LTdH659ZAlK4v3lZKlNma/w
	IETcTIToSpwcRo/kk3wjk469m3eW5/AHZ0NzrAI7KQWH5AzKPiyn19rZuoOAvWsYqy
	yiA6RX0UD8c05UYJ+IdRlrtr08VwIey2nhmcRrqDFp1wxCrZMujQ2512YgBqao3qmZ
	eCxTc0Dfg/jfzyzKBIgOQVFS9x3vLNhVUZMH8AXd3HkUxSzUFwS8Pl59J2Qu7PZRjQ
	ApWXuruUBjgYqcGi7y6tENT3U/XpYRAPltlgOaIg9lS3B9WLBaYJJaxPxpepSoztMi
	PFxaCpaGcJClw==
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Remove include /usr/include/SDL2
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
X-List-Received-Date: Tue, 25 Jun 2019 10:10:50 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: it

Thank for the answer.

I'll look for that.

MZ

Il 24/06/19 19:40, Burton, Ross ha scritto:
> The problem is that kivy is ignoring all of the attempts at telling it
> to build in a sysroot and *still* looking in /usr.  This is a clear
> cut bug in the kivy build system, so you'll have to look at that and
> see how to fix it.
>
> Ross
>
> On Mon, 24 Jun 2019 at 18:32, Mauro Ziliani <mauro@faresoftware.it> wrote:
>> Hi all.
>>
>> I'm trying to compile kivy inside yocto for a 586 board.
>>
>> The compilation fails because the i586-cc uses /usr/include and
>> /usr/local/include paths as INCLUDEDIR (togheter with others paths)
>>
>>
>> How can avoid this?
>>
>>
>> I need /usr/include o /usr/local/include for other apps, but I don't
>> like the /usr/include is involved in yocto
>>
>>
>> MZ
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

