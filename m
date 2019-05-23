Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CDA4E00B5F; Thu, 23 May 2019 16:55:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com
	[209.85.210.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00B97E00B43
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 16:55:55 -0700 (PDT)
Received: by mail-pf1-f174.google.com with SMTP id y11so4115042pfm.13
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 16:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=3RunZ6RTOEYmeqAvKOd8aUE/6Eo/zRtHFwchT3LvYyY=;
	b=H7Sx+ZiIDtNTHnQT5jkSx6PQ++mqVreLliHWtSvJXy79yCTXW/8/5yaZ/Vs/Ab1HX0
	K8UmM9xuXpLjxmi42sqpLlBhm5RyzoxXczjPxL8iz4mHEy/zpR1vNI85URevUrokf424
	/gfBg4bM5Mtrb8+/cgqKNwrWb9kGwKa/7uUWOBXBICFQQeCWcHNQ+n3pDdDehckMzdFp
	AMlC7nfqgIo70DK1WSDgZbCxhjORFLMkq2xPHunAOXCIUB5iSwBhUpf2ggRCF8SxbJsC
	BHnlZUxaHK/8+dZRD+pFQyPjZIEZi2QhHAqRt6JlLbm8hzPFbP+znxDtHE12hkPFnN70
	66sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=3RunZ6RTOEYmeqAvKOd8aUE/6Eo/zRtHFwchT3LvYyY=;
	b=OEVr9eU1iBs6tjaDsdFRdwRAvdiBfHxfJe5KyPxZGycIYm6OPs5rUqjmpCpqQj+7NR
	lenHwkuHygpsspHtztgtDzwVZvI1KU4jBRMgNPuja97Na5Ukdv1t5ZgpgGeYYgWdGGax
	8Zx4pJlGzg2MzXT1wdIhgnonLXVmk+6RGLHFZT9YLcT2ZRpjabiDa2oOrqipaXoHun/+
	+ek6ivrTv6WtxaMEo+UuTkoxE5PjzqDpuae5bE8pu1+esJAfkV8qXDYXdEoQndt0wqDx
	6fY1UIfbPRN95FdtKeKwEbCUKCFfafpKA6RpILvsY6uKLwrG2JOaTzpWbHXntVx3XxuU
	bCyA==
X-Gm-Message-State: APjAAAUVUgo/Q7av4bAptpgh6v8w+oPUM6vhFSTR0hltaAGVDohseKuK
	FwxTahqBKsCpecl896TcnzeGDlwyJH4=
X-Google-Smtp-Source: APXvYqyCjlRdKpdkrRCk4uS9WoJjaQw26kcNvf5juBhyG1mbStCIfkFyWF7tzn8T7yygF9firkGZwQ==
X-Received: by 2002:a17:90a:bd8b:: with SMTP id
	z11mr5088384pjr.39.1558655754918; 
	Thu, 23 May 2019 16:55:54 -0700 (PDT)
Received: from hermes.local ([2601:646:8500:6bc6:7892:9931:70c0:491e])
	by smtp.gmail.com with ESMTPSA id g8sm571873pfk.83.2019.05.23.16.55.54
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Thu, 23 May 2019 16:55:54 -0700 (PDT)
To: virendra kumar thakur <coolveer07@gmail.com>,
	Yocto-mailing-list <yocto@yoctoproject.org>
References: <CANGFfGa=qMdrWzo-Lxs-tb=6q3XH7aqXVrOd7JdC3G9Yk3Lp=g@mail.gmail.com>
	<CANGFfGYLEXR49NvsQUuDawFoGDYiDzGPVaqLiaN=vZzSbdtsnQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <277b0434-c5df-ac19-5e79-6c5ffb6a55d5@gmail.com>
Date: Thu, 23 May 2019 16:55:53 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:67.0)
	Gecko/20100101 Thunderbird/67.0
MIME-Version: 1.0
In-Reply-To: <CANGFfGYLEXR49NvsQUuDawFoGDYiDzGPVaqLiaN=vZzSbdtsnQ@mail.gmail.com>
Subject: Re: /usr/share/common-license package/recipeinfo contains GPLv3 info
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
X-List-Received-Date: Thu, 23 May 2019 23:55:56 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 5/23/19 2:42 AM, virendra kumar thakur wrote:
> 
> 
> Hello team,
> 
> I am trying to build yocto image without GPLv3 package, I have added 
> below things in local.conf and enable meta-gplv2 layer.
> 
> INCOMPATIBLE_LICENSE = "GPL-3.0 LGPL-3.0 AGPL-3. 0" in local.conf.

Can you try adding GPLv3+ to INCOMPATIBLE_LICENSE and see if that helps ?

> 
> After verifying from package.manifest and license.manifest file in 
> build/tmp/deploy/license/ directory I observe that no GPLv3 package is 
> present in rootfs.
> 
> But I can see in 
> rootfs/usr/share/common-license/package/libgcrypt-lic/recipeinfo
> 
> LICENSE: GPLV2+ &LGPLV2.1+ &GPLV3+
> PR: r0
> PV : 1.8.4
> 
> Is present..
> 
> My doubt is why any GPLv3 is present in common-license directory?
> 
> From: "Burton, Ross" <ross.burton@intel.com <mailto:ross.burton@intel.com>>
> To: virendra kumar thakur <coolveer07@gmail.com 
> <mailto:coolveer07@gmail.com>>
> Cc: Yocto-mailing-list <yocto@yoctoproject.org 
> <mailto:yocto@yoctoproject.org>>
> Subject: Re: [yocto] GPLv3 package present in rootfs
> 
> On Wed, 22 May 2019 at 06:26, virendra kumar thakur
> <coolveer07@gmail.com <mailto:coolveer07@gmail.com>> wrote:
>> still some package gnutls, libidn2, libassuan, are added into rootfs.
> 
> Randomly picking libassuan:
> 
> LICENSE_${PN} = "LGPLv2.1+"
> 
> The library itself is LGPL-2.  Have you verified the *package*
> licenses for what is actually going into the image?
> 
> Ross
> 
> 
> 
> 

