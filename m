Return-Path: <marek.vasut@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76A05E01066; Mon, 16 Jul 2018 05:57:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marek.vasut[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BA09E00887
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2018 05:57:12 -0700 (PDT)
Received: by mail-wm0-f43.google.com with SMTP id s9-v6so7735197wmh.3
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2018 05:57:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:subject:to:cc:message-id:date:user-agent:mime-version
	:content-language:content-transfer-encoding;
	bh=uZv5IrtKVLVMG+ID5Pg1MggO4ZLSvEu/E9FdXOuAbpk=;
	b=oNvuCcbag5bp7W/TaFZzb9CvhkRuEyuJrcIYGyjocNsg2p125EYg1PcwPUO36UVzqI
	v30fITCC5LkFPMmpkb+vWd3DmzStA/XWHBJFX3542vlhW3xKDDMlj9PdmOymNBhYa4Oy
	5ysYJq0dbCQi6oKmR0E7ygaVmF/MLVQCSJfGF+6/nsnFzREhIM2AJ2O0wXnvcquNVaWi
	lNawAXDMSvQSqRp5btoEXRPCSuocrrGnHGgNP+O6omtvw8RZa+K0WcrL0GDHKjBXQjJ7
	lAvfwfpeprblUShdrX0AtkcL04mX8xzKNroPyhQC4eVbUKTx2HnH04DdUS2nMJ49Pog8
	LkXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
	:mime-version:content-language:content-transfer-encoding;
	bh=uZv5IrtKVLVMG+ID5Pg1MggO4ZLSvEu/E9FdXOuAbpk=;
	b=WcjH0D3NWCaDF+JJLYyg9Tj/kTVv9ROyuspn8BtqBY8USnswYrASzEP7WOwRl8gCxS
	wQA3/rORjg+8rdARAUYCmEouSWr5HSORIi/cHcF+9PPgISLvaneG2Ka4cpuynNV8WOp8
	zEtH7PGhp9sn3Zysa+RNeVhcAJWTfOLwR4L2SncxvwZXzlfT2RMGz9aTaOnxEjNcVtSo
	jRZPL5P2Oj8uqnAXfg4/6/hNGunkgL0lF8YKqR6vVfbx/adfc5NxoEFIJ5pDGHxdDq/+
	BQ11XZo6NbIUSnS67jvDuIYDGaf4WPMtGyZGIWu8wuNnzxqoN4ZWhI2EH4V9SrFI3zmU
	DNPA==
X-Gm-Message-State: AOUpUlFgMpW8r21EQT2PC9Ld7xlVGRiKQLBojpk8bALr/lgXoot9f0Gg
	5ItrI6WTTrXl9XsWey7AoXw=
X-Google-Smtp-Source: AAOMgpfJZ/s+sUFxhKH2xgOg6ZSzq1KyAXlkTL6hNrOMAudVsPNLwKXNZDRRqEdjOLaOI89HAHWv/Q==
X-Received: by 2002:a1c:647:: with SMTP id 68-v6mr10308964wmg.82.1531745831267;
	Mon, 16 Jul 2018 05:57:11 -0700 (PDT)
Received: from [192.168.1.4] (ip-86-49-107-50.net.upcbroadband.cz.
	[86.49.107.50]) by smtp.gmail.com with ESMTPSA id
	h1-v6sm39406146wri.90.2018.07.16.05.57.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 16 Jul 2018 05:57:10 -0700 (PDT)
From: Marek Vasut <marek.vasut@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <12080bb5-5ba8-1cd9-84b3-0b17fab58948@gmail.com>
Date: Mon, 16 Jul 2018 14:46:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 16 Jul 2018 08:20:21 -0700
Subject: [rocko] Multilib backports
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
X-List-Received-Date: Mon, 16 Jul 2018 12:57:13 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Armin,

Could these three be backported from master to rocko (and sumo), as they
fix multilib build problems ?

f1079cd193 staging/image: Fix multilib recipe sysroot issues
6ca693f284 staging: Improve fixup processing code
f755066a00 staging: Always use the default sysroot for allarch recipes

-- 
Best regards,
Marek Vasut

