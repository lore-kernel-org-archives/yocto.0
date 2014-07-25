Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3317E00543; Fri, 25 Jul 2014 15:45:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com
	[209.85.220.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6C42E003FA
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 15:45:43 -0700 (PDT)
Received: by mail-pa0-f46.google.com with SMTP id lj1so6856695pab.33
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 15:45:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:content-type:content-transfer-encoding;
	bh=6Iq0fNf8Sn3QETsACv3e/C/ne0pOVqQEg2FX/dbsvW0=;
	b=GBdfF/IIM59+0ByFW7KtQpevzOHch/xUIud+5Lo4abeG+mM6VGBxSkQrYZocNwIx16
	N2uevDLDC4F+i0txha/j0SnlNxr87wZpmhbnjXc3H4nklOcjghxRTmhAARQVrVSukyxg
	+kFMJ/2PBmuYYPaPrroLf8Tky2zvT9axeoVjb9BzJBFHT9/u1mIn+H9RP02+DUbFYzxB
	ImWiv7vkGxCJP30vWHo/FqTo7q2Ag8UvWtc1MCgUhNaVRS/gp3hOIFJLj4ThiWXFv4+m
	FH6nVRhzQlXQCvlB7VRZhcrwIUT6v69l+gFKhrP+eUd5LjN4tyg1NOSlvQYWhc2NeEHk
	r83w==
X-Gm-Message-State: ALoCoQkBl5sWL2+Q7j9uo9p9+AxfvpKUbvXUDOqzBl08xNTM5ryo7Jya11h+bEruWl/Fu7c0AJVo
X-Received: by 10.66.100.200 with SMTP id fa8mr21752723pab.23.1406328342154;
	Fri, 25 Jul 2014 15:45:42 -0700 (PDT)
Received: from [172.16.1.20] (c-98-239-95-55.hsd1.ca.comcast.net.
	[98.239.95.55])
	by mx.google.com with ESMTPSA id x15sm9933016pbt.52.2014.07.25.15.45.40
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 25 Jul 2014 15:45:41 -0700 (PDT)
Message-ID: <53D2DE13.9010007@mvista.com>
Date: Fri, 25 Jul 2014 15:45:39 -0700
From: akuster <akuster@mvista.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	OE-core <openembedded-core@lists.openembedded.org>,
	jackie.huang@windriver.com, Mark Hatle <mark.hatle@windriver.com>
Subject: libpcap-ng
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
X-List-Received-Date: Fri, 25 Jul 2014 22:45:52 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


Hello all,

Meta-security and Meta-selinux both have libcap-ng. Instead of 
maintaining the same package in both places, can we get it into OE where 
libcap resides?


regards,
Armin


