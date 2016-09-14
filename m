Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68EC2E0049A; Wed, 14 Sep 2016 11:22:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, MISSING_HEADERS,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.177 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.177 listed in dnsbl.sorbs.net]
	*  1.0 MISSING_HEADERS Missing To: header
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f177.google.com (mail-yw0-f177.google.com
	[209.85.161.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFBE4E0043F
	for <yocto@yoctoproject.org>; Wed, 14 Sep 2016 11:22:09 -0700 (PDT)
Received: by mail-yw0-f177.google.com with SMTP id t67so31367661ywg.3
	for <yocto@yoctoproject.org>; Wed, 14 Sep 2016 11:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:cc; 
	bh=2XpFRToUztD9ZHl49i2uXwRKAjZTuLQp7BaCJBjfGPk=;
	b=rWM/qDMmwpkx4CXWJpkVoisnLDPCaosGa1gKb/y+BXXt9i1Z1NeOmWetmhZA5S5Vsg
	WjjF0imdtXsJslY1AkizQCm/43mVolh38bbiGgFngMrqrnQhiDY9n9vygyLnLG9NNEmL
	cl3YXQQYEcqR9PGNwmFG+ObvGR2YoExexCvROals2rjqcFA+hWX/YJBecPkfrJNkjGCK
	Fx2c2atNAyaPS94XlbtTSJ7BbnjsL+4zw8hw1KIV0Ynf+DG5/Wz479GePFHUd/RMHkkk
	t2YkwFLhPf4HSxwzzN/r5PuO66EKccpn0dPwAzyzTMIZYasz6vrfSsIYuqlnlVzk8EQK
	rmVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:cc;
	bh=2XpFRToUztD9ZHl49i2uXwRKAjZTuLQp7BaCJBjfGPk=;
	b=PLad/MC1rl17DqGnu6NsNqXIk6l1b8UXazrakzed2oK6zsmYPQzW/mS9vjuQ4OUJiF
	Or5I/tpqz5ClWC3wNHYBUgA4atzRUxQnt2G799DQt0A4QbfK+73dU6xt3HIKr3FkhPak
	lOoF4XWz9eZhMb+rIMFxEGkMsamkEy5rBhEooGwMn7yrlYvPnJ9fnRNpOgodh1cVcRBo
	EVUsdh5xBbppVw7dnTUI9gKcf8QwXJHN74uoyb5uLa3MmSA4OFi8R46oPHB5AXhM8HmP
	iQIgyPYs0qRgiTNWLusmdKG1dow230AaECZHoQ9p9xcoP5A/46mAxDyyw+alFJZDghv3
	m/Kg==
X-Gm-Message-State: AE9vXwN9zSlX1mLqqga9Y3G06XC9HcofKLqOgKrs7AbV+jQ6NMUhmsT5OzEldIT5scsyg255NQneqdHp0UlBbg==
X-Received: by 10.129.17.142 with SMTP id 136mt4345885ywr.304.1473877329108;
	Wed, 14 Sep 2016 11:22:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.35.72 with HTTP; Wed, 14 Sep 2016 11:22:08 -0700 (PDT)
In-Reply-To: <CAJTo0LaM90asKkN0cEzAF+ksLxbD09iEHuovHjiDydZOTdtPig@mail.gmail.com>
References: <DB23C91B06C303459B24BC3208AF424A20F820DE@MBX114.d.ethz.ch>
	<CAJTo0LbmE1u1rfe8prA-Mv8bhyOkf2sKesEVQV42DqnLvc-8Lw@mail.gmail.com>
	<DB23C91B06C303459B24BC3208AF424A20F8216B@MBX114.d.ethz.ch>
	<DB23C91B06C303459B24BC3208AF424A20F821AC@MBX114.d.ethz.ch>
	<CAF3SDA6XyxtCNhKRZfPfdNVgvqAMyosBjfbUUpf=msjVPdyQPw@mail.gmail.com>
	<DB23C91B06C303459B24BC3208AF424A20F821C8@MBX114.d.ethz.ch>
	<CAJTo0LbkjuCFqmzUx0uWVd+dMzA9U3_u56HANcDpkV_hyLMuTw@mail.gmail.com>
	<DB23C91B06C303459B24BC3208AF424A20F821DF@MBX114.d.ethz.ch>
	<CAF3SDA7JQ8hNVipjsYzgp2AOcesAiph66aNXmdVKWT+9HDxHqw@mail.gmail.com>
	<DB23C91B06C303459B24BC3208AF424A20F82247@MBX114.d.ethz.ch>
	<CAJTo0LaM90asKkN0cEzAF+ksLxbD09iEHuovHjiDydZOTdtPig@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Wed, 14 Sep 2016 15:22:08 -0300
Message-ID: <CAF3SDA4uAvpFugiL8_+sCC=01O2VX4Aa3gsC3-oY1YZe2bN4NQ@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Fetcher failure
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
X-List-Received-Date: Wed, 14 Sep 2016 18:22:11 -0000
Content-Type: text/plain; charset=UTF-8

You're welcome :)

2016-09-14 11:50 GMT-03:00 Burton, Ross <ross.burton@intel.com>:
>
> On 14 September 2016 at 15:48, Anicic Damir (PSI) <damir.anicic@psi.ch>
> wrote:
>>
>> it turns out that something HAS changed in my system/libraries (but not
>> Python itself),
>> influencing python urllib2 to fail, although wget, chrome, firefox, ...
>> worked
>>
>> Fortunately we have another python version installed, and with that one it
>> works again.
>
>
> I wouldn't be surprised if you just got the Python 2.7 security fix which
> means it verifies certificates by default, and your distro doesn't have
> working certificates for Python.
>
> Ross



-- 
"Do or do not. There is no try"
  Yoda Master

