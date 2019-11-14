Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D413E00E42; Wed, 13 Nov 2019 19:44:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com
	[209.85.215.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF839E00E42
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 19:44:08 -0800 (PST)
Received: by mail-pg1-f174.google.com with SMTP id 15so2781642pgt.7
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 19:44:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=Q5TxyI/6dPAfIpnVPjZQYFn2Z5vdke1PVpnFBLgUGOA=;
	b=FnmbDJzM52JLUmSUfzNsyP00I4w5cVllO1ttcBSPYyGqO0RwdEnfBQ5KKdeol6j2ol
	yDewntyfyj0wkCWvRRE/HeVlrlMckiXNYWnjEwpkl77gkx6bzftbtVaBPHFV8cSFVb6l
	CsgHkQqM0aYDD6EHXUQMoRV1NcqY9mtirsIkv+g0F/CjPlPQN6nWt8YTGskZ+PpHFl2I
	/okxw1DfavVjk04LaOwAJoVxUEFitlHQ6Jo1zMwqUjEtH+qCPMbRuS5VIj9V26CtPyRP
	Ay8et/fypfBCSUpnu3zPjClfMcmhXim35DTys+AR1g/O+k48FvftHh+Xh0ku104hEi0h
	kzsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=Q5TxyI/6dPAfIpnVPjZQYFn2Z5vdke1PVpnFBLgUGOA=;
	b=Jt1bq5Do0bizmgHwXGWRskOF7NPqkEi0Yhqm2T2G73f6zi3B2/ztAIFR3cWhq1rSNC
	P4EeWqCOaXvtpVOZCISZ98H4DEIqjzcEsqIqgRDG3l2eT3kqX39U1zJcKIqT5OYRhPZ1
	FqG/DZY3hZHFYvJfm4yQWO2+wfwb8GTF6gG60vvsgcGgBR0+tmM+6PHMkkTabsu3zgbf
	+Drmoz/lNYcnMb/2TFex9b1+UdGzafNwi4PS+Jf5mt+37eR+GOGpPSisY6gNBEpRsLkg
	cIXSEt/qmYAPExbyP5a7k4y9URlJmCfkt2QN8FcPr7aW/tkpMR54PvWpXc1UMVqMkOFP
	iiCw==
X-Gm-Message-State: APjAAAViXj5x24kaQo9Kq/PLad1c9oU4Cyq6ugIKmi9LLf8V6iQIl7eT
	Y6wfzfPacF4phqdZRDB4Z8s=
X-Google-Smtp-Source: APXvYqx7Dy3hILDxbKZALgJBp/+1Ha2FcsdK+BLuCvK+JqpwoUZ4SXXA1FzrAXl9dReLmu4EEZRe5A==
X-Received: by 2002:a17:90a:ba81:: with SMTP id
	t1mr9429013pjr.139.1573703048233; 
	Wed, 13 Nov 2019 19:44:08 -0800 (PST)
Received: from ?IPv6:2601:202:4180:a5c0:90e5:8f1e:65b9:f435?
	([2601:202:4180:a5c0:90e5:8f1e:65b9:f435])
	by smtp.gmail.com with ESMTPSA id
	k20sm5246817pgn.40.2019.11.13.19.44.07
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 Nov 2019 19:44:07 -0800 (PST)
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <20191030172230.71E0F860286@debian10-ty-2.yocto.io>
	<BN7PR11MB272124A3092ACFC1752456D1C8630@BN7PR11MB2721.namprd11.prod.outlook.com>
	<CY4PR11MB1879A1DBA0F6F65FF4B1EF49E3710@CY4PR11MB1879.namprd11.prod.outlook.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <80d9d6d2-1724-deeb-5b23-26e9e1ea9207@gmail.com>
Date: Wed, 13 Nov 2019 19:44:06 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CY4PR11MB1879A1DBA0F6F65FF4B1EF49E3710@CY4PR11MB1879.namprd11.prod.outlook.com>
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>
Subject: Re: QA notification for completed autobuilder build (yocto-2.7.2.rc1)
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
X-List-Received-Date: Thu, 14 Nov 2019 03:44:09 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 11/13/19 6:09 PM, Jain, Sangeeta wrote:
> Hello All,
>
> Intel and WR YP QA is planning for QA execution for YP build yocto-2.7.2.rc1.
> We are planning to execute following tests for this cycle:
>
> OEQA-manual tests for following module:
> 1. OE-Core
> 2. BSP-hw
> 3. BSP-Qemu
>
> Runtime auto test for following platforms:
> 1. MinnowTurbot 32-bit
> 2. Coffee Lake
> 3. NUC 7
> 4. NUC 6
> 5. Edgerouter
> 6. MPC8315e-rdb
> 7. Beaglebone
>
> ETA for completion is Monday, November 18.
ok. sound good.

thanks,
Armin
>
> Thanks & Regards,
> Sangeeta Jain
>> -----Original Message-----
>> From: Pokybuild User <pokybuild@debian10-ty-2.yocto.io>
>> Sent: Thursday, October 31, 2019 1:23 AM
>> To: yocto@yoctoproject.org
>> Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
>> <apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>; Chan,
>> Aaron Chun Yew <aaron.chun.yew.chan@intel.com>; Ang, Chin Huat
>> <chin.huat.ang@intel.com>; richard.purdie@linuxfoundation.org;
>> akuster808@gmail.com; sjolley.yp.pm@gmail.com; Jain, Sangeeta
>> <sangeeta.jain@intel.com>
>> Subject: QA notification for completed autobuilder build (yocto-2.7.2.rc1)
>>
>>
>> A build flagged for QA (yocto-2.7.2.rc1) was completed on the autobuilder and is
>> available at:
>>
>>
>>    https://autobuilder.yocto.io/pub/releases/yocto-2.7.2.rc1
>>
>>
>> Build hash information:
>>
>> bitbake: 75d6648f232a06b99c54a1e33324a7fc1cd15b38
>> meta-gplv2: d5d9fc9a4bbd365d6cd6fe4d6a8558f7115c17da
>> meta-intel: ca26bed652722167b2dbe0042cfc2406029e9c6c
>> meta-mingw: 10695afe8cd406844e0d0dd868c11677e07557d4
>> oecore: 726c3b92298981f5aa2f2449ceeec7b4bf84ed29
>> poky: d0f73121551dc98f6924cd77952bf9ebf5ef3dd7
>>
>>
>>
>> This is an automated message from the Yocto Project Autobuilder
>> Git: git://git.yoctoproject.org/yocto-autobuilder2
>> Email: richard.purdie@linuxfoundation.org
>>
>>
>>


