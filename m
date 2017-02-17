Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22493E006EA; Thu, 16 Feb 2017 16:16:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9893FE00510
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 16:16:40 -0800 (PST)
Received: by mail-pg0-f67.google.com with SMTP id a123so465897pgc.3
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 16:16:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=nPQHq4O4xmUINk8PwWdl18g8vGIr+w40JARoihXtiSo=;
	b=OIvoT3lTh8G+L/FriWkrc8lHAFTDJl0y5nJO11yFdNkByO7B6tG8DoQqndzT019CmX
	BaEjZBXJBtkTZJ0ZG4wg1GWqIYGOQfsWr8g1NVSvqJe9Armfjtqtkqnq97aPNBFDUVJB
	EafTf2tB0IZ88HzcWooXeRQRdozpqP69oCBKaAJrsn6E25zEc5J7q4vXVUZt02ma8B9H
	2c5FLh66PeLN5BLyyC17NoXlX1zMVQY8pwEAHXRg/u5LPkdoTRRzpiKaszOHl43qfSqK
	dxVqTrDO1xOT32zuW54iA/rLOjtPJ6lZ72eKzQW69MmC1F6TomiI2ty+bfxLlGX7IvFb
	GpLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=nPQHq4O4xmUINk8PwWdl18g8vGIr+w40JARoihXtiSo=;
	b=iUGz8aa+9+AYsA1VSaewnsvqyDUr8L+llNqaMBavRpD5Xn32QBvQYFeCNQxIRtth9S
	mtVnD/HVQ9g/c1E8QK6tuibSD/0Ricr/fMzU0MRLs8FgWEMOdxXbs3bh1ui1GJFPavXu
	L57VsedhzyvAFPkhQT5MT7N2F+IXFy5W8MZrAMRa8sAosRCZnNIaj7Pj2errY/h5nsGU
	+5f0g7LaQo45PFQLLC7cf07nngdJBA3qcXs2Afw1BBRNEKhVjwFp9UQyVDvTzE25PmUa
	gHaCse+lvImMBSWlJl7bjvsUF3TsrhXDYHRunqO1rZD71fXvYbTd+ttkpgrv7yU9QeTp
	k28w==
X-Gm-Message-State: AMke39lbjSWASLqRKqyCOvdNLa61W3ulj+YVWE949RghL8MQyo89q+i/uCoeWvWOKKGeZg==
X-Received: by 10.98.84.193 with SMTP id i184mr5930125pfb.27.1487290599572;
	Thu, 16 Feb 2017 16:16:39 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:dcfa:13bf:34d0:bc6f])
	by smtp.gmail.com with ESMTPSA id
	h4sm15562356pfk.96.2017.02.16.16.16.38
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Feb 2017 16:16:38 -0800 (PST)
To: Andrei Gherzan <andrei@gherzan.ro>
References: <20170216184645.6258-1-raj.khem@gmail.com>
	<20170217001253.GA11602@carbonA>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <5318e22c-21f0-9c16-a294-c2fa5bd38ca4@gmail.com>
Date: Thu, 16 Feb 2017 16:16:38 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <20170217001253.GA11602@carbonA>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH V4 01/14] Add raspberrypi3-64.conf
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
X-List-Received-Date: Fri, 17 Feb 2017 00:16:41 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 2/16/17 4:12 PM, Andrei Gherzan wrote:
> On Thu, Feb 16, 2017 at 10:46:32AM -0800, Khem Raj wrote:
>> From: Herve Jourdain <herve.jourdain@neuf.fr>
>>
>> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> ---
>>  conf/machine/raspberrypi3-64.conf | 15 +++++++++++++++
>>  1 file changed, 15 insertions(+)
>>  create mode 100644 conf/machine/raspberrypi3-64.conf
>>
>> diff --git a/conf/machine/raspberrypi3-64.conf b/conf/machine/raspberrypi3-64.conf
>> new file mode 100644
>> index 0000000..5598e50
>> --- /dev/null
>> +++ b/conf/machine/raspberrypi3-64.conf
>> @@ -0,0 +1,15 @@
>> +#@TYPE: Machine
>> +#@NAME: RaspberryPi 3 Development Board
>> +#@DESCRIPTION: Machine configuration for the RaspberryPi 3 in 64 bits mode
>> +
>> +MACHINEOVERRIDES = "raspberrypi3:raspberrypi:${MACHINE}"
>> +
>> +MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-bcm43430"
>> +
>> +require conf/machine/include/arm/arch-armv8.inc
>> +include conf/machine/include/rpi-base.inc
>> +
>> +SERIAL_CONSOLE = "115200 ttyS0"
>> +VC4_CMA_SIZE ?= "cma-256"
>> +
>> +UBOOT_MACHINE = "rpi_3_config"
>> --
>> 2.11.1
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> 
> The entire patch set was merged to master. Thanks.

Cheers!


