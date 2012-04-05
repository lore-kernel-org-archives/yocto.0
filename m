Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91FBAE0044D
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2012 19:49:37 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q352nQCe001887
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 4 Apr 2012 19:49:26 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.22.146) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Wed, 4 Apr 2012 19:49:25 -0700
Message-ID: <4F7D0834.3050907@windriver.com>
Date: Wed, 4 Apr 2012 22:49:24 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <09F81BC0-4DBE-4792-9B3E-E68510C3A28C@keylevel.com>
In-Reply-To: <09F81BC0-4DBE-4792-9B3E-E68510C3A28C@keylevel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Edison BSP SRCREV
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 05 Apr 2012 02:49:37 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-04-04 6:36 PM, Chris Tapp wrote:
> I've been following the "BSP Development Example" section of the "Yocto Project Development Manual" for a new BSP called "mybsp". This results in the following in linux-yocto_3.0.bbappend:
>
> COMPATIBLE_MACHINE_mybsp = "mybsp"
> KMACHINE_mybsp  = "yocto/standard/common-pc/base"
> KERNEL_FEATURES_append_mybsp += " cfg/smp.scc"
>
> SRCREV_machine_pn-linux-yocto_mybsp ?= "f153b0eb8264dc1e69f59d4c9173619feb4d5bd9"
> SRCREV_meta_pn-linux-yocto_mybsp ?= "a4ac64fe873f08ef718e2849b88914725dc99c1c"
>
> as I'm trying to base the BSP on common-pc/base.
>
> However, when I build I get an error telling me that the machine SRCREV is not valid:
>
> Log data follows:
> | ERROR f153b0eb8264dc1e69f59d4c9173619feb4d5bd9 is not a valid commit ID.
> | The kernel source tree may be out of sync
> | ERROR: Function 'do_validate_branches' failed (see ...
>
> The value is the commit tag I get at http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/commit/?h=yocto/standard/common-pc/base
>
> I'm guessing I've got the wrong commit ID here ;-) What should I be using? Do I need the commit ID for the 3.0.18 tagged commit at
> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/tag/?h=yocto/standard/common-pc/base&id=v3.0.18 or something else ?
>
> I'm using the tarball method described in the example, not local git.

It's like that in edison we switched to a kernel repo that only takes
-stable updates (not unlike the upstream -stable).

So look for the commit IDs here:

git://git.yoctoproject.org/linux-yocto-3.0-1.1.x.git

Sounds like a doc might need a tweak.

Cheers,

Bruce

>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


