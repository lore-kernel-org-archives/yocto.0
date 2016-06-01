Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94BFBE004F1; Wed,  1 Jun 2016 09:21:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2018EE00474
	for <yocto@yoctoproject.org>; Wed,  1 Jun 2016 09:21:49 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u51GLliH004685
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Wed, 1 Jun 2016 09:21:48 -0700
Received: from soho-mhatle-m.local (172.25.36.229) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Wed, 1 Jun 2016 09:21:47 -0700
To: Oleksandr Poznyak <oleksandr.poznyak@gmail.com>, <yocto@yoctoproject.org>
References: <CAEeWub+cVQYTwub5Gk6BLhMR0+6+VpALkpHLyAMg4oArX2iBTQ@mail.gmail.com>
	<CAEeWubLs_Gzh9p8WcjDOU=TmKU1vVMY3x_+GCG8c9a4c0Ce9CA@mail.gmail.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <12cece0b-c853-26af-e376-42a90217de7c@windriver.com>
Date: Wed, 1 Jun 2016 11:21:46 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.1.0
MIME-Version: 1.0
In-Reply-To: <CAEeWubLs_Gzh9p8WcjDOU=TmKU1vVMY3x_+GCG8c9a4c0Ce9CA@mail.gmail.com>
Subject: Re: Changelog creation for a list of recipes
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
X-List-Received-Date: Wed, 01 Jun 2016 16:21:51 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 6/1/16 7:54 AM, Oleksandr Poznyak wrote:
> Hi,
> 
> I believe that it would be great to have a special variable that triggers
> changelog creation for the specific recipe.

I've had some requests from customers to automatically generate changelogs for
both recipes and packages.  I've not yet began investigating HOW to do this, but
it should be possible to automate at least some of the work, as long as the
layers are stored in git repositories.

(Package changelogs are much harder, as a change to another package might be
what triggered the rebuild, and I don't think that information is available to
the secondary [triggered] build.)

--Mark

> For example:
> 
> PN = "my_recipe"
> 
> SRC_URI = "git://${SOME_GIT_REPO};protocol=ssh"
> SRCREV = "${AUTOREV}"
> PV = "1+git${SRCPV}"
> 
> CHANGELOG = "1"
> 
> This should produce ${DEPLOY_DIR}/changelog file and add there changes in repos
> of specific recipes in a simple form:
> 
> For example:
> 
> my_recipe:
>     #5410 Add some features to my_recipe
>     Signed-off-by: Oleksandr Poznyak <oleksandr.poznyak@gmail.com
> <mailto:oleksandr.poznyak@gmail.com>>
>     Oleksandr Poznyak
> 
> This will make inergration of Yocto into any CI tool (Jenkins for ex.) much easier.
> 
> Thanks,
> Oleksandr Poznyak!
> 
> 
> 


