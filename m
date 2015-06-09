Return-Path: <michael.g.wood@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2E51E009E6; Tue,  9 Jun 2015 09:28:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7B31E0099B
	for <yocto@yoctoproject.org>; Tue,  9 Jun 2015 09:28:24 -0700 (PDT)
Received: by wifx6 with SMTP id x6so22752777wif.0
	for <yocto@yoctoproject.org>; Tue, 09 Jun 2015 09:28:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:content-type:content-transfer-encoding;
	bh=1+yob8wlL542OaQfX6YY1QnXJuq/KO4rCbedX2Y8+zg=;
	b=Jo/XAnY9HLOKyOPqtegoUyVZe+/RGP6njiaUYwc7Nr2DVdRH7eXc9kPEEOmsD8btax
	NFUlhAlvsQVxl+eR21fJ5+BpOpgkrADH8auZOJxjRqxXj0fyEU9LgbG/Sv4BGky2Xd2S
	10h/BiQlC5OcyzU4wA//F8R24Jdbqd976Kjf8hdVyxlzGDTbOaBQ664IZGpYueMfR1bR
	D9Nr5wRkFnPWvphnifI1S0FLMcEKY2aAQnWjWIZHfcBTJ0Ygv5Txf+lX75mIjSlFmWZf
	XswkzroO/fJlJ9wxd9NHSerGZHrf8ljlKExND2Ds/cw+tz/uGssXvcme40sHY/D5dPp6
	EimQ==
X-Gm-Message-State: ALoCoQkyA1fdcQJPZS3R+0+gmsld8I2CYqzY7QC0E8vmvLsmcWm60LO4ogWO273/KwWb5BwSsSj9
X-Received: by 10.180.72.176 with SMTP id e16mr34689396wiv.12.1433867303412;
	Tue, 09 Jun 2015 09:28:23 -0700 (PDT)
Received: from [192.168.2.194] ([83.217.123.106])
	by mx.google.com with ESMTPSA id j7sm10199722wjz.11.2015.06.09.09.28.22
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 09 Jun 2015 09:28:22 -0700 (PDT)
Message-ID: <55771426.2040502@intel.com>
Date: Tue, 09 Jun 2015 17:28:22 +0100
From: Michael Wood <michael.g.wood@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: [RFC] error-report-web error matching
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
X-List-Received-Date: Tue, 09 Jun 2015 16:28:27 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I've recently added a feature which was requested for the 
error-report-web project[1] to add some kind of error matching 
mechanism, this is now live on http://errors.yoctoproject.org

I'd be interested to hear If anyone has feedback regarding the similar 
errors matching, whether it's useful or has too many false positives etc.

The matching threshold value can be tweaked, I've currently just set it 
to a threshold that seemed OK to me, but would be good if those with 
more experienced eyes could have a glance over.

Thanks,

Michael

[1] http://git.yoctoproject.org/cgit/cgit.cgi/error-report-web/

