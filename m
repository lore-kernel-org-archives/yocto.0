Return-Path: <hieberm@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65DAAE00D73; Thu,  5 Oct 2017 11:30:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (hieberm[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.182 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f182.google.com (mail-qt0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2830E00C78
	for <yocto@yoctoproject.org>; Thu,  5 Oct 2017 11:30:34 -0700 (PDT)
Received: by mail-qt0-f182.google.com with SMTP id o52so27119301qtc.9
	for <yocto@yoctoproject.org>; Thu, 05 Oct 2017 11:30:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=t2Y4bbPyYbL9E2niS8MI5RHNb+gkaHSV+IDe1g/ssvI=;
	b=bl06GQwQj2+wQdeLCBB1DFq3X5d6tF7uU6oNgHTXTCx8jvPnJFm15Y+INILjxKiQ5+
	0mjbaK9nodlhY3LkA2Asu8249IZ87dkMtPeUzla6KrmCW19fQq7crI0J5QEPGLgcBbUw
	/NK2ObI/GY9FsrZNSGj/lm2otPV3V6bFMcVY6D6VzdDxMqZfgwHchJm4lzeNcTKdz1Ch
	ZoL9sHlm0RN3v/pA6P5458uRrsi6lKaibjTEz0k/7xGb755MuOUV68upY5YygEXT7xEC
	bdKVAzjnA0BJ3vpGp50eCD278lw5VeZOYvVFWGpZEWcGL6sHKFMeCbUc+02X7eFCAOlL
	K6pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=t2Y4bbPyYbL9E2niS8MI5RHNb+gkaHSV+IDe1g/ssvI=;
	b=YBJOkLVQA357aJSoX3ZIb3xjnf2QJgOENeF8K6W3y/+PEGVAZOPvqmj2iHwLJhBRrZ
	5FMqB3fwXvtFsMl969jfF/i6ZZRZOPWrjsi9/uVyUMoEtXRO9oQMCuC6yfoXNUY9LIr5
	CVK8leNqHNGHqYHfkxPWjg9QB24vNTezPSXDRqml1JbGeff49aO3sneur4wlyWA1cWkx
	Kil7UCcvNyIngBIc4PDWTe4NA15SeH14jmL8TPO21bIO/LjzOjFi9HkukJ6haqb7EfWC
	O1DVaV42pduoFYOhM0IKC569aZQ+VT7gsT9/KlpYmE+32DY3rft1BXQCtrKdlbS+Dpvn
	ObaQ==
X-Gm-Message-State: AMCzsaUgEJtIfrBAiL1k3+lGzCsoXWMCHzQM0iVb6bhiDmpytsMyXH9/
	Y+jzfTbyKv9JpU9on/cJEf1+gXCIAaFSkuqpqdVpgA==
X-Google-Smtp-Source: AOwi7QA7Qu1jK+38SVoXVyB943NTscpTNbiZoVm3ZJbyz+7kCDvVBt/X6qTYkJOGrg/iT7ql6tYq3MU0HeV1at+b03M=
X-Received: by 10.237.49.35 with SMTP id 32mr18659527qtg.33.1507228233828;
	Thu, 05 Oct 2017 11:30:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.96.34 with HTTP; Thu, 5 Oct 2017 11:30:33 -0700 (PDT)
From: Mark Hieber <hieberm@gmail.com>
Date: Thu, 5 Oct 2017 11:30:33 -0700
Message-ID: <CAPxJQ9FrPv9Nh6zWeGJKA61Ov1bA9-XquAfS5BMZpi54+VS5nA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Adding support for yum in a yocto image
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
X-List-Received-Date: Thu, 05 Oct 2017 18:30:35 -0000
Content-Type: multipart/alternative; boundary="94eb2c0cb536790cd2055ad0eb85"

--94eb2c0cb536790cd2055ad0eb85
Content-Type: text/plain; charset="UTF-8"

I am building a yocto image to run on a network device, and I need to have
yum installed in the image. Is this even possible? I would also like to
have the epel-release repository available in my image.

Thanks,

Mark

--94eb2c0cb536790cd2055ad0eb85
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">I am building a yocto image to run on a network device, and I need to have yum installed in the image. Is this even possible? I would also like to have the epel-release repository available in my image.<br><br>Thanks,<br><br>Mark<br></div>

--94eb2c0cb536790cd2055ad0eb85--
