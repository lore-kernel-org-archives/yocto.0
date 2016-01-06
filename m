Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 237B2E00BBC; Wed,  6 Jan 2016 14:42:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 020D0E00863
	for <yocto@yoctoproject.org>; Wed,  6 Jan 2016 14:42:53 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u06MgqWY010147
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 6 Jan 2016 14:42:52 -0800 (PST)
Received: from Marks-MacBook-Pro.local (172.25.36.231) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.248.2; Wed, 6 Jan 2016 14:42:51 -0800
To: <yocto@yoctoproject.org>
References: <CAK18fxF5d+7JecsEHM=wGWGfzeyZPTVKbLbfygNqNoEcjnce0A@mail.gmail.com>
	<CAK18fxGSYtduY0xv8aF8hYWJORmZwdMxw2TAgf3XS5_u+sKBWQ@mail.gmail.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <568D986B.5040303@windriver.com>
Date: Wed, 6 Jan 2016 16:42:51 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.5.0
MIME-Version: 1.0
In-Reply-To: <CAK18fxGSYtduY0xv8aF8hYWJORmZwdMxw2TAgf3XS5_u+sKBWQ@mail.gmail.com>
Subject: Re: Layer manifest (topic touched at ELCE)
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
X-List-Received-Date: Wed, 06 Jan 2016 22:42:57 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 1/6/16 2:41 PM, Andrei Gherzan wrote:
> Hello all,
> 
> We started a discussion at the last ELCE: layer manifest in a machine parsable
> format. I'll make a short summary on what is this about.
> 
> In the current yocto layers structures, the only way to describe a layer is
> through README. Which provides useful information like layer dependencies,
> available targets, maybe available machines etc. First of all this information
> is not standardized in any way and not machine parsable. So is not an uncommon
> situation to get a BSP yocto layer and have no idea what to do without actually
> looking into it. As well, there is no way of automating, for example, cloning of
> dependencies or any other kind of automations. 
> 
> Now the questions is, would it make sense to define a layer manifest where a
> layer would be fully described in a machine parsable way? Does yocto community
> feel the need of such a file and maybe additionally have a script which would be
> able to parse such a manifest and setup a build environment?  

From a dependency perspective, there is a method to define layer dependencies.
If that is used properly it can help.  The problem I see though is the namespace
for layer dependencies is not really defined.

But using a combination of the defined dependencies and the layer index you
should be able to resolve "known" layers.  (Would also be nice if the index
looked for collisions as well...)

--Mark

> --
> Andrei Gherzan
> 
> 
> 


