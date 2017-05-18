Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77C24E00B2F; Wed, 17 May 2017 23:35:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.47 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.47 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f47.google.com (mail-pg0-f47.google.com [74.125.83.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08A64E00B28
	for <yocto@yoctoproject.org>; Wed, 17 May 2017 23:35:33 -0700 (PDT)
Received: by mail-pg0-f47.google.com with SMTP id q125so18108842pgq.2
	for <yocto@yoctoproject.org>; Wed, 17 May 2017 23:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=to:from:subject:organization:message-id:date:user-agent
	:mime-version:content-language:content-transfer-encoding;
	bh=E4RhVMuzLQFpiC/Z0jIV65FMNVmjs8uhbXslC0gbfYA=;
	b=In2xbBiWrHh/44UI46+/gFi0yuALea2CATqhelr3tuM3Zth7ttHjHiPkjpNiGt32lL
	BsZVVUGiq4MLM/z4TkJZeuugWQIzMb+CVwIG05h7W8BB54nOZyZepSeWjMqWYMIoY2sS
	JynRih0Y6W0YXqKIGkwMkdZIs0V3CCxylexIE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:organization:message-id:date
	:user-agent:mime-version:content-language:content-transfer-encoding;
	bh=E4RhVMuzLQFpiC/Z0jIV65FMNVmjs8uhbXslC0gbfYA=;
	b=UWc4W7MXfMWbwjXD75s5MzY9xzO0oU/wDTfzCLmjjHCjaThteUFi0o8LtTAxuvUhDk
	SYmU/6Gjx9dZiRTHsrLYmhUZ5w7IOu7JVHRVxJoydfxaKPg++cMIkXpxw0/KejPMAjnw
	ReJorBVU6yN1LvK3g0lgnJxv9FwMfDoiNt8Yuwrc9dOjKHCRWo+Ao5hvybpWGDMN/ZIM
	lhCUpEfNNjeTysN1X8Bght6qQuRBvxBJQGDRbChHVxj/rYVvLBYmJukbyDZvvjznZ8dZ
	NiDrdhQgcCdVBvkF7UCgk+74EPG/13HugZkjQ7/VTI8PyRZObiyUN3nsFZaIfo0lWg2F
	ruyQ==
X-Gm-Message-State: AODbwcDyXLQINDMkLiD/Av5kKNg4J0NhqCAY+vXcawdMKLgNckMtlYHx
	ZZpeuhvywQ12sngVmBtT8A==
X-Received: by 10.99.47.69 with SMTP id v66mr2698348pgv.47.1495089333046;
	Wed, 17 May 2017 23:35:33 -0700 (PDT)
Received: from yct-lpt.lan (50-39-170-86.bvtn.or.frontiernet.net.
	[50.39.170.86]) by smtp.gmail.com with ESMTPSA id
	c23sm7518889pfh.131.2017.05.17.23.35.31 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 17 May 2017 23:35:32 -0700 (PDT)
To: yocto@yoctoproject.org
From: Michael Halstead <mhalstead@linuxfoundation.org>
Organization: Linux Foundation
Message-ID: <44efbca2-ae60-bef8-09c0-972df278f90a@linuxfoundation.org>
Date: Wed, 17 May 2017 23:35:31 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.0
MIME-Version: 1.0
Subject: [infra] Intermittent outages for Yocto Project services starting soon
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
X-List-Received-Date: Thu, 18 May 2017 06:35:34 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Maintenance of our ISP's connectivity at the Internet Exchange at
Portland, will cause service interruptions for some users. Most services
including git, mail, autobuilder, wiki, and website will be affected.

​Planned Start: May 18, 2017 12:00AM PDT / 07:00  UTC
Expected End: May 18, 2017 6:00AM PDT / 13:00 UTC

Apologies for the short notice.

-- 
Michael Halstead
Linux Foundation / SysAdmin

