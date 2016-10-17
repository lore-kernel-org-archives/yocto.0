Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3CE38E00A86; Mon, 17 Oct 2016 12:24:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC394E00A7D
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 12:24:09 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u9HJNuJD028073
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Mon, 17 Oct 2016 12:23:57 -0700
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Mon, 17 Oct 2016 12:23:56 -0700
To: Sona Sarmadi <sona.sarmadi@enea.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <3230301C09DEF9499B442BBE162C5E48ABE85854@sestoex09.enea.se>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <8a3cfb71-037b-08d2-78ba-223e85ab6ba6@windriver.com>
Date: Mon, 17 Oct 2016 15:23:55 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <3230301C09DEF9499B442BBE162C5E48ABE85854@sestoex09.enea.se>
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
X-List-Received-Date: Mon, 17 Oct 2016 19:24:13 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-10-17 03:11 PM, Sona Sarmadi wrote:
> Hi all,
>
> From https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance:
>
> /General policies: /
>
>   * /Fixes must go into master first unless they are applicable only to
>     the stable branch; if back-porting to an older stable branch, the
>     fix should first be applied to the newer stable branches before
>     being back-ported to the older branch/
>
> Does anyone know the reason for the policy above i.e. why fixes have to
> go to master first?

The kernel has the same policy for -stable kernels. Speaking at a very
high level, it simply ensures that the development of maintenance/stable
branches does not move ahead of master in terms of fixes.

That keeps development focused on the tip, where it belongs (versus
companies/people working in silos for an extended period of time), since
once in master many branches can benefit from it.

>
> 1)      It makes more sense at least for users  to get CVE fixes as soon
> as possible in the maintenance branches.

There's no implied slow down from the process, stable branches can get 
them within hours of changes going into master .. depending on how they
various branches are maintained.

>
> 2)      Normally the versions are different in master and maintenance
> branches so different patches are required.

That's covered in the statement:"unless they are applicable only to the 
stable branch".
Version skew could mean that a fix isn't appropriate to master, but only
to a -stable branch.

But if someone is submitting a CVE fix to -stable, and only to -stable,
they should indicate that the version in master already contains the
fix (or something similar).

Cheers,

Bruce

>
> Thanks
>
> //Sona
>
>
>


