Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA21DE00546; Sun, 18 Jan 2015 23:30:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.44 listed in list.dnswl.org]
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1421DE002F9
	for <yocto@yoctoproject.org>; Sun, 18 Jan 2015 23:30:16 -0800 (PST)
Received: by mail-pa0-f44.google.com with SMTP id et14so37107433pad.3
	for <yocto@yoctoproject.org>; Sun, 18 Jan 2015 23:30:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=ZhGGm4Wyu0CG2tjYSJ5AUhmEQZcesYvPJ4bySjnJz/g=;
	b=ebEEy5UpTg4x/iAi5n/cjTdrpe62sS4p90yjfOOsYgTZto0WB0oMBPHvcvR80I/4eg
	QAt5cn5lXTgWeu5rH2ab19i6ZMJAApW+jvuGTkAlrPnOnev16qBC5LF0/W74BtNdughA
	uNX2x3LlY2HuGo3M3izit7MxKx9IuvnT0kgyMtTT3FT82c2B2YoIhiaDxC5RyiDfqwus
	HNIsBJ5AHVqavT+ytz/p1pG61J7waUVu0bH94MduJxFi+lOZ0TwbHltbRIYNkhe3lLdo
	c7pIRwQhibFGXX+Z2fordG9Xl8SWcGocYAlDJJTUSuKP/9OvzFqcqfp+N0SrxwXGXXqE
	/Ppg==
X-Received: by 10.66.159.233 with SMTP id xf9mr14619757pab.78.1421652616112;
	Sun, 18 Jan 2015 23:30:16 -0800 (PST)
Received: from ?IPv6:2601:c:a700:272f:4433:82a5:f445:1a48?
	([2601:c:a700:272f:4433:82a5:f445:1a48])
	by mx.google.com with ESMTPSA id in3sm2930524pbb.12.2015.01.18.23.30.13
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 18 Jan 2015 23:30:14 -0800 (PST)
Message-ID: <54BCB283.4080801@gmail.com>
Date: Sun, 18 Jan 2015 23:30:11 -0800
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [meta-security] apparmor
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
X-List-Received-Date: Mon, 19 Jan 2015 07:30:19 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Anybody working in adding Apparmor? if not,
I will be adding it some time week.

- Armin

