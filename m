Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF545E00E02; Fri, 25 Oct 2019 12:33:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AA39E0097C
	for <yocto@yoctoproject.org>; Fri, 25 Oct 2019 12:33:01 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x9PJWx0l028519
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 25 Oct 2019 12:33:00 -0700
Received: from [172.25.44.8] (172.25.44.8) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.468.0;
	Fri, 25 Oct 2019 12:32:59 -0700
To: "Lohr, Christian [ext]" <christian.lohr.ext@zeiss.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <AM7P190MB079129F3F34E6A01826C34EFC26B0@AM7P190MB0791.EURP190.PROD.OUTLOOK.COM>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <05b0fed8-9252-dc02-1eaa-aaff8cf69602@windriver.com>
Date: Fri, 25 Oct 2019 15:32:58 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <AM7P190MB079129F3F34E6A01826C34EFC26B0@AM7P190MB0791.EURP190.PROD.OUTLOOK.COM>
X-Originating-IP: [172.25.44.8]
Subject: Re: TFS Urls with Git in Recipes
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
X-List-Received-Date: Fri, 25 Oct 2019 19:33:02 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 8bit

Hello Christian,

Thanks for reporting the problem. Comments and questions below.

On 10/23/19 3:36 AM, Lohr, Christian [ext] wrote:
> Hello,
> 
> I‘m using the following:
> 
> Yocto Release 2.4 (Rocko), and Bitbake 1.9.x

Can you check if the problem is still present on the master branch?

> 
> My problem is the following url (actually the “%20” is the problem in 
> bitbake):
> 
> ssh://tfs-my-company.org:22/tfs/OWN_Projects/FooBar%20500/_git/DummyApplicationForYocto
> 
> I can do a “git clone <url>” without any problems. Now I wanted to 
> create a Yocto recipe similar to this:
> 
> ------------------------------------------------------------------------------------------------------------------------------------------
> 
> SUMMARY = "A demo application"
> 
> DESCRIPTION = "This application is just for demo purpose and should be 
> seen as Hello World"
> 
> LICENSE = "CLOSED"
> 
> #LIC_FILES_CHKSUM = ""
> 
> PROJECT_URL = "tfs-my-company.org:22/tfs/OWN_Projects"
> 
> PROJECT_NAME = "FooBar%20500"

It's possible that:
     PROJECT_NAME = "FooBar 500"
or
     PROJECT_NAME = "FooBar\ 500"
would work. Have you tried that already? I haven't worked on the
bitbake fetcher code so I may be making naive suggestions.

Also, I expect that you are working around the issue by just
removing the space in the path, right?

> 
> SRC_URI = 
> "git://${PROJECT_URL}/${PROJECT_NAME}/_git/DummyApplicationForYocto;protocol=ssh"
> 
> SRCREV = "${AUTOREV}"
> 
> PV = "1.0+git${SRCPV}"
> 
> DEPENDS = "qtbase"
> 
> --------------------------------------------------------------------------------------------------------------------------------------------
> 
> The „%20“ sign will be replaced with a space “ “ in some cases:
> 
> When I try to run “bitbake dummyapp”, the following happens:
> 
> “FooBar%20500” will be transformed to “FooBar 500”
> 
> --------------------------------------------------------------------------------------------------------------------------------------------
> 
> git -c core.fsyncobjectfiles=0 ls-remote 
> ssh://tfs-my-company.org:22/tfs/OWN_Projects/FooBar 
> 500/_git/DummyApplicationForYocto  failed with exit code 128, output:
> 
> remote: Command git-upload-pack '/tfs/OWN_Projects/FooBar' is not in 
> expected format.
> 
> fatal: Could not read from remote repository.
> 
> Is it possible to prevent this because if it would leave the “%20” the 
> command would work.


The YP does have problems dealing with spaces in path names as you
have seen. I think this prevents the MacOS port for example.

Could you open a defect in the Yocto bugzilla?
   https://bugzilla.yoctoproject.org/
   https://wiki.yoctoproject.org/wiki/Bug_reporting_and_Information_levels

Ideally, it would be great if you could submit a patch but I understand
that you may not have the time, interest or the expertise to do so.
If you are not able to do that then the defect will be triaged during
the weekly review (next week's meeting is actually cancelled do to the
Embedded Linux Conference - Europe) and someone will work on the defect
based on it's importance and their interest and workload.

If you want a fix sooner than that, there are companies and consultants
listed on the yocto project homepage:
    https://www.yoctoproject.org/ecosystem/members/
    https://www.yoctoproject.org/community/consultants/

Thanks again for the report and
I'm sorry that I'm not able to be of more help immediately.

../Randy



> 
> Kind regards,
> 
> Christian Lohr
> 
> 


-- 
# Randy MacLeod
# Wind River Linux

