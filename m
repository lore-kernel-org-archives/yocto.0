Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C99AE009B8; Fri, 12 Jun 2015 08:17:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0943EE0086D
	for <yocto@yoctoproject.org>; Fri, 12 Jun 2015 08:17:01 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.1/8.15.1) with ESMTPS id t5CFGx1l022269
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 12 Jun 2015 08:16:59 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.224.2;
	Fri, 12 Jun 2015 08:16:59 -0700
Message-ID: <557AF7EA.7050908@windriver.com>
Date: Fri, 12 Jun 2015 11:16:58 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: Mayank Agarwal <mayank77fromindia@gmail.com>, <yocto@yoctoproject.org>
References: <CAKjpqy+6nbr33uUkvOniU+beLAw-vPdwEmyMP5CGrEnyPa6G+Q@mail.gmail.com>
In-Reply-To: <CAKjpqy+6nbr33uUkvOniU+beLAw-vPdwEmyMP5CGrEnyPa6G+Q@mail.gmail.com>
Subject: Re: failure in linux-yocto kernel do_patch
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
X-List-Received-Date: Fri, 12 Jun 2015 15:17:05 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-06-12 04:41 AM, Mayank Agarwal wrote:
> Hi
>
> I am getting the following error while compiling linux-yocto from
> yocto openembedded.
>
>   DEBUG: Executing shell function do_patch
> | Deleted branch meta-temp (was d36a7ef).
> | WARNING: addon feature "features/nfsd/nfsd-enable.scciso" was not found

There's 'iso' appended to that .scc file name .. so it definitely
isn't going to be found.

There are likely other KERNEL_FEATURES in play, so make sure that
you have a space after your nfsd-enable.scc line .. and see what
happens.

Bruce

> | ERROR: required features were not found. aborting
> | ERROR. Could not update standard/common-pc/base
> | WARNING: /home/projectubuntu/mayank/workspacemaster/../../../linux-yocto/3.14.5+gitAUTOINC+183622e809_4aa41764bf-r0/temp/run.do_patch.5192:1
> exit 1 from
> |   exit 1
> | ERROR: Function failed: do_patch (log file is located at
> /home/projectubuntu/mayank/workspacemaster/../../../linux-yocto/3.14.5+gitAUTOINC+183622e809_4aa41764bf-r0/temp/log.do_patch.5192)
>
> Any help on this:tried almost all things like appending
> KERNEL_FEATURE_append-pn-linux-yocto = "features/nfsd/nfsd-enable.scc"
> but not getting help
>
> Regards
> Mayank
>


