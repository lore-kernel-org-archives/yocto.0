Return-Path: <john.rama01@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62023E00B9D; Fri, 30 Jun 2017 08:19:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (john.rama01[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.177 listed in dnsbl.sorbs.net]
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26677E00B28
	for <yocto@yoctoproject.org>; Fri, 30 Jun 2017 08:19:02 -0700 (PDT)
Received: by mail-io0-f177.google.com with SMTP id h64so25807072iod.0
	for <yocto@yoctoproject.org>; Fri, 30 Jun 2017 08:19:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=97KLuVU7xbd3oGw8ji6mok3Zi/tW0w4tn34BsUdJDh4=;
	b=UbA4SibyZTfSAcYKlcy2xMu/uZkIIecLVQvvQMCVNXp4jjT0LTJhjn7rnnTyrCrq/Z
	4NXWmYMaJGv79C9hGiYPH+pPVraGHmKAHbu62zt2hvZBH2ZxUu1K6jYb9kXwOXLUib7E
	bkYY3C/SE8rS0W5KDmFj3uNMgsvPLAcw5wd2mVtIy18cXxy5aMwjmukeDzd/tU7R/kuv
	NnDVcSRYQM2UIPB+uhyWxyCRhjAXluhT3cFU7atBvlHS10nyshBR6Kz3PMTEvx64GobB
	CdR8+Nn7I5AkeSkbjBzft82BnEQXXIK9LMd1TtRMxvnQVRqtGouctqyLwG4DeetlzcY1
	PPvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=97KLuVU7xbd3oGw8ji6mok3Zi/tW0w4tn34BsUdJDh4=;
	b=cDqDHZo8t/sAcZEzsnxoq1lN8aLgb90xCitGyrDrJHBAep2UsvdZUC35ABrVsRHlmT
	se0Dzn4W6XJFa4O6xFXu0yww/9DQjqhmTSNx64O87JWv6+/w+f9M9Ji9Dmr22fiehtyR
	Hv0SPT4l3CqqLwcaldlAljWI9zLoeOOEFgiAFAki9QN40KJj4+zX+WTZH1XIBcw95F1e
	CXLYhF56ZWuKGshg07IUWf6TfboGg/AJHramaasxEtDhqVvQEZI1pgdlOYnM4859+RWL
	c5601UA0RbianrAtQ/WzLZZyJekyCan5IgobRNhVueXwDNvjyqWxZDS1r/5wPTTcTi6g
	Xz0g==
X-Gm-Message-State: AIVw113MHqpp3+h5TmGVyH8v7ZuKPDb2VRb7h1TF8OamNdMvoF6Y3aKK
	ViBKh32Ryc7ca2TP
X-Received: by 10.107.170.212 with SMTP id g81mr8733178ioj.19.1498835942018;
	Fri, 30 Jun 2017 08:19:02 -0700 (PDT)
Received: from [192.168.43.29] (50-77-232-178-static.hfc.comcastbusiness.net.
	[50.77.232.178]) by smtp.googlemail.com with ESMTPSA id
	88sm4335684ioi.5.2017.06.30.08.19.01 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 30 Jun 2017 08:19:01 -0700 (PDT)
To: yocto@yoctoproject.org
From: John Rama <john.rama01@gmail.com>
Message-ID: <59566BE4.2040305@gmail.com>
Date: Fri, 30 Jun 2017 11:19:00 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.4.0
MIME-Version: 1.0
Subject: How to find out the rdepends of certain package
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
X-List-Received-Date: Fri, 30 Jun 2017 15:19:04 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hi, experts

I'm facing following problem, when building a image.

--------------------------------------------------------
The following packages have unmet dependencies:
 openssh-dev : Depends: openssh (= 7.1p2-r0.0) but it is not going to be installed
               Recommends: openssh-misc-dev but it is not installable
               Recommends: shadow-sysroot-dev but it is not installable
               Recommends: libcrypto-dev but it is not installable
               Recommends: openssh-sshd-dev but it is not installable
               Recommends: update-alternatives-opkg-dev but it is not installable
               Recommends: openssh-scp-dev but it is not installable
               Recommends: openssh-ssh-dev but it is not installable
               Recommends: openssh-sftp-server-dev but it is not installable
               Recommends: openssh-keygen-dev but it is not installable
               Recommends: openssh-sftp-dev but it is not installable
E: Unable to correct problems, you have held broken packages.
--------------------------------------------------------

I know this can be resolved by adding "openssh" to the IMAGE_INSTALL_append list.

But, I'm very curious which recipes try to use openssh-dev, or
which package depends on openssh-dev.

1. I just greped entire recipe tree with "openssh-dev", but there is no hit.
2. Run bitbake -g <image> option to generate the *-depends.dot file,
   then grepped with "openssh-dev", two hits. 
 
   package-depends.dot:31228:"openssh-staticdev" -> "openssh-dev" [style=dashed]
   pn-depends.dot:4474:"openssh" -> "openssh-dev" [style=dashed]

  However, these are not used by using the similiar method of #1 and #2.

Is there any good way to find out why openssh-dev is in the installed package list ?

John



