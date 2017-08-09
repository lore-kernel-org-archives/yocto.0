Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BC8FE00B49; Wed,  9 Aug 2017 01:29:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (antonius.riko[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.172 listed in dnsbl.sorbs.net]
Received: from mail-io0-f172.google.com (mail-io0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6ADDEE0090A
	for <yocto@yoctoproject.org>; Wed,  9 Aug 2017 01:29:31 -0700 (PDT)
Received: by mail-io0-f172.google.com with SMTP id g35so22493633ioi.3
	for <yocto@yoctoproject.org>; Wed, 09 Aug 2017 01:29:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=O1fKGHnjrvColDyJiIz/eA4+LYD+0OWoJYV8pYL7tuM=;
	b=OiTyHLoeEOubjWf4s5RMk8OMcCz6yjH0tN6fKghCyS+ndxT5/PYIad0Dfbb55+zp63
	KjlZT6RSMzFD1PHM5RZ4bj51V8rfuivlZQg5gHJuIpEBSRXquAAACKgdGs5x9M1m4gSk
	OLyT70Gx/zhon13eSWaI2rUI191OB7hviQBBFvPfyU0HxsnsKEH5ZL8h0ZgACfBS47bF
	XGm0R2Qq7zpC++j0qaJsvEQc2Sbhu+U25+DznWzj0GsvV9a1vChZmaqpOWBobSpupL0a
	SaON+6kjVQUfSMUvfuzw7FVinWhEP54rWlDbB8bVrYM3wQaOExQSGBmTfQ9Nn3vmn2L5
	jLMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=O1fKGHnjrvColDyJiIz/eA4+LYD+0OWoJYV8pYL7tuM=;
	b=YyZdZCxapENKENp4uUT+5ngl7WAMvVaRYwUoh4oY04NL0bTLZzu0JX7/AvAB9cnk3M
	J9IiyjHNxz6ZS2UcNUcBp7UWZZidF189BYq2moZsyXyJ9KUrbsO5DX5+86I9cCbNt2EO
	OUmwAQFdhCZUVviaz5TjmLpW2xnnCr0/H+bqpYAqFx2ib2CLYn2RKBTeVUTOqJKzoYjs
	BmZhy5iogiG2mDrD0bHhJ9tUcRdx5+4OSc6oCYga6NBQWA75xJ5SSCIJU7WP3C7xlIGu
	6VS27wdDyLuCsfxtvTRcZMTYlp8RAk/fwl8oQ+NI35VwPNbifKdbcCYqkrijvuH6uRlf
	X2Qg==
X-Gm-Message-State: AHYfb5jzB6GsNwv/FO524/m4zrYEDk63hRaytPRsW32vPmLhtm8tkWXe
	zmuc+M4ZRfdQWPKLlec=
X-Received: by 10.107.19.229 with SMTP id 98mr6367345iot.148.1502267371164;
	Wed, 09 Aug 2017 01:29:31 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:3cba:cb22:1a07:925?
	([2001:8003:804a:b500:3cba:cb22:1a07:925])
	by smtp.gmail.com with ESMTPSA id
	n62sm1663526ion.46.2017.08.09.01.29.28 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 09 Aug 2017 01:29:30 -0700 (PDT)
To: "N:" <yocto@yoctoproject.org>
From: Riko <antonius.riko@gmail.com>
Message-ID: <759e84aa-b429-d9f8-bd71-aeef9fbe7bfe@gmail.com>
Date: Wed, 9 Aug 2017 16:29:26 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
Subject: bitbake error ?
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
X-List-Received-Date: Wed, 09 Aug 2017 08:29:33 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Dear Yocto Member,


I have downloaded fresh install of yocto but got error, here's the trace :

bianchi@bianchi-HP-Pavilion-dv6-Notebook-PC:~$ git clone -b pyro 
git://git.yoctoproject.org/poky.git
Cloning into 'poky'...
remote: Counting objects: 373183, done.
remote: Compressing objects: 100% (89366/89366), done.
remote: Total 373183 (delta 277418), reused 373031 (delta 277266)
Receiving objects: 100% (373183/373183), 134.71 MiB | 1.47 MiB/s, done.
Resolving deltas: 100% (277418/277418), done.
Checking connectivity... done.


bianchi@bianchi-HP-Pavilion-dv6-Notebook-PC:~/poky$ source oe-init-build-env
You had no conf/local.conf file. This configuration file has therefore been
created for you with some default values. You may wish to edit it to, for
example, select a different MACHINE (target hardware). See conf/local.conf
for more information as common configuration options are commented.

You had no conf/bblayers.conf file. This configuration file has 
therefore been
created for you with some default values. To add additional metadata layers
into your configuration please add entries to conf/bblayers.conf.

The Yocto Project has extensive documentation about OE including a reference
manual which can be found at:
     http://yoctoproject.org/documentation

For more information about OpenEmbedded see their website:
     http://www.openembedded.org/


### Shell environment set up for builds. ###

You can now run 'bitbake <target>'

Common targets are:
     core-image-minimal
     core-image-sato
     meta-toolchain
     meta-ide-support

You can also run generated qemu images with a command like 'runqemu qemux86'
bianchi@bianchi-HP-Pavilion-dv6-Notebook-PC:~/poky/build$ bitbake 
core-image-minimal
ERROR:  OE-core's config sanity checker detected a potential 
misconfiguration.
     Either fix the cause of this error or at your own risk disable the 
checker (see sanity.conf).
     Following is the list of potential problems / advisories:

     Fetcher failure for URL: 'https://www.example.com/'. URL 
https://www.example.com/ doesn't work.
     Please ensure your host's network is configured correctly,
     or set BB_NO_NETWORK = "1" to disable network access if
     all required sources are on local disk.


Summary: There was 1 ERROR message shown, returning a non-zero exit code.


Any suggestions ?

I'm using ubuntu 16.04,

Thanks


