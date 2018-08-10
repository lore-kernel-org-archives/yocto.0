Return-Path: <nik2087@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42510E00708; Fri, 10 Aug 2018 01:40:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nik2087[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42B95E00708;
	Fri, 10 Aug 2018 01:40:22 -0700 (PDT)
Received: by mail-it0-f45.google.com with SMTP id h20-v6so1668295itf.2;
	Fri, 10 Aug 2018 01:40:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=5253xE7nouC+7KYpvFbQqd98Ikuamh2JrjUiuzA9As8=;
	b=kA/0ES5AC5Fgf6Vc9VZ2pZsaVkRYBoMOSsTZ1N2ZOcUyH1KXkVTaCycLSp0+OAD3hs
	DbdE1+VHTwS2imytxP4uzGse7rWpFv6bAVY5FaHu9M1f5XBsiCG25EMsfrogj4OkHnYQ
	PchgtcMRvnFpeSXXUR1SNEiZEjy0Cqxt2OagY+7aZFdM8b34ImmRp6HfK5vxz2G7/eSN
	OzjfPuyrpeT4eVDCLFiBxHpfAeYa0jG4fg8Entw4JssY8f+Vkrup7dmXSR/QelvdQ4k6
	u+ovNYzcBvNSxVuOE8MrnShR5WHLntECaDO5sWpBYhJ3x9MhIekH+jctHVZr/gWoN/0p
	MsfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=5253xE7nouC+7KYpvFbQqd98Ikuamh2JrjUiuzA9As8=;
	b=pEHeZfK23xCf7cxfPsHwJJpDguQm82OPsyYIJpq6BqpX3NdlevE5iamRFur967ekTC
	wXqTJoRqy0segJ6PR7n490e0WGfaTYVRr7CtQuuwpe51ESG0dbDq1Qt9Ozi5pbHGiUjH
	Tz0CqxnYCdSNR7/seYV9Zo6D2eGwoUUQ+cA4EYA7WLt+k3li6JFu6vqMNPXJVkce94wS
	So63r6e28XOwqrbxkjog61NbNRpLrFU1sX3e4kRa4/NZ9XkqAG2END30j6QlOmHkZNG/
	KM5Kf7dy0qGG+QPTQFxCfk9467YIhxLgucmT5lWqilEvVhb9Ld39JTnq86rk/Qf2zsIq
	hpOg==
X-Gm-Message-State: AOUpUlFebi1IzCWJuS2UIonLQV8KcGvt1ZJJd9WQnRtdthA/M4Mk8OrN
	rIJWCUNa4ghTOhWmjpF4AfEPxeKLp9EzSw7N9JM7iPOUWUE=
X-Google-Smtp-Source: AA+uWPxh5FaNRLNnDQgqtx4k2r/coS9KMbTofEkuC9WZ2GwEkTBYkGj8+biR1QAarJ1+mJaZmWCnZW+BcgQ4AaLT2YY=
X-Received: by 2002:a02:8ac6:: with SMTP id
	i6-v6mr4856902jal.122.1533890421240; 
	Fri, 10 Aug 2018 01:40:21 -0700 (PDT)
MIME-Version: 1.0
From: Nikhil <nik2087@gmail.com>
Date: Fri, 10 Aug 2018 14:10:04 +0530
Message-ID: <CALY=dtKAB-=gqeSojqJrR4D77zD55f8g1f=_-rOHq2-kDeLnpg@mail.gmail.com>
To: meta-freescale@yoctoproject.org, yocto@yoctoproject.org
Subject: Howto overwrite CXXFLAGS in SDK Environment
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
X-List-Received-Date: Fri, 10 Aug 2018 08:40:23 -0000
Content-Type: text/plain; charset="UTF-8"

Hello community,

I am using Freescale community BSP - rocko release and have built and
installed SDK.
Is there a way to remove -g flag from being in the list of default
options  for CXXFLAGS.  ?  Thanks.

Regards
Nikhil

