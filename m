Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0A12E00956; Fri,  1 Jul 2016 10:13:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.42 listed in list.dnswl.org]
Received: from mail-vk0-f42.google.com (mail-vk0-f42.google.com
	[209.85.213.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85A8FE006D2
	for <yocto@yoctoproject.org>; Fri,  1 Jul 2016 10:13:21 -0700 (PDT)
Received: by mail-vk0-f42.google.com with SMTP id u68so118661512vkf.2
	for <yocto@yoctoproject.org>; Fri, 01 Jul 2016 10:13:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=oCHzYZ8QdkS5SlfqPprlkGE/U4Api+xqAZ9SfTFFY/M=;
	b=jMt7ozyyO0vk6g9sXyKxfaSzi0bzaNu31zO5z2RkFAuRWf6rQ/TgDEDOJ8NNBzExJ8
	BW/W/TZYL58kaE/7s2A9YsGFJ0i+zIPrvhn9Wj4ryeRYiV7OewgzpJhy17AJMsJI9/2T
	HMvubw8RiiDLkhjXyBqow6Q2yQjdfeFYDdXfn4Jnc7EwwMF26ALQoT9gwqP8cW6C1tSz
	c6D2BCYAKnPpEPZjcmFhuvNFlD//880DZxSaKaAGcbz9zO6zKQg+O9rp7QUYsSM5JrUG
	nhqHvSv5DRyvEKr4sCGKly5MxQR8Tl0BkfQUgKMTPq7tZ2Bj2CmZkFny9yAtio46ZmiD
	90Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=oCHzYZ8QdkS5SlfqPprlkGE/U4Api+xqAZ9SfTFFY/M=;
	b=e47c3af77JYPDH+2zSqV/86axu+Q6ILQu8p1z3hra8h85kotBfQn0N9tTblvjg2wsn
	nOTnTPxBlWdNo+S7nzmkb1/0UQoBD5d4ywWGBhadQOjD+cLPQEJ0PJAaMOfS73pmUFhW
	L8Nv6LGkmRudnVMv27F1zXlQJi3+HaIpp5l06ZkOQVROzOJcoBbinvFTFql2gnJovCce
	y7QsFS3XK3WkY2kcew8d+XgYORvQsOD74XtS5LJC5JFWv3PHoM9CenMGySqwc+2DNPNS
	v+ZHifxruiBT/nKfq3YV96w2ReJc61Ha79CZqudkq5Y/ugFYZ9K6Jux4WQ1rXZNUmonZ
	tVFg==
X-Gm-Message-State: ALyK8tIA4OKuPk/PTKonybN+kKxNiKGAkizo+BjMMlhkthh7EuzQGPbROshaL/3dUvze+2vf+labv3excX1How==
X-Received: by 10.31.168.3 with SMTP id r3mr10067950vke.8.1467393200373; Fri,
	01 Jul 2016 10:13:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.37.201 with HTTP; Fri, 1 Jul 2016 10:13:19 -0700 (PDT)
In-Reply-To: <CAJTo0LbhtsE_bMdiVWrVkZWkHTero5Z+TDn0iuPzGivSH8239Q@mail.gmail.com>
References: <CY1PR0101MB1594413BBE9700E6A3EFC6E9D7250@CY1PR0101MB1594.prod.exchangelabs.com>
	<CAF3SDA4+AzfPjKDgxisVjdT_Guvujr6KLvXRVRZuTNZyOwTGpg@mail.gmail.com>
	<CAJTo0LbhtsE_bMdiVWrVkZWkHTero5Z+TDn0iuPzGivSH8239Q@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Fri, 1 Jul 2016 14:13:19 -0300
Message-ID: <CAF3SDA5CF1ihp3W6Lx1WpLpyiJ0v4ed14Aa1vTLWFyiHmdkZFw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Takashi Matsuzawa <tmatsuzawa@uievolution.com>
Subject: Re: Shorter build time?
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
X-List-Received-Date: Fri, 01 Jul 2016 17:13:24 -0000
Content-Type: text/plain; charset=UTF-8

So we have full parallelism :)

2016-07-01 14:01 GMT-03:00 Burton, Ross <ross.burton@intel.com>:
>
> On 1 July 2016 at 17:37, Daniel. <danielhilst@gmail.com> wrote:
>>
>> I read that python can't execute multiple threads simultaneously, but
>> that wouldn't be a problem if each python task is executed at its own
>> interpreter instance (process). This last statement is what I don't
>> really know, some experts on Yocto's internals may clarify that, maybe
>
>
> Yes, each worker is a separate Python process.
>
> Ross



-- 
"Do or do not. There is no try"
  Yoda Master

