Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B69DCE00DC6; Sun, 30 Jul 2017 19:33:05 -0700 (PDT)
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
	*      [74.125.83.47 listed in dnsbl.sorbs.net]
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
Received: from mail-pg0-f47.google.com (mail-pg0-f47.google.com [74.125.83.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12A5FE00BBC
	for <yocto@yoctoproject.org>; Sun, 30 Jul 2017 19:33:04 -0700 (PDT)
Received: by mail-pg0-f47.google.com with SMTP id y129so132299977pgy.4
	for <yocto@yoctoproject.org>; Sun, 30 Jul 2017 19:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=B6YtuGCcUZZvijaDwkexR+xpQHepauSnlg5yDIWru+U=;
	b=DeOCZPmcfzWEZbQbk6QA1/5r4F227cKIF+Y8o9eKzk/VuLI7XAj5MMWBI1ukUzR+rE
	xv8sYGCcAUbXuE0BtZvHlPBPYQb7MJMCTmdGfSlTZoKYqAs3DMbYRcAZ775/iHy0ADf4
	DWlRay6khC9i4/4ae+7nA/YvObSmzZ3BBInEheAKGGdmLim36auXO7pO2wo5/IHlbGbO
	XT/GyeWQgGwHmipmsqBm4FtxdLYGRwS3hKs2rqpXOgQWkdxgyPN+D35okz09EMwWd08Z
	4uYUPhVj/N7yIt5/QiyLtOIHWsy/TKQwdwTeidu4Jxxm0O9Wi8Dt14mpbp+s42rXkS7g
	o7JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=B6YtuGCcUZZvijaDwkexR+xpQHepauSnlg5yDIWru+U=;
	b=EEJYYd9mO7hrVxfFvqMzaTC1n4Y0wma6P6iBhj6QgGakcU7LfvH3kNdBfiPV/AH/9L
	xvd/bhAofrtYFPBFphfJn0ZyIO4fa3V0V8PGc/csPsqYGHIhZ+BMUY7owXBCOWxnjjQ/
	zCDX8Sr6p10ro40AWc5mnwO13YsD15EUYp+sHj3FLKkcGZss+IJF/i4wi3U9JsIdyTgX
	xgH4QKPQAWZ9jVm3gBNwdC5kzcx2Y6o412ojRnOK+VIoArmiEmRnHxdzeOlL9G3o7opq
	hSfMNw/Las8TBRNNbcFffisJjBvNXdiHecJcsPsAHDYlEXra0l/7wcOBABH/Jm+HVDFj
	qsUA==
X-Gm-Message-State: AIVw112WcaNRL8E7ej359wg3mXLNtCdmAvtfNDIm/08qyjICmXJ1hy/L
	GY2nKkUrqTMQORUB
X-Received: by 10.98.70.132 with SMTP id o4mr8926460pfi.104.1501468384008;
	Sun, 30 Jul 2017 19:33:04 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:cc03:454e:b9bc:2524?
	([2001:8003:804a:b500:cc03:454e:b9bc:2524])
	by smtp.gmail.com with ESMTPSA id
	z12sm49792644pgs.88.2017.07.30.19.33.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 30 Jul 2017 19:33:03 -0700 (PDT)
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <8caab74c-84db-d95c-1dc1-4c85ac534f26@gmail.com>
	<c85b9033-3b0d-a973-d074-5f59392c18c3@rsi-elektrotechnik.de>
	<3f743f3c-abcc-2453-284a-55ebb1f3d769@gmail.com>
	<0d539070-2944-2ea0-d847-917ae9a556f9@rsi-elektrotechnik.de>
	<8292ae18-05ae-2f98-0dd3-f56392af92ed@gmail.com>
	<c8622989-4ee6-d34a-d083-4679ed6710f9@rsi-elektrotechnik.de>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <337a7f6c-0ca1-6505-f5ea-16c355c84f72@gmail.com>
Date: Mon, 31 Jul 2017 10:33:00 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <c8622989-4ee6-d34a-d083-4679ed6710f9@rsi-elektrotechnik.de>
Subject: DEBUG: automake-native: class native found in blacklist, disable icecc ?
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
X-List-Received-Date: Mon, 31 Jul 2017 02:33:05 -0000
Content-Type: multipart/alternative;
	boundary="------------E9DA3B984774FF34141097F1"
Content-Language: en-US

--------------E9DA3B984774FF34141097F1
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear Yocto Team Member,

I tried

#:~/poky/build$ bitbake core-image-minimal

Is my auto make disabled with icecc ?

How to make it enable ? thanks.

Here's the messages:

==================

NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: automake-native-1.15-r0 do_compile: oe_runmake failed
ERROR: automake-native-1.15-r0 do_compile: Function failed: do_compile 
(log file is located at 
/home/bianchi77/poky/build/tmp/work/x86_64-linux/automake-native/1.15-r0/temp/log.do_compile.7351)
ERROR: Logfile of failure stored in: 
/home/bianchi77/poky/build/tmp/work/x86_64-linux/automake-native/1.15-r0/temp/log.do_compile.7351
Log data follows:
| DEBUG: automake-native: class native found in blacklist, disable icecc
| DEBUG: automake-native: class native found in blacklist, disable icecc
| DEBUG: automake-native: class native found in blacklist, disable icecc
| DEBUG: Executing shell function do_compile
| NOTE: make -j 10
| ERROR: oe_runmake failed
| : && /home/bianchi77/poky/build/tmp/hosttools/mkdir -p doc && { 
PATH='/home/bianchi77/poky/build/tmp/work/x86_64-linux/automake-native/1.15-r0/build/t/wrap:'$PATH 
&& export PATH; } && /usr/bin/env perl ../automake-1.15/doc/help2man 
--output=doc/automake-1.15.1 automake-1.15
| help2man: can't get `--help' info from automake-1.15
| Try `--no-discard-stderr' if option outputs to stderr
| Makefile:3687: recipe for target 'doc/automake-1.15.1' failed
| make: *** [doc/automake-1.15.1] Error 255
| ERROR: Function failed: do_compile (log file is located at 
/home/bianchi77/poky/build/tmp/work/x86_64-linux/automake-native/1.15-r0/temp/log.do_compile.7351)
ERROR: Task 
(virtual:native:/home/bianchi77/poky/meta/recipes-devtools/automake/automake_1.15.bb:do_compile) 
failed with exit code '1'
NOTE: Tasks Summary: Attempted 230 tasks of which 194 didn't need to be 
rerun and 1 failed.

Summary: 1 task failed:
virtual:native:/home/bianchi77/poky/meta/recipes-devtools/automake/automake_1.15.bb:do_compile
Summary: There were 4 WARNING messages shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.


-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
Kind regards,
Riko Ho
/*******/

*

--------------E9DA3B984774FF34141097F1
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Dear Yocto Team Member,</p>
    <p>I tried <br>
    </p>
    <p>#:~/poky/build$ bitbake core-image-minimal</p>
    <p>Is my auto make disabled with icecc ?</p>
    <p>How to make it enable ? thanks.<br>
    </p>
    <p>Here's the messages:</p>
    <p>==================<br>
    </p>
    <p>NOTE: Executing SetScene Tasks<br>
      NOTE: Executing RunQueue Tasks<br>
      ERROR: automake-native-1.15-r0 do_compile: oe_runmake failed<br>
      ERROR: automake-native-1.15-r0 do_compile: Function failed:
      do_compile (log file is located at
/home/bianchi77/poky/build/tmp/work/x86_64-linux/automake-native/1.15-r0/temp/log.do_compile.7351)<br>
      ERROR: Logfile of failure stored in:
/home/bianchi77/poky/build/tmp/work/x86_64-linux/automake-native/1.15-r0/temp/log.do_compile.7351<br>
      Log data follows:<br>
      | DEBUG: automake-native: class native found in blacklist, disable
      icecc<br>
      | DEBUG: automake-native: class native found in blacklist, disable
      icecc<br>
      | DEBUG: automake-native: class native found in blacklist, disable
      icecc<br>
      | DEBUG: Executing shell function do_compile<br>
      | NOTE: make -j 10<br>
      | ERROR: oe_runmake failed<br>
      | : &amp;&amp; /home/bianchi77/poky/build/tmp/hosttools/mkdir -p
      doc &amp;&amp; {
PATH='/home/bianchi77/poky/build/tmp/work/x86_64-linux/automake-native/1.15-r0/build/t/wrap:'$PATH
      &amp;&amp; export PATH; } &amp;&amp; /usr/bin/env perl
      ../automake-1.15/doc/help2man --output=doc/automake-1.15.1
      automake-1.15<br>
      | help2man: can't get `--help' info from automake-1.15<br>
      | Try `--no-discard-stderr' if option outputs to stderr<br>
      | Makefile:3687: recipe for target 'doc/automake-1.15.1' failed<br>
      | make: *** [doc/automake-1.15.1] Error 255<br>
      | ERROR: Function failed: do_compile (log file is located at
/home/bianchi77/poky/build/tmp/work/x86_64-linux/automake-native/1.15-r0/temp/log.do_compile.7351)<br>
      ERROR: Task
(virtual:native:/home/bianchi77/poky/meta/recipes-devtools/automake/automake_1.15.bb:do_compile)
      failed with exit code '1'<br>
      NOTE: Tasks Summary: Attempted 230 tasks of which 194 didn't need
      to be rerun and 1 failed.<br>
      <br>
      Summary: 1 task failed:<br>
       
virtual:native:/home/bianchi77/poky/meta/recipes-devtools/automake/automake_1.15.bb:do_compile<br>
      Summary: There were 4 WARNING messages shown.<br>
      Summary: There were 2 ERROR messages shown, returning a non-zero
      exit code.<br>
      <br>
    </p>
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

--------------E9DA3B984774FF34141097F1--
