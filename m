Return-Path: <john.rama01@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D612E00D2D; Wed,  8 Nov 2017 17:11:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (john.rama01[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.178 listed in dnsbl.sorbs.net]
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8001BE00CE8
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 17:11:16 -0800 (PST)
Received: by mail-io0-f178.google.com with SMTP id n137so8039333iod.6
	for <yocto@yoctoproject.org>; Wed, 08 Nov 2017 17:11:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=eHiCQOEg8Oaql/y2sDjTS3ilACHoITltfTEKBQaMCpU=;
	b=OfyLp0i6m5EtWecpUDml1T2hbWZlv4FQBlHSNVbi4v3d2nQ5tfr/MMoqiBEK0Rp0/5
	Z3Jru4IbnZP18SdzupMY2Co29T3pkLLo2CdAfJWwEiSiPs+ykN9ly8mRD46gMQZhkkuK
	IEjr152rPGjJbH5qL/bjcZxzE3dKoctXNeQ0/KvMxLI036YPFncNlySYQ91o2TdcDLZY
	wan4NSW+I2q3/WErApxVgltMySK5/QtoJIXMLpVut3zTCJYk2eTcbM29qc5synWgA9y/
	R8ZL3t0n8nsEiAIgfX8FQoHqHhdPKeSoM3dLefT3uxKZAScUDcB6CFPuoKIdjxCZu5Es
	MSPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=eHiCQOEg8Oaql/y2sDjTS3ilACHoITltfTEKBQaMCpU=;
	b=Jrf5PmtITjOu9xUWw1jvLkAFywM7juC4lG6xWXt0qjFRf7qjxmU/F9ILej2wcsrAH3
	5RobLPhCerC572DojNBwLQf80n3cFQJlpqeeDPIc8Wo/K8xJMkpRwjlLJldt4cKT80r6
	N0k1URbn4muYSC7iRQ8paZFcOJyIpyXkF6yDllcWbZs4e1m0Y919mEyAiTz37GNoTwpH
	EaqSQeqN1myUBrUe1sAH0ryJkyr5YIexbJbkYyWqrHLET3jMZrTZD1lMf8kgMviV/l+f
	/nA0aTtRu9ORcyGKUy9a+KZR2N8zptLTZFSViyu8EcfLuN7T/6nJf3kbiZAeOph2XRr6
	XECg==
X-Gm-Message-State: AJaThX5DdV5YbUs1XGGAWEnPyEqsaTBq0cK4WHjNWD+b0SwmWo4t2V3g
	UztkpJa4QgEueDUebzcy32dAgA==
X-Google-Smtp-Source: AGs4zMbt9r4sDV0vXl+EIOdV71twdgXbZp4Ny8NRMKiYr50rN9rKqoMKjHv+vcq0aDpNWTSbJPNSlA==
X-Received: by 10.107.102.13 with SMTP id a13mr3087497ioc.185.1510189875289;
	Wed, 08 Nov 2017 17:11:15 -0800 (PST)
Received: from [192.168.0.1] (50-77-232-178-static.hfc.comcastbusiness.net.
	[50.77.232.178]) by smtp.googlemail.com with ESMTPSA id
	l5sm2544379ioe.13.2017.11.08.17.11.14 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 08 Nov 2017 17:11:14 -0800 (PST)
To: yocto@yoctoproject.org
From: John Rama <john.rama01@gmail.com>
Message-ID: <5A03AB30.5040907@gmail.com>
Date: Wed, 8 Nov 2017 20:11:12 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.4.0
MIME-Version: 1.0
Subject: dpkg --print-architecture returns wrong result
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
X-List-Received-Date: Thu, 09 Nov 2017 01:11:17 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hi, Yocto specialists

I've built the whole system with deb package,
and trying to use package feed feature of yocto.

When try trying to install some package from target, I faced following error.

# apt-get install fontconfig-utils
....
package architecture (armhf) does not match system (armel)
....

When checking the install package of the target system, everything is armhf architecture. 
# dpkg -l 
...
||/ Name                                           Version                     Architecture Description
+++-==============================================-===========================-============-===========================================================================================
ii  alsa-conf:armhf                                1.1.0-r0                    armhf        ALSA sound library
ii  alsa-conf-base:armhf                           1.1.0-r0                    armhf        ALSA sound library
ii  alsa-lib:armhf                                 1.1.0-r0                    armhf        ALSA sound library
...

However, when checking with following commands, it tells armel.
# dpkg --print-architecture
armel

I think "dpkg --print-architecture" returns wrong result. 

I'm using toolchain "arm-poky-linux-gnueabi-gcc" and result of dumpmachine option is as followings.
$ arm-poky-linux-gnueabi-gcc -dumpmachine 
arm-poky-linux-gnueabi

I have no idea how to tell yocto to configure the target system correctly.
Any feedback is highly appreciated.

Kind Regards,
Jonh Rama

