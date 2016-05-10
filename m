Return-Path: <dfldashgkv@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5AF98E00D31; Tue, 10 May 2016 05:13:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (shiftee[at]eircom.net)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB41CE00D29
	for <yocto@yoctoproject.org>; Tue, 10 May 2016 05:13:12 -0700 (PDT)
Received: by mail-wm0-f44.google.com with SMTP id e201so175215682wme.0
	for <yocto@yoctoproject.org>; Tue, 10 May 2016 05:13:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:message-id:subject:from:to;
	bh=apQtma+Am0YNHeu3syv67ZYzgqnuSIdPZb/uLMLM9rw=;
	b=rNmAnSDRUpbGxnT9A7AoqqulxjuzVuB1i0w48fITFpNutwLkBGyGhtzxZ7cKol1kf0
	BP+ZMVvij/KhAJ4lgZKbUg2k7x0BgR5sDZPebLCgmw944SMgqHXBQ3xY8yYDMG6rwbpw
	2q33Eh6rHRpfUsws9f7UWYMpLfKXOgFYR+Bn1EWVzfroVwqmW7GcVfV4T1ezrlsoZ3Uh
	rqeVQCtzhErEL5UdJmh+LNtT5yYCMaPpDJ0Jw6Wugh81pb2QmGISmBxUZJGmmXiiSrPA
	bpQQKEINDRbwDPPzbCIm6BUvY/LAPZwQJV/V7RHUbBZGKk/ChCZy1LA+nmu3ZXnvYBz9
	O2MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:date:message-id:subject:from
	:to; bh=apQtma+Am0YNHeu3syv67ZYzgqnuSIdPZb/uLMLM9rw=;
	b=OACiCUUEP0E8e2nOPXshb2GaWzfmzykAQakb6w2XkP3chjLxjiRF26lPoFBZgC7Lpp
	SYTuG5CzB7rBNVyuMI/WXqBXKNAYQOWJOsfsxLfK+2yGUN4g/e1YKTT7nvPTr5EJPnej
	cYBxhoaTX97op2GdqBYE7hNp5hU7bjeNez9TiZ+DF6UEk3hwGZyLql/NAnUUkmF63/ZZ
	QZVOgokFgzE15zC4aPLoNpAQM8nJM7Y9+4OQupTYs0vWVn8NWwp5jWoPas3k07u+QNbZ
	dI5qiYn5PRVFlENEv4/UO8iyIObS1iYD2m0wW8ItB8tNfyfbTT4EZ61qUpqvT3LhcBs8
	zX+g==
X-Gm-Message-State: AOPr4FW1bg2x8U6rDeVoNN9oMKS186qZgE81QRl3G9Z1SqUMxpY/d6IyY8St64ErmYlJDWMxalhoeSS/7D4PjA==
MIME-Version: 1.0
X-Received: by 10.194.108.197 with SMTP id hm5mr39195804wjb.167.1462882391637; 
	Tue, 10 May 2016 05:13:11 -0700 (PDT)
Sender: dfldashgkv@gmail.com
Received: by 10.28.64.4 with HTTP; Tue, 10 May 2016 05:13:11 -0700 (PDT)
Date: Tue, 10 May 2016 13:13:11 +0100
X-Google-Sender-Auth: CXLrMI3Qq87Jk1OOwA6w0u0cnCc
Message-ID: <CAJv4cO0cG=CeaoN-iP5D7NG+Gis9Q_HhxWYgcwLCWj94pLvctQ@mail.gmail.com>
From: "Mark O'Donovan" <shiftee@eircom.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: OpenSSH issue in Krogoth
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
X-List-Received-Date: Tue, 10 May 2016 12:13:16 -0000
Content-Type: text/plain; charset=UTF-8

Krogoth and Jethro behave differently when I ssh into them using a
script like so

ssh root@krogoth << EOF
ls
EOF

ssh root@jethro << EOF
ls
EOF


Both behave as expected if this format is used:

$ ssh root@krogoth 'ls'



#
# Jethro: This works and lists a file called core
# OpenSSH_7.1p1, OpenSSL 1.0.2d 9 Jul 2015
#
$ ssh root@jethro << EOF
ls
EOF
Pseudo-terminal will not be allocated because stdin is not a terminal.
core
$


#
# Krogoth: First run after reboot - fails to run the command and
prints garbage after the prompt
# OpenSSH_7.1p2, OpenSSL 1.0.2g  1 Mar 2016
#
$ ssh root@krogoth << EOF
ls
EOF

Pseudo-terminal will not be allocated because stdin is not a terminal.
$ ;205R


#
# Krogoth: Subsequent runs - fails to run the command and prints
garbage before and after the prompt
#
$ ssh root@krogoth << EOF
ls
EOF
Pseudo-terminal will not be allocated because stdin is not a terminal.
^[[56;205R$ ;205R


Should I report this as a bug?

Regards,
Mark

