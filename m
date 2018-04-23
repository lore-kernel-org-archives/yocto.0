Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3BDC4E0090A; Mon, 23 Apr 2018 08:11:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12AA3E00843
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 08:11:14 -0700 (PDT)
Received: by mail-io0-f181.google.com with SMTP id r9-v6so2801071iod.6
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 08:11:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ui+SpG7/ZrqOK8TViHFMIJ+5KbTQee6JF/wPTaB2rbU=;
	b=fek901Q8as4uU2b4eLoRCjV9lu2kla7RbTae965NyURTN1gwB2nIp3UfmbtwLfvaTR
	aAUwimdJB8+m1FS74wPKYasPpv8IcKpDfA9SHbH/T68CrCc5rZFlWFrVld1zZNzgu/rj
	H6KbTAWvdkoqQu4LHdB7s1wEUi+fOCGmq1QYgszjnxH6I72MOpIdiEWjlJ7ZbRhnsUss
	1dxJxJf36KHrJue4QNaszF3ydN5VsmIcRF4luBAnlgQSicGvSEDowg0fJEYxqgfxVduB
	5hoQr8660Rg9pbh6Fs6hmnYa4jcsh+dv4galBSEXORUnSx74g1oxxaW1uNKCkAep/C50
	E9Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ui+SpG7/ZrqOK8TViHFMIJ+5KbTQee6JF/wPTaB2rbU=;
	b=RQ+nfEtTon55G62aGd8kezuuWxhyBIDN0hY6mwWw5YlfD6rLTzGDJRSPzWtt98uWys
	bQI2e2P8pCf9kBT5hkBrol+z7x5kmOkJzMjPxgw3RYvLhbnYetz4xlM7gFgHiSGrwtXZ
	GHJraol/8mL/pPBYapqOS4zzNajK3VRFmzQF2hapyT3J30I+fQBJOEoSbrE8GDhZ4rHa
	KmBJZV5EXCCkPuXhm9zaBgGfojCrsqFzlNgFH7GZpGee4eWZoE1kAVO9z4gFIKMKKtFY
	vof5lOQ27j6trt8nBItcsWKSk65M+JNTvdX3SzQ18SaRK80x1EA01SARC0IMj3TlI45B
	6Qvg==
X-Gm-Message-State: ALQs6tBtfJHLQ8eF66O3IeBneLVLQo+oGYroAJkpUZiW00slGKOxsAcY
	kdoVP9j+NvC+5Fsd1OVgcOYLkk9jwKQqs0dV+zUMMA==
X-Google-Smtp-Source: AIpwx4+6UO46v9XEatVuT+BJ6cXjIy+7hshpgNWuEhU6waUTvlXozOqlU8zrPLd0zrv0wjSOZXgr06FmHQiSzkuF9JY=
X-Received: by 2002:a6b:5507:: with SMTP id j7-v6mr9039608iob.23.1524496273809;
	Mon, 23 Apr 2018 08:11:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.29.203 with HTTP; Mon, 23 Apr 2018 08:10:53 -0700 (PDT)
In-Reply-To: <5ad9c6a5.d806630a.b3470.003fSMTPIN_ADDED_BROKEN@mx.google.com>
References: <CAALXFYy3uftzYmjyYaJ+-X0OAPu8XJ2C7wNBMnoYZYHkm+Gp2g@mail.gmail.com>
	<5ad9c6a5.d806630a.b3470.003fSMTPIN_ADDED_BROKEN@mx.google.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 23 Apr 2018 16:10:53 +0100
Message-ID: <CAJTo0La99prBuhp5XDr1UPPYMqKHfHry6SWrQxpwudbK5KKCsA@mail.gmail.com>
To: Uwe Geuder <jrswdnan22@snkmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Usage of yocto on different (production vs debug) scenarios
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
X-List-Received-Date: Mon, 23 Apr 2018 15:11:16 -0000
Content-Type: text/plain; charset="UTF-8"

On 20 April 2018 at 11:47, Uwe Geuder <jrswdnan22@snkmail.com> wrote:
> But can you share state between distros? Isn't the purpose of distros to
> use different options (variable settings) so the state would always be
> different?

If the input to the recipe is different then the hashes would be
different so the content won't conflict.  You can definitely share
sstate between DISTROs.

Ross

