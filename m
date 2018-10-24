Return-Path: <a.strunin13@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DBE51E00950; Wed, 24 Oct 2018 01:09:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (a.strunin13[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.49 listed in list.dnswl.org]
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
	[209.85.221.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D691E008D7
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2018 01:09:52 -0700 (PDT)
Received: by mail-wr1-f49.google.com with SMTP id i4-v6so4468507wrr.13
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2018 01:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=IurGephf8zYAEGQWpokwBWGy6YJFRRzu6522UmDpaDQ=;
	b=l7i0RDAwlu+qhv3X6WIeOfSSw/TobKSNtv0u/orLNq2lddXTEuOS4XTRL1tkMTfd9L
	tejAItzsSLapBeiMWc+BT0MuTB6GxP1mjJX+OD0BgtqunbeBQWI4SMid9yMQ4J1P8QLB
	Ka4ucGz22yRZHHff3/3sJgIKnvcBrUpjvv02XpSfxLcV52WyqUB6lm9+4udB984iU/dJ
	ptOX1LbqIQHVHIhL2Uaoz90AXstCgz72YdLb7Qu246qfcCVQyl4oI6NKyNEkjHAXPg1Y
	RA1awu1bWLHp+CkAp4DZ6jg8R+zBFLZT4f+noouSlTpXknKULb2cTkhhoZeQVaSDN6oP
	WGbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=IurGephf8zYAEGQWpokwBWGy6YJFRRzu6522UmDpaDQ=;
	b=n1U6bP3KEkisu2SK2msqxjZrsDYyqwymUMct7NRo38ku+22lrsgXZcPp+pz60+NL9d
	Ye9EUHhd7dnH+y1GFoSak03bUH9HNX5HO66W/FfcYXdtY/PkJci0HZQPI8NERFEK+qWS
	Kzl3iVGxqyei4RJn4ZBqVHupOWyTh/x5mjNPIu5ZlB0efc96g8WErKbloC839elBAtYk
	EdR7i3Vcb6EAaapqNf4jtixfiqXTwp7joXSkkAyUUHi6iR78vtp8HGHCs2y227G+pBYu
	ErlT03GaiHffpbp8tCSw+gn4ZWpDv7lGu4oWSeFLOxG79cAySPYxxHpvQb0BPqJ383sE
	ZR6Q==
X-Gm-Message-State: AGRZ1gKEsta4VoGMNjavOs9YS5m+AjbpZiA5mM9nQ01xCSK3MyjUvCdF
	k2Ksm/hLwZNImJVdrwMQNqkYKwA8v0o=
X-Google-Smtp-Source: AJdET5eJW8zuq2Huoen/VwMxjG8jl+fS2sQqocVpezXLauWN44ngv6eVg/XxKZQqhs5BK+APbRJp1g==
X-Received: by 2002:adf:bc84:: with SMTP id
	g4-v6mr1810161wrh.250.1540368590776; 
	Wed, 24 Oct 2018 01:09:50 -0700 (PDT)
Received: from [192.168.111.127] (host-85-237-33-147.dsl.sura.ru.
	[85.237.33.147]) by smtp.gmail.com with ESMTPSA id
	g9-v6sm3528608wrw.81.2018.10.24.01.09.49 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 24 Oct 2018 01:09:49 -0700 (PDT)
To: yocto <yocto@yoctoproject.org>
From: Andrey Strunin <a.strunin13@gmail.com>
Message-ID: <1da7bfff-fc83-c9b6-97cf-f18cd5ee937e@gmail.com>
Date: Wed, 24 Oct 2018 11:09:48 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
Subject: Force recipe(non library) to build 32bit packages(only) for 64bit machine
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
X-List-Received-Date: Wed, 24 Oct 2018 08:09:53 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi, folks!

My machine configuration is Mips64 and I use MULTILIB. It works ok, but 
there is a question...
Is it possible to build a recipe(non library) only for 32bit?
I know about lib32-${libname} notation, but what about non-libraries?
The sources I have to compile aren't build on 64bit at all (or build but 
doesn't work properly)
So, I have to build ONLY 32 bit version.


