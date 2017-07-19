Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3AC5E00BFF; Tue, 18 Jul 2017 18:19:29 -0700 (PDT)
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
	*      [74.125.83.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.47 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f47.google.com (mail-pg0-f47.google.com [74.125.83.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F49EE00BBC
	for <yocto@yoctoproject.org>; Tue, 18 Jul 2017 18:19:28 -0700 (PDT)
Received: by mail-pg0-f47.google.com with SMTP id u5so21644526pgq.3
	for <yocto@yoctoproject.org>; Tue, 18 Jul 2017 18:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language;
	bh=rRj71jRxtP0EXhmLPHoXaOsEZwazIilrwdldLOFavpU=;
	b=kewRuY2U9YiRiXo1lHghYG4mdSjKxUfrHx16hiT8fvTggoNeC8RYPfQn/kNUi/aY8Y
	GcTBvc7ywAxf6oqyjUO/Zh3wMmgEbHSiwNe+636co5RBVjVnvd2hg5+Qo8AHbDAKNhkn
	mIbcAjagWddMRdY0pHTyfuvLaQT6gL7ZAjAFZ+OWFsZUxVHH5vfoxEpdeiL9PmgnsmcG
	rAUn9RBfAv8pNLjST6Jr2CJMXyUu4BBZU9rAWUNOKQp4RPtKQ7Zb2wO3+Lc6pmYMXma4
	BT7yTVjdpFsTR4OP0qmrPoN8ET6a4SwmGXfQR0hZwecM1DrO94AcnxtnxQRnYLWv3xAk
	mbVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language;
	bh=rRj71jRxtP0EXhmLPHoXaOsEZwazIilrwdldLOFavpU=;
	b=pArMIf0uSdV/qE4KwMzGitoWnlPV+BctCAeK4B+YuC/y63siu749Km0zAxp05t/4wk
	8rVLVOagvuSqca5/S6IG7qiXyp9tnaMKmm5nMIydPHSQOzpN+QSoGjPGbqqQjb7cJRc2
	LOPQ1B2gIUWf0kmDKfCis9edFYOwlfmI4RB9NBPEOIoHYHsK2YGBqJ3RmB8GEaZTSbHE
	xX4kwdHUs1uR51WuaRnocDTQljFJwQlpXLQN0uImvKpJz+ot3o7VaALxlJK77PoCQys3
	6jtx2xvX89La7ZGYeQaJL8X8OI+Fp3t25lrHKCRnZs8JEpGKDpsG4gN6qoJLrA/I/xs6
	zKjQ==
X-Gm-Message-State: AIVw113TmB8ACWOI0Nm+SzucXekVjsmngJDfpZjrByeU8hiakDLpQGS1
	iTrL5YqF4ndSCXGg
X-Received: by 10.84.231.201 with SMTP id g9mr485073pln.86.1500427167773;
	Tue, 18 Jul 2017 18:19:27 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:d026:ae85:24b8:9c14?
	([2001:8003:804a:b500:d026:ae85:24b8:9c14])
	by smtp.gmail.com with ESMTPSA id
	s87sm7900866pfa.86.2017.07.18.18.19.26 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 18 Jul 2017 18:19:27 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <6f93e799-ee94-359e-24d4-ff55b74e36b5@gmail.com>
Date: Wed, 19 Jul 2017 09:19:24 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
Subject: FFplay question ?
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
X-List-Received-Date: Wed, 19 Jul 2017 01:19:30 -0000
Content-Type: multipart/alternative;
	boundary="------------57A83FD494A8A0A1EFD34A16"
Content-Language: en-US

--------------57A83FD494A8A0A1EFD34A16
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear Yocto Members,

I tried to compile FFplay with FFMpeg, but I can not get it ?

What should I change on this code ?

Here's on ffmpeg_3.3.bb :

===

EXTRA_OECONF = " \
     --disable-stripping \
     --enable-pic \
     --enable-shared \
     --enable-pthreads \
     --enable-ffplay  \

"


Thank you


-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
Kind regards,
Riko Ho
/*******/

*

--------------57A83FD494A8A0A1EFD34A16
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Dear Yocto Members,</p>
    <p>I tried to compile FFplay with FFMpeg, but I can not get it ?</p>
    <p>What should I change on this code ?</p>
    <p>Here's on ffmpeg_3.3.bb :</p>
    <p>===</p>
    <p>EXTRA_OECONF = " \<br>
          --disable-stripping \<br>
          --enable-pic \<br>
          --enable-shared \<br>
          --enable-pthreads \<br>
          --enable-ffplay  \ <br>
    </p>
    <p>"</p>
    <p><br>
    </p>
    <p>Thank you<br>
    </p>
    <p><br>
    </p>
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

--------------57A83FD494A8A0A1EFD34A16--
