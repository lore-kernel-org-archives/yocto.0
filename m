Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 874E7E00E32; Wed, 13 Nov 2019 16:01:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (xerofoify[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com
	[209.85.219.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E26B6E00DAF
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 16:01:50 -0800 (PST)
Received: by mail-qv1-f50.google.com with SMTP id w11so1616853qvu.13
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 16:01:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=ad6hIrk5th/kcLHeJ+qiGbxjIjJmjS25xAEqIppIh0E=;
	b=H5GhEgoWtAwIIUgPNg+lUHAL/3MoLfcOokFcfFJquO+/y2ilr4SW27Snb4iehm7NiN
	dtbmjD4RSjqL2JMafFr8kWML00Ltj/iLydeiqdP+S8pYxvNr6Hi/DJNvQ9PGhaAVX1bT
	XD9hSelhliOSmI+0xS9BuYtWOLJKwRlCMCjBrO/NCnEREYScZJ6VnEJ4kZ2iqKeA5jt/
	g94sryqgH/gsC0Rsc4HvI/t2y6A6m4V62UO7gKMufEhoAq86hfG4K00Udp/S96U2l/Ob
	J1EIBqdfNRaDz4cg6Q2N4gVhb2veTqY8VfZU6t/9x0ZiU8duamyWnSf99qOqJKJYGjcB
	kaTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=ad6hIrk5th/kcLHeJ+qiGbxjIjJmjS25xAEqIppIh0E=;
	b=QJVK40+L6lMJ711G8tujxxzlElTk5PBpjJXxGiJrtdoN07c21c7HapYONOTUtDLukt
	L45uGHxuEPA3Snuj+XQ81EduS0r5+JNTYigiJEKTRjPr8hyFr7gki7gzVdIoJHF1xpS+
	xx6NbLLyWo0E+npgJYOn6xYKc3tuHxSM5JBeWmagdt3nJM+6ekZYD7wv6ozdfXE/ux6j
	+5Ptf24l7AlN8YmXPvKhWDCuAvkWeGricqgoIwdBmCbi0R7z7CK1LuI/Urqa1yoEq9M2
	cyJQ5DOzV8qGW7n/1dOVIhcvYR37YjEWPxnYM0C/+seB2qo/T2+YFy+tTEFvRDBvQGZW
	NgyQ==
X-Gm-Message-State: APjAAAWtvCG4rdfnTUwLKnVH/JqaQQoaWX6SjCU1szSkA188Nt//FF61
	Du+AzvHB2mR8qRFludFHs4YsvjEq
X-Google-Smtp-Source: APXvYqzGkNJSueVIcT0bU2cVflP0LxdYzvBQyww0kciv0a6p2TSzn2R/Q2Zp7fF/1cOzGsPSBm/UYw==
X-Received: by 2002:a0c:edaa:: with SMTP id h10mr5414988qvr.245.1573689709109; 
	Wed, 13 Nov 2019 16:01:49 -0800 (PST)
Received: from [192.168.1.103] (173-230-163-230.cable.teksavvy.com.
	[173.230.163.230])
	by smtp.gmail.com with ESMTPSA id z7sm2475843qth.85.2019.11.13.16.01.48
	for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 13 Nov 2019 16:01:48 -0800 (PST)
To: yocto@yoctoproject.org
From: Nicholas Krause <xerofoify@gmail.com>
Message-ID: <edcdaba6-5163-418b-ea0f-0ae4a0896651@gmail.com>
Date: Wed, 13 Nov 2019 19:01:46 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.1.2
MIME-Version: 1.0
Subject: Collaboration on Testing GCC/LLVM Toolchains
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
X-List-Received-Date: Thu, 14 Nov 2019 00:01:51 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Greetings All,

I'm a student working on multi-threading GCC and researching it. Seems 
that it my

time doing it and other things with the project it would be great to 
start collaborating

on testing gcc/llvm upstream with Yocto. Granted there is a testsuite 
for both but it

would be great to also test it against a build system that builds real 
world software.

Furthermore I'm aware that this is done for Yocto toolchain selection 
internally but it

would be great if we can start collaborating on testing upstream 
toolchains if

possible.


Not sure if that's done already so sorry for the noise if it is,

Nick


