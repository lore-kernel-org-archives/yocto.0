Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5874AE00AB9; Wed, 17 Oct 2018 07:33:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f176.google.com (mail-it1-f176.google.com
	[209.85.166.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1329EE00A94
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2018 07:33:02 -0700 (PDT)
Received: by mail-it1-f176.google.com with SMTP id c85-v6so2722617itd.1
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2018 07:33:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:subject:to:cc:date:mime-version
	:content-transfer-encoding;
	bh=VioPFzUczMrflKhKrH6U0yex8Y6YvCDJ4sD7EocR/tg=;
	b=FbOCpE69tbmJ9aiEznDLhO40exMrSFV/+i8Lm7EzoAxy8d1kPgsKXW0aKuTiY5bJGf
	56bLbBJ9+MLkW86IucFvYpdNqMaZY9tHxg/A+1+6hZBai/vYUsk3E/RUd+7Coel8J1U7
	i4lTRL9AbKxk9Ni34hcjHqeQPLzVRJgZdSl/YC7iStp4mGBadlY20Om25+AowzuCv5Me
	9y3bUAxJiO/i3dzNOVmADclySmrCmSGckGr4cnHifXZMyq5lFM0xcqaTikyqu/qI8OA9
	D2GhOvOqgU1JEmVNH4fw7jejZdyvDzQDI9vGZUmqV+s0nnWf+iFItjlJxmJT6aZsCsHB
	QBSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:subject:to:cc:date:mime-version
	:content-transfer-encoding;
	bh=VioPFzUczMrflKhKrH6U0yex8Y6YvCDJ4sD7EocR/tg=;
	b=Oc6feeKKiQK/o9Q5mve1WeVWaWita2ywOVwGJhZG3h3J7Y7asRtdniw0hKTnS0wOJJ
	HAVqDXM7ImJNzxe04YRg2qeIg+IAZz1L30DE0fpeNqii0NKC2aPDRXbwkNSqhXuv5Cyy
	HG/L5pRDctpVY/VaPDjKWDajVlZ5deo0nQXO8ZdSJLVvdQcXaf4hhIbeM6ebDGfneYks
	hU4mvqXxdpnUSQkaOCsAZblcvRUK1IvW2BXEEUXrg3/5O95n70a3agE5FCgZewqp6/3Y
	pYYURhsRBbtAt6ma8p/gojWHOH3qVlVhMgegFcX5ObMxA3BfM9PA6ckgQckCQeNg+TJ9
	0oCg==
X-Gm-Message-State: ABuFfogPCgFarCg3UZln+n4Fv85Ye+2ZZ0YMgY7KLXKcbvncyEaUvKpC
	fjwMxzI2CV+I1RjHuhX/yT+D8iwH
X-Google-Smtp-Source: ACcGV62nMpnUAewQk/SB+JJSM6vou5CUmy21Q+3Z4k9MBGJL+VWrVuyxHXmXuVAzs6tm8ymgN7g+LA==
X-Received: by 2002:a24:75d6:: with SMTP id
	y205-v6mr1920697itc.1.1539786782121; 
	Wed, 17 Oct 2018 07:33:02 -0700 (PDT)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.googlemail.com with ESMTPSA id
	y190-v6sm856621itg.3.2018.10.17.07.33.00
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 17 Oct 2018 07:33:01 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Message-ID: <e32d9510c507b300e6809e35ec3948c6e3a37508.camel@gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Date: Wed, 17 Oct 2018 09:33:00 -0500
X-Mailer: Evolution 3.28.3 (3.28.3-1.fc28) 
Mime-Version: 1.0
Cc: "maxin.john@intel.com" <maxin.john@intel.com>, Pavel_Shumeika@epam.com,
	Vladimir_Redzhepov@epam.com
Subject: meta-oracle-java still maintained?
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
X-List-Received-Date: Wed, 17 Oct 2018 14:33:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

I was wondering if meta-oracle-java is still maintained? It looks like
there haven't been any release branches created since pyro.

We are looking at using it to provide virtual/java-native for some
build host tools we have that were written in Java, but I want to make
sure that it isn't going to die off on us if we do.

Thanks,
-- 
Joshua Watt <JPEWhacker@gmail.com>

