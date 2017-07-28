Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F16D1E00D05; Thu, 27 Jul 2017 23:42:11 -0700 (PDT)
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
	*      [74.125.83.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEE82E00CEF
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 23:42:11 -0700 (PDT)
Received: by mail-pg0-f65.google.com with SMTP id 125so9279504pgi.5
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 23:42:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=0BLjm6D6NXICGF5Wjwk1iBpRMWy80ndLEbHWfIu2KuE=;
	b=dEHk5BA9HzR6hTqCOj8ZyZ5jtdMmU1TfdOUdPZxMU8PInrgdIqqclABpoiy8rMjicV
	2Ru6gdwSatiFKbSwFkLdahfwiuLYBbacqjLQ/R2SyF0VPJAKpnxXWQB/Wu2wqHBryHx8
	FSBUUitsdxszFrAldXJVCppeYlQV2NZS3yItKVbCq7DTQwWMfcQ0YQWRDX49R8oYneUV
	HwP8xuZuiJGLBoULHuBtYNhcLYcSG3eWPWqpJfjfGw+YCKwNGjto5f4CTM01Xg/1f+D9
	uMxtzhE977dNpKwuUkxjLDgfwtaHNw33JBlZDM6XiKfHMfP+8fUo6kK3wxhdrIAHTbaw
	t08g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=0BLjm6D6NXICGF5Wjwk1iBpRMWy80ndLEbHWfIu2KuE=;
	b=ZsHtpKJZeRmJUArp6mHdeBKo4PVtQ6muy6eZuS2HyBCdmVZ/LlIJiYDIDa2i0Wx6PJ
	/WLR/qOprAkHpmCb268FIs5ep8aPqRxpYLqY8TXZwx0VIb2pIA576aDiwIhr63/lqCPG
	bGpkiy+I5HFnXunL/UnxA47Vq6lrSbNaoUfR6Qxi3QpZxxhG+iUebNXrG1E97aeEcKgd
	dOFZMTrgl3YFPgeFo6xbEqH2gCm+WMU4GYhECrwKa5Pdjo4eRhcaRal6thZLGVSoXTVW
	deouFQ2v3/T0T/QQLphLJKBLH4KO2RP5PjNGEvbuhuK3wRCgoQOPgaU4YawmoXoBvdzI
	3WYQ==
X-Gm-Message-State: AIVw113VvPffDdRAwx2wIOBMZJ6p7P/oczxXSHviZoKTFg35mcr/46vJ
	bqBfZhnrbiI5mb5W
X-Received: by 10.84.232.11 with SMTP id h11mr7146084plk.126.1501224130556;
	Thu, 27 Jul 2017 23:42:10 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:941c:d6bf:3330:a31?
	([2001:8003:804a:b500:941c:d6bf:3330:a31])
	by smtp.gmail.com with ESMTPSA id
	w10sm38537275pgo.80.2017.07.27.23.42.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 27 Jul 2017 23:42:10 -0700 (PDT)
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <8caab74c-84db-d95c-1dc1-4c85ac534f26@gmail.com>
	<c85b9033-3b0d-a973-d074-5f59392c18c3@rsi-elektrotechnik.de>
	<3f743f3c-abcc-2453-284a-55ebb1f3d769@gmail.com>
	<0d539070-2944-2ea0-d847-917ae9a556f9@rsi-elektrotechnik.de>
	<8292ae18-05ae-2f98-0dd3-f56392af92ed@gmail.com>
	<c8622989-4ee6-d34a-d083-4679ed6710f9@rsi-elektrotechnik.de>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <23f5db79-dfb2-38e7-a9a7-1960c6ffd7a6@gmail.com>
Date: Fri, 28 Jul 2017 14:42:06 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <c8622989-4ee6-d34a-d083-4679ed6710f9@rsi-elektrotechnik.de>
Subject: Re: Icecc configuration on mpich ?
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
X-List-Received-Date: Fri, 28 Jul 2017 06:42:12 -0000
Content-Type: multipart/alternative;
	boundary="------------6F286D2E783F3396C5A11709"
Content-Language: en-US

--------------6F286D2E783F3396C5A11709
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Ok, thanks for the hints, I'll make some experiments


On 28/07/17 14:36, Josef Holzmayr wrote:
> On 28.07.2017 08:30, Riko Ho wrote:
>> but have no idea on how to use it yet ?
>
> This usually is helped by reading the manual. Or the links that I 
> already provided.
>
> As a last hint for now, let me rephrase and simplify the short 
> description from icecc itself:
>
> icecc is a daemon that can accept compile jobs over the network.
>
> That should tell you that you probably don't use it directly, right?

-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
Kind regards,
Riko Ho
/*******/

*

--------------6F286D2E783F3396C5A11709
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Ok, thanks for the hints, I'll make some experiments<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 28/07/17 14:36, Josef Holzmayr
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:c8622989-4ee6-d34a-d083-4679ed6710f9@rsi-elektrotechnik.de">On
      28.07.2017 08:30, Riko Ho wrote:
      <br>
      <blockquote type="cite">but have no idea on how to use it yet ?
        <br>
      </blockquote>
      <br>
      This usually is helped by reading the manual. Or the links that I
      already provided.
      <br>
      <br>
      As a last hint for now, let me rephrase and simplify the short
      description from icecc itself:
      <br>
      <br>
      icecc is a daemon that can accept compile jobs over the network.
      <br>
      <br>
      That should tell you that you probably don't use it directly,
      right?
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

--------------6F286D2E783F3396C5A11709--
