Return-Path: <vm.rod25@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10124E008F6; Wed, 25 Mar 2015 09:28:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vm.rod25[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2C11E008CF
	for <yocto@yoctoproject.org>; Wed, 25 Mar 2015 09:28:23 -0700 (PDT)
Received: by igbqf9 with SMTP id qf9so30051523igb.1
	for <yocto@yoctoproject.org>; Wed, 25 Mar 2015 09:28:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=c25G3vq5fCAnbX9GZNxvLrVrHcvQ8ybMJSlH9TNskL0=;
	b=z2NpAD/Rzqpmw22ehF9kNmka92WjuY/C4zbCp267iUvKtIpjJKmUvQ8Atvz4WSFnKa
	gu0YqsQZMve/SkCsMjZCGRpPdjHwwQXcsMOlbiiuBzRRoCO5bZex3/WS/aGkCzWm1hOx
	wu4M3ArKxH9bVUFToRB7qf7wFde0udvQlY0Tztmab4dhqIk/PB1OlmFfajmdpppvR+Sz
	2E/L5bvanjeM0oS+ZKlrR3jAPkg0vHmK+MKkOLWYrzIRNdyy2hhOPWtzImlpZsU9YFYo
	qO1qs+G6Y4152W28s5XT1iQ7Qz+MX5cS6F16Yur+VZWAGujFIVLrtsWzn9gJtJlBoB0C
	MIdQ==
MIME-Version: 1.0
X-Received: by 10.107.167.145 with SMTP id q139mr15248150ioe.16.1427300902551; 
	Wed, 25 Mar 2015 09:28:22 -0700 (PDT)
Received: by 10.50.249.133 with HTTP; Wed, 25 Mar 2015 09:28:22 -0700 (PDT)
Date: Wed, 25 Mar 2015 10:28:22 -0600
Message-ID: <CAK5mtewFh6rqfCkpUkBsuWJiZujgDvdSJS00ogKuDan133kCdg@mail.gmail.com>
From: Victor Rodriguez <vm.rod25@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: GCC 4.9 to 5.0
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
X-List-Received-Date: Wed, 25 Mar 2015 16:28:25 -0000
Content-Type: text/plain; charset=UTF-8

HI everyone

Does anybody knows if there is a best known method/plan/test suite for
moving from one version of gcc to another ?

I am in the middle of that painful task and wonder if yocto community
has a plan every time yocto do this switch

Thanks a lot for all the help

Regards

Victor Rodriguez

