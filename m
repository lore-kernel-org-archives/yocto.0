Return-Path: <a.novikov@yadro.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2488DE00BC4; Tue, 20 Jun 2017 07:16:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	T_DKIM_INVALID autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
X-Greylist: delayed 403 seconds by postgrey-1.32 at yocto-www;
	Tue, 20 Jun 2017 07:16:01 PDT
Received: from mta-01.yadro.com (mta-01.yadro.com [89.207.88.251])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5043AE00B47
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 07:16:01 -0700 (PDT)
Received: from localhost (unknown [127.0.0.1])
	by mta-01.yadro.com (Postfix) with ESMTP id D773F411D9
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 14:09:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=yadro.com; h=
	content-language:content-transfer-encoding:content-type
	:content-type:mime-version:user-agent:date:date:message-id
	:subject:subject:from:from:received:received:received; s=mta-01;
	t=1497967753; x=1499782154; bh=tMqO+eNnK222V1MAgi9PWVsKV7Khi2d4
	WBLZlPbS3LI=; b=sfbszKQ5m3Am6UiTsHUTkjpzBv0Q6wQQj5cudn9xqc74RPPt
	PmYJYF2UEk9CD0V0COmLdJzlOVzX6La/pUpld6oYrYXYjjQirQW1K3oVQn3cf5SC
	moNNjneyi1BrB7P4fllO8WT7+AfmYOsY75P3/ipIsWWa630Teh8aFUKrsb4=
X-Virus-Scanned: amavisd-new at yadro.com
Received: from mta-01.yadro.com ([127.0.0.1])
	by localhost (mta-01.yadro.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tUK3estIAS83 for <yocto@yoctoproject.org>;
	Tue, 20 Jun 2017 17:09:13 +0300 (MSK)
Received: from T-EXCH-02.corp.yadro.com (t-exch-02.corp.yadro.com
	[172.17.10.102])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mta-01.yadro.com (Postfix) with ESMTPS id 137D94118F
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 17:09:13 +0300 (MSK)
Received: from [172.17.15.41] (172.17.15.41) by T-EXCH-02.corp.yadro.com
	(172.17.10.102) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Tue, 20 Jun 2017 17:09:12 +0300
To: <yocto@yoctoproject.org>
From: Anton Novikov <a.novikov@yadro.com>
Message-ID: <cec5c937-bfba-416f-b9bb-acb58d29ea2d@yadro.com>
Date: Tue, 20 Jun 2017 17:09:15 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.0
MIME-Version: 1.0
X-Originating-IP: [172.17.15.41]
X-ClientProxiedBy: T-EXCH-01.corp.yadro.com (172.17.10.101) To
	T-EXCH-02.corp.yadro.com (172.17.10.102)
Subject: Some Arch Linux build fixes
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
X-List-Received-Date: Tue, 20 Jun 2017 14:16:07 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi, and all have a nice day.


My company contributes to OpenBMC project, whose code has an 
'import-layers/yocto-poky'

git subtree. I'm trying to build it on Arch Linux, which is a rolling 
release distribution, and

has pretty recent package versions, which triggers some bugs, which I'm 
fixing.


Patrick, an OpenBMC maintainer, sent me here, as the code in this folder 
seems to be

synchronized with Yocto code. So somebody, please look at 
https://github.com/openbmc/openbmc/pull/1817

and comment on it here. I want to either re-contribute the changes to 
Yocto, or just maintain arch-fixes

branch of github.com/an146/openbmc and have someone else to adapt the 
fixes to Yocto.


Thanks,

Anton


