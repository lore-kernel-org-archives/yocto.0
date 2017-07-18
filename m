Return-Path: <jdamon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01D1DE00BAB; Tue, 18 Jul 2017 09:40:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jdamon[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.48 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f48.google.com (mail-pg0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86B22E00B67
	for <yocto@yoctoproject.org>; Tue, 18 Jul 2017 09:40:52 -0700 (PDT)
Received: by mail-pg0-f48.google.com with SMTP id v190so15680883pgv.2
	for <yocto@yoctoproject.org>; Tue, 18 Jul 2017 09:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language;
	bh=P1Df8pYu0FMIlIi4RS96/jKIP5jX0O+z89nEvpZemjQ=;
	b=anBBbmzHTu31mo8Z8HTMugSnsF06sOFI8gU2Ycyo5kJXaDPMWIOkLvra7zIYdHRofY
	PjM4icsV7+050wTKoC14hngIpwuGoJGm7UlHhcEsQm6LW+6Ig+ufQ4OdLVsMHci3D6bj
	9BQoyNGq4Zv0jjjcg2jDWXMwV2Zbg1DEV27JgkxS3aFmZvHh1aEASp0xRCkyh7SldYaC
	t4jKC4EdgDQ9EoFBKBWce2C4DUWNNNPviw8dcZSVqqro+Nm/PdY+k7zlikJgDXEdEgH9
	wY5897cflwFxfN4U1qVbkN18+AMxgNzDokESUnOPuLer9RrsVJYoZwUHMpHF7OTb/20X
	Egdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language;
	bh=P1Df8pYu0FMIlIi4RS96/jKIP5jX0O+z89nEvpZemjQ=;
	b=dOktX73SCfya0xGB//Wl68nQtWbi9RlA4G6gmAQR6XeMmxnVcLM9LwjHSiex5uQGyh
	FCG2jNjGMJAiRjvq2zoXNyuukIy9N/8mfKxylZmFnPfEiZdJPQeXcFX0QJxay+DdtqBV
	n20HK1YpuBPDCyyG7qCa8LDRqJlrmxzpCjox19bo1NK391wZJAwt6kxnJ1nu9q9cvxvc
	+bvQF/47OozqkqDIUzAYkYUz0w7n9LJBm5qYjcVu6SVODmz/XgUezxEKaJ/7I/HCa3HG
	ar5MU0RYsBF8w0ReEmzMP0HqHvNTRxreXF7KLG4LPMeZ5dNe5SSr3ZQ/6ecvQ+IC/oXe
	kYyg==
X-Gm-Message-State: AIVw112Ckn3cSAKjwekJHtcUIUwPT8+qkjGL0S1yKo5Hluz2gRBmtNdu
	3R5ZeFG6aIC2thwppKs=
X-Received: by 10.84.232.6 with SMTP id h6mr2665174plk.173.1500396051453;
	Tue, 18 Jul 2017 09:40:51 -0700 (PDT)
Received: from [10.0.0.98] ([216.84.176.126]) by smtp.gmail.com with ESMTPSA id
	o62sm5953676pfg.120.2017.07.18.09.40.50 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 18 Jul 2017 09:40:50 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Jimi Damon <jdamon@gmail.com>
Message-ID: <a76f0673-66cb-6c0a-8b55-faedf0cc1821@gmail.com>
Date: Tue, 18 Jul 2017 09:40:52 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
Subject: Proper way to rename a downloaded file in SRC_URI
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
X-List-Received-Date: Tue, 18 Jul 2017 16:40:53 -0000
Content-Type: multipart/alternative;
	boundary="------------99F952FABF4575638087CB33"
Content-Language: en-US

--------------99F952FABF4575638087CB33
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I have a recipe that I built for building jzmq, however one of the 
issues I have is with the naming of the release files from the github site.

Unlike czmq which has downloads ( zip and tar.gz ) that are named 
czmq-${PV}.tar.gz, the downloads from jzmq are just called v${PV}.tar.gz.


How can I rename this file upon download so that the filename is in fact 
unique to this package ?

I can definitely see that the file v3.1.0.tar.gz in my downloads 
directory is not unique and could conflict with another package that is 
similarly named for its releases.


My workaround right now is to use the specific SHA string and use the 
git:// protocol, but it would be a bit easier to just use the released 
version and change the filename for saving it in downloads.





--------------99F952FABF4575638087CB33
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><font face="Monaco">I have a recipe that I built for building jzmq</font>,
      however one of the issues I have is with the naming of the release
      files from the github site.</p>
    <p>Unlike czmq which has downloads ( zip and tar.gz ) that are named
      czmq-${PV}.tar.gz, the downloads from jzmq are just called
      v${PV}.tar.gz. <br>
    </p>
    <p><br>
    </p>
    <p>How can I rename this file upon download so that the filename is
      in fact unique to this package ? <br>
    </p>
    <p>I can definitely see that the file v3.1.0.tar.gz in my downloads
      directory is not unique and could conflict with another package
      that is similarly named for its releases.</p>
    <p><br>
    </p>
    <p>My workaround right now is to use the specific SHA string and use
      the git:// protocol, but it would be a bit easier to just use the
      released version and change the filename for saving it in
      downloads.</p>
    <p><br>
    </p>
    <p><br>
    </p>
    <p><br>
    </p>
  </body>
</html>

--------------99F952FABF4575638087CB33--
