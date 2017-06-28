Return-Path: <jdamon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BE01E00BDC; Wed, 28 Jun 2017 15:55:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jdamon[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f175.google.com (mail-pf0-f175.google.com
	[209.85.192.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4429EE00BD5
	for <yocto@yoctoproject.org>; Wed, 28 Jun 2017 15:55:30 -0700 (PDT)
Received: by mail-pf0-f175.google.com with SMTP id s66so40395373pfs.1
	for <yocto@yoctoproject.org>; Wed, 28 Jun 2017 15:55:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:cc:from:subject:message-id:date:user-agent:mime-version
	:content-language;
	bh=GfQku2mhl/rAC7h9z+YSpULHtc5ArtijU1k1u7trQcU=;
	b=WMvn92mck+r2zgpmsBwEJcs/Spn4K5Zhdic7NVHnFnfzk9Km+wQRNlknFAAAbCU98m
	TZtGcCEolpCK+5lgXRlAZMtqjvTXAWxSfiFh5VTkSpeH3w1zi2kUIf6fUGkC2fbYpNBo
	460Eqqhyztj9ccV2AXkIc+jw6ihrmIJvwDScSMl296V1cJGycM6gBxDuttD7cayCV3vc
	9ig2u86w1/qbQKqb0+xyKT+bWZJme1q06yCLt+AtmzJyErhhURHzN9GGM9Ri0D6Kr613
	G2RveOrvFyV7SUKnpjZdYsE12M/zH3WdUWNhVEJPRvafurta48QWYjdkZrX/oKOmGiuT
	3O9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
	:mime-version:content-language;
	bh=GfQku2mhl/rAC7h9z+YSpULHtc5ArtijU1k1u7trQcU=;
	b=dropmS5QnI4yaGgeuIMjD3XCfFzsiyeAXuxMBLjhcj0DZ48SywU7nXif0or9LLc444
	FnJ0CYq6/VCyHjdfehdiVphg/Q6KhoaiBboZbes6O/ipfq55pzsyiKWerbIgc2wnRqn6
	LKnlyOM75EYp9PaJmhrGUu2xgHIj3klsL7rqjKXO+jEDtYmG4BKbOAJ58TuCkaYulFnZ
	7yTQleH6LpiTCxANi+2GI7f1uFadG8+ALP+HD5v3nUOT+R8RW/ZG452hdQ29mn/PS5W4
	n5fkq4Zp9f/28JhfcO3Bi5Ivd9AAWNQ7pCqs7qTn7Z8h0PfWnle1sWmvyCeYxWZgZ580
	rKPQ==
X-Gm-Message-State: AKS2vOwuFg1+Eh4JdUte9Hj9JmTOU9ulp2q67kdvJLXsyEZxv4QYoTIG
	nAnDovJZqSBHqmX9oFs=
X-Received: by 10.98.18.16 with SMTP id a16mr12873676pfj.91.1498690529869;
	Wed, 28 Jun 2017 15:55:29 -0700 (PDT)
Received: from [10.0.0.98] ([216.84.176.126]) by smtp.gmail.com with ESMTPSA id
	f24sm7696504pff.74.2017.06.28.15.55.27
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 28 Jun 2017 15:55:28 -0700 (PDT)
To: jdamon@gmail.com
From: Jimi Damon <jdamon@gmail.com>
Message-ID: <37641144-7766-fd3c-6aa1-39fdeed4ccf2@gmail.com>
Date: Wed, 28 Jun 2017 15:55:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Saving all files using source mirror isn't capturing build packages
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
X-List-Received-Date: Wed, 28 Jun 2017 22:55:33 -0000
Content-Type: multipart/alternative;
	boundary="------------25CFC51F2261021A6FB95C34"
Content-Language: en-US

--------------25CFC51F2261021A6FB95C34
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Fixed : PEBKAC


I needed the two following elements


>
> MIRRORS ?= "\
> git://.*/.*    file://media/build/mirror/ \n \
> git://.*/.*/.* file://media/build/mirror/ \n \
> ftp://.*/.*    file://media/build/mirror/ \n \
> http://.*/.*   file://media/build/mirror/ \n \
> svn://.*/.*    file://media/build/mirror/ \n \
> https://.*/.*    file://media/build/mirror/ \n \
> "
>
>
> BB_FETCH_PREMIRRORONLY = "1"
> SOURCE_MIRROR_URL ?= "file:///media/build/mirror/"


--------------25CFC51F2261021A6FB95C34
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><font face="Monaco">Fixed : PEBKAC</font></p>
    <p><font face="Monaco"><br>
      </font></p>
    <p>I needed the two following elements</p>
    <p><br>
    </p>
    <p>
      <blockquote type="cite"><br>
        MIRRORS ?= "\<br>
        git://.*/.*    <a class="moz-txt-link-freetext" href="file://media/build/mirror/">file://media/build/mirror/</a> \n \ <br>
        git://.*/.*/.* <a class="moz-txt-link-freetext" href="file://media/build/mirror/">file://media/build/mirror/</a> \n \ <br>
        ftp://.*/.*    <a class="moz-txt-link-freetext" href="file://media/build/mirror/">file://media/build/mirror/</a> \n \<br>
        http://.*/.*   <a class="moz-txt-link-freetext" href="file://media/build/mirror/">file://media/build/mirror/</a> \n \<br>
        svn://.*/.*    <a class="moz-txt-link-freetext" href="file://media/build/mirror/">file://media/build/mirror/</a> \n \<br>
        https://.*/.*    <a class="moz-txt-link-freetext" href="file://media/build/mirror/">file://media/build/mirror/</a> \n \<br>
        "<br>
        <br>
        <br>
        BB_FETCH_PREMIRRORONLY = "1"<br>
        SOURCE_MIRROR_URL ?= <a class="moz-txt-link-rfc2396E" href="file:///media/build/mirror/">"file:///media/build/mirror/"</a></blockquote>
      <br>
    </p>
  </body>
</html>

--------------25CFC51F2261021A6FB95C34--
