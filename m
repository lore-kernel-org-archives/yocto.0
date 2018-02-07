Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4592CE00DE3; Wed,  7 Feb 2018 05:09:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f54.google.com (mail-lf0-f54.google.com
	[209.85.215.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B03D2E00B1A
	for <yocto@yoctoproject.org>; Wed,  7 Feb 2018 05:09:57 -0800 (PST)
Received: by mail-lf0-f54.google.com with SMTP id f137so1263030lfe.4
	for <yocto@yoctoproject.org>; Wed, 07 Feb 2018 05:09:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=giIA4pUEpZAludSDo/4O2c0Pd+ZBY3kVnUNhpY/qas8=;
	b=ltERiHiB3O0auNqVF8cN2kWej1D/f7p5qbwG+ttl8OfRYe3ojWtrBK+WPJa0qk1RM8
	l57fmConDSQ2Yawsw/sMi97y8iicwkPVq804CnuBnRsjT+Sq1CAEPFP0v47el7dZuDtZ
	vM1OtQK2YVc5379+QtGemxoSyKpfFDJOG49XbBWnnZGdHl1FFQJG5RVn/y/4FTUHyRye
	+JvrCsCb4lFAoouv3mDXngkrsanHm1mvQb1oeWNe+8Jf7uuWDMXXpiW0b9jQxIjpFt9f
	vCWoxfjdZ5vYUa96OjHOgeN5reX3a0IiuC796Qz1DeiczaTfISc4rAuPZpPfIyFxZBSa
	R5zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=giIA4pUEpZAludSDo/4O2c0Pd+ZBY3kVnUNhpY/qas8=;
	b=Y2L5TEXs1XQF4hApOBW1vc2bAQAn/WC3hP+px4yUjzJUqDu6S6NrSt2XNK5HV6yOyK
	pmxs0l3Pwuffl/WyensndpHc+ZUuReil3+8XXbLeSgkcVzAZgYD4o/D+SYyU812ncuCS
	aXPw7/eeQhqZNP6uVKWgiDzRRapYT2x1UzjvDR10U5PugtokQalzy/7WK/1QOeLnYl70
	yKiR8tyEYqvoVa1u64GEMtc8ym+oEkm2ASP8lQUPCqH8U96OczWQH1GlqhO2rvuY81RL
	Ciltn+fz+TC2PzPuQoXaiJQvYWGfcMoTQI2KjYK9cvpnPD1UblKKLfEYUq/w4EyPysbz
	1OOw==
X-Gm-Message-State: APf1xPClbQKaQaC7SdM62EFKqKNcdsHlE2Dhpq6V6W4en6q7IsWG8THU
	aiGQVQoO3NIGKl6YBXK0DDTq3N2FNQ15Ampg6Tg5zw==
X-Google-Smtp-Source: AH8x225Ubg0pPBqeRVrChtZQgpbai6rD+Y2Knu5LpUIL457YGpPrG4XmOewB+gEn3C93R9Drcp34x6YJQM55tRq62nw=
X-Received: by 10.46.125.3 with SMTP id y3mr4391597ljc.23.1518008996130; Wed,
	07 Feb 2018 05:09:56 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.28.4 with HTTP; Wed, 7 Feb 2018 05:09:55 -0800 (PST)
In-Reply-To: <9fd5ab57-6634-c619-e0ba-a16fab765de0@linux.intel.com>
References: <CAOT_U5a_cTCpAHHqPfozcH0Lxu=O1BFYgVa-FkdZcR0-+X8QQQ@mail.gmail.com>
	<9fd5ab57-6634-c619-e0ba-a16fab765de0@linux.intel.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Wed, 7 Feb 2018 14:09:55 +0100
Message-ID: <CAOT_U5ZCxWFQGAWgt9rfv=FLxDr8=c3xaa0TNqnDNbHWLY4=LA@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Creating a python recipe with devtool
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
X-List-Received-Date: Wed, 07 Feb 2018 13:09:59 -0000
Content-Type: text/plain; charset="UTF-8"

Thanks, that worked!

Steps:

# On the build server
devtool create-workspace
devtool add  https://github.com/jruere/multiprocessing-logging
devtool
devtool edit-recipe multiprocessing-logging
    # Change for building for python3
       inherit setuptools -> inherit setuptools3
    # delete the RDEPENDS that were wrongly detected
devtool build multiprocessing-logging
#Prerequisit: ssh root@10.10.10.100
devtool deploy-target multiprocessing-logging root@10.10.10.100

#On the 10.10.10.100 device
python3
import python3-multiprocessing_logging

#On the build server. Finishing
devtool finish multiprocessing-logging
/home/alan/meta-myproject/recipes-devtools/python

On Wed, Feb 7, 2018 at 1:25 PM, Alexander Kanavin
<alexander.kanavin@linux.intel.com> wrote:
> On 02/07/2018 02:17 PM, Alan Martinovic wrote:
>>
>>      devtool add
>>
>> https://pypi.python.org/packages/65/eb/1c3db9596eddb2bd1d1f8153dcaf2d9f2c7e144f4832d1b1449f681a0a7a/multiprocessing_logging-0.2.6-py2.py3-none-any.whl#md5=b7783a8c449135e5bb344b3f0caa3522
>
>
> I don't think we support .whl format at the moment. You need to fetch
> sources directly from github.
>
>
> Alex

