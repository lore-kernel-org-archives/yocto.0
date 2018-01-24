Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13AABE00DF2; Tue, 23 Jan 2018 21:43:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f180.google.com (mail-ot0-f180.google.com
	[74.125.82.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81A59E00D75
	for <yocto@yoctoproject.org>; Tue, 23 Jan 2018 21:43:42 -0800 (PST)
Received: by mail-ot0-f180.google.com with SMTP id p36so2606278otd.10
	for <yocto@yoctoproject.org>; Tue, 23 Jan 2018 21:43:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=x4vWlCIjbGU6jIKbuFMSv8KHRnkzpgiUnIrEl8zjbyY=;
	b=e+CBSzb4bQhoy8vV1Lrghp/IKugleC/3jSfD268wKr2ba7e2BL5irNJkyPIv0WD7x0
	H1rpwVLtEx2qGu0HNEbo+Zyx7DjE2HYesOCaGmSunIJXxqrXNDsNTKNH+mVRrvJ9oC+K
	LpRJab45bQCBf6DvjR7hO/qwe7oKfdKTAwEhkq/A7M2tN8sqTLp//M72///9Yhn6kO4k
	XFmfG6Ej9+ji1LZFuer7trgmkk0QeoTT2F/2ZRgKoC3YfahyXcsPzcohzzgItGc2RjHL
	N5dRqWKsztv5+ysBXx2fyG1oXS0FmNyaCQlqJCUQscm3S+TV5/BDPB50/6OoZkBq/PuA
	/G9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=x4vWlCIjbGU6jIKbuFMSv8KHRnkzpgiUnIrEl8zjbyY=;
	b=Qj572J9prMQMlx00ePDTME1lBAArmBtPWzvAxCdeoJcD8MaedkzyC+zSs8/8oFSrwM
	CXzJsVJ5TMFPd2ZCV8ZqT2Wq06TTt73yHfz5zHBlsiNN0yP5tDLzpYE4Pk0WYy49c2lV
	9/YugF0j0LLA//g0mN4ZsWwkq+1qOl82wJTzV2uwJIzFRF2ngk50/t2Lsawx16t6eBTp
	oT0QpDHgTmuq6Pl3mbvNvYVF82Cltf1U0FiCKvQtcHg8JO/Skk9m0i4xmZI7JeiAFSxI
	RXIu7jy8H9IyziIlHE2iLOhMQmQnjKm+NBAe6M0iKeovgkx9KfTqbPUG/AZPJeywevT3
	T/Hg==
X-Gm-Message-State: AKwxytfbWBYYJgOelD2Bo2IGBhoYhx2j8Egfh+50yGid0NaMtSZ4Wb2u
	g2Ef60/ovJm9++uiGQluexFhTSMf
X-Google-Smtp-Source: AH8x226PF2pTICWuY9HKi0VgZOxK8f9CZpjSHaUhprxGumAJrQ0NkaK0yiQR/7r/m+yiRmooZthVsQ==
X-Received: by 10.157.2.132 with SMTP id 4mr9089699otl.295.1516772621474;
	Tue, 23 Jan 2018 21:43:41 -0800 (PST)
Received: from [172.20.1.220] (207-91-160-20.nstci.net. [207.91.160.20])
	by smtp.gmail.com with ESMTPSA id w62sm1873267oig.2.2018.01.23.21.43.40
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 23 Jan 2018 21:43:40 -0800 (PST)
To: yocto@yoctoproject.org
References: <ae6a6ca1-0416-4780-076a-97a26f753707@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <ef93900d-1ac3-0b68-0e40-d0425d62664d@gmail.com>
Date: Tue, 23 Jan 2018 23:43:39 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:58.0)
	Gecko/20100101 Thunderbird/58.0
MIME-Version: 1.0
In-Reply-To: <ae6a6ca1-0416-4780-076a-97a26f753707@gmail.com>
Subject: Re: Trying to make PylonGPS build with DEPENDS, does not find includes
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
X-List-Received-Date: Wed, 24 Jan 2018 05:43:43 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 12/19/17 2:28 PM, ccSmart wrote:
> Greetings.
> 
> I'm trying to set up a poky layer at
> https://github.com/navdata-net/meta-navdatanet/tree/rocko
> 
> Compiling PylonGPS from https://github.com/charlesrwest/pylonGPS
> requires, amongst others Google protobuf.
> 
> I include this as
> 
> DEPENDS += "protobuf-native"

I think you need to depend on protobuf for target. Then ensure that the
expectation of path where the headers should exist is correct with
respect to target sysroot.


> 
> During build i get
> 
> fatal error: google/protobuf/stubs/common.h: No such file or directory
> #include <google/protobuf/stubs/common.h>
> 
> However, this file can be found at
> 
> /workdir/dev/rpi3/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/pylongps/0.1.0-r0/recipe-sysroot-native/usr/include/google/protobuf/stubs/common.h
> 
> 
> So i assume it is a problem with visibility / build environment setup.
> 

thats not how it works, you cant include native headers while building a
target recipe.

> For running the build, i'm using the crops/poky docker image.
> 
> Where should i look for finding the correct solution ?
> 
> Thanks for your input.
> 
> 


