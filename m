Return-Path: <mohammad.rasim96@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58DD7E00887; Sat, 28 Jul 2018 04:18:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mohammad.rasim96[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
	[209.85.221.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1179BE0086B
	for <yocto@yoctoproject.org>; Sat, 28 Jul 2018 04:18:24 -0700 (PDT)
Received: by mail-wr1-f68.google.com with SMTP id v14-v6so7608086wro.5
	for <yocto@yoctoproject.org>; Sat, 28 Jul 2018 04:18:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=suQ+uM62zqvXFugl5veul2FqHlpdvdj51QF6Wa2uqs4=;
	b=QIg+uQuSkG7BDWb4F9sQxKo2wrJRKHRxxxbndxEpcE15yI4KwI+hYSg8bcARueszO+
	d4myFo6iWDn2VLvHfRKnHyzhseSIuZqbV/l9AYp74snBUvSC/vA0Bb0zTNE330SOOe/T
	5Sg8/81DjALRywFCmWNyM1Ac9Vjomp6SD9BrkZARA9/vVcoahjZBQoBaag/BhNdTWu7v
	IbbFcZIU249YPtb2D1wLtqNLounWKGclgpMlDw+DpZzejifGlfx4/w3/8ViMyhud+EiO
	YOtxP3ezb7X/rTKaNGqF/PACc2S3GjdUu9Aw3iVuXVRDieLp4e3z+lL2uFE5NouyxoSg
	+9sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=suQ+uM62zqvXFugl5veul2FqHlpdvdj51QF6Wa2uqs4=;
	b=trjyi+sZqHq9Tma+eNZqxIRZSg1jqZ05qgde0c2wpQ61YKDBkeymoh0HFFRKl9qV/Z
	2lb6G1Q+PeOmi8nVnYyT+k5H5a7F9+Fn4tTELGOMV2WkoSjBrdah7iSsWZvfxvVDCvo5
	Vv1F3OMEBbnG6BYxH9Jax+MfGw1cNWK97DSluBF9bt2EIB9nxp0VKAF+7gZqrtbYph9f
	gvW/7jMoSev2+dHDLshGwaeCILiKmfXxrAX6V5IWIMZzbHoVVnTjCvPAhdJ7j6S5+WD/
	VsBx6iYT8KUSI6XdS87ICiK/J485iYzGg/N+creFGWSVbjq2ikB5FW4uDbRaebhBHbPn
	1RHA==
X-Gm-Message-State: AOUpUlFI4A+j7011/NzFGdT/EX9Xqzg8U3KeQjgMo5au2HiamLcc44CO
	SuFlWmySBrQvvGse9sACvzCSHQyjQXo=
X-Google-Smtp-Source: AAOMgpfLYQkJhLW+016l08pGnwjmb/+jsIOiSj9WWKeiDhm2uDBzXmUzkXsJioFbPPgaY4upwxUm0w==
X-Received: by 2002:a5d:438d:: with SMTP id
	i13-v6mr9242302wrq.156.1532776703676; 
	Sat, 28 Jul 2018 04:18:23 -0700 (PDT)
Received: from [192.168.88.227] ([37.237.211.59])
	by smtp.gmail.com with ESMTPSA id
	i1-v6sm7209055wrq.69.2018.07.28.04.18.22 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 28 Jul 2018 04:18:22 -0700 (PDT)
To: Yocto discussion list <yocto@yoctoproject.org>
From: MOHAMMAD RASIM <mohammad.rasim96@gmail.com>
Message-ID: <31ba9519-49e7-a50e-d2cb-30832b26c196@gmail.com>
Date: Sat, 28 Jul 2018 14:18:19 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
Subject: Set recipe architecture different than the machine architecture
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
X-List-Received-Date: Sat, 28 Jul 2018 11:18:26 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US-large

Hi,

My machine.conf is including the 
`conf/machine/include/arm/arch-armv7ve.inc` so it builds everything for 
arm (32bit)  but my kernel recipe doesn't compile for 32bit arm and can 
only be compiled with aarch64 cross compiler.

So I want to set my kernel recipe to be built for aarch64 and all other 
packages for armv7.

I tried to set

PACKAGE_ARCH = "aarch64"

but the kernel still uses the arm gcc and not aarch64 gcc

Thanks


