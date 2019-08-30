Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 041BFE00AE4; Thu, 29 Aug 2019 23:14:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2EECE00929
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2019 23:14:23 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x7U6ENtC001040
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2019 23:14:23 -0700 (PDT)
Received: from [128.224.162.186] (128.224.162.186) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Thu, 29 Aug 2019 23:14:22 -0700
To: <yocto@yoctoproject.org>
References: <1567145350-398562-1-git-send-email-changqing.li@windriver.com>
From: Changqing Li <changqing.li@windriver.com>
Message-ID: <f8043cbf-8a5b-f32a-4e84-517e0dc590a7@windriver.com>
Date: Fri, 30 Aug 2019 14:14:19 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1567145350-398562-1-git-send-email-changqing.li@windriver.com>
X-Originating-IP: [128.224.162.186]
Subject: Re: [meta-cloud-services][PATCH 1/14] glusterfs: support usrmerge [LINUXEXEC-1807]
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
X-List-Received-Date: Fri, 30 Aug 2019 06:14:25 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Please ignore this mail

On 8/30/19 2:09 PM, changqing.li@windriver.com wrote:
> From: Changqing Li <changqing.li@windriver.com>
>
> Issue: LINUXEXEC-1807
>
> (LOCAL REV: NOT UPSTREAM) -- send upstream 20190830
>
> Signed-off-by: Changqing Li <changqing.li@windriver.com>
> ---
>   recipes-extended/glusterfs/glusterfs.inc | 8 +++++---
>   1 file changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/recipes-extended/glusterfs/glusterfs.inc b/recipes-extended/glusterfs/glusterfs.inc
> index 40a3922..66e2bf1 100644
> --- a/recipes-extended/glusterfs/glusterfs.inc
> +++ b/recipes-extended/glusterfs/glusterfs.inc
> @@ -64,9 +64,11 @@ do_install_append() {
>       install -m 0755 ${WORKDIR}/glusterd.init \
>           ${D}${sysconfdir}/init.d/glusterd
>   
> -    # Mount looks for mount.* plug-ins in /sbin; fix it with a symlink.
> -    mkdir -p ${D}${base_sbindir}
> -    (cd ${D}${base_sbindir}; ln -s ..${sbindir}/mount.glusterfs .)
> +    if ! ${@bb.utils.contains('DISTRO_FEATURES','usrmerge','true','false',d)}; then
> +        # Mount looks for mount.* plug-ins in /sbin; fix it with a symlink.
> +        mkdir -p ${D}${base_sbindir}
> +        (cd ${D}${base_sbindir}; ln -s ..${sbindir}/mount.glusterfs .)
> +    fi
>   
>       # These are plug-ins, so they don't need libtool configs.
>       find ${D}${libdir}/glusterfs/${PV} -name '*.la' -exec rm -f '{}' ';'

-- 
BRs

Sandy(Li Changqing)


