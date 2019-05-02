Return-Path: <rudolf.streif@ibeeto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4DD41E00754; Thu,  2 May 2019 12:31:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com
	[209.85.210.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3A1DE00754
	for <yocto@yoctoproject.org>; Thu,  2 May 2019 12:31:52 -0700 (PDT)
Received: by mail-pf1-f169.google.com with SMTP id y13so1607426pfm.11
	for <yocto@yoctoproject.org>; Thu, 02 May 2019 12:31:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=aaznd9fjt5JkJmEE6aSI6KNVLFYvgXFerVQjF2Xyhxs=;
	b=daYN2zIvxCdr/tXpMIus8eKfdi4p2x7eeKK0AzK0msaIz8Gyw+ocUHeXuXJKnrVMrb
	6vYxRMMi9Vb71RlQkdAFw9OzPQJCq9ldW3r5SZCpD+5/1HmgZcCVZdBMRU3XM0lSTKWP
	CuQXMjXz1Mzqe7f9e9k4MJFCD3nEirJzKVi93xAVtmQrhh3yS2i7s7u1+QM4aFZZTyIq
	Fycm0U/sbFjo6m0uON7VbTK/d534CZmFJzIY8LMi+rc3bTqSjct6FuUaUP++mEMNcUF/
	iQNtBcSqzzeRGbtWK0PFGJjOPKX2WJYRjANeS9Gl3BKCQn8pEQaAjWxCS9ACsUKSJlcn
	RfSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=aaznd9fjt5JkJmEE6aSI6KNVLFYvgXFerVQjF2Xyhxs=;
	b=cwWuy5Csj0qcEWJ6bQcD3xUJVxZ1yPXp29YWMJ9z80BzMAhIWimDrih3lg7LUwC6vc
	ghSIdANSLXN5qPPRoV9fBTlAQnVgrhZP0BQCq3LkfMs/EmDnvKx+A2RcqDDrLC8oVzCj
	bkxJBwTcCNa8Fv6vH58G4v3Uv7mV3GxJAIZbImHa5BkupRQSyUUHp6VvKvBnVycLaNV8
	KnA8aKWIv7td+2AgC7M7Kuq/5qehQe5vtv+zLE7Tsu7o8SU0nnTmCcjItGKLpZz9QG7m
	ZCY7001N6LTPcUZFf2qy1JCGHoe8QzjA+HGbGw1EOHK2uZdqXQ0WeBAZKzAssGePh30l
	t0SA==
X-Gm-Message-State: APjAAAUxgSb3jYqR6KDfjEcaY9/P/5r7AzGEWglbycuVW5xUPhvVUB/c
	1sNlIYDLMA0wA8FtwDV4Z+biZ+Py5Os=
X-Google-Smtp-Source: APXvYqxuY+UWD6g1ofIMIC+WbhzmafraenbImJqWhM+p8Ou9qlcCqZhl/fqdkBzJy0qTC4FHcOLWjw==
X-Received: by 2002:a65:5184:: with SMTP id h4mr5842237pgq.109.1556825511586; 
	Thu, 02 May 2019 12:31:51 -0700 (PDT)
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
	by smtp.gmail.com with ESMTPSA id
	v64sm1347413pfv.106.2019.05.02.12.31.50 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Thu, 02 May 2019 12:31:50 -0700 (PDT)
To: yocto@yoctoproject.org
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
Message-ID: <94d26c09-1eea-ba34-67a7-f2d233edbe7b@ibeeto.com>
Date: Thu, 2 May 2019 12:31:49 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
MIME-Version: 1.0
Subject: Yocto Project @ ELC NA 2019
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
X-List-Received-Date: Thu, 02 May 2019 19:31:53 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

I apologize if I missed any communication on this mailing list but what 
are the plans for a presence of YP at ELC NA in August in San Diego this 
year?

Unfortunately, I missed the deadline for submitting a speaking proposal 
("Yocto Project DevOps with Gitlab, Docker and AWS") for ELC. However, 
if YP is planning on a presence at ELC I'd be happy to support it as I, 
conveniently, live in San Diego. If there is a YP exhibition I might be 
able to bring my little hobby project, an electric gokart with YP-based 
instrument cluster (it's a full-size kart with 13 kW AC motor and a 
LiFePo battery pack producing up to 25 kW peak power output going up to 
45 mph (electronically limited)).

Cheers,
Rudi

-- 
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700


