Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8102DE00BE0; Tue,  4 Jul 2017 19:15:33 -0700 (PDT)
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
	*      [74.125.83.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f52.google.com (mail-pg0-f52.google.com [74.125.83.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1514EE00BD0
	for <yocto@yoctoproject.org>; Tue,  4 Jul 2017 19:15:31 -0700 (PDT)
Received: by mail-pg0-f52.google.com with SMTP id j186so116640700pge.2
	for <yocto@yoctoproject.org>; Tue, 04 Jul 2017 19:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=NZgP/E0GV7GTh+jbIgyYmJ/QO8DDNVUajjzllxhhsv0=;
	b=Gt/pMDlb58dowi4CR/yMmuYSS0Q0mTWLdJ6aMriTpdHm5sc1HjskD1OS8FxmTfoPt2
	9AoZwA6gjXoSgaxO9GKG/PEkOb/Uu/Lpjg1O9O8De+nsDCMkIwrHgPPMWbzYjhPUPu/T
	iCKiYDb+OnmqEqQi7/4jXJBorO8tntsf3xWzoPWXj/9BJMcEUS20Rt37UUWCATdAr/Ab
	b8FinnJ1ehHYRLrsQc9cQhVETiFwDN7mwEYWfInQw5NkN1iiIOr6ktXkSbY9Sm9paevV
	E3lAbcSobLcVgO3WxZO2Av+7JOUZFbDeBt1ltTIJu9KcxZ8cxUer2FvVXxXk8h6IaF3V
	PX7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=NZgP/E0GV7GTh+jbIgyYmJ/QO8DDNVUajjzllxhhsv0=;
	b=C3bDP5C3QtUEGuJRxht2CVw3lMVzg1BiVQeqcpmo6z3sxbPkSqxlt9z1TwvFhHP3l5
	fYrqX0/e4ztwwugqTTkC6gt0KOdfcWbxAv03s1PyIgc0aeGPeTG2GYCf8ELc6CPRuReg
	taXfR4dm6mS3qsjdMuHSBCNtNKdqkU9YBf4AmxPZUJSF/YkeZfudYTMdgbIgas+TC+7P
	/88+vPgEh1WmWcwBV7FJ5yS04Q6BYAMExa3j9ndECnnlTLn7qwlpnufplRe1xoXawvLf
	BLc6xsa/fMtwvP4XS5Tt+42ofN+WoK5IUJRBOwRU5tljfVOyx5JrESM35Zy4JrRB8upX
	+rcg==
X-Gm-Message-State: AIVw110uOvrmGpmcTrH6iL8koy6wZxCQl9E4ubrycS9waDrxJEiROci2
	sDyNO5Z35GbXK9o3
X-Received: by 10.99.143.94 with SMTP id r30mr18338499pgn.102.1499220930894;
	Tue, 04 Jul 2017 19:15:30 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:8c94:2d3e:fbf5:a0d8?
	([2001:8003:804a:b500:8c94:2d3e:fbf5:a0d8])
	by smtp.gmail.com with ESMTPSA id
	b8sm46809150pfd.65.2017.07.04.19.15.28
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 04 Jul 2017 19:15:30 -0700 (PDT)
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
	<06d4e1b4-f24a-55b9-f5d6-cd6eff16a672@gmail.com>
	<9902bdc2-a077-31c9-ab5a-86c581c19de8@clear-code.com>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <59037a7d-6048-28dd-1d1f-2e955d6b4c67@gmail.com>
Date: Wed, 5 Jul 2017 10:15:26 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <9902bdc2-a077-31c9-ab5a-86c581c19de8@clear-code.com>
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
X-List-Received-Date: Wed, 05 Jul 2017 02:15:33 -0000
Content-Type: multipart/alternative;
	boundary="------------2D8619E8BF56B6CCE596EFD3"
Content-Language: en-US

--------------2D8619E8BF56B6CCE596EFD3
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

When I upgrade poky, will it delete all the configuration I had done?


On 04/07/17 17:51, Takuro Ashie wrote:
>
> On 2017年07月04日 17:06, Riko Ho wrote:
>>
>> Still in error :
>>
>> | 
>> /home/bianchi77/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/firefox/52.1.2esr-r0/firefox-52.1.2esr/firefox-build-dir/dist/system_wrappers/pk11pub.h:3:26: 
>> fatal error: pk11pub.h: No such file or directory
>> |  #include_next <pk11pub.h>
>> |                           ^
>> | compilation terminated.
>>
>
> I confirmed it.
> Hmm, there are some issues which prevent using built-in nss & nspr.
> I can't resolve it soon.
>
> It seems that upgrading poky is a easier way to build firefox if it's 
> acceptable for you.
>

-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
Kind regards,
Riko Ho
/*******/

*

--------------2D8619E8BF56B6CCE596EFD3
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>When I upgrade poky, will it delete all the configuration I had
      done?<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 04/07/17 17:51, Takuro Ashie wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:9902bdc2-a077-31c9-ab5a-86c581c19de8@clear-code.com">
      <br>
      On 2017年07月04日 17:06, Riko Ho wrote:
      <br>
      <blockquote type="cite">
        <br>
        Still in error :
        <br>
        <br>
        |
/home/bianchi77/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/firefox/52.1.2esr-r0/firefox-52.1.2esr/firefox-build-dir/dist/system_wrappers/pk11pub.h:3:26:
        fatal error: pk11pub.h: No such file or directory
        <br>
        |  #include_next &lt;pk11pub.h&gt;
        <br>
        |                           ^
        <br>
        | compilation terminated.
        <br>
        <br>
      </blockquote>
      <br>
      I confirmed it.
      <br>
      Hmm, there are some issues which prevent using built-in nss &amp;
      nspr.
      <br>
      I can't resolve it soon.
      <br>
      <br>
      It seems that upgrading poky is a easier way to build firefox if
      it's acceptable for you.
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

--------------2D8619E8BF56B6CCE596EFD3--
