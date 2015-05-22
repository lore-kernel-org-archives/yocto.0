Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21DD2E009D9; Fri, 22 May 2015 06:09:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pd0-f182.google.com (mail-pd0-f182.google.com
	[209.85.192.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F105CE00974
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 06:09:13 -0700 (PDT)
Received: by pdea3 with SMTP id a3so19351937pde.2
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 06:09:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:content-type:content-transfer-encoding;
	bh=Blv7SuEKIrmhTkdMvG2oh3TgtaKKNw5g/PmOv+ftLls=;
	b=mEqXgqCKtzX+P3eK0l0b1deKW6WxBsoEAaLvsacA5lKqx0+M4PE5zo9VERxEhF+m6r
	UJ3ID4BrC1T0+B8lpCGu2+w7fV9xldlU2MtTAEKFD7UjwuoZ4TQ/v9mzQSH2iRpvcO3q
	dCK6Hv5mrIw0S9YzwildJjeEtnvpAdxpZtVIZkLcpcWxRK/N9AtCEBT1qpo6PnhH9dSE
	U8eFuQBgigQ9hVbrVMnv1r6PNz4kAjWhIbK6WKGY8iZt5kCpwQLwIRADKT2Qi76lPwXU
	276L9A4VN5Vz0twh3zzLuTpYTEpBUOV7H1c0xFNQhyKxZX/nQorRWs9/5cn+dcw/YcZx
	AoFg==
X-Gm-Message-State: ALoCoQnk3xriTrmxj28FsFMoYL1+4M/vtgWCtTSl+x2oya8bjsq1ZTW/LvWlEnHnfdQv0kL5VzG0
X-Received: by 10.68.57.229 with SMTP id l5mr15692393pbq.130.1432300153034;
	Fri, 22 May 2015 06:09:13 -0700 (PDT)
Received: from ?IPv6:2601:c:a700:3ba7:4dde:b12e:28c1:24ff?
	([2601:c:a700:3ba7:4dde:b12e:28c1:24ff])
	by mx.google.com with ESMTPSA id en2sm2179290pab.14.2015.05.22.06.09.11
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 22 May 2015 06:09:12 -0700 (PDT)
Message-ID: <555F2A75.7090207@mvista.com>
Date: Fri, 22 May 2015 06:09:09 -0700
From: akuster <akuster@mvista.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	"Osier-mixon, Jeffrey" <jeffrey.osier-mixon@intel.com>
Subject: Yocto compliance
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
X-List-Received-Date: Fri, 22 May 2015 13:09:17 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


Hello,

shouldn't we add '1.8' as a check box?

- armin

