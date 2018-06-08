Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14CCCE01099; Fri,  8 Jun 2018 01:26:24 -0700 (PDT)
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
	*      [209.85.160.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f68.google.com (mail-pl0-f68.google.com
	[209.85.160.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51787E00D97
	for <yocto@yoctoproject.org>; Fri,  8 Jun 2018 01:26:23 -0700 (PDT)
Received: by mail-pl0-f68.google.com with SMTP id f1-v6so7877200plt.6
	for <yocto@yoctoproject.org>; Fri, 08 Jun 2018 01:26:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:organization:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=wtRL44CYyiCC/15OFrFLvSxSmdDd6lJIx3FDv3yaADo=;
	b=qjBxuxvy5D6bj97tszk1lA9OtAbJuvI10MOj+C6DCtszBMZ0BsZq9toxxAR6K7hgLX
	hSRXR4ssbOrtYvyRdWWw/W4Yc+EMdF8Qha/xlZjRdGFtv2GWyYjb4wluJL+R9wjV8QF9
	K5MaBWCdRxhstcQrk4MdQVlj8e5KB9gjde0xhAth1RIgLnkDxz6746pYESwjnsY2HKcw
	z7U4mBLPNYJq9JCmqgsHJi5a7QKUqAN/aVKHGlq8LQqgPB+76wsRixjy2nQw4eaAIq7X
	4jTjTDfQw8Da7NI98rDJTHeWWB6WH9c0mvRGCz9q+e7vfqhB+YxSbzMeWNRmAKK8hYB7
	FPHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=wtRL44CYyiCC/15OFrFLvSxSmdDd6lJIx3FDv3yaADo=;
	b=sr6BtI/pji4jGBUPmnvneULs3RKUxUW6+bQ0Q3H1tDyZEhU2EIn3o7oUmWI4rxSQDJ
	enYCnVImDFfEHYwOyYAQXyuV0bSm0BGWvdA4U9xdxDSwyl2eJIRYVw06K+YcjqAzJv2R
	Aek/sgPv7FefHZKVBeAfjSo2KcJAgTKC/wFK8c9H5nlbaRX9fxdu+ueJ9/YcN/TCbIM5
	VHSNVo7vTmExXOPpdOB79Kw2K0OYsy4GAjlLSh1Ev6f9pUYnqklQCbUdsIVdXEnuTiSo
	dtAtMjgTeYE5bnJfIfghIE8S8/h7OVrJ2xA+tlagosiTxaJsAkRraR7sGx1hbBvwGp6Q
	IkXQ==
X-Gm-Message-State: APt69E38C3GJiyPb2485adsSvHtaN2M1YKElssCQXX8t8egtSjJ2plgE
	+Do8ISk7xFpcMs+uWKlqSyINFB0A
X-Google-Smtp-Source: ADUXVKKQjI/WAijfdi6lAU8O7/lFXlUkjvT+20rm7ReRls9YNEn9ZkCcgvYAINXr+iXIiI9rINK3gA==
X-Received: by 2002:a17:902:6102:: with SMTP id
	t2-v6mr5716195plj.392.1528446382368; 
	Fri, 08 Jun 2018 01:26:22 -0700 (PDT)
Received: from hermes.local ([2601:646:877f:9499:cc7d:178e:51d6:ef12])
	by smtp.gmail.com with ESMTPSA id
	y2-v6sm10507788pfk.82.2018.06.08.01.26.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 08 Jun 2018 01:26:21 -0700 (PDT)
To: Patrick Vacek <patrick.vacek@here.com>
References: <785a2b9a-d6c8-8356-d218-ecc80af2c46d@here.com>
	<CAMKF1spJvA1pP1BrwmcazY0n1QujJPU270dpL=vq9Vfuri73nA@mail.gmail.com>
	<83419d13-87b0-40a7-dfa0-b30924399405@here.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <536f8a9d-c5db-6cf6-4d4e-fca749d143a0@gmail.com>
Date: Fri, 8 Jun 2018 01:26:20 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <83419d13-87b0-40a7-dfa0-b30924399405@here.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: sysroot not being populated
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
X-List-Received-Date: Fri, 08 Jun 2018 08:26:24 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 6/8/18 12:27 AM, Patrick Vacek wrote:
> On 07.06.2018 19:06, Khem Raj wrote:
>> Hi Patrick
>>
>> On Mon, Jun 4, 2018 at 2:01 AM, Patrick Vacek <patrick.vacek@here.com> wrote:
>>> Hello all,
>>>
>>> I have a recipe (aktualizr-hsm-prov) that depends on another (aktualizr)
>>> to provide an executable and a config file. The former recipe includes
>>> `DEPENDS = "aktualizr-native"`, and my do_install() for
>>> aktualizr-hsm-prov has a line something like this:
>>>
>>> aktualizr -i ${STAGING_DIR_NATIVE}${libdir}/sota.conf
>>>
>>> The binary executable (aktualizr) runs, which tells me that the recipe
>>> can find that. (Although to be honest, I'm not sure which version it is
>>> running.) However, it doesn't find the config file, and sure enough,
>>> ${STAGING_DIR_NATIVE}${libdir} does not have the config file I expect. I
>>> can see that aktualizr-native is populating its sysroot-destdir, but it
>>> isn't getting copied to the sysroot for aktualizr-hsm-prov.
>>>
>>> I see this problem in sumo and master, although previously this logic
>>> has worked just fine in morty/pyro/rocko.
>>>
>>> Switching to depending on aktualizr (instead of aktualizr-native) and
>>> using STAGING_DIR_HOST or STAGING_DIR_TARGET does not help, and in fact
>>> makes it worse, as it can't even find the aktualizr executable in that case.
>>>
>>> What am I doing wrong? What changed between rocko and sumo?
>> is aktualizr recipe installing this .conf file when building native
>> version. If not may be
>> add it to do_install
>>
>> install -D -m 0644 <path/to/sota.conf> ${D}${libdir}/sota.conf
> 
> Hello Khem,
> 
> I believe so. The aktualizr recipe includes the following (edited for
> simplicity):
> 
> BBCLASSEXTEND =+ "native"
> 
> do_install_append () {
>      install -m 0644 ${S}/config/sota.conf ${D}/${libdir}/sota.conf
> }
> 
> PACKAGES =+ " ${PN}-host-tools "
> 
> FILES_${PN}-host-tools = " ${libdir}/sota.conf "
> 

Can you check location of sota.conf in the build tree for 
aktualizr-native in directory called package/

> Thanks,
> Patrick
> 

