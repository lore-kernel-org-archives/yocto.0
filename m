Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2474E00BB6; Tue,  4 Jul 2017 01:07:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.43 listed in list.dnswl.org]
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
Received: from mail-pg0-f43.google.com (mail-pg0-f43.google.com [74.125.83.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43687E00AE4
	for <yocto@yoctoproject.org>; Tue,  4 Jul 2017 01:07:03 -0700 (PDT)
Received: by mail-pg0-f43.google.com with SMTP id t186so107105297pgb.1
	for <yocto@yoctoproject.org>; Tue, 04 Jul 2017 01:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=Iwa6V86S8fWC8paH7S0Uv9CD6vwfcNQvDVSYfLp6R0c=;
	b=rAHJgKDUlqnqXlIJwSq/8hBg8oaVxd3YpJESA681KVmsnMK6lT1bATd82pG9xgAmab
	kDm/iDjbZzmKZH7SNliz8P9nw7m0aLSL1XCNdJPCB0BulY7YsLR1+VYHXBzSa1jMEKTn
	va41kteamnGxwUBNrE18qoHYP+SX8mbgq2SR/4FSdGgc2Ofoph5EUJsSazfoucQRkneE
	tDdHjdyGqG0pA/0q+/lQkUjojRqzD96vYpH8FOk4I76EbswKGrK4KrGoOc1szXKagLS2
	tKk3yjraApjwF0eg7d4LxNu0mC7o2lKT9Z1Co8yHYvayLfNMEM47q0/4/R7NGkwWQbZU
	dl1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=Iwa6V86S8fWC8paH7S0Uv9CD6vwfcNQvDVSYfLp6R0c=;
	b=BRuLgX5ATRl/ncmZvbscUgGjASR4148+qsA1sC9wt8pKFqBMPBcAZZqNZxjXspvZtU
	cPeTX7/IRjjfTya9UMFuZR8OgPiX0P4ewqYYkeKe56kMXbd6Iwioorz2m+Ys2n6bIjH4
	RzGoce5nMrQv+dijJtDNCxAGVhDDXiu6uiEiVm0YWyWDSnnZg8g6NPD9uBfXiHr7X9QI
	C67g659feUK2qbu+0KLhFyTIhcX1mTL8r58Od13Qya03sVPNaAfXYuQNVM1gJrBwgFCH
	yz/9I1xYJKGCZafH2zns4eTgz2epPlsAYxuMSttiWS5eUfAa0dskv5s3SiwmjyP3Dmjt
	rR1Q==
X-Gm-Message-State: AIVw110YRsJEyAGmKLIvn2IpsiVOK66KmFSRmN9xCBRmDrCpscP7FwNj
	emTk1T+kxzqUMCb1
X-Received: by 10.84.215.150 with SMTP id l22mr881685pli.29.1499155623420;
	Tue, 04 Jul 2017 01:07:03 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:fc39:a3aa:cd2a:ad2f?
	([2001:8003:804a:b500:fc39:a3aa:cd2a:ad2f])
	by smtp.gmail.com with ESMTPSA id
	x64sm40150884pfk.20.2017.07.04.01.07.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 04 Jul 2017 01:07:02 -0700 (PDT)
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
	<cd7d4b6a-0a7b-ee28-a925-024eedd6fef9@gmail.com>
	<df37e2d1-14d8-f517-82d3-7b152b1d8014@clear-code.com>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <06d4e1b4-f24a-55b9-f5d6-cd6eff16a672@gmail.com>
Date: Tue, 4 Jul 2017 16:06:59 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <df37e2d1-14d8-f517-82d3-7b152b1d8014@clear-code.com>
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
X-List-Received-Date: Tue, 04 Jul 2017 08:07:05 -0000
Content-Type: multipart/alternative;
	boundary="------------6C2A3218492ACCECBBB28FC5"
Content-Language: en-US

--------------6C2A3218492ACCECBBB28FC5
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Still in error :

| 
/home/bianchi77/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/firefox/52.1.2esr-r0/firefox-52.1.2esr/firefox-build-dir/dist/system_wrappers/pk11pub.h:3:26: 
fatal error: pk11pub.h: No such file or directory
|  #include_next <pk11pub.h>
|                           ^
| compilation terminated.


On 04/07/17 15:03, Takuro Ashie wrote:
> > so which one is the right one ? :)
>
> This is the correct one:
>
> ac_add_options --with-system-nss
> ac_add_options --with-system-nspr
>
> Regards,
>

-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
Kind regards,
Riko Ho
/*******/

*

--------------6C2A3218492ACCECBBB28FC5
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Still in error :</p>
    <p>|
/home/bianchi77/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/firefox/52.1.2esr-r0/firefox-52.1.2esr/firefox-build-dir/dist/system_wrappers/pk11pub.h:3:26:
      fatal error: pk11pub.h: No such file or directory<br>
      |  #include_next &lt;pk11pub.h&gt;<br>
      |                           ^<br>
      | compilation terminated.<br>
      <br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 04/07/17 15:03, Takuro Ashie wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:df37e2d1-14d8-f517-82d3-7b152b1d8014@clear-code.com">&gt;
      so which one is the right one ? :)
      <br>
      <br>
      This is the correct one:
      <br>
      <br>
      ac_add_options --with-system-nss
      <br>
      ac_add_options --with-system-nspr
      <br>
      <br>
      Regards,
      <br>
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

--------------6C2A3218492ACCECBBB28FC5--
