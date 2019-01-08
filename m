Return-Path: <diego.buffa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98F66E00CD6; Tue,  8 Jan 2019 03:03:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (diego.buffa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
	[209.85.208.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1063BE008C6
	for <yocto@yoctoproject.org>; Tue,  8 Jan 2019 03:03:19 -0800 (PST)
Received: by mail-ed1-f44.google.com with SMTP id b3so3812088ede.1
	for <yocto@yoctoproject.org>; Tue, 08 Jan 2019 03:03:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=j8OmWOUpOvva3UJth6BXfRnJZ+2c7Z/Gf7iBnOI6rNI=;
	b=iNVhhskuWSSGdeQNaJJBb3vprzHjiRanDyYhTQ8nly6fbseCn8RU8cQqLzuSwupuaD
	EIkMR3TpqoowY98hJGT9LrE1BCWsXyyb4eZTAgVV2sB+0ZDwBL5jLwPdIQ7898QdX/eM
	78IAzmWXa/EfgFSuBjK4Sycej5tTQyVegbip1Zn60AkS989ml/UboEFj1JeW9zGAXp4R
	QxkF5vWjVWtBRjiWPc40hjvEK2c8soYmjler0Ve3NJs2/kZiiG9zxOP8sxu6HAJ4PrhG
	nm/t/jvchKNtLROf3tUlzEkI5/YP0xUi7ZGFOncT5sDbDa95SX4eNzo5lK1Vh1UQKFx/
	yQ0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=j8OmWOUpOvva3UJth6BXfRnJZ+2c7Z/Gf7iBnOI6rNI=;
	b=FjaTkBLW4og90JX2/xtv5p/Nhf6z7Iy//lI42ZXb2n9xlX+JdiMWlSgl25uYX/eBhF
	X1MQujDKFRmA5H877Jyqi42Yn4wCPFX3l/0Qqxt/gDS4mXlUf35IopL+fIVeFNHvcPxi
	EJIoxEb7LbVuDycnwIwSO2EGZUF3iWb9IgjOHsxIpAY83h0vMSG832VQn9cMQ5DPrV9B
	lRCYpsIeQlsbZoIB5JnCEk69LSTMPyKSDQDVL52vCzhrY86vCGYWG1syux/JhIGBkg7I
	flmvcFs3sbePBNaHCKHU3sC3HxN9JjlkoYGDa0tl8V1gM1H6tXeKPIBc4TnkmAbF5EkN
	7svQ==
X-Gm-Message-State: AJcUukdPFn0uCa90HG3EYCjszugAH/6/UFbVCSFAZRbuZBdLP4Y1hce1
	PVtB/TQUZeJhlVpglews07LBlInVoXRa1rAOGJF+suV2WRY=
X-Google-Smtp-Source: ALg8bN5lMvasdG6QRsRtNbGn2T6rb2U2HOifNYMWEph1JILlQLLXo3xluCQ0LPwsZPMHaz9xzVtAMjhR0nnnz3s4D7g=
X-Received: by 2002:a17:906:590a:: with SMTP id
	h10-v6mr1518457ejq.102.1546945398665; 
	Tue, 08 Jan 2019 03:03:18 -0800 (PST)
MIME-Version: 1.0
From: Diego Buffa <diego.buffa@gmail.com>
Date: Tue, 8 Jan 2019 12:02:42 +0100
Message-ID: <CAFwn9n0ryy2P-hGau67CgOAUvuMws4yhyfW04-_D=-bKFVKHyg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: external-linara-toolchain with thus
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
X-List-Received-Date: Tue, 08 Jan 2019 11:03:20 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,
I get the following error when I bitbake external-linaro-toolchain:
ERROR: external-linaro-toolchain-7.3-2018.05-r0 do_install:
oe_multilib_header: Unable to find header bits/floatn.h.

I digged a little bit and I notices that in
http://git.openembedded.org/openembedded-core/tree/meta/recipes-core/glibc/glibc-package.inc#n70
it says to install bits/floatn.h, nevertheless in
https://git.linaro.org/openembedded/meta-linaro.git/tree/meta-ilp32/recipes-overlayed/glibc/glibc-package.inc#n69
bits/floatn.h is not present.

I guess I should use linaro recipes, but in someway it seems it uses
the openembedded-core one.

What am I doing wrong?

