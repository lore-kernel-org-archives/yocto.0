Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62221E00C75; Tue, 29 Nov 2016 00:32:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HEXHASH_WORD
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HEXHASH_WORD Multiple instances of word + hexadecimal hash
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE042E00C4F
	for <yocto@yoctoproject.org>; Tue, 29 Nov 2016 00:32:43 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id E7ADF68A019; Tue, 29 Nov 2016 08:32:41 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 732B068A019;
	Tue, 29 Nov 2016 08:32:41 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id BA8F767402F9;
	Tue, 29 Nov 2016 09:32:40 +0100 (CET)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <aedf3ef5-7d6a-6c21-42da-adcd40199a9a@mlbassoc.com>
Date: Tue, 29 Nov 2016 09:32:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
Subject: New error
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
X-List-Received-Date: Tue, 29 Nov 2016 08:32:45 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I recently updated my Poky/Yocto repo to 12a0ee049e453b6d0d2ce2f3fa981d1b6e02bd78 and now I'm seeing
messages like this:
   ERROR: When reparsing /local/poky-cutting-edge/meta/recipes-core/base-files/base-files_3.0.14.bb.do_install, the
   basehash value changed from 3c2401cc61fce5eb899de19dbf78862f to 558516a74162944aff656a7d01321b12. The metadata is
   not deterministic and this needs to be fixed.

Any ideas what this means and what could cause it?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

