Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14292E00B65; Mon,  3 Jul 2017 01:04:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f172.google.com (mail-pf0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C921E00B2E
	for <yocto@yoctoproject.org>; Mon,  3 Jul 2017 01:04:41 -0700 (PDT)
Received: by mail-pf0-f172.google.com with SMTP id c73so96461983pfk.2
	for <yocto@yoctoproject.org>; Mon, 03 Jul 2017 01:04:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=wi5ye4+CugxacuIZRBlXWCPbLOStvZGhq/kvNiUzQpE=;
	b=g7++MRmzn2S3dsC8OwvXj1dpLbp+NoFwN+F+TtmGzU5r9v8aKESHE0E9NuxNTRjmyS
	geEbiEguraVKb8groQEQBmeisxAOidbUjF9lYgIbaFrJU1yR0aXm5u7G7kLywQDgwr22
	9NwIT6UCuMof0aP+rb7eJNznhkA/p2bk0d0H7eMv7W7oowJcR+JEn+UzZsC291Obv5EK
	pIgnoXR+V+rTJPybOpfnwLN52zpSCPC9nQQWYJa2o2Dxh+YuBW+elsezzH0TAYY5hqlA
	/WMgsc5iXfw2xss6nUiD8HwUDm8l2AT7ftZTym2gxf7Voy4S+8E6K03u3oVyJzaLxyxD
	0KYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=wi5ye4+CugxacuIZRBlXWCPbLOStvZGhq/kvNiUzQpE=;
	b=KDg4iPzcUvSjBKR7FcJwUh5GlxAD0EZRJ+daJGFKjDx8CgGTzqG79fDfc+Ilzy7lRL
	KQbcfvPRzESrwuBgsWlKERcNfuceHZTmzYqNU/0v0Tb5N+KXlbptYgKxoL8fq2osSq/M
	3LhP+HVALceROqzDIIKny9yeTWcbR8InEQt7GSiCIaJ1fjEZ4jU52/MNcX/BDtSbLqZ8
	gRawJ+6wSZX7yt05k3W2zogKxeEeJhiAmmLJ76tte7J8YXZkdW8fP7Px5O603ET5LmYF
	y7Ws4Rp7FKRHCmq7GvSj19Mbo+FN7tlpu9jgveLKZuVP1m366OzhSht+NR1IYWvqXGS7
	O/fQ==
X-Gm-Message-State: AIVw110mZC47gQ8rMcPGUHl+xHnXLGwTTdGIig5oQu3PjZiZVu9Op4hV
	EjtAJN3NLbinzhie
X-Received: by 10.84.232.13 with SMTP id h13mr9244077plk.278.1499069080650;
	Mon, 03 Jul 2017 01:04:40 -0700 (PDT)
Received: from [10.0.0.1] (CPE-120-145-134-12.lnse2.pie.bigpond.net.au.
	[120.145.134.12]) by smtp.gmail.com with ESMTPSA id
	u9sm35996803pfk.131.2017.07.03.01.04.38
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 03 Jul 2017 01:04:39 -0700 (PDT)
To: Takuro Ashie <ashie@clear-code.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <fe34f976-648e-7fbc-c190-a5fb0829552f@gmail.com>
	<CAMKF1sq0XX0ahRiG34oi9LwiDCZL83Oxf4sbkwmd5XL1n66jWw@mail.gmail.com>
	<b5171c1c-e2f7-0f76-2b5d-e518b7ca927a@gmail.com>
	<d1fc68c9-0a41-ac45-161d-68d34f1f2e18@clear-code.com>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <e6e226c4-8caf-d5f7-a24e-47553cb903df@gmail.com>
Date: Mon, 3 Jul 2017 16:04:35 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <d1fc68c9-0a41-ac45-161d-68d34f1f2e18@clear-code.com>
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
X-List-Received-Date: Mon, 03 Jul 2017 08:04:43 -0000
Content-Type: multipart/alternative;
	boundary="------------C4D78B38CA569E06FFC1F955"
Content-Language: en-US

--------------C4D78B38CA569E06FFC1F955
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

How can I update file into my computer ?

Thanks


On 03/07/17 15:32, Takuro Ashie wrote:
> Hi.
>
>> How can I update to the latest firefox version?
>>
>> /poky/meta-browser/recipes-mozilla/firefox/firefox_45.9.0esr.bb
>>
>
> I'm now trying to upgrade it to 52ESR:
>
> https://github.com/OSSystems/meta-browser/pull/43
>
> It almost done but seems have a problem. Drawing tabs may be broken.
> I'm now investigating it.
> If you are interesting it, please try the following branch and report 
> issues:
>
> https://github.com/ashie/meta-browser/tree/firefox-52.1.2esr-2
>
> In addition, we are also trying to support
>
>   * Wayland
>   * OpenMAX
>   * EGL
>
> They are already enabled in the following branch but not stable yet:
>
> https://github.com/mozilla-japan/meta-browser/tree/firefox-52.2esr
>
> Regards,
> Takuro Ashie <ashie@clear-code.com>
>
>
> On 2017年07月01日 15:03, Riko Ho wrote:
>>
>> Hello Everyone,
>>
>> How can I update to the latest firefox version?
>>
>> /poky/meta-browser/recipes-mozilla/firefox/firefox_45.9.0esr.bb
>>
>> Thanks
>> -- 
>> *
>>
>> /*******/
>> Sent by Ubuntu LTS 16.04,
>> Kind regards,
>> Riko Ho
>> /*******/
>>
>> *
>>
>>
>

-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
Kind regards,
Riko Ho
/*******/

*

--------------C4D78B38CA569E06FFC1F955
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hi,</p>
    <p>How can I update file into my computer ?</p>
    <p>Thanks<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 03/07/17 15:32, Takuro Ashie wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:d1fc68c9-0a41-ac45-161d-68d34f1f2e18@clear-code.com">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      Hi.<br>
      <br>
      <blockquote type="cite">
        <p>How can I update to the latest firefox version?<br>
        </p>
        <p>/poky/meta-browser/recipes-mozilla/firefox/firefox_45.9.0esr.bb<br>
        </p>
      </blockquote>
      <br>
      I'm now trying to upgrade it to 52ESR:<br>
      <br>
        <a class="moz-txt-link-freetext"
        href="https://github.com/OSSystems/meta-browser/pull/43"
        moz-do-not-send="true">https://github.com/OSSystems/meta-browser/pull/43</a><br>
      <br>
      It almost done but seems have a problem. Drawing tabs may be
      broken.<br>
      I'm now investigating it.<br>
      If you are interesting it, please try the following branch and
      report issues:<br>
      <br>
        <a class="moz-txt-link-freetext"
        href="https://github.com/ashie/meta-browser/tree/firefox-52.1.2esr-2"
        moz-do-not-send="true">https://github.com/ashie/meta-browser/tree/firefox-52.1.2esr-2</a><br>
      <br>
      In addition, we are also trying to support<br>
      <br>
        * Wayland<br>
        * OpenMAX<br>
        * EGL<br>
      <br>
      They are already enabled in the following branch but not stable
      yet:<br>
      <br>
        <a class="moz-txt-link-freetext"
href="https://github.com/mozilla-japan/meta-browser/tree/firefox-52.2esr"
        moz-do-not-send="true">https://github.com/mozilla-japan/meta-browser/tree/firefox-52.2esr</a><br>
      <br>
      Regards,<br>
      Takuro Ashie <a class="moz-txt-link-rfc2396E"
        href="mailto:ashie@clear-code.com" moz-do-not-send="true">&lt;ashie@clear-code.com&gt;</a><br>
      <br>
      <br>
      <div class="moz-cite-prefix">On 2017年07月01日 15:03, Riko Ho wrote:<br>
      </div>
      <blockquote type="cite"
        cite="mid:b5171c1c-e2f7-0f76-2b5d-e518b7ca927a@gmail.com">
        <meta http-equiv="Content-Type" content="text/html;
          charset=utf-8">
        <br>
        Hello Everyone, <br>
        <br>
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
        <br>
        <fieldset class="mimeAttachmentHeader"></fieldset>
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

--------------C4D78B38CA569E06FFC1F955--
