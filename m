Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF6F9E007F2; Wed, 28 Mar 2018 04:18:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f182.google.com (mail-qt0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6331E00529
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 04:18:34 -0700 (PDT)
Received: by mail-qt0-f182.google.com with SMTP id w12so2091679qti.4
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 04:18:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=O0X+9NTaFwGbCqcgGMWwUMgq6PZ0JDl8hu4c3FKqTzM=;
	b=MZc7pZQf0LS+C2Ivex5LmVYzSw4qW2ddBXbBwpFSmzCOKoaIm1maDLNyzTmoLhKMTQ
	deT5kKawC7qFi2bkm8Z1GP/sg+pY/bJ6Revv3l9janIrsWFXLC8Ap6CsVH/irFGcVoLJ
	m3ZJ3cBdx4s9KnZ6+G0XG6+6YXxIczIAWKDa6JdWHR7I4tAk+M425GnR1GJjrVamJcjx
	xPHigN/NgNhkBZVjha8nEkzwvUkrnYyA0b0zq4gsDQHgVUp5dRnlDQ0RxnK4ZtM5Kp57
	T5p6GA9Kmc8P2XCybge92Amm73suCYi/628P0Mp+wxOdvcoeYYAXH/4omdhLXcet63cj
	JCQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=O0X+9NTaFwGbCqcgGMWwUMgq6PZ0JDl8hu4c3FKqTzM=;
	b=gmYVk8xBaBsmHC7WFT3Oi62NIqnmzQBGFWQiewE/zOKpqHzrV0X7tgYHv2TEyKPseo
	MPGu9DUkdu6okv5osp7Ucn+j4DSB1ZxIJJKuqSl395yFcLvux9uCE8NKuHTlxnNakmtz
	4KwoyXNqQZMWlKQV86IJMU0E57xagm04U7AA8G7G+HbXpQEZ7f55GNuiD3Y2VoMlJCcH
	Ah5of5t8ngqlXXOyQNeHkZUNS79wigc5H3mGQMKFUU5XHusJB6QB9q/v4ZjhUP5DsNpX
	WJHIWHNpy1o7IwQC7AKVYdwRfFh9gSp4+Xmt+jQt2r9fjkcLhCvNLQU7VjE1m6otaSSX
	WmzQ==
X-Gm-Message-State: AElRT7EJ0tbvXc2tiVbdmcT7dLfEnNnhF1G2st/Flp3/KBUdkaSgWO6w
	3JnwslStBclTW8VW1hX3/ZqwHteM4rK/6pAzQ+5N6g==
X-Google-Smtp-Source: AIpwx4+m1+FNmhahwy2bHtqhxUl7SJekghCqfgRF79LsIV5RmFBCPUJ2B2abUf/0lrp1DBSaWqA6HB/KXAhKnkL4ong=
X-Received: by 10.200.16.20 with SMTP id z20mr754813qti.105.1522235913689;
	Wed, 28 Mar 2018 04:18:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.130.100 with HTTP; Wed, 28 Mar 2018 04:18:33 -0700 (PDT)
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 28 Mar 2018 13:18:33 +0200
Message-ID: <CAGAf8Lyfz2oZ9EgWmZ1km4qQn-Kdaqh_1q+jvfv1anR-HLZXiw@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: ssh-copy-id is part of which package?
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
X-List-Received-Date: Wed, 28 Mar 2018 11:18:36 -0000
Content-Type: text/plain; charset="UTF-8"

Hello to all,

Seems, that command:
IMAGE_INSTALL_append = " openssh"

Does install ssh, sshd, but not a ssh-copy-id?!

Strange... ssh-copy-id should be part of the openssh!?

http://lists.openembedded.org/pipermail/openembedded-commits/2015-January/170233.html

root@beaglebone:/root# which ssh-copy-id
root@beaglebone:/root# which ssh
/usr/bin/ssh
root@beaglebone:/root# which sshd
/usr/sbin/sshd
root@beaglebone:/root#

Thank you,
Zoran

