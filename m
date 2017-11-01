Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2EFAE00CD0; Wed,  1 Nov 2017 06:49:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCBE3E00CC4
	for <yocto@yoctoproject.org>; Wed,  1 Nov 2017 06:49:20 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id vA1DnF4w028967
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 1 Nov 2017 06:49:15 -0700 (PDT)
Received: from soho-mhatle-m.local (172.25.36.231) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Wed, 1 Nov 2017 06:49:14 -0700
To: Pavlina Varekova <varekpaf@seznam.cz>
References: <5Tg.NNol.1AtvAv25bON.1PvACL@seznam.cz>
	<b62ec672-bddb-cf0f-759e-38ceb026f190@windriver.com>
	<7kt.NN5y.5gRUOroOgV0.1P{P4x@seznam.cz>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <184c8e3c-b5ee-54dd-6d06-42cd5d5f440e@windriver.com>
Date: Wed, 1 Nov 2017 08:49:14 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
	Gecko/20100101 Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <7kt.NN5y.5gRUOroOgV0.1P{P4x@seznam.cz>
Cc: yocto@yoctoproject.org
Subject: Re: pseudo - few general questions
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
X-List-Received-Date: Wed, 01 Nov 2017 13:49:22 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 11/1/17 4:17 AM, Pavlina Varekova wrote:
> Hi,
> thank you very much. It sounds good. So I tried replace fakechroot with pseudo.
> I read man pages and replace:
> 
> FAKECHROOT_BASE="${DIR1}" fakechroot  command
> 
> with:
> 
> %{PATH/TO/PSEUDO/}bin/pseudo  -r "${DIR1}" -P %{PATH/TO/PSEUDO/} command
> 
> But it does not work good. Probably some variable is set differently.
> Please is the replacement correct?
> 
> Pavlina

I always run pseudo, then once the shell opens then run 'chroot <path>' within
pseudo.

The system will still execute commands outside of the 'chroot', but any
application looking at the file filesystem will appear to be constrained.

--Mark

