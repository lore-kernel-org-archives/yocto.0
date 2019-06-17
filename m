Return-Path: <matthias.schoepfer@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A424E00D59; Mon, 17 Jun 2019 08:25:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (matthias.schoepfer[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.41 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
	[209.85.128.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00E1AE00D30
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 08:25:58 -0700 (PDT)
Received: by mail-wm1-f41.google.com with SMTP id z23so9570996wma.4
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 08:25:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=tOQ/1kjmGQ22IXdlqcS98B2jmxfPgTRO8F4434xG3hQ=;
	b=CskKwaQF7nwh2IEQWO21ANYwwX6FaCV9kLmQks26QzmWp/SAoEGbqSwE5/xnn5lhJ3
	LxoihQsTi9b0kH13Q98FC0shbrRuL5x8bKEqDVegk+sCXcGvi7nXMOT5sADloJMEsI7v
	NMS+RIF2jOT7va3YvFEyvX4BhvAr4XR7fzPivkwF2pgqGgUUGzdKO8JNTNygVZo1Mf9a
	Z1yF4SVPhqAs4SFxZNTm43JlDhzIu+PrIoJYOI2kjfVK1EjMbgHs8ZZC/Zz/x0mfotMG
	jvvj/VHUwSPJRV/CUfVYld5c32c+guAzQa23oWYwh805YcJOPboBPxCymLbzgP1gqMYI
	zN6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=tOQ/1kjmGQ22IXdlqcS98B2jmxfPgTRO8F4434xG3hQ=;
	b=fzQSDeTkmmvwCfTomLuYBsELwT1M6Yv4S4tKYnn4dQiwCIqVObn+sWwrrQI6Khq4b7
	lViZxUdIKWlPl3aS4bkXuEYt9TmL+8E9zR3fz+GJMi64SxsCkiWvIyPpGysNb49lFTaS
	6KR5/nM/Cpl2a04UhZYjzKyy0rgd/99rjDjh2I6hjuangHv61eFet4QfKwhiDvC2LlVf
	uMTh0/qOayX4Bj0YsEStDD9eu1OnPDrUMknwustIlo5pNpl5/FS0ZCRRy3F+jMrxq0vB
	om3acYDqLDSFvN6O7FO8x0KtSZsKzkAP0GGUXd+kj9cYrAmRrIFSkq7dtXRlYuo7c2o7
	xbZw==
X-Gm-Message-State: APjAAAWrszDPyPifO62wtJvPsQOaT2PREDkfZQSACAH7HMpoASQuNNpt
	n09vfUu3ZFS8ct1Ea0SI8ZtSCrYrdpI=
X-Google-Smtp-Source: APXvYqyLcwwDE4u4v16z/7Kne0sBXaPKftznhnb/BvvaaxSy6Yi0W8bDl0Vd0B47Uwxh/blIXvP/uQ==
X-Received: by 2002:a1c:1f06:: with SMTP id f6mr20297891wmf.60.1560785157621; 
	Mon, 17 Jun 2019 08:25:57 -0700 (PDT)
Received: from [172.16.100.14] ([213.168.66.146])
	by smtp.gmail.com with ESMTPSA id x8sm8755108wre.73.2019.06.17.08.25.56
	for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Mon, 17 Jun 2019 08:25:57 -0700 (PDT)
To: Yocto-mailing-list <yocto@yoctoproject.org>
From: Matthias Schoepfer <matthias.schoepfer@googlemail.com>
Message-ID: <6fefee9b-8521-b633-8ae4-00b09e6d3532@googlemail.com>
Date: Mon, 17 Jun 2019 17:25:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
Subject: General Question: Device specific value store
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
X-List-Received-Date: Mon, 17 Jun 2019 15:25:59 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi!

I have a general, maybe dumb question. Is there a smart, recommended way 
to deal with device specific data (i.e. serial number, credentials for 
backend access, you name it), that is specific for *one* device, and 
hence does not belong into the rootfs. I know, that there are (safe) 
hardware stores for it, but what, if your device does not have one. The 
current approach is to use an additional file system. Is there a good 
way to create huge numbers of such filesystems that just hold different 
values generated of a cvs file or such. What would be the yocto way 
without crafting scripts over scripts?!

Thanks and Regards,

    Matthias


