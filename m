Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C19A9E00E5E; Wed, 19 Oct 2016 06:08:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76176E00E5B
	for <yocto@yoctoproject.org>; Wed, 19 Oct 2016 06:08:37 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u9JD8Ifs023131
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Wed, 19 Oct 2016 06:08:19 -0700
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Wed, 19 Oct 2016 06:08:18 -0700
To: Sona Sarmadi <sona.sarmadi@enea.com>, Khem Raj <raj.khem@gmail.com>
References: <3230301C09DEF9499B442BBE162C5E48ABE85854@sestoex09.enea.se>
	<CAMKF1sp_qLfdeFvHzi+VD-6tFbX-f372uiRmKjeXRG3w1WVwkQ@mail.gmail.com>
	<3230301C09DEF9499B442BBE162C5E48ABE9A5A1@SESTOEX04.enea.se>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <f7404663-25df-15a2-33af-0d480972a139@windriver.com>
Date: Wed, 19 Oct 2016 09:08:17 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <3230301C09DEF9499B442BBE162C5E48ABE9A5A1@SESTOEX04.enea.se>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: General policies for CVE fixes
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
X-List-Received-Date: Wed, 19 Oct 2016 13:08:42 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-10-19 06:42 AM, Sona Sarmadi wrote:
>
>>> From https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance:
>>>
>>> General policies:
>>>
>>> Fixes must go into master first unless they are applicable only to the
>>> stable branch; if back-porting to an older stable branch, the fix
>>> should first be applied to the newer stable branches before being
>>> back-ported to the older branch
>>>
>>> Does anyone know the reason for the policy above i.e. why fixes have
>>> to go to master first?
>>>
>>> 1)      It makes more sense at least for users  to get CVE fixes as soon as
>>> possible in the maintenance branches.
>>
>> this is to ensure, that we do not regress next time when we release next
>> version from master. So its important to ensure that the fix has been
>> applied to master sometimes you can assert that the fix has gone into new
>> version of a package that is due to be uprevved in master and will be
>> done soonish. Such information is helpful when making security patches
>> for release branches.
>>
>> Actually there was a suggestion at OEDEM on informing CVE ml that we
>> have as the CVE fixes get applied to metadata. Thats a good suggestion to
>> have implemented.
>
>
> Thanks everyone for your explanation.
>
> Yes regressions (forgetting to fix bugs in master) are bad.  I believe there
> are other ways to avoid this, Yocto project has a bug reporting system to
> have track of such things, right?

Unfortunately, code talks. Unless you strictly follow a procedure like
'master first', you end up with an ever growing list of bugs and
backports. Doing some sort of bulk backport increases the chance of
instability .. not to mention when someone is actively working on an
issue, they have all the context to asses the issue, understand the
change and then fix it in the appropriate branches. If you delay the
backporting by months, you lose that context and the job becomes much
harder.

>
> Maintenance branches are likely deployed in production systems, I think
> Fixing security problems here should have higher priority. Don't you agree?

I wouldn't agree that maintenance branches are any more important for
this than the current tip.

Bruce

>
> Perhaps we should discuss this at next OEDEM :)
>
> Cheers //Sona
>


