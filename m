Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69A03E00320
	for <yocto@yoctoproject.org>; Fri,  2 Sep 2011 09:39:07 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p82Gd23C028015
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 2 Sep 2011 09:39:02 -0700 (PDT)
Received: from [128.224.147.214] (128.224.147.214) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 2 Sep 2011 09:39:02 -0700
Message-ID: <4E6106A0.4020200@windriver.com>
Date: Fri, 2 Sep 2011 12:38:56 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11 ThunderBrowse/3.8
MIME-Version: 1.0
To: "Saxena, Rahul" <rahul.saxena@intel.com>
References: <4FF5AC937153B0459463C1A88EB478F2012E1E5AF0@orsmsx505.amr.corp.intel.com>
In-Reply-To: <4FF5AC937153B0459463C1A88EB478F2012E1E5AF0@orsmsx505.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: Re: [PATCH 1/2] [KERNEL] Removed duplicate statement
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
X-List-Received-Date: Fri, 02 Sep 2011 16:39:07 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-09-01 04:41 PM, Saxena, Rahul wrote:
> Removed duplicate statement

I noticed that these patches are Signed-off, can you confirm
your Sign-off so I can add it to the patches?

Bruce

>
> ---
>
> meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc | 1 -
>
> 1 files changed, 0 insertions(+), 1 deletions(-)
>
> diff --git a/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc
> b/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc
>
> index 0abde0d..6e3d385 100644
>
> --- a/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc
>
> +++ b/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc
>
> @@ -1,5 +1,4 @@
>
> kconf hardware fishriver.cfg
>
> -kconf hardware fishriver.cfg
>
> git merge yocto/emgd
>
> --
>
> 1.7.0.4
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


