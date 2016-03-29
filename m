Return-Path: <kaimi2005@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8618E0096D; Tue, 29 Mar 2016 07:03:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_20,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kaimi2005[at]yahoo.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [98.138.229.119 listed in list.dnswl.org]
	* 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
	digit *      (kaima ko <kaimi2005[at]yahoo.com> )
	* -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.0796]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm36-vm7.bullet.mail.ne1.yahoo.com
	(nm36-vm7.bullet.mail.ne1.yahoo.com [98.138.229.119])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9528E00931
	for <yocto@yoctoproject.org>; Tue, 29 Mar 2016 07:03:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1459260205; bh=dhMFXfcSfa6lweBhyugs2m9ivDPEzIS6kMGse/K8Sm8=;
	h=Date:From:Reply-To:To:Subject:References:From:Subject;
	b=OkqhA9Ose1rYW+5oELffr3s9kSu+3tSLxo5kCn5ubQUA/JQkrEk8ORCkqjtxb4G6KLIu/GUPLTyc4jQ4si54rQQQhEWo6bGUW31Lj94DYRMIyxLi1Ds6u54vML7AkXkIv84VlqUoq3KcaEWDuAZfF8tX5r6rx6k84DPJ9Oywr2J1/E8MuyKySThHmEdRtNmO+DsjIXsxHK/p6iDaVFQiKn5eLE146tgv0ihA0XbXWgm57hwSMa3JRwV0qxb3/ZmryLFJ6th4R2h7gEFVjdMRjRObMMztOs9GWUKVFlnDiZBOXba3vpdnTCuJlkCYhdBGHuaxRqNVs2deYW0GlgBF5w==
Received: from [127.0.0.1] by nm36.bullet.mail.ne1.yahoo.com with NNFMP;
	29 Mar 2016 14:03:25 -0000
Received: from [98.138.100.111] by nm36.bullet.mail.ne1.yahoo.com with NNFMP;
	29 Mar 2016 14:00:25 -0000
Received: from [98.139.215.140] by tm100.bullet.mail.ne1.yahoo.com with NNFMP;
	29 Mar 2016 14:00:25 -0000
Received: from [98.139.212.242] by tm11.bullet.mail.bf1.yahoo.com with NNFMP;
	29 Mar 2016 14:00:25 -0000
Received: from [127.0.0.1] by omp1051.mail.bf1.yahoo.com with NNFMP;
	29 Mar 2016 14:00:25 -0000
X-Yahoo-Newman-Property: ymail-4
X-Yahoo-Newman-Id: 371362.22764.bm@omp1051.mail.bf1.yahoo.com
X-YMail-OSG: TJifqhMVM1lidgct7CzpmNUdmo_ly23n1wtUraSCNY8SQSkxfYSZMX4IPR.3ODC
	JvTrlREbq2OjYz5RvRmrkfnq6auGqGV5hPe6XeiN8WjiJUDoQqS.75ucd207llqxMlWRVSQPhmE1
	XZY2lHf_tehl6OWKWKA7xcD.7j0YxFgjP8noxoER2rT7FtHP66OGRp9nuHfmELc3d0NBxZFrDbro
	W.oq4GR3wqXAnKPb0p1RZTfg3ZO7RcYcxwfct4dvhSi1AD77jLdtZ9.Ms309y0HRZowGbRh.3Rvg
	lTx9zfPgXKDr6cXXkdMnxn7Mk9haSKIgLXMtAjwd_48CcnMLEx0qGuQYowUsracufaXst8Xj.AfY
	7W1c4bEDw9y6gTcytvVG2q1gpg745GBEIvY.pEDWEbV10pyqVE0A42DJOoj7bDR9qjta3_oPUvu2
	iSPBk8KGAA.v3QETi9rsVnwfMBW0Argke0qY2ewHuq7ZS.s3N5jivzbL09VXqBbZSVPPrRByss94
	KWtoKHnn2_MLiaDyqe8w-
Received: by 66.196.81.110; Tue, 29 Mar 2016 14:00:24 +0000 
Date: Tue, 29 Mar 2016 13:59:38 +0000 (UTC)
From: Kaima Ko <kaimi2005@yahoo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1204967123.1811821.1459259978208.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
References: <1204967123.1811821.1459259978208.JavaMail.yahoo.ref@mail.yahoo.com>
X-Mailman-Approved-At: Tue, 29 Mar 2016 11:28:37 -0700
Subject: bitbake: display info for features in MACHINE_FEATURES and DISTRO_FEATURES
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Kaima Ko <kaimi2005@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 29 Mar 2016 14:03:28 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello list members,

Is there a bitbake command to display what involve in one specific feature declared in
MACHINE_FEATURES or DISTRO_FEATURES?

For example, I have these items in my MACHINE_FEATURES:
$  bitbake -e | grep MACHINE_FEATURES=
MACHINE_FEATURES="kernel26 usbgadget usbhost vfat ext2 screen alsa ethernet can touchscreen wlan rtc"

bitbake-layers show-recipes could show the related recipe for "screen":
$ bitbake-layers show-recipes | grep screen
Parsing recipes..done.
qt5ledscreen:
sato-screenshot:
screen:


But bitbake-layers show-recipes showed nothing for "kernel26", "usbgadget", "usbhost", "vfat", etc.
Which command I can use to obtain some info about these features, for example which packages/recipes were defined for the features?

Thanks in advance and regards,
Kaimi

