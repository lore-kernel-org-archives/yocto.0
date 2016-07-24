Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 120CBE01095; Sun, 24 Jul 2016 07:39:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.179 listed in list.dnswl.org]
Received: from mail-qt0-f179.google.com (mail-qt0-f179.google.com
	[209.85.216.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98F7BE01091
	for <yocto@yoctoproject.org>; Sun, 24 Jul 2016 07:38:59 -0700 (PDT)
Received: by mail-qt0-f179.google.com with SMTP id x25so85208893qtx.2
	for <yocto@yoctoproject.org>; Sun, 24 Jul 2016 07:38:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=FJvR/SggsZHvpLhSEMtQcq/uw/aOvmyxLj9uX4SY2N8=;
	b=X14J3eCuQs2cjjZ8bEBHM3FLxaqO9HOtBZy+PCiPI05JPFgXpQ907lYPQUwqp+0yhk
	MVMfkUbedxC8DrbW+7/1wDoGlOuGAWafa1lk5g12cZzFw6WrH92KEQ6khWhOJEac41bw
	jwmVFBG/6klk9faNraaL2auOvU8hA+c/0Ao7QXXNKKtv5huzq7br8/A6IKqoTVUECfAS
	Een56Zb5x35cEjgs6tBvWyL3Pw8xpLs3vLnCPXsWdJth8qzWy8vDD5OD/qvC653ja/TW
	6jqhHm6aXjKKAvlsSe4X58UbCn0jO1zICv4bpxIcpNamJWOA5RK/p2SM5r8SrfsTS68D
	Ngzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=FJvR/SggsZHvpLhSEMtQcq/uw/aOvmyxLj9uX4SY2N8=;
	b=ftKj35sLd+eL4CQ7fpjHSw6vQCNWNJlhUybzy/Qk7ydKnRRI8lxK9nIG6nHJ7GZ59p
	x2zNg2XKsbcV1bDmvej2pgDeSgfUo3FhJUqmTTDLnsIxqOCSMg0NpUpehL1qJ4uqyqu8
	uBVunAmH+UPDAwhLTPeUih1B1NQfA+JZfOwnAkUaaODNwu5V96prkmCXdXnD7L1WvD1Q
	PMQLssSr3SXfDUYl9p8fJHb7fwEtfmkCoUWgusfnpAR93hhd188O2PPTuL8a5EAsaSnL
	YIhqgVNCHU7SSabk+Px03tD0o3cBvjaDlyeaeDm4D8clrPRBc64OOX68MG2N7go+r1Se
	pdLw==
X-Gm-Message-State: AEkoouuJdbKr+gIZb4O9Q1zELYH8o8jTO2TySNW6AsvFLEBQ2nJSMufdH5NoNcIszkPIVbetpZGQTDre49Jx1g==
X-Received: by 10.237.35.76 with SMTP id i12mr21995513qtc.41.1469371138313;
	Sun, 24 Jul 2016 07:38:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Sun, 24 Jul 2016 07:38:28 -0700 (PDT)
In-Reply-To: <CAGMdoF=HzcT+of5D09Yv49AB1OkbSzLZnf6mEF4wyQ_N=kYy3Q@mail.gmail.com>
References: <CAGMdoFkMe=gbzKMsS-WPF5ORJ8uV8S+XCuR+bHNT-reC63Er7w@mail.gmail.com>
	<CAMKF1sqUWtfx46-sYuGo+s8ynR24JdA_EH92BZVH+3Gh_WM=NA@mail.gmail.com>
	<CAGMdoF=Jhd=42QcmvLgtsMt+G5kkTg8urQhG-8TryOdG-5Kw3A@mail.gmail.com>
	<CAGMdoF=HzcT+of5D09Yv49AB1OkbSzLZnf6mEF4wyQ_N=kYy3Q@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 24 Jul 2016 07:38:28 -0700
Message-ID: <CAMKF1srfGGE29S1qNYDmg+OqGWVgUSbuz5ODu0Rw+q2uYr+34g@mail.gmail.com>
To: Edward Wingate <edwingate8@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Help with DISTRO settings
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
X-List-Received-Date: Sun, 24 Jul 2016 14:39:01 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Jul 24, 2016 at 12:34 AM, Edward Wingate <edwingate8@gmail.com> wrote:
> Ah, I found it.  I had inadvertently deleted one line
> (DISTRO="mydistro") from my layer's conf/layer.conf.
>
> Am I doing this right though?  Do I need DISTRO="mydistro" in both
> conf/layer.conf and conf/distro/mydistro.conf?

Just conf/distro/mydistro.conf is needed.

 Removing it from
> either doesn't work, but it seems redundant to put it in mydistro.conf
> as well.

did you make any other changes ?

>
>
> On Sun, Jul 24, 2016 at 12:04 AM, Edward Wingate <edwingate8@gmail.com> wrote:
>> On Sat, Jul 23, 2016 at 11:05 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>> Move these DISTRO settings above require conf/distro/poky.conf
>>
>> That didn't change anything.  And it had been working like that for a
>> long time now.  Just a few days ago, it stopped taking effect and
>> reverting back to poky.  I have not been able to figure out what
>> caused it to stop working.
>>
>> Thanks for your reply nonetheless.

