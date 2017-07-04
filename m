Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D00DE00BB6; Tue,  4 Jul 2017 00:17:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.173 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.173 listed in dnsbl.sorbs.net]
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FD6BE00AE4
	for <yocto@yoctoproject.org>; Tue,  4 Jul 2017 00:16:56 -0700 (PDT)
Received: by mail-pf0-f173.google.com with SMTP id e7so111151711pfk.0
	for <yocto@yoctoproject.org>; Tue, 04 Jul 2017 00:16:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=iU33/a1oXSkbvKm/7LUIUogcRvDuD7BLGtkuaa3LSzQ=;
	b=VQ9I/I2vr22m1Kq7dzmTixnHDdQgSjKbIhP5c2IMaZioZifZMV7rGxJrzRkWwxsyaV
	5ktcXmT5SAzvaxftcRtbn4JeTBwOKiwzGKxT1R3bs6rK5PMKHCFw5m8ELFBCttW2COew
	GSzsBxYe/uqA3qHyz8h+EwYZkHIxgUrjcA8TWkwW+jC1YfBQ8jVC4qkFGMuZar66/Uux
	UzN2d75ucq5ffTRybHQI2iIn0SvpgCbMMeXAli62Il9QSANVVuRbBeKCnVYEZiQ+NwGC
	QU+aHTB1luRwDo4DwmJtamh6lzWKQ+i/U22HynS2D/0OPmmrG9owcJRAp7xD5Igskp4E
	qjWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=iU33/a1oXSkbvKm/7LUIUogcRvDuD7BLGtkuaa3LSzQ=;
	b=mBUFvo5ezQxOOu+VoBSjU4tvHKcCht08WYBEpY7ejXY0HsBhjqdxqwfxsBRWYEzvQR
	fOGUWPoXMSYW4v+f+70ehx0cbih6P9wD/dO8L54lV730nzr8az03f3zSK0IO1jWqv2or
	NNbuMMSuiC/MWCwtBV8H3nPVk2MLG4Rd00WNNiT9+Ug4rMiBbdw/iZYb+NLVbtp7yNOI
	1mZcji2yAb3HQXvhma2UFTkLIid9lCn0Us2gQnUtuada+L9+Tsx7cWDKRCo9zO8/bJ8o
	cSS2kFgKysHOGVa7YdyVAob2shbtE2KNXLA81J4INhgz2klnKT45jftIXJ/khlYPWW2V
	feHg==
X-Gm-Message-State: AIVw1105YXyW1B6J441MABWGoknNrwlwLWVaayHngcNHnH679ZbdKlKD
	UFg2gHjTcMmLgjnh
X-Received: by 10.84.217.206 with SMTP id d14mr14636934plj.121.1499152616003; 
	Tue, 04 Jul 2017 00:16:56 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:fc39:a3aa:cd2a:ad2f?
	([2001:8003:804a:b500:fc39:a3aa:cd2a:ad2f])
	by smtp.gmail.com with ESMTPSA id
	o8sm32951586pgn.52.2017.07.04.00.16.53
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 04 Jul 2017 00:16:55 -0700 (PDT)
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
Message-ID: <1c049ce0-8da6-0409-2c23-b4eb7e17a4ed@gmail.com>
Date: Tue, 4 Jul 2017 15:16:51 +0800
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
X-List-Received-Date: Tue, 04 Jul 2017 07:17:00 -0000
Content-Type: multipart/alternative;
	boundary="------------14A6B4EB8E2B6CBDFF498138"
Content-Language: en-US

--------------14A6B4EB8E2B6CBDFF498138
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

It's compiling now..


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

--------------14A6B4EB8E2B6CBDFF498138
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>It's compiling now..<br>
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

--------------14A6B4EB8E2B6CBDFF498138--
