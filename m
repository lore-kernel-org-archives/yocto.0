Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5692E00887; Sat, 25 Feb 2017 10:16:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.194 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f194.google.com (mail-ua0-f194.google.com
	[209.85.217.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BE64E00804
	for <yocto@yoctoproject.org>; Sat, 25 Feb 2017 10:16:55 -0800 (PST)
Received: by mail-ua0-f194.google.com with SMTP id 79so2453518uaq.0
	for <yocto@yoctoproject.org>; Sat, 25 Feb 2017 10:16:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=8W9d9PyHqsK/uzC230ED6/9MQA/wVyfZAUOfyEqLD7c=;
	b=Hx1uj9p1jEiVAsTjhbi6bfdKukbhqCm30o9cFTY1lLv06R7k3oTGKiTJ6SXXNMGAUI
	utjDJ4J1JESRvb4+0E9YwWfW2wnyAHyclKHuLmW0Nr0NCzDgU+LIXycw37zj7JICQq3Y
	m/Feq/B5vdVUje9Btkf5mrerCfFqMe5ibvpU6l9F0NDyZOLWCXRb2yGtntPzWfeJvd3+
	w834kMHE7lLGuz/8qCxzEhBG8/UYHo5PkWk2FpGPe5yyEYkG1FTuTfwwzJehUWIMKgI5
	u0XJwG3enMUzJ2wWIy8O67CKHLxK91QcrDlf2dNXmRUDgrBErX5Ci+/7K2hkip92Wr7w
	xzcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=8W9d9PyHqsK/uzC230ED6/9MQA/wVyfZAUOfyEqLD7c=;
	b=lI4gr3kHR5PzPmMYy8C3BpigNWmcgKviSPi0edVNjAZ13a5Fgww1ftHMq0BQCfb6nd
	ABioYHK4iPVHlCgCmOOolJoT+lb1+ovPktzCOkkfZth4wtiou5+/B8Y4oH8fsfJeLvG/
	BSw02d9LH4dZxMAO/IBTWx/mdt2CmWPRcffs+Qv3iKbOjSSAuneNsjVveRNcLLEh7DaB
	+zVhtHgu7SEU/wDnv92Mpf1INsymsCVHkbzUcrb1vlZ5Aj6SJ4UoCg1oaG/jiQmDSvfB
	De8GgNPPbnRyKdnR7Y85OdYyPvpjQBvnSPUxEucgVZZICbkkJIMDy6zswW6IjM1KMpT0
	4N0Q==
X-Gm-Message-State: AMke39k11muh47maFnk8AJn03qK/tSAH1X6W6d8DwhWfScUifvodZETVYcroNp5japNK4f0Z52ZmfGulFNITtA==
X-Received: by 10.176.3.143 with SMTP id 15mr3356800uau.91.1488046614918; Sat,
	25 Feb 2017 10:16:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.52.202 with HTTP; Sat, 25 Feb 2017 10:16:24 -0800 (PST)
In-Reply-To: <20170225091103.5ebe6324@lap0>
References: <20170225000359.29173-1-raj.khem@gmail.com>
	<20170225091103.5ebe6324@lap0>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 25 Feb 2017 10:16:24 -0800
Message-ID: <CAMKF1srVyEa8_0BoS750zPoyNuhmVA6VEue4m--11petEqNj9g@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi_4.9.bb: Update to 4.9.12
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
X-List-Received-Date: Sat, 25 Feb 2017 18:16:56 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Feb 25, 2017 at 1:11 AM, Paul Barker <paul@paulbarker.me.uk> wrote:
> On Fri, 24 Feb 2017 16:03:59 -0800
> Khem Raj <raj.khem@gmail.com> wrote:
>
>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> ---
>>  recipes-kernel/linux/linux-raspberrypi_4.9.bb | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
>> b/recipes-kernel/linux/linux-raspberrypi_4.9.bb index
>> dcca369..b41a8ef 100644 ---
>> a/recipes-kernel/linux/linux-raspberrypi_4.9.bb +++
>> b/recipes-kernel/linux/linux-raspberrypi_4.9.bb @@ -1,8 +1,8 @@
>>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>>
>> -LINUX_VERSION ?= "4.9.10"
>> +LINUX_VERSION ?= "4.9.12"
>>
>> -SRCREV = "095c4480e1f623bdc8a221a171ef13b2223706b1"
>> +SRCREV = "c1271995832a090a94eb3b1c1678cb51b84ef1ca"
>>  SRC_URI =
>> "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y
>> \
>> file://0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch
>> \ "
>
> rpi-4.9.y is now the default branch upstream and they've started
> merging in new stable releases instead of rebasing. So how soon do we
> want to make 4.9.y the default in meta-raspberrypi?
>
> I've already tested a 4.9 series kernel with u-boot on an rpi and an
> rpi3 so I'm happy that it all looks good.
>
> I'm away this weekend so I can't send the patch right now myself. If
> no-one else jumps on it I'll send a patch towards the end of the week
> to change the default.

Lets apply this patch so we get away from this rebasing business quickly.
however I would like to wait for us to make it default may be a week or so
I have some issues bringing up wlan0 with 4.9 and would like to see why I get

ifup wlan0
Successfully initialized wpa_supplicant
rfkill: WLAN soft blocked
Could not set interface wlan0 flags (UP): Operation not possible due to RF-kill

>
> Thanks,
> Paul

