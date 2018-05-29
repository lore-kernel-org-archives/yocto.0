Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5780FE00CC4; Tue, 29 May 2018 12:34:05 -0700 (PDT)
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
	*      [209.85.216.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f173.google.com (mail-qt0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85209E00C9C
	for <yocto@yoctoproject.org>; Tue, 29 May 2018 12:34:04 -0700 (PDT)
Received: by mail-qt0-f173.google.com with SMTP id c2-v6so20188753qtn.9
	for <yocto@yoctoproject.org>; Tue, 29 May 2018 12:34:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=nOVNA/BXKPRuYASGUSkzKGV+4I7D65aD01fwXtnU8Kw=;
	b=E6dlLcHtDjG/aYsDiEOcv18uLmBzou/jNG+gRq6FS0vcw0D9iL5u6m/kKndJ/ncNYs
	2DiR6fZJaWBnhc6faWLApmPNuIGEc7vTd8xK64dDE8A63T173RaPI+EF6pj3CzdNkObY
	V0snOBtNQ+fm0TAAIIKjPubHfdRykzwoSPfVhDo4Ta+xAurxcd7oh9xa2MFmeIg6keP9
	ftE2znAvkW54rM6YQpakjNz54J8NWoOKutCH6Xa98HGgtXIg/FEeOr/34ZfjLKpzS1BS
	CmR9q2Ck88BIUb5PtD6cSpT8vTBgCXaW0vkaAh15Y7eVEX6X+bKUMvgCLGDccXRDoqgO
	c5SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=nOVNA/BXKPRuYASGUSkzKGV+4I7D65aD01fwXtnU8Kw=;
	b=aHW3smKMPQD5I4+DlSyVA536HX97FskyFN9VLnKOyFLBz0i2FUmpCPSDw4wA5S+Ok8
	hCsv0spF51ZFVNris/cKgQiuTf0xOhnDr0w9ctPWBMmsY7OMso6ysDNj4oaOocK4HrrU
	fSYcErIjXgbM9UY6pXOE4cNAHouwYO0bLXTYk0PigXSViRj8TYSZYdyjVYPubnrry3JX
	pKsVjlgil9Y1zovcp7toTWwG6djNZCnBWMfjCw/AE0DSsgzJ3ahHJ2RV/EGeBnGuIegU
	LWAgM/SfvmFCPJr9FYz7Hvebh0b5PquJSjvqDGsz6gZaPAFqqA+61O3ulxcbJaqukyUa
	x3rA==
X-Gm-Message-State: ALKqPweEfGdqNkpJpfDanjQp3CDujrQNuzwbZnnXbYYGNqh1YSArkWYC
	zXoR+IU2O1q+73bvxTUhLHZm6YHABxvY8AxAaTJHzg==
X-Google-Smtp-Source: ADUXVKKshi6Rm8F+L1/KQsleZu9IyOVZZhDXjnGk2MyJrWeryXxDdVRmlWYMmKCla7J1EB6rtvIBv8xHtcY58MWJo7c=
X-Received: by 2002:ac8:2b5c:: with SMTP id
	28-v6mr17801361qtv.117.1527622443235; 
	Tue, 29 May 2018 12:34:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:9a0f:0:0:0:0:0 with HTTP; Tue, 29 May 2018 12:33:32
	-0700 (PDT)
In-Reply-To: <0f9f30fc-f200-c7f6-8a02-9e1afd58252a@smart-home-technology.ch>
References: <0f9f30fc-f200-c7f6-8a02-9e1afd58252a@smart-home-technology.ch>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 29 May 2018 12:33:32 -0700
Message-ID: <CAMKF1spSx=x8fsoY9ke12z4zEHWR8WJQBhcbdpNaVUY=-+szCA@mail.gmail.com>
To: Jakob Hasse <jakob.hasse@smart-home-technology.ch>
Cc: Yocto List <yocto@yoctoproject.org>,
	Andrii Voloshyn <andrii.voloshyn@qiio.com>
Subject: Re: Problem with python ssl binding
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
X-List-Received-Date: Tue, 29 May 2018 19:34:05 -0000
Content-Type: text/plain; charset="UTF-8"

Jacob

On Tue, May 29, 2018 at 5:29 AM, Jakob Hasse
<jakob.hasse@smart-home-technology.ch> wrote:
> Hello,
>
> I'm trying to run IoT edge on our target. But as I'm to starting it, python
> yells at me with an undefined symbol error:
>
> iotedgectl setup --connection-string
> "HostName=test-sht-provisioning.azure-devices.net;DeviceId=concentrator2edge;SharedAccessKey=rc+orZCzMhHkQmgPZ//ORMh2fALweUKWhGropd2aXcg="
> --nopas
> Traceback (most recent call last):
>   File "/usr/bin/iotedgectl", line 7, in <module>
>     from edgectl import coremain
>   File "/usr/lib/python2.7/site-packages/edgectl/__init__.py", line 12, in
> <module>
>     from edgectl.cli import EdgeCLI
>   File "/usr/lib/python2.7/site-packages/edgectl/cli/__init__.py", line 1,
> in <module>
>     from edgectl.cli.edgecli import EdgeCLI
>   File "/usr/lib/python2.7/site-packages/edgectl/cli/edgecli.py", line 7, in
> <module>
>     from edgectl.config import EdgeConfigInputSources
>   File "/usr/lib/python2.7/site-packages/edgectl/config/__init__.py", line
> 10, in <module>
>     from edgectl.config.edgeconfig import EdgeHostConfig
>   File "/usr/lib/python2.7/site-packages/edgectl/config/edgeconfig.py", line
> 11, in <module>
>     from edgectl.config.certconfig import EdgeCertConfig
>   File "/usr/lib/python2.7/site-packages/edgectl/config/certconfig.py", line
> 9, in <module>
>     from edgectl.utils import EdgeUtils
>   File "/usr/lib/python2.7/site-packages/edgectl/utils/__init__.py", line 1,
> in <module>
>     from edgectl.utils.certutil import EdgeCertUtil
>   File "/usr/lib/python2.7/site-packages/edgectl/utils/certutil.py", line 6,
> in <module>
>     from OpenSSL import crypto
>   File "/usr/lib/python2.7/site-packages/OpenSSL/__init__.py", line 8, in
> <module>
>     from OpenSSL import crypto, SSL
>   File "/usr/lib/python2.7/site-packages/OpenSSL/crypto.py", line 16, in
> <module>
>     from OpenSSL._util import (
>   File "/usr/lib/python2.7/site-packages/OpenSSL/_util.py", line 6, in
> <module>
>     from cryptography.hazmat.bindings.openssl.binding import Binding
>   File
> "/usr/lib/python2.7/site-packages/cryptography/hazmat/bindings/openssl/binding.py",
> line 13, in <module>
>     from cryptography.hazmat.bindings._openssl import ffi, lib
> ImportError:
> /usr/lib/python2.7/site-packages/cryptography/hazmat/bindings/_openssl.so:
> undefined symbol: pthread_atfork
>
> I can't really find much information about how to fix this error, especially
> since the pthread_atfork function should always be there in pthreads.
>
> Does anyone know how to fix this?
>

I think you need to apply this fix in your workspace

http://git.openembedded.org/meta-openembedded/commit/?id=49ecf6f65dddecaec57790de8610dc89666e31e6

