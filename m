Return-Path: <mirza.krak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 705FEE00A0A; Fri, 21 Apr 2017 13:09:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.193 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mirza.krak[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f193.google.com (mail-qk0-f193.google.com
	[209.85.220.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE0C0E0083C
	for <yocto@yoctoproject.org>; Fri, 21 Apr 2017 13:09:36 -0700 (PDT)
Received: by mail-qk0-f193.google.com with SMTP id d80so8735944qke.1
	for <yocto@yoctoproject.org>; Fri, 21 Apr 2017 13:09:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=MY8iyN+k+C9uWmB7WTOXJDfQxVjdDiwf9JqQr/s4Cuo=;
	b=WKyXKyoODJqDJWhy2hcCsT15YZr0HrPOgdHa200xH/d/sVro9ke3JgCBzetAiulAt0
	54tNct8x7llHl58+EH6zlbktWQucJJw2eezTEx2acL6SdhzajNqtTJUjNdx62NF1l/Hy
	6OxsfFkdW2lvO2dSQTEw3CmEU43QKLf+7WCxFSmsKOqdfqMDfnBgthmQrutVlgtL0wvq
	VqDnORi+ll1zWMJISEDl762vs/uiOWd4LOLmb3pAvTFD05HuaKTJMtDV3VDfrasF0J9i
	HofMpS+5DEvB4r4b6SVehpsTAyzitZXww2iuWStJ+n8SEzjj9zZgxpqdLIMxRrvrWtck
	oVpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=MY8iyN+k+C9uWmB7WTOXJDfQxVjdDiwf9JqQr/s4Cuo=;
	b=epupnImDnB60BC8IC6t63Vk4LfLKj1MHkMCQel2Uc9fkjNOy5zcIUSWg+ipZnoP5Vz
	W6fV+sdUvHgz1Brip7BDSWZXAUPdtWpLQG9eiN6bhkDtjJtXfMas4Sfwnpg+H8WHEzWc
	pRYPYfvkWkGYpgM8uI0mQM1J8pbJx2wn2bcimAfR/fMMjIO8tEGvXWPDGc91eruZIK0T
	cEZIrOubjj1CgwS1wcovn/nHt1YFgTO3WqKYzIT6XQDhBkycgD9SjW7PeBj9JUm0k8Tg
	gUo6ITbUxle3F37n3ZPXJlGjOpgO+ec9hMriuaE1uhAKVPsGXISDdpP99Q4HbtmKAqY7
	+f5A==
X-Gm-Message-State: AN3rC/65dugIRN0mqkmsulXhA51o4BBNq4FQ8Qx5J2vf4MrsUqaDnjzf
	XNRRFy4rDp2zuCRsaToLUnpOmrpcYA==
X-Received: by 10.55.116.1 with SMTP id p1mr14132832qkc.115.1492805375682;
	Fri, 21 Apr 2017 13:09:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.34.203 with HTTP; Fri, 21 Apr 2017 13:09:35 -0700 (PDT)
In-Reply-To: <CAPyrkgzO3QZF9cOtWsD9OQVrAPAahTtW9i68YTWX=Lra8y+m7w@mail.gmail.com>
References: <20170420171816.23407-1-andrei@gherzan.ro>
	<20170421160308.GA32138@carbonA>
	<CAPyrkgzO3QZF9cOtWsD9OQVrAPAahTtW9i68YTWX=Lra8y+m7w@mail.gmail.com>
From: Mirza Krak <mirza.krak@gmail.com>
Date: Fri, 21 Apr 2017 22:09:35 +0200
Message-ID: <CALw8SCVwbai0ErhAARE6rYutSsiRMgdam=ObQRusT_J_XzKoxA@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 21 Apr 2017 20:09:37 -0000
Content-Type: text/plain; charset=UTF-8

2017-04-21 19:37 GMT+02:00 Paul Barker <pbarker@toganlabs.com>:
> On Fri, Apr 21, 2017 at 5:03 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>> On Thu, Apr 20, 2017 at 06:18:14PM +0100, Andrei Gherzan wrote:
>>> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
>>> ---
>>>  conf/machine/raspberrypi2.conf | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/conf/machine/raspberrypi2.conf b/conf/machine/raspberrypi2.conf
>>> index 9b4c02a..a17289c 100644
>>> --- a/conf/machine/raspberrypi2.conf
>>> +++ b/conf/machine/raspberrypi2.conf
>>> @@ -7,7 +7,7 @@ DEFAULTTUNE ?= "cortexa7thf-neon-vfpv4"
>>>  require conf/machine/include/tune-cortexa7.inc
>>>  include conf/machine/include/rpi-base.inc
>>>
>>> -SERIAL_CONSOLE = "115200 ttyAMA0"
>>> +SERIAL_CONSOLE ?= "115200 ttyAMA0"
>>>
>>>  UBOOT_MACHINE = "rpi_2_config"
>>>  VC4_CMA_SIZE ?= "cma-256"
>>> --
>>> 2.12.2
>>>
>>
>> Entire patch set merged to master and morty.
>>
>
> This is the sort of thing I'm not keen on applying to stable branches
> as it may change recipe behaviour. For comparison, the stable branch
> policy for oe-core is very strict
> (https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance#Policies).
>
> In my mind, avoiding potential breakage on a stable branch is more
> important than making improvements. I'm even weary of updating the
> raspberrypi firmware as I don't know how careful they are about
> backwards compatibility. For kernel updates I do have an expectation
> of backwards compatibility and an understanding that new stable
> releases often fix security issues so I'm ok with those on stable
> branches.
>
> For example of where I'm concerned, a "raspberrypi2" override was
> previously applied to both raspberrypi2 and raspberrypi3 machines.
> After the third patch in this series it only applies to the
> raspberrypi2 machine. Also, UBOOT_MACHINE is now set differently for
> raspberrypi3 ('=' vs '?='). These changes may affect the value of some
> variables when building for raspberrypi3 if downstream users haven't
> explicitly handled both raspberrypi2 and raspberrypi3 overrides. I
> don't mind these sorts of changes on the master branch but I worry
> about applying them to a stable branch.
>
> What do other meta-raspberrypi stable branch users think? Should we be
> pedantic here or should we keep things open so that improvements can
> be applied to stable branches?

I would have to agree with Paul here since you asked :).

I would apply a more strict policy working with stable branches, and
be be more in line with the Yocto policy. That is only bug fixes,
security updates and make sure that build is stable on supported
distributions. Everything else can wait until the next "release" and
reside in master.

My 2 cents.

Best Regards
Mirza

