Return-Path: <alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77773E00E7F; Tue, 29 Sep 2015 09:26:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [130.164.80.23 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 124 seconds by postgrey-1.32 at yocto-www;
	Tue, 29 Sep 2015 09:26:31 PDT
Received: from ni.com (skprod2.natinst.com [130.164.80.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18052E007A5
	for <yocto@yoctoproject.org>; Tue, 29 Sep 2015 09:26:31 -0700 (PDT)
Received: from us-aus-mgwout2.amer.corp.natinst.com (nb-snip2-1338.natinst.com
	[130.164.19.135])
	by us-aus-skprod2.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	t8TGOLNo020655; Tue, 29 Sep 2015 11:24:24 -0500
Received: from [10.2.33.36] ([130.164.14.198])
	by us-aus-mgwout2.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2015092911103984-727979 ;
	Tue, 29 Sep 2015 11:10:39 -0500 
Message-ID: <560AB7EA.4060200@ni.com>
Date: Tue, 29 Sep 2015 11:10:18 -0500
From: Alejandro del Castillo <alejandro.delcastillo@ni.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: opkg-devel@googlegroups.com, yocto@yoctoproject.org
References: <1432250850-25266-1-git-send-email-haris.okanovic@ni.com>
In-Reply-To: <1432250850-25266-1-git-send-email-haris.okanovic@ni.com>
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut2/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 09/29/2015 11:10:39 AM,
	Serialize by Router on US-AUS-MGWOut2/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 09/29/2015 11:24:24 AM,
	Serialize complete at 09/29/2015 11:24:24 AM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2015-09-29_10:, , signatures=0
Subject: Re: [opkg-devel] [PATCH] opkg-utils: Fix crash on dependency error
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
X-List-Received-Date: Tue, 29 Sep 2015 16:26:33 -0000
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=utf-8

On 05/21/2015 06:27 PM, Haris Okanovic wrote:
> Fix crash on exception in opkg-show-deps when generating an
> 'unsatisfied dependency' error. process_dep() function was
> referencing a missing parameter `pkg`.
> 
> Signed-off-by: Haris Okanovic <haris.okanovic@ni.com>
> Reviewed-by: Alejandro del Castillo <alejandro.delcastillo@ni.com>
> Acked-by: Brad Mouring <brad.mouring@ni.com>
> Cc: Alejandro del Castillo <alejandro.delcastillo@ni.com>
> Cc: Paul Barker <paul@paulbarker.me.uk>
> ---
>  opkg-show-deps | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/opkg-show-deps b/opkg-show-deps
> index 3c3be6a..4694579 100755
> --- a/opkg-show-deps
> +++ b/opkg-show-deps
> @@ -58,7 +58,7 @@ def find_package(name):
>            return provider_hash[name]
>       return None
>  
> -def process_dep(dep):
> +def process_dep(pkg, dep):
>       # Add a provider of the given dependency to the list of required packages
>       # unless a provider is already present in this list.
>       dep = re.sub("\s*\(.*\)", "", dep)
> @@ -83,7 +83,7 @@ def recurse(pkg):
>       if pkg.depends:
>            deps = split_list(pkg.depends)
>            for dep in deps:
> -               process_dep(dep)
> +               process_dep(pkg, dep)
>  
>  for root in remaining_args:
>       pkgs = find_package(root)
> 

Pulled into master, apologies for the delay!

-- 
Cheers,

Alejandro

