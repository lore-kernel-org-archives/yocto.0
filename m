Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E742DE00869; Fri, 22 Aug 2014 09:27:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2110E0082B
	for <yocto@yoctoproject.org>; Fri, 22 Aug 2014 09:27:23 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id s7MGRFZl017325
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 22 Aug 2014 09:27:16 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.174.1;
	Fri, 22 Aug 2014 09:27:15 -0700
Message-ID: <53F76F55.7030702@windriver.com>
Date: Fri, 22 Aug 2014 12:27:01 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: Sona Sarmadi <sona.sarmadi@enea.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <3230301C09DEF9499B442BBE162C5E48256DB954@SESTOEX04.enea.se>
	<53F73C54.60803@windriver.com>
	<3230301C09DEF9499B442BBE162C5E48256DBE09@SESTOEX04.enea.se>
In-Reply-To: <3230301C09DEF9499B442BBE162C5E48256DBE09@SESTOEX04.enea.se>
Subject: Re: kernel patches
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
X-List-Received-Date: Fri, 22 Aug 2014 16:27:28 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-08-22 12:02 PM, Sona Sarmadi wrote:
> Bruce,
> Thanks for quick response. See inline my comments.
>
> Have a nice weekend
> /Sona
>
>>> Please let me know if this is the correct way. And also let me know if I upstream this kernel patch to yocto, will yocto accept it (if the patch looks correct > of course). Please let me know if you prefer to apply security patches to kernels in some different way.
>
>> If this is for your own local builds, a layer with a bbappend and the patches is a better idea.
> Sona: No this is not local, I wanted to backport a security patch from 3.15 to lLinux Yoctp 3.14 and upstreamed to Yocto.
>
>> For the main linux-yocto recipes, everything is maintained in the git repositories, not patched at build time, so changes go to the linux-yocto mailing list, and I merge them from there.
>
>> On this particular topic, I already track all the -stable updates for our linux-yocto kernels, and CVEs are picked up by -stable. So there's a process in place to get security related fixes into the linux-yocto trees.
> Sona: very good :)
>
>> I'm a few releases behind at the moment, due to a 2 week vacation, but 3.4, 3.10 and 3.14 will all be updated shortly.
> Sona: So if a security patch is only fixed in later versions, you don't want to backport the fix to older yocto versions (e.g.3.10, 3.14) even if the bug is present in these versions. You rather prefer to inherit these from k.org.

We are at a slight advantage in this area, since we've moved to a model
of releasing and supporting the LTSI kernel versions. As such, they
continue to get korg stable maintenance for a cycle that matches our
Yocto support window.

That means there are few, if any, CVEs that don't get addressed via
the flow I described.

That being said, if there's a linux-yocto kernel version that isn't
LTSI and isn't get standard korg -stable updates (i.e. the non-LTSI
kernel version that will be released with Yocto 1.7), then backported
fixes to that version can come to the linux-yocto list, and I can
apply them to the tree.

Cheers,

Bruce

>
>
>> If you do notice a CVE that isn't part of the k.org -stable updates, that is or more interest, and we should nominate it for -stable upstream and have it > flow to all kernels via that process.
>
> Sona: I see, this would be a better approach.
>
>> Bruce
>


