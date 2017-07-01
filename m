Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2AD9DE00BB3; Fri, 30 Jun 2017 23:03:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.179 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f179.google.com (mail-pf0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CABAE00BAD
	for <yocto@yoctoproject.org>; Fri, 30 Jun 2017 23:03:37 -0700 (PDT)
Received: by mail-pf0-f179.google.com with SMTP id e7so76662535pfk.0
	for <yocto@yoctoproject.org>; Fri, 30 Jun 2017 23:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=eEafzxMHX3q09heo45dTEuTFlcUT0H/M7GSKMUJrK3Q=;
	b=ueToZFWeoY6XGeUymWirvBeylONMvmlwNuGKolZAYajH+UlAls8PS0RWXr0Gzp3Lay
	13qIYvq4u1OmiCThIw0i0qu174tZqe/O+ws76o/tnTJD+Qgbp3RF3XzVWvH7ICAsfb4A
	zxEV9Q4QdSnNgS98VgZRwRmMYPi26PqzYy8ujLzQW5mFlvOeyI1ecXLw9zq55rUDtUZz
	M/GMmTcZ+pti0PrRPLD9rfSwmvVjZA/5AGLAOJLtdQAB7Xc/e+K2a/DmAVbGv5Ka4R4S
	EEkCZP8KjKOQ4Ftet98dmSXQrhv8P4eO8AL+IRlvfpvjAAPVxKMBBlreagzm0kAdSORj
	SCiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=eEafzxMHX3q09heo45dTEuTFlcUT0H/M7GSKMUJrK3Q=;
	b=M4iLH1fPstgZctc2ZmZq5x1wYu3TzTT9U8W/DPuPUl6Nkbc4UkiiAJhf53MMHqUCMw
	/CxYL0zyWB7zJ6o5/EAG4bO0fAB1bQT4LfLg7IgnDxnA1mexxWaqqjJfbLSmVyh0FF4u
	4cpaWSPq/2XXGv/tR9YbEhyu/GWOEUgKskRuIgkQTNRJrGQZCG9ULWQ26CtTtOWqzPH0
	cBMizXkrdTWyfO9kl2pem8IixM+PrLf7QKZt520268wGAy7eoE3eIctVHXA8E2igBKJr
	jcMdVgvzVeWxLaCWlQ9gf0/IB7XWF3sM2ls/xvuRtsihUKoXoRJ3cKek/rpxWvtihIru
	dESA==
X-Gm-Message-State: AKS2vOzrd/Ni8gTij3tDv2gvIXk2pTwJlftOE9T1kQP3S9exr2ILv2Cx
	pFG/CTYMhJYNdWyS
X-Received: by 10.84.177.195 with SMTP id x61mr27824006plb.44.1498889016645;
	Fri, 30 Jun 2017 23:03:36 -0700 (PDT)
Received: from [10.0.0.1] (CPE-120-145-134-12.lnse2.pie.bigpond.net.au.
	[120.145.134.12]) by smtp.gmail.com with ESMTPSA id
	q67sm24438072pfi.81.2017.06.30.23.03.34 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 30 Jun 2017 23:03:35 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <fe34f976-648e-7fbc-c190-a5fb0829552f@gmail.com>
	<CAMKF1sq0XX0ahRiG34oi9LwiDCZL83Oxf4sbkwmd5XL1n66jWw@mail.gmail.com>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <b5171c1c-e2f7-0f76-2b5d-e518b7ca927a@gmail.com>
Date: Sat, 1 Jul 2017 14:03:32 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CAMKF1sq0XX0ahRiG34oi9LwiDCZL83Oxf4sbkwmd5XL1n66jWw@mail.gmail.com>
Subject: /poky/meta-browser/recipes-mozilla/firefox/firefox_45.9.0esr.bb =>how to update the newest version ?
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
X-List-Received-Date: Sat, 01 Jul 2017 06:03:41 -0000
Content-Type: multipart/alternative;
	boundary="------------A3135BEFB0A4BCEF944A8A6F"
Content-Language: en-US

--------------A3135BEFB0A4BCEF944A8A6F
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello Everyone,

How can I update to the latest firefox version?

/poky/meta-browser/recipes-mozilla/firefox/firefox_45.9.0esr.bb

Thanks
-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
Kind regards,
Riko Ho
/*******/

*

--------------A3135BEFB0A4BCEF944A8A6F
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hello Everyone, <br>
    </p>
    <p>How can I update to the latest firefox version?<br>
    </p>
    <p>/poky/meta-browser/recipes-mozilla/firefox/firefox_45.9.0esr.bb<br>
    </p>
    Thanks<br>
    <div class="moz-signature">-- <br>
      <b>
        <p style="color:blue;"> /*******/<br>
          Sent by Ubuntu LTS 16.04,<br>
          Kind regards,<br>
          Riko Ho<br>
          /*******/<br>
        </p>
      </b></div>
  </body>
</html>

--------------A3135BEFB0A4BCEF944A8A6F--
