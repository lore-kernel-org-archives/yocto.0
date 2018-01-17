Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F826E00E4B; Tue, 16 Jan 2018 17:38:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1672AE0085E
	for <yocto@yoctoproject.org>; Tue, 16 Jan 2018 17:38:43 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w0H1chsE000902
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 16 Jan 2018 17:38:43 -0800 (PST)
Received: from localhost.corp.ad.wrs.com (128.224.162.229) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.361.1; Tue, 16 Jan 2018 17:38:42 -0800
To: <yocto@yoctoproject.org>, <mark.hatle@windriver.com>
References: <1516092896-43980-1-git-send-email-liezhi.yang@windriver.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <6c6595a1-ef35-9f23-b377-1b1f46d8a49a@windriver.com>
Date: Wed, 17 Jan 2018 09:38:47 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <1516092896-43980-1-git-send-email-liezhi.yang@windriver.com>
Subject: Re: [meta-selinux][PATCH] conf/layer.conf: set BBFILES to known layers
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
X-List-Received-Date: Wed, 17 Jan 2018 01:38:45 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

I found that bitbake has BBFILES_DYNAMIC for such dynamic-layers,
I will send a V2.

// Robert

On 01/16/2018 04:54 PM, Robert Yang wrote:
> The previous code add all BBFILE_COLLECTIONS/recipes*/*/*.bbappend to BBFILES,
> which causes the parsing very slow when there are many layers, e.g., I have 87
> layers:
> 
> * Before:
> $ rm -fr tmp-glibc/ cache; time bitbake -p
> real    0m45.173s
> user    0m0.560s
> sys     0m0.060s
> 
> * After:
> $ rm -fr tmp-glibc/ cache; time bitbake -p
> real    0m25.542s
> user    0m0.572s
> sys     0m0.040s
> 
> It cost 20s which isn't worth (The host has 128 threads, it should cost more
> time on less power host), only set BBFILES according to known layers (currently:
> meta-python, networking-layer and virtualization-layer) can fix the problem.
> 
> Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
> ---
>   conf/layer.conf | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/conf/layer.conf b/conf/layer.conf
> index f773dc3..0ad766c 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -8,7 +8,8 @@ BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
>   # Let us add layer-specific bbappends which are only applied when that
>   # layer is included in our configuration
>   BBFILES += "${@' '.join('${LAYERDIR}/%s/recipes*/*/*.bbappend' % layer \
> -               for layer in BBFILE_COLLECTIONS.split())}"
> +               for layer in set(BBFILE_COLLECTIONS.split()) & \
> +               set(['meta-python', 'networking-layer', 'virtualization-layer']))}"
>   
>   BBFILE_COLLECTIONS += "selinux"
>   BBFILE_PATTERN_selinux = "^${LAYERDIR}/"
> 

