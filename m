Return-Path: <artk2002@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 068F7E00D18; Sat, 18 Nov 2017 10:24:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (artk2002[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f178.google.com (mail-pf0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91E7CE00C97
	for <yocto@yoctoproject.org>; Sat, 18 Nov 2017 10:24:06 -0800 (PST)
Received: by mail-pf0-f178.google.com with SMTP id i15so4282608pfa.3
	for <yocto@yoctoproject.org>; Sat, 18 Nov 2017 10:24:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=Fl36oanqwRbilA5MYiswkriGHgqw63BVZ/aS3nRUE0I=;
	b=SrTf7lXpKYi329FycWvalzd2Wpt8SJblVUZV9Na4KGShW5WSIx9W0mig9MJ+ChwQ3V
	THT9c/req3SATJIEI+LjJWa2hXfU7KAiyJ2ji8nc4F/9/e27rHRySKTa2hdiaA7gTXS5
	5M9lXhcTVgbQhCePb5mQtsLcrIld4JQzivwwxxX8wduTFP37x96uOubi+0sZb+zdi3A+
	aLHpGYt7fMYVAE9I9b1PUqFcOEYAp0z8REZDSH24kj0aBkoCB1VyOxF4UyEIuNtnhbFU
	z586h4UprW5zAaMJxmE1t+E7n8ApjgUgp2hWDrDt7Uh321uWoPyT0xocHD1kOmtZucv+
	uacg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=Fl36oanqwRbilA5MYiswkriGHgqw63BVZ/aS3nRUE0I=;
	b=qsMndM9Fxfkjv7bE6+7w0fPCgTPXAbMvAmxT7dS3yIWqTtetRyXPP++NgsY4z4/FQB
	nSaGI9marqH3gMm64tqHX2aFbImkLIroigDrXje26H+VLF7tgSNb04BWuc2/mdysm4tC
	KgS/28KRRVBaQUoFDFbqtLw7ofI3AII82spSZw/KU4wzxWcO7tI82HuW7YS8WdFBbyE9
	P9RvuufLqM5VF/U5hC1vEuXEoiIQdJjWI7mLqiAofTK6gXRK9yI63DFw3KuLbnDYLgRB
	xkpvSamXLu+VjXCQh+ElWXxasZy5U69AaBeXFbgM4jhrfVCzqMiOlBimSsRnax3gT+gQ
	nFdA==
X-Gm-Message-State: AJaThX6Re3/fLoR59zgKCKTCY+82MMl9mhNAdHm1iPEVEwV0PWWLhfm8
	yAbBj6bUzu5rvnNStoUvSGC2lQ==
X-Google-Smtp-Source: AGs4zMYhYxIN0o+6y1439UekGWwvK7Obn4OA0e96tGQzQV7NQ0SybuwHxOruOaXMBvb9WAAQKkZvSw==
X-Received: by 10.101.90.13 with SMTP id y13mr8907685pgs.235.1511029445772;
	Sat, 18 Nov 2017 10:24:05 -0800 (PST)
Received: from [192.168.1.201] (cpe-23-241-193-136.socal.res.rr.com.
	[23.241.193.136]) by smtp.gmail.com with ESMTPSA id
	a7sm10451548pgc.81.2017.11.18.10.24.05 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 18 Nov 2017 10:24:05 -0800 (PST)
To: yocto@yoctoproject.org
From: Art Kaufmann <artk2002@gmail.com>
Message-ID: <d59efbe8-2445-d287-a5c1-f47d2b1238d8@gmail.com>
Date: Sat, 18 Nov 2017 10:24:04 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
Subject: eclipse-poky: Rootfs includes not in CDT
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
X-List-Received-Date: Sat, 18 Nov 2017 18:24:07 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Environment: Eclipse Neon 3 with the Yocto plug-in. Running on Fedora 24.

I've built the SDK and configured Eclipse and the plug-in. The Hello 
World autotools project builds, but, there's an issue. The CDT isn't 
aware of the include directories so its checker is flagging my files 
with missing includes errors. I *could* add ${SDKTARGETROOT}/usr/include 
(and the appropriate sub-directories) to my project's configuration, but 
I don't want to mess up the cross compiler which just uses the --rootfs 
option and finds everything that it needs. How do I configure this to 
get rid of the annoying errors? I like the help that the CDT provides 
before compilation.


