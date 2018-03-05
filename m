Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75899E00E4D; Mon,  5 Mar 2018 06:09:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BB29E006B4
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 06:09:22 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w25E9I6x029044
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 5 Mar 2018 06:09:19 -0800 (PST)
Received: from server.local (128.224.20.85) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.361.1;
	Mon, 5 Mar 2018 06:08:41 -0800
To: "EXTERNAL van Riel Rob (ENTER, BT-CO/ENG1.1)"
	<external.Rob.vanRiel@nl.bosch.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <84f7a513eb7140518cc715c1e3d4bf9e@nl.bosch.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <55456292-ab67-8e2c-f4eb-88293d29d25d@windriver.com>
Date: Mon, 5 Mar 2018 09:09:11 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
	Gecko/20100101 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <84f7a513eb7140518cc715c1e3d4bf9e@nl.bosch.com>
Subject: Re: bitbake: git and patch problem
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
X-List-Received-Date: Mon, 05 Mar 2018 14:09:23 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2018-03-05 5:33 AM, EXTERNAL van Riel Rob (ENTER, BT-CO/ENG1.1) wrote:
> I'm experiencing strange (at least to my eyes) behaviour from bitbake. My recipe specifies a git repository as the main SRC_URI, then, in a variant created using an append file adds a patch like this:
> 
> SRC_URI_append_mystuff += "file://mystuff.patch"
> 
> As expected, this grabs the sources from the git repository, and then applies the patch. Rather unexpectedly to me, and also rather inconveniently, it then adds and commits the changes to the local git clone.

Out of curiosity .. why is that unexpected, or inconvenient ? I never
want a git repository to have dirty/unchecked in files, so having the
build system apply a patch, make sure it is a valid format, signed-off-by
and then committed is a good thing.

> 
> Is this expected behaviour, and if so, is there any way to prevent it?

It is, but you can change what applies the patch.

Have a look at classes/patch.bbclass, and in particular the variable
PATCHTOOL.

If yours is set to 'git', git will be used. But by default, it is
typically set to 'quilt' .. so it has been changed from the default
in your environment.

Bruce

> 
> My environment is based on poky-fido-13.0.1.
> 
> Best regards,
> 
> Rob van Riel
> 


