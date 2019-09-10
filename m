Return-Path: <paul.goulpie@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09D18E00DA7; Tue, 10 Sep 2019 00:06:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.45 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46756E00D84
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2019 00:06:26 -0700 (PDT)
Received: by mail-wr1-f45.google.com with SMTP id l16so17721218wrv.12
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2019 00:06:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=sender:to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=ylyNf3qb8PmvMsJXSDSxrSdylpjaEyD3tWIqxQei3Uc=;
	b=IMfC1XwB6RZX96uJ2KREcbj1QlApSxJgcsjKjmxHdn3ZJtv2o2AjkXOSF4dJbJyFcf
	vCm95XDHDTxNlf91thNyi7ctDemkykWYKRxdpxrbZQMdQM9FvKl1SH2VBL4uSqSccdeF
	1yoTc7EotiHwgxxoACb4+uppVeAGv1SPifpjQDbPxvaoTcCpKuONWYp/moRCou8iZLyo
	Z2Ja07lZnA9e8Kh4aAdq8mjGYLChB8itanKZYj19+CZxLfryy9eLvsVznuHxp5rpahUq
	n9GDqz7dKeLz1c83KA2qIGbfbQ/p40pLsWej0eJMykv5D02dkxbWhj+l9H6Rnzzw/fZP
	n9og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:to:from:subject:message-id:date
	:user-agent:mime-version:content-transfer-encoding:content-language;
	bh=ylyNf3qb8PmvMsJXSDSxrSdylpjaEyD3tWIqxQei3Uc=;
	b=sfR7nFGEiurtg338uEhwUo0xcROBrI48eHq7cn7OxI7ZAx7GtpstxjNRyt0IHQBvf+
	2oehUsP9GVLFxybzTP8ZHlsvb5H15d7ZOJFJUp6nR1CzVr7FRMcB+EpboUx9JhD3xZBP
	bECVtnHai2WbD/TJDud0M5965lahfWkgKZ8KHjD5CXlJdVtT4lUk8l/u8XgrC3k8o9KE
	5if0HrTyEkeFDxJbG0532bGuRE6mwycuEXWcXWIUyyg5cXxd8rH0hLnvpr1NesA4w06+
	E6XVvh/gvCkBZZ7JwnGOPDj3V/mJ/tsif4qGuwptSme9isyyQx2Do4A9b8lI5PsPiN08
	gWwA==
X-Gm-Message-State: APjAAAXM2pNvbC5dbnzOcHzrKF/BpPNllvyuuZ4/pwgY6TmKIkwnHdN4
	VcRHqYs9xHpWTGto4aGwKuFtlhSX
X-Google-Smtp-Source: APXvYqw9a1e0/xgb2PCgKf1+80xnTX+OYtBkWCRnWW9WGHSyD21dXI1APlBofEGYBsOS6A/rZwKeJQ==
X-Received: by 2002:a5d:4b46:: with SMTP id w6mr15485172wrs.223.1568099184932; 
	Tue, 10 Sep 2019 00:06:24 -0700 (PDT)
Received: from rd02.clientele.bouyer.com ([46.182.215.98])
	by smtp.gmail.com with ESMTPSA id
	189sm2226123wmz.19.2019.09.10.00.06.24 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 10 Sep 2019 00:06:24 -0700 (PDT)
Sender: =?UTF-8?Q?Paul_Goulpi=C3=A9?= <paul.goulpie@gmail.com>
To: yocto@yoctoproject.org
From: =?UTF-8?Q?Paul_Goulpi=c3=a9?= <paul.goulpie@bouyer.com>
Message-ID: <637bdac9-2900-0262-d255-5f00a77a0848@bouyer.com>
Date: Tue, 10 Sep 2019 09:06:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 13 Sep 2019 08:06:04 -0700
Subject: bbclass and recipe environnement
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
X-List-Received-Date: Tue, 10 Sep 2019 07:06:27 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: fr-FR

Hello,
I am creating a bbclass of type image_types. The purpose of this class 
is to generate an archive that contains among others ipk packages that 
are created by the recipes that compose my rootfs.
My question is: how can I get the path of the IPK file for a given 
recipe from the bbclass that is being created.
More generally: how to access the environment of an application recipe 
from a bbclass.

Thanking you.

