Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01FEBE0095F; Fri, 21 Apr 2017 10:37:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f195.google.com (mail-qt0-f195.google.com
	[209.85.216.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A02F4E0074B
	for <yocto@yoctoproject.org>; Fri, 21 Apr 2017 10:37:03 -0700 (PDT)
Received: by mail-qt0-f195.google.com with SMTP id y33so12753150qta.1
	for <yocto@yoctoproject.org>; Fri, 21 Apr 2017 10:37:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=LExbY0/R5mDLFCGyxIide8UzSMqD3AqzFxAZw5gx8xk=;
	b=pMUhOLr82zHkvIDTp8l+Ro7PlopET1xK/aPiGZGNDUzIKUELhyrbHbTXiK96+SNxpU
	0s4oouZij+LBLL55mDOyGinNxTPrn0Ol9oIPr7EdaXS4B/s6TmsG4Fvf7B0NVCIGYBxc
	FVa/RM0FpAi0VkEn+LHtYtNPS8Agx9XHYhAbqTiH1yQ+OIf99oDu9xjaQT6/mBy2htiK
	0PDTBTFp7Ch/XRe4/JQJ3g1PKhg4LQJtaHt3E1x62Mi1qdsq0bk2fThFqMJPIH2Zjuo6
	WvydB1/aU9bZOzkSTXAWxllOnIOwt/G2RWMkQUXT7lD32nvVk5b2x1lc2oBYEiIO5zkn
	pk8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=LExbY0/R5mDLFCGyxIide8UzSMqD3AqzFxAZw5gx8xk=;
	b=g7UYuhaZF2Ytqg/zfeS66v4CggLbaUqQLQSVXyRDy7Vp24IhXJCObAZYexqnXvciu4
	QiN5kfV1JtmZM2CKRu5q4TQP+Xl/7XP2wMK5Hx4aakECWthiK/YDgNH7kkJvn1lJn0R8
	5/Lz+530/JnkWuLb4krI81p3FdTpsC8lu7WistCuEF0PvID7gg4iior1MCQ2alSrMBPC
	Ck50ZyTcHEUZTAu9CKS39P80vIrUl5Z2P2zbW3bLdi6DFYHGIGGVmM4ihOI3rYz1pmSc
	pqhGm0OXzXofpvNojw0cx4HLA4Dlcp1v3wGFM4TCEVxFxToebi8kJOu7ax0PU65yG5vK
	ZVgw==
X-Gm-Message-State: AN3rC/4VwK0vgUr2QhzPAel8EBeyFAqVFMRFtH9RWj3noRjA+VJ64QWZ
	iLLqL6mx4toto1vGUjzqaefAj/NfSEL+
X-Received: by 10.200.35.73 with SMTP id b9mr14239814qtb.268.1492796223413;
	Fri, 21 Apr 2017 10:37:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.44.116 with HTTP; Fri, 21 Apr 2017 10:37:02 -0700 (PDT)
X-Originating-IP: [82.34.23.153]
In-Reply-To: <20170421160308.GA32138@carbonA>
References: <20170420171816.23407-1-andrei@gherzan.ro>
	<20170421160308.GA32138@carbonA>
From: Paul Barker <pbarker@toganlabs.com>
Date: Fri, 21 Apr 2017 18:37:02 +0100
Message-ID: <CAPyrkgzO3QZF9cOtWsD9OQVrAPAahTtW9i68YTWX=Lra8y+m7w@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/3] raspberrypi2.conf: Make SERIAL_CONSOLE overwritable
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
X-List-Received-Date: Fri, 21 Apr 2017 17:37:08 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Apr 21, 2017 at 5:03 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Thu, Apr 20, 2017 at 06:18:14PM +0100, Andrei Gherzan wrote:
>> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
>> ---
>>  conf/machine/raspberrypi2.conf | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/conf/machine/raspberrypi2.conf b/conf/machine/raspberrypi2.conf
>> index 9b4c02a..a17289c 100644
>> --- a/conf/machine/raspberrypi2.conf
>> +++ b/conf/machine/raspberrypi2.conf
>> @@ -7,7 +7,7 @@ DEFAULTTUNE ?= "cortexa7thf-neon-vfpv4"
>>  require conf/machine/include/tune-cortexa7.inc
>>  include conf/machine/include/rpi-base.inc
>>
>> -SERIAL_CONSOLE = "115200 ttyAMA0"
>> +SERIAL_CONSOLE ?= "115200 ttyAMA0"
>>
>>  UBOOT_MACHINE = "rpi_2_config"
>>  VC4_CMA_SIZE ?= "cma-256"
>> --
>> 2.12.2
>>
>
> Entire patch set merged to master and morty.
>

This is the sort of thing I'm not keen on applying to stable branches
as it may change recipe behaviour. For comparison, the stable branch
policy for oe-core is very strict
(https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance#Policies).

In my mind, avoiding potential breakage on a stable branch is more
important than making improvements. I'm even weary of updating the
raspberrypi firmware as I don't know how careful they are about
backwards compatibility. For kernel updates I do have an expectation
of backwards compatibility and an understanding that new stable
releases often fix security issues so I'm ok with those on stable
branches.

For example of where I'm concerned, a "raspberrypi2" override was
previously applied to both raspberrypi2 and raspberrypi3 machines.
After the third patch in this series it only applies to the
raspberrypi2 machine. Also, UBOOT_MACHINE is now set differently for
raspberrypi3 ('=' vs '?='). These changes may affect the value of some
variables when building for raspberrypi3 if downstream users haven't
explicitly handled both raspberrypi2 and raspberrypi3 overrides. I
don't mind these sorts of changes on the master branch but I worry
about applying them to a stable branch.

What do other meta-raspberrypi stable branch users think? Should we be
pedantic here or should we keep things open so that improvements can
be applied to stable branches?

Cheers,
Paul

