Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18CC6E00BB6; Tue,  4 Jul 2017 00:00:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.173 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (antonius.riko[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f173.google.com (mail-pf0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B90EFE00AE4
	for <yocto@yoctoproject.org>; Tue,  4 Jul 2017 00:00:28 -0700 (PDT)
Received: by mail-pf0-f173.google.com with SMTP id c73so110891477pfk.2
	for <yocto@yoctoproject.org>; Tue, 04 Jul 2017 00:00:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=ynG6lM7aWpYyY1PN6/HSpV2zGxcAx/l6NrtIKXdLGvw=;
	b=CwBkvcmyGeh6u7rvyb+CBgsI4yGVwIneoalMvQqEwAta+O/B3cr6QAYQe0YLc190og
	v/WP25ImuyTPMe3SkhSeChpQ8rpZUSucXZ2Pfic/c2C7+NJvh15LH5YlG2YVZ6Lm1Sd+
	ppIsqqyJearWJN3yuvpJTr/LOb5d4ks4OKTCHQu3D6KJc0muYeP427iEe792sgmGfGpe
	2SR1AThQZf7iGwUs3pHZNl7bKDOUykh+i6OIwIbxHQd+ApYXBlmcn1CAx7nhxoARspc0
	h3cp1gakbY7W4L/JXQmL2r/P4VBXMOo09somJGV7BKFUzceKy90qRRoDmEClXL/ekS32
	842g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=ynG6lM7aWpYyY1PN6/HSpV2zGxcAx/l6NrtIKXdLGvw=;
	b=JV6PW6kZMNrkP4s6JjTE6cZFg7iqZGIBnz8E0pJ3iUmVDoAqzMByS7L/ADBYRY5qX/
	tSzp8mhyGVSz4zQiJK6P8RH8zrN+gvc6UNNAhQEWtm2yd7Ktn+ZWVHxbYs2r60dTyNgB
	prRSHr8HyuRc2oQ6K9zwzvqqLrIcq3Ehq7yxs0tLsGMQKkFP2Fkzg6WuD8YbuuHzUG0n
	XewajfBn7u/uNpu9SVSVJDVufXGJXSfPwnQJD/3tex1r5LyCF2dPwb0cIhaJh6nIwYqv
	ovWk0UMmdJaqJhxTokQJhR5I7OUJ8/4IRTxzc0E5k39WFMoG0foROpbKDII97qT6EcYG
	iPpg==
X-Gm-Message-State: AIVw111onzvvhmL7ZZEy/1jaA+ta2x4VAqqZ0yjmJziRypyAthRau/0f
	AWFg6s9lHm6HQItW
X-Received: by 10.84.129.69 with SMTP id 63mr14750057plb.0.1499151627904;
	Tue, 04 Jul 2017 00:00:27 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:fc39:a3aa:cd2a:ad2f?
	([2001:8003:804a:b500:fc39:a3aa:cd2a:ad2f])
	by smtp.gmail.com with ESMTPSA id
	u9sm42142073pfg.127.2017.07.04.00.00.25
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 04 Jul 2017 00:00:27 -0700 (PDT)
To: Takuro Ashie <ashie@clear-code.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <fe34f976-648e-7fbc-c190-a5fb0829552f@gmail.com>
	<CAMKF1sq0XX0ahRiG34oi9LwiDCZL83Oxf4sbkwmd5XL1n66jWw@mail.gmail.com>
	<b5171c1c-e2f7-0f76-2b5d-e518b7ca927a@gmail.com>
	<d1fc68c9-0a41-ac45-161d-68d34f1f2e18@clear-code.com>
	<8692e969-0575-1a75-b0a7-1567bcb51786@gmail.com>
	<7eeeafd6-f38a-a056-1d74-b5fcd507612e@clear-code.com>
	<73d209dc-6d41-3f70-78d0-a360410a7695@gmail.com>
	<2b0c40c5-27be-f3a0-20f5-c0bdff57cb44@clear-code.com>
	<dfd204c9-c53d-97c8-684a-22fdead61856@clear-code.com>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <cd7d4b6a-0a7b-ee28-a925-024eedd6fef9@gmail.com>
Date: Tue, 4 Jul 2017 15:00:23 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <dfd204c9-c53d-97c8-684a-22fdead61856@clear-code.com>
Subject: Re: /poky/meta-browser/recipes-mozilla/firefox/firefox_45.9.0esr.bb =>how to update the newest version ?
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
X-List-Received-Date: Tue, 04 Jul 2017 07:00:30 -0000
Content-Type: multipart/alternative;
	boundary="------------A3B1F355AC4C435010FC51C1"
Content-Language: en-US

--------------A3B1F355AC4C435010FC51C1
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

so which one is the right one ? :)


On 04/07/17 14:43, Takuro Ashie wrote:
> ac_add_options --with-system-nss
>   ac_add_options --with-system-jpeg
>
> Oops, it's wrong.
>
>   ac_add_options --with-system-nss
>   ac_add_options --with-system-nspr
>
>
> On 2017年07月04日 15:34, Takuro Ashie wrote:
>> You need latest poky (current master branch is needed).
>> But upgrading poky may also introduce unexpected changes for you.
>>
>> Another solution is using built-in nss & nspr instead of system's one.
>> To use it remove or comment out following lines in your 
>> meta-browser/recipes-mozilla/firefox/firefox/mozconfig
>>
>>   ac_add_options --with-system-nss
>>   ac_add_options --with-system-jpeg
>>
>> Regards,
>

-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
Kind regards,
Riko Ho
/*******/

*

--------------A3B1F355AC4C435010FC51C1
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>so which one is the right one ? :)<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 04/07/17 14:43, Takuro Ashie wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:dfd204c9-c53d-97c8-684a-22fdead61856@clear-code.com"> 
      ac_add_options --with-system-nss
      <br>
        ac_add_options --with-system-jpeg
      <br>
      <br>
      Oops, it's wrong.
      <br>
      <br>
        ac_add_options --with-system-nss
      <br>
        ac_add_options --with-system-nspr
      <br>
      <br>
      <br>
      On 2017年07月04日 15:34, Takuro Ashie wrote:
      <br>
      <blockquote type="cite">You need latest poky (current master
        branch is needed).
        <br>
        But upgrading poky may also introduce unexpected changes for
        you.
        <br>
        <br>
        Another solution is using built-in nss &amp; nspr instead of
        system's one.
        <br>
        To use it remove or comment out following lines in your
        meta-browser/recipes-mozilla/firefox/firefox/mozconfig
        <br>
        <br>
          ac_add_options --with-system-nss
        <br>
          ac_add_options --with-system-jpeg
        <br>
        <br>
        Regards,
        <br>
      </blockquote>
      <br>
    </blockquote>
    <br>
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

--------------A3B1F355AC4C435010FC51C1--
