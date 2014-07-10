Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5013DE00563; Wed,  9 Jul 2014 22:49:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DC4AE003C1;
	Wed,  9 Jul 2014 22:49:55 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s6A5nrf5024261
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 9 Jul 2014 22:49:53 -0700 (PDT)
Received: from [128.224.162.181] (128.224.162.181) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.169.1;
	Wed, 9 Jul 2014 22:49:52 -0700
Message-ID: <53BE297E.2090602@windriver.com>
Date: Thu, 10 Jul 2014 13:49:50 +0800
From: Robert Yang <liezhi.yang@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: jags gediya <jags.gediya@gmail.com>, <meta-freescale@yoctoproject.org>,
	<yocto@yoctoproject.org>
References: <CAP3RZog91TKaZgjCiDFQhZZaYT8ukVjTE8HZ5pVz9Bz6Jm2J5g@mail.gmail.com>
In-Reply-To: <CAP3RZog91TKaZgjCiDFQhZZaYT8ukVjTE8HZ5pVz9Bz6Jm2J5g@mail.gmail.com>
Subject: Re: unable to get checksum SRC_URI file could not be found
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
X-List-Received-Date: Thu, 10 Jul 2014 05:49:59 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit



On 07/10/2014 01:16 PM, jags gediya wrote:
> I am building yocto for freescale imx6sl evolution kit. For checking
> in source code on svn , i have deleted all .git and .gitignore from
> the meta directories. Then i have checkout the source code, and tried
> to build that. While building i am getting the warning
>
> Unable to get checksum for rfkill SRC_URI entry
> dont.call.git.rev-parse.on.parent.dir.patch: file could not be found
>
> What can be the reason of it?

It can't find the dont.call.git.rev-parse.on.parent.dir.patch, there should
be a line like:

SRC_URI ="file://dont.call.git.rev-parse.on.parent.dir.patch"

Try to grep dont.call.git.rev-parse.on.parent.dir.patch in the meta layers.

> Will it create any problem?

Yes, it would cause problems if you build the recipe.

// Robert

>
> Thanks,
> Jags
>

