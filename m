Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2CFB5E00C06; Sat, 10 Nov 2018 08:32:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EB46E0090E
	for <yocto@yoctoproject.org>; Sat, 10 Nov 2018 08:32:35 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id wAAGVeBb014190
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 10 Nov 2018 08:31:51 -0800
Received: from [172.25.44.4] (172.25.44.4) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Sat, 10 Nov 2018 08:31:29 -0800
To: <richard.purdie@linuxfoundation.org>, "Jain, Sangeeta"
	<sangeeta.jain@intel.com>,
	"Jolley, Stephen K" <stephen.k.jolley@intel.com>,
	"Eggleton, Paul" <paul.eggleton@intel.com>, "Graydon, Tracy"
	<tracy.graydon@intel.com>, "Erway, Tracey M" <tracey.m.erway@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <015AB11D45F2C442929CB2765DAE738634CE695E@PGSMSX110.gar.corp.intel.com>
	<124f711a167575c2d5ee6a98f465e3afd5d090f6.camel@linuxfoundation.org>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <c007240f-f130-3c78-89aa-ba27ad1e19d9@windriver.com>
Date: Sat, 10 Nov 2018 11:31:27 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <124f711a167575c2d5ee6a98f465e3afd5d090f6.camel@linuxfoundation.org>
X-Originating-IP: [172.25.44.4]
Cc: "Kirkiris, Nectar" <nectar.kirkiris@intel.com>
Subject: Re: QA cycle report for 2.6 M4 RC1
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
X-List-Received-Date: Sat, 10 Nov 2018 16:32:36 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 11/10/18 11:25 AM, richard.purdie@linuxfoundation.org wrote:
> On Fri, 2018-11-09 at 09:24 +0000, Jain, Sangeeta wrote:
>>
>> This is the full report for 2.6 M4 RC1:
>> https://wiki.yoctoproject.org/wiki/WW44_-_2018-10-30_-_Full_Test_Cycle_2.6_M4_RC1
> 
> Thanks Sangeeta and team!
> 
> Now we have the QA report for YP 2.6 M4 rc1 (Final 2.6) we need to make
> a release go or nogo decision. To do this we have the following:
>   
> QA Report: https://wiki.yoctoproject.org/wiki/WW44_-_2018-10-30_-_Full_Test_Cycle_2.6_M4_RC1
> Release Criteria: https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.6_Status#Milestone_4.2FFinal_-_Target_Oct._26.2C_2018
> 
> We'd be happy to take representations from members and the community to
> help reach that decision.
> 
> My personal view is that whilst there are a number of issues present in
> rc1, we should release it, collect up fixes on the thud branch (aleady
> happening) and plan on a 2.6.1 as soon as it looks like we have enough
> critical mass behind those as opposed to an rc2 and further delays to
> the release.


Despite the fact that there are a few release criteria that are not
in the 'Done' state yet, I approve of releasing YP-2.6M4 on the
condition that the Docs and Web site criteria are taken care of
before release.

I have reviewed the open bugs. Several are resolved or will be soon and
the ones that remain appear to be either limited in impact such
as 12974/systemtap or are likely due to builder problems such
as 12991/webkitgtk on the build appliance.

Build time tests have crept up somewhat for the rootfs and eSDK
tests but not so dramatically that I would suggest blocking GA.
We haven't had anyone investigate the root cause yet AFAIK but
that can happen post-release and noted in the release notes.

The package update status is unknown due to the tracker being down
but in M3 we were at 81% done so we're still in a good albeit
unquantified state.

What are the plans for the Documentation checks and Wiki/Web
site update? That needs to be 'Done' but I expect it will
be taken care of in the coming days.

../Randy


> 
> Cheers,
> 
> Richard
> 
> 
> 
> 
> 


-- 
# Randy MacLeod
# Wind River Linux

