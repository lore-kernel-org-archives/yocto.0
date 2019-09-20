Return-Path: <yann.dirson@blade-group.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A5FDE00D94; Fri, 20 Sep 2019 05:18:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.181 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com
	[209.85.167.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC763E00D82
	for <yocto@yoctoproject.org>; Fri, 20 Sep 2019 05:18:14 -0700 (PDT)
Received: by mail-oi1-f181.google.com with SMTP id k9so1547834oib.7
	for <yocto@yoctoproject.org>; Fri, 20 Sep 2019 05:18:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=blade-group.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DOpzwjUwPtVfP0DEaCdS3MUCU1kmSozZTQEq3GZr5gE=;
	b=Y6NW1D8KMShJWxDRgdtPUu30rgUlVTJJ7ldwKvdzYmK7w9ZjtYDWMOkOtdnPbVVYil
	W91y9IXZdR282fOZkaS3gqaRw5rSooGF366sKDh4jJHk5fj6QAjBvRX9ykdiG++8Yhfq
	R24rm367OOl0EDuj7djNXlLfpaTfw2y5l5F31IpvfmgnkqBi+C6On9HMrSeSpV8tNg0T
	wmObG3d7wHHob4d0BZPrBl0MQ2uUyeiCZp06DVibh2rEGjm+uc3BunVVOb+mC4mMP7HS
	WiV2n21Wac1MApDCi7vrzGmyRPCeF8mf9f72lg33e1IK+5iDiUFqScazDDJL2Esfm9Fe
	CLZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=DOpzwjUwPtVfP0DEaCdS3MUCU1kmSozZTQEq3GZr5gE=;
	b=UJ/QDYtK46TiCrEXBHPobbIk4Bx53x0Jfs7Kw4ElmNRGMAIDX0Q/1lGauWf6rEQPUm
	ZtXsW+0ZM6qlsB+RF0rvJwP/JHGI+zvpE5XiDYMDE2rka0RCDnrf364xjlwsbWyV5K16
	nZW8Az4Ic+YmpcE8BQ/BpkSqjfC9/yVVTKlkVunU4fYGIqQJp/PYJw6OhpyhmFjCvpdV
	rfWseLFASJzu3A5k88l4S4jG+yATF9mP7l4/sPAxm8sJLPfKSDLctGejuBZc7px9Qdvr
	rYhPkI3hs2gmrjastl8Jd7ZkLfUuwM37wCLV7FSfl7W2CIzPa6qCtBGI/mXwdNb+eRLr
	6r/Q==
X-Gm-Message-State: APjAAAUohxuBQ6BDg0Z1otwPg/366HVq4tSXa/zqLzj7cAiX+BrRznhf
	0ed0Z2pDV8IfAiWeqnaGpKTK/Egl/6zmXsoKv6rolQ==
X-Google-Smtp-Source: APXvYqwYMZHuIuZOl7hL67k51DtaQZpavsZOMjS6m5B0GiaLxPPaqsPDLyMwarhDtEz+wB9lxrWQzifk82Z3nVWenRE=
X-Received: by 2002:a54:4611:: with SMTP id p17mr2613645oip.168.1568981893905; 
	Fri, 20 Sep 2019 05:18:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:ce8f:0:0:0:0:0 with HTTP; Fri, 20 Sep 2019 05:18:13
	-0700 (PDT)
In-Reply-To: <c8d1273f-4a7b-6807-d71c-d1ca3127542b@gmail.com>
References: <8f3933f8-bbad-7dbd-ff9a-afdab91ced3f@gmail.com>
	<ed609776-571f-0633-fb68-055236d32897@windriver.com>
	<20190919141650.GA23770@localhost>
	<CA+4=imZz4xAV2EYyHSCb+d1XbpAg0O=xz=e=-_oc7q6b6Qvjew@mail.gmail.com>
	<c8d1273f-4a7b-6807-d71c-d1ca3127542b@gmail.com>
From: Yann Dirson <yann.dirson@blade-group.com>
Date: Fri, 20 Sep 2019 14:18:13 +0200
Message-ID: <CA+4=imY=2TkMy_hzyYKeoVU=B3fGiy_V2tgcKHQrVO2VvDfucg@mail.gmail.com>
To: "Robert Berger@yocto.user" <robert.berger.yocto.user@gmail.com>
X-Mailman-Approved-At: Fri, 20 Sep 2019 08:04:32 -0700
Cc: yocto@yoctoproject.org, simon.spannagel@cern.ch,
	Adrian Bunk <bunk@stusta.de>
Subject: Re: gitlab-runner
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
X-List-Received-Date: Fri, 20 Sep 2019 12:18:15 -0000
Content-Type: text/plain; charset="UTF-8"

Ok, I'll find time to publish that some time before monday

2019-09-20 8:05 UTC+02:00, Robert Berger@yocto.user
<robert.berger.yocto.user@gmail.com>:
> Hi Yann,
>
> Please se my comments in-line
>
> On 19/09/2019 16:35, Yann Dirson wrote:
>> Do you want a recipe for gitlab-runner, or something for getting
>> gitlab-runned to tun a bitbake build ?  The latter I have, though
>> imperfect and not readily packaged, but I can possibly try to publish
>> something (planned for a long time, but hey...)
>
> Actually both. It's some setup of a customer who does not use Yocto yet
> on their boards ad I would like to help them replace some Linux distro
> with the yocto project and therefor need gitlab-runner on the boards as
> well as kicking off a bitbake.
>
> In case you have something which already does something it's more than I
> have and we can try to polish it ;)
>
> Regards,
>
> Robert
>
>>
>> 2019-09-19 16:16 UTC+02:00, Adrian Bunk <bunk@stusta.de>:
>>> On Thu, Sep 19, 2019 at 09:39:55AM -0400, Randy MacLeod wrote:
>>>> On 9/19/19 2:56 AM, Robert Berger@yocto.user wrote:
>>>>> Hi,
>>>>>
>>>>> Does someone happen to have a BitBake recipe for gitlab-runner?[1]
>>>>>
>>>>> [1] https://gitlab.com/gitlab-org/gitlab-runner
>>>>>
>>>>> A quick search did not show up anything;)
>>>>
>>>> There's nothing in the layer index:
>>>>
>>>> https://layers.openembedded.org/layerindex/branch/master/recipes/?q=runner
>>>>
>>>> (It wasn't clear if you knew about the index.)
>>>>
>>>> I did find:
>>>> https://gitlab.cern.ch/Caribou/meta-caribou/tree/master/misc/gitlab-ci
>>>> that mentions gitlab-runner but it doesn't seem like that layer
>>>> provides
>>>> a recipe but you might want to check it out anyway and let us know if
>>>> it works for you.
>>>> ...
>>>
>>> It just downloads an ARM binary from the internet.
>>>
>>> Any layer actually building gitlab-runner would have to provide
>>> 200 Go libraries.
>>>
>>>> ,./Randy
>>>
>>> cu
>>> Adrian
>>>
>>> --
>>>
>>>         "Is there not promise of rain?" Ling Tan asked suddenly out
>>>          of the darkness. There had been need of rain for many days.
>>>         "Only a promise," Lao Er said.
>>>                                         Pearl S. Buck - Dragon Seed
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>
>>
>
>


-- 
Yann Dirson <yann@blade-group.com>
Blade / Shadow -- http://shadow.tech

