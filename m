Return-Path: <f_l_k@t-online.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BAF53E00A71; Mon, 10 Apr 2017 06:39:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [194.25.134.83 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [194.25.134.83 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0007]
X-Greylist: delayed 426 seconds by postgrey-1.32 at yocto-www;
	Mon, 10 Apr 2017 06:39:47 PDT
Received: from mailout07.t-online.de (mailout07.t-online.de [194.25.134.83])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70DE4E009AA
	for <yocto@yoctoproject.org>; Mon, 10 Apr 2017 06:39:47 -0700 (PDT)
Received: from fwd24.aul.t-online.de (fwd24.aul.t-online.de [172.20.26.129])
	by mailout07.t-online.de (Postfix) with SMTP id 2692D4210131
	for <yocto@yoctoproject.org>; Mon, 10 Apr 2017 15:32:38 +0200 (CEST)
Received: from [192.168.2.106]
	(VgHHhGZcoh4KW3xbepcFPQy3vFypymn5EcuqDZK+394f3BmMNXi1Y5+Q5toPx4dZsP@[84.134.215.159])
	by fwd24.t-online.de with (TLSv1.2:ECDHE-RSA-AES256-SHA encrypted)
	esmtp id 1cxZQp-15BQqe0; Mon, 10 Apr 2017 15:32:35 +0200
To: yocto@yoctoproject.org
From: Markus Volk <f_l_k@t-online.de>
Message-ID: <63327293-f410-0ef4-f64f-ccb8e1f77545@t-online.de>
Date: Mon, 10 Apr 2017 15:32:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
X-ID: VgHHhGZcoh4KW3xbepcFPQy3vFypymn5EcuqDZK+394f3BmMNXi1Y5+Q5toPx4dZsP
X-TOI-MSGID: 4637e7c9-7027-4b80-81fa-a070456c8db0
Subject: unpacking deb packages
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
X-List-Received-Date: Mon, 10 Apr 2017 13:39:49 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi all,
i´m building  for x86_64 using the recent master branch and encounter 
problems when fetching deb packages.
With any .deb file inside SRC_URI the task do_unpack stops with this output:

... data.tar.xz && tar --no-same-owner -xpf data.tar.xz && rm 
data.tar.xz failed with return value 2
if i  retry building the same recipe for 1-5 times without any change 
the task sometime completes without errors

can anyone confirm this?

Thank you,
Markus

