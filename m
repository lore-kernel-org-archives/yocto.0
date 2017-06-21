Return-Path: <gandersson@genivi.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E879FE00BC4; Wed, 21 Jun 2017 00:37:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [38.101.164.234 listed in list.dnswl.org]
Received: from smtp1.genivi.org (smtp1.genivi.org [38.101.164.234])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 993BAE00BBF
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 00:37:35 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.genivi.org (Postfix) with ESMTP id 12A45103F00;
	Wed, 21 Jun 2017 00:37:34 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at smtp1.genivi.org
Received: from smtp1.genivi.org ([127.0.0.1])
	by localhost (smtp1.genivi.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gTiNIa4VKzEQ; Wed, 21 Jun 2017 00:37:32 -0700 (PDT)
Received: from linuxlap.lan (217-211-99-246-no148.bredband.skanova.com
	[217.211.99.246])
	by smtp1.genivi.org (Postfix) with ESMTPSA id 66E5A103EFF;
	Wed, 21 Jun 2017 00:37:30 -0700 (PDT)
Message-ID: <1498030640.8095.27.camel@genivi.org>
From: Gunnar Andersson <gandersson@genivi.org>
To: Riko Ho <antonius.riko@gmail.com>, Khem Raj <raj.khem@gmail.com>
In-Reply-To: <8525501f-954a-8799-957c-f68efc4d7d5b@gmail.com>
References: <mailman.66247.1497786545.15860.yocto@yoctoproject.org>
	<1497809434.2788.77.camel@genivi.org>
	<7ee7dd60-a45d-350d-b213-0917fe6e32cb@igalia.com>
	<CAMKF1sr-5mxP2_WCXtvnfzMt4OgUAf_V2ZhLQFgQAqGMbPDovQ@mail.gmail.com>
	<dd9e6cf6-dcd3-9e90-2275-323b5c9fd0b6@gmail.com>
	<CAMKF1sp_5+1N_+okGXxZMREir62snRDk+BtbwDMz+t5SUYo5pg@mail.gmail.com>
	<61e45e0b-1fda-ecf5-51eb-437284c94d02@gmail.com>
	<CAMKF1soeiztrJEjDzLJ5k3t3QzyuK7qqJ-orW+1SPBR1b-oswg@mail.gmail.com>
	<8525501f-954a-8799-957c-f68efc4d7d5b@gmail.com>
Organization: GENIVI Alliance
Date: Wed, 21 Jun 2017 09:37:20 +0200
Mime-Version: 1.0
X-Mailer: Evolution 3.22.1 (3.22.1-2.fc25) 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Compiling meta-browser ==>chromium ? cleaning ?
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
X-List-Received-Date: Wed, 21 Jun 2017 07:37:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2017-06-21 at 12:42 +0800, Riko Ho wrote:
> did I put it wrongly ?
...
> browser/chromium/chromium_54.0.2810.2.bb:7: unparsed line:
> 'EXTRA_OEGYP_prepend = " -Dcomponent=shared_library

Maybe your line break did not use a backslash?  It was lost, or just
assumed, in Khem's example.   

See recipe syntax in Yocto manual [1].  Look for the item "Line
continuation".

HTH
- Gunnar

[1] http://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#un
derstanding-recipe-syntax

-- 
Gunnar Andersson <gandersson@genivi.org>
Development Lead
GENIVI Alliance



