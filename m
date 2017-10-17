Return-Path: <yocto.user.mailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9F09E00CC1; Tue, 17 Oct 2017 02:54:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yocto.user.mailinglist[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.48 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B6E1E00C78
	for <yocto@yoctoproject.org>; Tue, 17 Oct 2017 02:54:01 -0700 (PDT)
Received: by mail-wm0-f48.google.com with SMTP id u138so2651176wmu.5
	for <yocto@yoctoproject.org>; Tue, 17 Oct 2017 02:54:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=/wZzmD+LPmIr7x5PJsBon+kfLZF93xfKWOP8YCto5Io=;
	b=IOHtLj10rJW8AO9fsTvPxuQTHmPITRy6LRhfa5/4MRUMocVLvF4MXsjeT2E28ODyuG
	gYf68V8v831L9VFWSihJiaYJATpgCn1WUPov2U7wf66RdkaUgofrYhpjItSbkFPMNkPc
	aV5HT2jToFXVzjOhGh4zN4BJcaX1wX1uiu56HIhUTBHT1cLzeh9ge3B3QMQlW4tXSCM5
	M3prCY5q+3Rm6K5n+YHiNg4hNxz3ftERZKp0bIGGVsTNAcvQp/N9oN/5nEiZNW7ua5kS
	UCuMHjCCxQ/QOaQolCYIZwTaZJL1sufDKsvxO3Gt3zLRa8Gt5eutq4unXueG/UyVhhnM
	uMFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=/wZzmD+LPmIr7x5PJsBon+kfLZF93xfKWOP8YCto5Io=;
	b=EliZdMfiXpEPY9lIIlLn7+iQpGvxcoyDvvUa/9GC4sqmsxKQ76gCXkFNwhd6pegilJ
	8hMXyhGgWKEkDxphP7gQOu1DGkh41mmqHysK9hI2KVtqNwq7PzVbHW5THhlSgmblPT2W
	Fyf7Uxsx6Lwb6TCyUgV5GRBojn70WKAom01BxEb3RUVptwME2ptNgR4ZQUUhDhAd4fzt
	tceCs7mv+JDBYMLxvmjM8AcBbtm1b/M3McF2DalFLqxvUeXk3A8QPRmFd91RtUTJ5Nfl
	8QlPf/cyj9IQSkB3bpgy8jeMOMCQzcsqGUPdCihBY7T/bQXpgGx0AtHDcOBnSUC/+C1n
	dlFg==
X-Gm-Message-State: AMCzsaV+u6W5Xskm4gcrv0kb64m0YLc6kjsh+hK6v9eeRtDlgLxLE9pG
	Z1CHrUa8rvMYfL05L87HQQ0np2tU
X-Google-Smtp-Source: ABhQp+T297hM8P+aCl+ise4Fg5dJ4sr9mrXZXznRPToCbqFTvQmw+sbv9MBjYtYhktK13V8n6O8mNA==
X-Received: by 10.28.153.85 with SMTP id b82mr2743756wme.121.1508234040223;
	Tue, 17 Oct 2017 02:54:00 -0700 (PDT)
Received: from [192.168.42.50] (ppp-2-86-168-248.home.otenet.gr.
	[2.86.168.248]) by smtp.gmail.com with ESMTPSA id
	x49sm13830253wrb.25.2017.10.17.02.53.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 17 Oct 2017 02:53:59 -0700 (PDT)
To: Andre McCurdy <armccurdy@gmail.com>
References: <CAE0QtjMERAoesSe9wab80StX-0MRTEAf+RB6pgUguGgOBNCwAA@mail.gmail.com>
	<67150d7b-80ba-e5e0-86ef-5f7f8afcbfca@gmail.com>
	<CAJ86T=U7WkuShnw7hzhGLUT4-mTB__SF2pFx8DtHFJ_O75DY0Q@mail.gmail.com>
	<ee101ffd-a217-0370-d06e-72d51481d45e@gmail.com>
	<CAJ86T=VboqXFtwbvtJbFnAMphdeOpzDGXkGwtiKZV0_R40b2Rg@mail.gmail.com>
From: Robert Berger <yocto.user.mailinglist@gmail.com>
Message-ID: <2be92f78-3323-7f66-6915-7d621a47d98e@gmail.com>
Date: Tue, 17 Oct 2017 12:53:57 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAJ86T=VboqXFtwbvtJbFnAMphdeOpzDGXkGwtiKZV0_R40b2Rg@mail.gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: image dependent pkg versions/pkg variations
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
X-List-Received-Date: Tue, 17 Oct 2017 09:54:02 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

On 2017-10-16 20:54, Andre McCurdy wrote:
>>
>> [1]
>> http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#platdev-building-targets-with-multiple-configurations
> 
> Good luck!

Hehe you don't seem to be convinced that this works;)

Regards,

Robert

