Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25382E009AA; Fri, 31 Aug 2018 04:02:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA19BE007AD
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2018 04:02:37 -0700 (PDT)
Received: by mail-oi0-f41.google.com with SMTP id x197-v6so20968101oix.5
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2018 04:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=p5OtzI7fBHmxeGuZCcHp8akBGKX9bzLUmr6omiuWbOw=;
	b=XsiSVMXiF9fWt7OB1bLizsj9QvjeEl08qjMcalkG8OCZgbDWpmwrzKzeYD93s+cNTs
	CkLGUmSel4HvEEXPTYSkUdR2YEU8gGwXVrELq12a9kQEWDeXqXFMq2KCu3VMfMKHndOR
	XQlpqnHgrgKJSDic2TI/tqNzjF8eWjjWM9vEiXDGQKBmnDwp1+0GSlCEVqVl0vIg/Obz
	8MsJYKtca40lnFR2QR4JJ7XLBe3yrDaN4Tz30ZewIJ4sS47T9wNeJd8XRU6MC34csXu3
	EruxSxDoYiRmIOsAyGbfHEaNboSDSMIL4ECvJ4qtZEFuRjjfGL15nTkQpejG5JC1eT5l
	HdQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=p5OtzI7fBHmxeGuZCcHp8akBGKX9bzLUmr6omiuWbOw=;
	b=DO+YpqJ0zhC9HHTqRdlcao6AvwEv+aMy8RyHStpWjHSYLIzR58jMHEYX9JZoz97Hvq
	p70qkQ6xIcnq+ddVrlINtvxPSvVeMlL1ZtNxukUtqKKMgd9uvQZxTTUFOPlb9RVsIVYl
	n8UH3/ILAPBBTS3+fs/G5M5WH3SBh8EcKdkPuLj0713fpM5NRwSn/0Dvp+cFQPU/DJ4p
	IoPMRKntY+JPWRnF0XYWJ82+DzxFDkeFS445uSA2728Gafq9e34fGGazyo8ZoKdXpWB6
	OMQYfsUU0OI315p7vcWeStYMsPdPFiWDrdXoVyKCIrR6YmJuGqRSiqkwpGDkhZSmyCgY
	V4fQ==
X-Gm-Message-State: APzg51DTTMEpNG95Z+wxIJCM0x8OaIeZm48Inq04oACtHc7KiTmeIa5Q
	GE3invqcDl2Pdd4evLMk7o63GvwrpL3adaBnLr+GD8Pv22g=
X-Google-Smtp-Source: ANB0VdblFau0c2fzv2RA55W1cJR3ceUnDuglOaFtSUScmjTR0Ru7n3Rf9dokGm1fUkJruXZ4oBSnZuLjMwr5AcwTboo=
X-Received: by 2002:aca:6cd5:: with SMTP id
	h204-v6mr6425957oic.140.1535713356947; 
	Fri, 31 Aug 2018 04:02:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:7c0c:0:0:0:0:0 with HTTP; Fri, 31 Aug 2018 04:02:16
	-0700 (PDT)
In-Reply-To: <CANNYZj_HLD3qC30b32W-hH2n4QaGYsNQ=XP2Xa1EHcMJny1Syw@mail.gmail.com>
References: <CAOT_U5ZjnsD9O1qrewUAtqBp+0_306Gx1s1nS8MP3upJpuDiLA@mail.gmail.com>
	<CANNYZj_HLD3qC30b32W-hH2n4QaGYsNQ=XP2Xa1EHcMJny1Syw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 31 Aug 2018 12:02:16 +0100
Message-ID: <CAJTo0LafDpq-n3j8zjkk0jKBy-gtp5pd5Xr94D8k8he1mCmSmA@mail.gmail.com>
To: Alan Martinovic <alan.martinovic@senic.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: (How) did you script bitbake/set up nightly builds?
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
X-List-Received-Date: Fri, 31 Aug 2018 11:02:38 -0000
Content-Type: text/plain; charset="UTF-8"

On 31 August 2018 at 11:57, Alexander Kanavin <alex.kanavin@gmail.com> wrote:
> 2018-08-31 12:49 GMT+02:00 Alan Martinovic <alan.martinovic@senic.com>:
>> am just in the process of forming a base for automated nightly builds.
>> The goal is to have the build process run every night and report what
>>  the status was.
>>
>> I've opted for python for all the conditionals and checks  and then have
>> external
>> bash scripts that actually sets the environment and invokes bitbake.
>>
>> Did it like that because I didn't find a clean way so far to deal with
>>
>>     source oe/oe-init-build-env
>>
>> from python.
>>
>>
>> Would like to hear how did you script bitbake and how does your setup look
>> like?
>
> I guess you should look at what the Yocto project itself is using:
>
> http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder2/about/
> http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder-helper/about/

Alex beat me to do this, but if you want something that does a lot
less then this is actually really simple:

subprocess.call(". oe-init-build-env ; bitbake foo", shell=True)

Just use shell=True and invoke init-build-env every time you call bitbake.

Ross

