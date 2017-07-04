Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99E59E00BB6; Tue,  4 Jul 2017 00:12:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.43 listed in list.dnswl.org]
Received: from mail-pg0-f43.google.com (mail-pg0-f43.google.com [74.125.83.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDB9BE00AE4
	for <yocto@yoctoproject.org>; Tue,  4 Jul 2017 00:12:12 -0700 (PDT)
Received: by mail-pg0-f43.google.com with SMTP id j186so105878432pge.2
	for <yocto@yoctoproject.org>; Tue, 04 Jul 2017 00:12:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=v/z/LexjsMxjP4ZIF9VLEi1ve7UYLQdSZCXI4PLLgWg=;
	b=OyzksMj7hgCD9wJSU3wYxS43b+2Lf5OIIgT+EN9TryesMmrMtlCP3RNs4UvZuo8Yg4
	s04AQ2ilNaMu//xL080Cxm6A8utDHZL/mSeDqqropA+04sU7118eyU88ttw9WzUJSfj8
	2MEMT2w+P1/es/KNiGHmaU2VX2B8Icz2Shw/YlFnBBCt+wENlNoeJh2NJldPskQn6eKU
	eEVtt6OOWdFLpkfJxIAhZGranssXKLM29aeZxqHq2z2QyVKg2J1JlhxMphi5rNJwWqIk
	3Hlfd2XL94dpk9r51xq7Vr+Q6JrsqF3Ug6o2iaQBIdzydbwGUAmd9hi3E5WvOtn50B8Y
	Us+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=v/z/LexjsMxjP4ZIF9VLEi1ve7UYLQdSZCXI4PLLgWg=;
	b=X1s/4v6sCMrrna12lTgnA8iFhsztPxdT//Q2vUN+mhrN0E0kMKNJJm6NhVMA8e1QWn
	5d0JgFyONYC9axLKvdAjlkRcxq/nFY+9vc7dnCwLRFy0lJElvv3qfpb9BpjCcFlX1gRm
	VSO6jDN4ZLm2cgGpgXNDiP+OkrQXtxwuOhN66IlB+RnKEFKVXcGen8/va4ClYjq94oRb
	OY3IOkOJ8lKSrEXTbw+g/GuHt51ZEG0a16MEuYiqg2u7LqCWJq6JgYspQrKtPTnv8FcE
	SM4DhH1l0kES7G6CE+tffvuii49ouriLV2T0m6/5oYlVAfiio6C9koFubDg7Q6OT3y1B
	XdYw==
X-Gm-Message-State: AIVw11090cOQFq+bIc67xJdBrAVJ/Iw8ocmt3Zngn3Ja2vulFKiMLygY
	3n0Q5nw+aIhtVXdE
X-Received: by 10.99.121.1 with SMTP id u1mr14002062pgc.20.1499152331817;
	Tue, 04 Jul 2017 00:12:11 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:fc39:a3aa:cd2a:ad2f?
	([2001:8003:804a:b500:fc39:a3aa:cd2a:ad2f])
	by smtp.gmail.com with ESMTPSA id
	o4sm27044923pga.47.2017.07.04.00.12.09
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 04 Jul 2017 00:12:11 -0700 (PDT)
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
Message-ID: <43c24bd7-ceec-d043-5710-651829b205bc@gmail.com>
Date: Tue, 4 Jul 2017 15:12:07 +0800
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
X-List-Received-Date: Tue, 04 Jul 2017 07:12:15 -0000
Content-Type: multipart/alternative;
	boundary="------------DEFE5B209DBF1E6E6B7A04FE"
Content-Language: en-US

--------------DEFE5B209DBF1E6E6B7A04FE
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

These lines :

# System libraries
#ac_add_options --with-system-nss #comment out for nss bug
#ac_add_options --with-system-nspr

Let me try...


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

--------------DEFE5B209DBF1E6E6B7A04FE
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>These lines :</p>
    <p># System libraries<br>
      #ac_add_options --with-system-nss #comment out for nss bug<br>
      #ac_add_options --with-system-nspr<br>
    </p>
    <p>Let me try...<br>
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

--------------DEFE5B209DBF1E6E6B7A04FE--
