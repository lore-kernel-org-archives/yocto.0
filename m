Return-Path: <jdamon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED0DDE00BBC; Fri, 14 Jul 2017 10:17:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jdamon[at]gmail.com)
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
	*      [209.85.192.169 listed in list.dnswl.org]
Received: from mail-pf0-f169.google.com (mail-pf0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 872AEE00B83
	for <yocto@yoctoproject.org>; Fri, 14 Jul 2017 10:17:52 -0700 (PDT)
Received: by mail-pf0-f169.google.com with SMTP id q85so48326706pfq.1
	for <yocto@yoctoproject.org>; Fri, 14 Jul 2017 10:17:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language;
	bh=DzcyzZUSfXpwseSvjxThNNFaRNpgYoCfp/Z0YcEOO4U=;
	b=E9/rY3icIXaj9rzVo/b5Frc/GqdqHvigP/kH3kyc31XneW4HEFYUbgCYVSlV9mxbxe
	5ieXtHtHRwPZkUWnR6WJ0+s/KuNqocMiym3P/aa4QJ1mMumRfhiOi05QHU4bewyoX+Cc
	3GnkUweAK65CnWzuj/rLI95Oz+qZGYi4D0RFsiTnK7PO8AbYn0+xkU9QrLyQtLmCTAfI
	V/36zhyw2wPfmYX1mhAv9bQuFeGzxq92eKgbeMzviXIwWnjaPa+g1qKsLNF4c7rEHGWG
	/3bEnkHNbKnnV94nBbnoU6UzVI78cr21CWAJcuS1K8Fl9lmeArQAo+867yOjDiyHXz3c
	cnJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language;
	bh=DzcyzZUSfXpwseSvjxThNNFaRNpgYoCfp/Z0YcEOO4U=;
	b=KojMEdLDlbKDh/5HlUgjIP1ORTNqlVu4wAVhd6CjcRyYm6jA7oj8EEq/OzyLg8tlBY
	zEld6aKM5mdny9f8RefGUmFy9qrBFkKUIeu7l7m9hKz80as2iLSjRAGKCzdBOO+w9Thk
	iL6Pkj2/7idGRnsemDbC+zf5IXRQ3Pqlibb96X8gnMebrICVTOKhqhn+N/nyBuDs4N10
	T0Gcfqy4pVu60ot+7DL9v98tDQQCTf6SY+tG0o/AEx8/BHapUD3r6664VVFooTxfjZDT
	qF0YoKK7vD6bRdbJm7yVno5UA3YVAJbFaXdOyezei4xFLzApeYOEfhqFgZAcHo50ai6r
	pF6A==
X-Gm-Message-State: AIVw110KgBpAsoV6OoPZZ7cw1scdVAcZdKtnspYwoCZM6q7ejfkj2Itb
	/k8txqLpRbKq9X3JHhE=
X-Received: by 10.99.170.76 with SMTP id x12mr15974284pgo.109.1500052672110;
	Fri, 14 Jul 2017 10:17:52 -0700 (PDT)
Received: from [10.0.0.98] ([216.84.176.126])
	by smtp.gmail.com with ESMTPSA id y6sm2960526pgq.41.2017.07.14.10.17.48
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 14 Jul 2017 10:17:50 -0700 (PDT)
To: yocto@yoctoproject.org
From: Jimi Damon <jdamon@gmail.com>
Message-ID: <a241bdb0-6ea7-8f0e-8411-02e9dbb1662c@gmail.com>
Date: Fri, 14 Jul 2017 10:17:38 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
Subject: How do you build 2 versions of the same recipe and a specific version from bitbake cmd line
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
X-List-Received-Date: Fri, 14 Jul 2017 17:17:56 -0000
Content-Type: multipart/alternative;
	boundary="------------B7B871D3FDCB64F2C88C9583"
Content-Language: en-US

--------------B7B871D3FDCB64F2C88C9583
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,


Do to a fun "feature" of zeromq, the newest libraries are not backward 
compatible and hence I need to install a zeromq-4.1.5 and zeromq-3.2.2 
libraries onto my target to assist with one application using the old 
version and a newer application using the newer one.


How can I do this from the local.conf file AND how can I specify a 
single recipe version to build on the command line ?


I've tried this in my local.conf


CORE_IMAGE_EXTRA_INSTALL += "zeromq_4.1.5 zeromq_3.2.2 "


but I get errors saying :

> WARNING: Host distribution "Ubuntu-16.10" has not been validated with 
> this version of the build system; you may possibly experience 
> unexpected failures. It is recommended that you use a tested distribution.
> Loading cache: 100% 
> |#################################################################################################################| 
> Time: 0:00:00
> Loaded 3485 entries from dependency cache.
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing RPROVIDES 'zeromq_3.2.2' (but 
> /media/tools/newboot2qt_builds/sources/meta-boot2qt/recipes-qt/images/b2qt-embedded-qt5-image.bb 
> RDEPENDS on or otherwise requires it)
> NOTE: Runtime target 'zeromq_3.2.2' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['zeromq_3.2.2']
> ERROR: Required build target 'b2qt-embedded-qt5-image' has no 
> buildable providers.
> Missing or unbuildable dependency chain was: 
> ['b2qt-embedded-qt5-image', 'zeromq_3.2.2']
>
> Summary: There was 1 WARNING message shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit 
> code. 


In addition , how can I specify a specific version of a package from the 
command line with bitbake ?


Here are my layers

% bitbake-layers show-recipes | grep -A 2 zeromq

> zeromq:
>   meta-oe              4.1.5
>   meta-oe              3.2.2


Now this fails


bitbake zeromq-4.1.5

> WARNING: Host distribution "Ubuntu-16.10" has not been validated with 
> this version of the build system; you may possibly experience 
> unexpected failures. It is recommended that you use a tested distribution.
> Loading cache: 100% 
> |#################################################################################################################| 
> Time: 0:00:00
> Loaded 3485 entries from dependency cache.
> ERROR: Nothing PROVIDES 'zeromq-4.1.5'
>
> Summary: There was 1 WARNING message shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.

or


bitbake zeromq_4.1.5

> WARNING: Host distribution "Ubuntu-16.10" has not been validated with 
> this version of the build system; you may possibly experience 
> unexpected failures. It is recommended that you use a tested distribution.
> Loading cache: 100% 
> |#################################################################################################################| 
> Time: 0:00:00
> Loaded 3485 entries from dependency cache.
> ERROR: Nothing PROVIDES 'zeromq_4.1.5'
>
> Summary: There was 1 WARNING message shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.


Thanks,





--------------B7B871D3FDCB64F2C88C9583
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><font face="Monaco">Hi,</font></p>
    <p><font face="Monaco"><br>
      </font></p>
    <p><font face="Monaco">Do to a fun "feature" of zeromq, the newest
        libraries are not backward compatible and hence I need to
        install a zeromq-4.1.5 and zeromq-3.2.2 libraries onto my target
        to assist with one application using the old version and a newer
        application using the newer one. <br>
      </font></p>
    <p><font face="Monaco"><br>
      </font></p>
    <p><font face="Monaco">How can I do this from the local.conf file
        AND how can I specify a single recipe version to build on the
        command line ? <br>
      </font></p>
    <p><font face="Monaco"><br>
      </font></p>
    <p><font face="Monaco">I've tried this in my local.conf</font></p>
    <p><font face="Monaco"><br>
      </font></p>
    <p>CORE_IMAGE_EXTRA_INSTALL += "zeromq_4.1.5 zeromq_3.2.2 "</p>
    <p><br>
    </p>
    <p>but I get errors saying : <br>
    </p>
    <p>
      <blockquote type="cite">WARNING: Host distribution "Ubuntu-16.10"
        has not been validated with this version of the build system;
        you may possibly experience unexpected failures. It is
        recommended that you use a tested distribution.<br>
        Loading cache: 100%
|#################################################################################################################|
        Time: 0:00:00<br>
        Loaded 3485 entries from dependency cache.<br>
        NOTE: Resolving any missing task queue dependencies<br>
        ERROR: Nothing RPROVIDES 'zeromq_3.2.2' (but
/media/tools/newboot2qt_builds/sources/meta-boot2qt/recipes-qt/images/b2qt-embedded-qt5-image.bb
        RDEPENDS on or otherwise requires it)<br>
        NOTE: Runtime target 'zeromq_3.2.2' is unbuildable, removing...<br>
        Missing or unbuildable dependency chain was: ['zeromq_3.2.2']<br>
        ERROR: Required build target 'b2qt-embedded-qt5-image' has no
        buildable providers.<br>
        Missing or unbuildable dependency chain was:
        ['b2qt-embedded-qt5-image', 'zeromq_3.2.2']<br>
        <br>
        Summary: There was 1 WARNING message shown.<br>
        Summary: There were 2 ERROR messages shown, returning a non-zero
        exit code. </blockquote>
      <br>
    </p>
    <p><br>
    </p>
    <p>In addition , how can I specify a specific version of a package
      from the command line with bitbake ? <br>
    </p>
    <p><br>
    </p>
    <p>Here are my layers</p>
    <p>% bitbake-layers show-recipes | grep -A 2 zeromq</p>
    <p>
      <blockquote type="cite">zeromq:<br>
          meta-oe              4.1.5<br>
          meta-oe              3.2.2</blockquote>
    </p>
    <p><br>
    </p>
    <p>Now this fails</p>
    <p><br>
    </p>
    <p>bitbake zeromq-4.1.5</p>
    <p>
      <blockquote type="cite">WARNING: Host distribution "Ubuntu-16.10"
        has not been validated with this version of the build system;
        you may possibly experience unexpected failures. It is
        recommended that you use a tested distribution.<br>
        Loading cache: 100%
|#################################################################################################################|
        Time: 0:00:00<br>
        Loaded 3485 entries from dependency cache.<br>
        ERROR: Nothing PROVIDES 'zeromq-4.1.5'<br>
        <br>
        Summary: There was 1 WARNING message shown.<br>
        Summary: There was 1 ERROR message shown, returning a non-zero
        exit code.</blockquote>
      <br>
    </p>
    <p>or</p>
    <p><br>
    </p>
    <p>bitbake zeromq_4.1.5</p>
    <p>
      <blockquote type="cite">WARNING: Host distribution "Ubuntu-16.10"
        has not been validated with this version of the build system;
        you may possibly experience unexpected failures. It is
        recommended that you use a tested distribution.<br>
        Loading cache: 100%
|#################################################################################################################|
        Time: 0:00:00<br>
        Loaded 3485 entries from dependency cache.<br>
        ERROR: Nothing PROVIDES 'zeromq_4.1.5'<br>
        <br>
        Summary: There was 1 WARNING message shown.<br>
        Summary: There was 1 ERROR message shown, returning a non-zero
        exit code.<br>
      </blockquote>
    </p>
    <p><br>
    </p>
    <p>Thanks,<br>
      <br>
    </p>
    <p><br>
      <br>
    </p>
    <p><br>
    </p>
  </body>
</html>

--------------B7B871D3FDCB64F2C88C9583--
