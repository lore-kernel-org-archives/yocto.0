Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47B96E00510; Thu, 16 Feb 2017 13:40:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.196 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1520E004A0
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 13:40:18 -0800 (PST)
Received: by mail-pf0-f196.google.com with SMTP id 19so2433910pfo.3
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 13:40:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=fKkNH1ICcy3o0HoFBRrQzh2F++n7soLXR9oYHkNXNPs=;
	b=HNZzDI14FYW7mkPUVeTCM7XOdg1Bm028ChEAU8r7LKJHxizYdsn0z2+2fQhzsBFeBu
	5UkZjEi0sa32Tbg5WFEtoHcLSUEFwNUbsxv/H3r2/JHSDCWVUV/0LalnNmT8j9cCNCKC
	yv0U8p2k5ptUEUOky4HlLt2S1RK5Ny+Pk0urTulBvtp54NxeMnLffrtK6jUG8vA4Te+h
	qjqvXw/R4jPdY/S/syJvzPS2L1U4spEV6DwJrn4Tg24i5V7He67OIJUhgYH8COdK8NTo
	Jad1pjGRyy5QVQx1MVcVwcKf6E3+FObptW+M4P73jNmYeTOeZwwKdHCcE0n7DrqlyLDb
	06Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=fKkNH1ICcy3o0HoFBRrQzh2F++n7soLXR9oYHkNXNPs=;
	b=umukeYCzBhRn4hwhb8vn5MeeqmV8aUDXt4YLkhKCXz+1dHB3zkL0x5zXQiL3Irs9JY
	6q6zY79Sbj3oHp/5nQiDSYHBhjq2gmvjhN2Mk0wc0lxO2Ro2Vamk/NAoUEZANM8MHCJM
	AHiolKMALWlms62fbPcUqaIZHDCjpJvuBLkt148wKweyR7NY4nswQlr332q1YzEuy8o3
	I/Dwe+ApMPBhCG1lB/2FaknoULME2/L/WrVVbXcb225EGwB/y+C0xk11/QOUuOsk4Wvq
	x7mw3wlVIUhhq3JLzbfkOubLL7kKuIiPG56pp37zjujDKcUFqsZbAnVvE8w0jH3Tkgg4
	5pPg==
X-Gm-Message-State: AMke39nvIf+8SvZ2M5uMJuVvvuFxluyLrDQWnvcYrRgoz/G7zxvm9mMk6641Ayj+PQfrHQ==
X-Received: by 10.84.212.136 with SMTP id e8mr6244814pli.140.1487281217539;
	Thu, 16 Feb 2017 13:40:17 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:dcfa:13bf:34d0:bc6f])
	by smtp.gmail.com with ESMTPSA id
	m6sm15356022pfm.22.2017.02.16.13.40.16
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Feb 2017 13:40:17 -0800 (PST)
To: Andrei Gherzan <andrei@gherzan.ro>
References: <20170212052655.12342-1-raj.khem@gmail.com>
	<20170212052655.12342-3-raj.khem@gmail.com>
	<20170216020918.GE31588@carbonA>
	<CAMKF1srjMUswSDM8eUUd1jLT_knfKhRjtde88pwt7H22X+z6ZQ@mail.gmail.com>
	<CAMKF1so5J-hMdxUPp15c+xgpnZRpcAikiuRMhzQ12MGFOsWWSg@mail.gmail.com>
	<20170216060129.GA25376@carbonA>
	<CAMKF1sr=Du497sPqQBHK+wSKKdzsLmbqE+TneMuf0LeYRDN1BA@mail.gmail.com>
	<20170216195436.GB29416@carbonA>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <a834e96f-3766-20d8-0830-586f4fb4ae91@gmail.com>
Date: Thu, 16 Feb 2017 13:40:15 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <20170216195436.GB29416@carbonA>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH V2 03/11] raspberrypi3-64.conf: Use 4.9 as default kernel
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
X-List-Received-Date: Thu, 16 Feb 2017 21:40:19 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 2/16/17 11:54 AM, Andrei Gherzan wrote:
> On Thu, Feb 16, 2017 at 06:52:23AM -0800, Khem Raj wrote:
>> On Wed, Feb 15, 2017 at 10:01 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>>> On Wed, Feb 15, 2017 at 06:47:17PM -0800, Khem Raj wrote:
>>>> On Wed, Feb 15, 2017 at 6:34 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>>>> On Wed, Feb 15, 2017 at 6:09 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>>>>>> On Sat, Feb 11, 2017 at 09:26:47PM -0800, Khem Raj wrote:
>>>>>>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>>>>>>> ---
>>>>>>>  conf/machine/raspberrypi3-64.conf | 2 ++
>>>>>>>  1 file changed, 2 insertions(+)
>>>>>>>
>>>>>>> diff --git a/conf/machine/raspberrypi3-64.conf b/conf/machine/raspberrypi3-64.conf
>>>>>>> index 5598e50..cdcd726 100644
>>>>>>> --- a/conf/machine/raspberrypi3-64.conf
>>>>>>> +++ b/conf/machine/raspberrypi3-64.conf
>>>>>>> @@ -13,3 +13,5 @@ SERIAL_CONSOLE = "115200 ttyS0"
>>>>>>>  VC4_CMA_SIZE ?= "cma-256"
>>>>>>>
>>>>>>>  UBOOT_MACHINE = "rpi_3_config"
>>>>>>> +
>>>>>>> +PREFERRED_VERSION_linux-raspberrypi ?= "4.9.%"
>>>>>>
>>>>>> This doesn't really work as rpi-default-versions.inc already sets the
>>>>>> version and this will not overwrite. Maybe have this before including
>>>>>> rpi-base.inc?
>>>>>
>>>>> actually I realized that I set the PREFERRED_VERSION_linux-raspberrypi
>>>>> in my local.conf and that overrides all. I will send a followup for
>>>>> this.
>>>>>
>>>>
>>>> just sent a series of 3 patches which should take care of this problem
>>>> please apply it on top of this series.
>>>
>>> As well omxplayer compilation fails on this machine:
>>>
>>> | ERROR: oe_runmake failed
>>> | aarch64-poky-linux-gcc is unable to create an executable file.
>>> | C compiler test failed.
>>>
>>> Can you take a look on this?
>>
>> sure, as I said so far I have booted rpi-hwup-image and
>> core-image-weston builds and boots into console, no graphics yet. so
>> not all packages may yet build but we have a start.
> 
> Uh OK. I haven't caught this detail.

Looking further omxplayer has tight deps into openmax/mmal APIs from
firmware package which is not working on aarch64 yet. For now I think
we can skip it for aarch64

> 
> --
> Andrei Gherzan
> gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan
> 

