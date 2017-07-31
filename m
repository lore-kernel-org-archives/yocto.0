Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFD05E00DC6; Sun, 30 Jul 2017 19:12:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.49 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f49.google.com (mail-pg0-f49.google.com [74.125.83.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03D2FE00BBC
	for <yocto@yoctoproject.org>; Sun, 30 Jul 2017 19:12:32 -0700 (PDT)
Received: by mail-pg0-f49.google.com with SMTP id 125so132268693pgi.3
	for <yocto@yoctoproject.org>; Sun, 30 Jul 2017 19:12:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=aBdgJtDStSPLq0DvFWsTAzIr/JbNXT1liHdWITYqKpE=;
	b=elgqVGLMl+8Q18E0kNv7UYaA2pUH6RmjZC3gfr2ouSjtIOPtYgu5AfRphSbkR3IALc
	LjmWAx2SK5gnX38qZlnK5yyTXw4gzOlEKDl9NzcOVppkFCBZsnjSWbXFsEZU8c3a+2fH
	PeHrDN2zb5J8zyMxudIn7DdNxUF0eBks5B2tkkVdq3i6ROEBhOOictyHeXza2EjtdD4b
	wOO/WbRA3BPzmuM/LdY57oMMZ17Pj1LabSpc80MhXLnsMTMVEFacFJB6v2Lel5Ivh+iz
	e93+4mcXyv9v7LQfGefxzThyaXFbavv5ZMqSCJHEtzkbVDV0gR02mnNPXL3Xs0UKLVf/
	+LpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=aBdgJtDStSPLq0DvFWsTAzIr/JbNXT1liHdWITYqKpE=;
	b=jfGGcd1i+OzRuAngl3pw3lEZ1xzojrLZaiAp7QNcLpYM6LtpAIYHe53xvn8p8Hle5J
	r1roJX7vvrPldSfI8tRNAzlOX0wvk1pkpkrk9b/zMgC03D4eprebnAZvP7jwD292MxWG
	vpfEVZ5P+f3CrWt/cqA2RMkg0z74xpaEIJ/i6DuwU219ckkjERHsL8wLuqGjvdDNtmzb
	CVwMHvG1g3WcZdJ2qqdGwYlAIdo3F8pXvqnyW8TD3HEmQW1rOjA7SmBKTDJYWukRilCU
	vtstKvjE0PrifLlWK2CyxEpclhGGrjBLmJIIRJr9TsWO9wP38/RiULmUMFQdCRU5mpze
	9jMQ==
X-Gm-Message-State: AIVw111CA7ydBPDNp2se3riEyjlEL0+yuBOiQh0iVpvaPmdAeNBHCuP7
	fJqiRbqS78xMVGoB
X-Received: by 10.99.186.7 with SMTP id k7mr14134946pgf.0.1501467152182;
	Sun, 30 Jul 2017 19:12:32 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:cc03:454e:b9bc:2524?
	([2001:8003:804a:b500:cc03:454e:b9bc:2524])
	by smtp.gmail.com with ESMTPSA id
	10sm52710116pfo.134.2017.07.30.19.12.30
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 30 Jul 2017 19:12:31 -0700 (PDT)
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <8caab74c-84db-d95c-1dc1-4c85ac534f26@gmail.com>
	<c85b9033-3b0d-a973-d074-5f59392c18c3@rsi-elektrotechnik.de>
	<3f743f3c-abcc-2453-284a-55ebb1f3d769@gmail.com>
	<0d539070-2944-2ea0-d847-917ae9a556f9@rsi-elektrotechnik.de>
	<8292ae18-05ae-2f98-0dd3-f56392af92ed@gmail.com>
	<c8622989-4ee6-d34a-d083-4679ed6710f9@rsi-elektrotechnik.de>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <f592a886-bf1a-ce80-953e-1ba13d1e0a37@gmail.com>
Date: Mon, 31 Jul 2017 10:12:28 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <c8622989-4ee6-d34a-d083-4679ed6710f9@rsi-elektrotechnik.de>
Subject: Icecc configuration on ubuntu ?
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
X-List-Received-Date: Mon, 31 Jul 2017 02:12:33 -0000
Content-Type: multipart/alternative;
	boundary="------------828EA18DF1AEEE07B29093A5"
Content-Language: en-US

--------------828EA18DF1AEEE07B29093A5
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear Yocto Team Member,

I've been reading :
https://www.openembedded.org/wiki/Using_IceCC

on this part :
...........
use icecc service provided by your distribution (e.g. in ubuntu set 
ICECC_SCHEDULER_HOST in /etc/icecc/icecc.conf and enable START_ICECC in 
/etc/default/icecc) .......
What should I fill with this configuration ?
===

# ICECC_SCHEDULER_HOST=""
ICECC_SCHEDULER_HOST=""

===
Is it my Host Ip Address or my hostname ?

Thank you,


**
*

/*******/
Sent by Ubuntu LTS 16.04,
Kind regards,
Riko Ho
/*******/

*

--------------828EA18DF1AEEE07B29093A5
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Dear Yocto Team Member,<br>
    <br>
    I've been reading :<br>
    <a class="moz-txt-link-freetext" href="https://www.openembedded.org/wiki/Using_IceCC">https://www.openembedded.org/wiki/Using_IceCC</a><br>
    <br>
    on this part :<br>
    ...........<br>
    use icecc service provided by your distribution (e.g. in ubuntu set
    ICECC_SCHEDULER_HOST in /etc/icecc/icecc.conf and enable START_ICECC
    in /etc/default/icecc) .......<br>
    What should I fill with this configuration ?<br>
    ===<br>
    <pre># ICECC_SCHEDULER_HOST=""
ICECC_SCHEDULER_HOST=""</pre>
    ===<br>
    Is it my Host Ip Address or my hostname ?<br>
    <br>
    Thank you,<br>
    <br>
    <br>
    <b> </b>
    <div class="moz-signature"><b>
        <p style="color:blue;"> /*******/<br>
          Sent by Ubuntu LTS 16.04,<br>
          Kind regards,<br>
          Riko Ho<br>
          /*******/<br>
        </p>
      </b></div>
  </body>
</html>

--------------828EA18DF1AEEE07B29093A5--
