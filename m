Return-Path: <Xin.Ouyang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0F1CE0054C; Sun, 22 Jun 2014 23:30:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24368E00543
	for <yocto@yoctoproject.org>; Sun, 22 Jun 2014 23:30:53 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s5N6Ur20028015
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 22 Jun 2014 23:30:53 -0700 (PDT)
Received: from Pascal-MacBookPro.local (128.224.159.159) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.169.1; Sun, 22 Jun 2014 23:30:52 -0700
Message-ID: <53A7C99A.2070609@windriver.com>
Date: Mon, 23 Jun 2014 14:30:50 +0800
From: Pascal Ouyang <xin.ouyang@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: <wenzong.fan@windriver.com>, <yocto@yoctoproject.org>,
	<mark.hatle@windriver.com>
References: <1402882648-31107-1-git-send-email-wenzong.fan@windriver.com>
In-Reply-To: <1402882648-31107-1-git-send-email-wenzong.fan@windriver.com>
X-TagToolbar-Keys: D20140623143050919
Subject: Re: [meta-selinux][PATCH] libpcre: update bbappend to 8.35
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
X-List-Received-Date: Mon, 23 Jun 2014 06:30:55 -0000
Content-Type: text/plain; charset="GB2312"
Content-Transfer-Encoding: 8bit

ÓÚ 14-6-16 ÉÏÎç9:37, wenzong.fan@windriver.com Ð´µÀ:
> From: Wenzong Fan <wenzong.fan@windriver.com>
> 
> * rename libpcre_8.34.bbappend to libpcre_8.35.bbappend
> * remove 'PR' from libpcre_8.35.bbappend
> 
> Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
> ---
>   recipes-support/libpcre/libpcre_8.34.bbappend |   13 -------------
>   recipes-support/libpcre/libpcre_8.35.bbappend |   11 +++++++++++
>   2 files changed, 11 insertions(+), 13 deletions(-)
>   delete mode 100644 recipes-support/libpcre/libpcre_8.34.bbappend
>   create mode 100644 recipes-support/libpcre/libpcre_8.35.bbappend
> 
> diff --git a/recipes-support/libpcre/libpcre_8.34.bbappend b/recipes-support/libpcre/libpcre_8.34.bbappend
> deleted file mode 100644
> index 9131f8d..0000000
> --- a/recipes-support/libpcre/libpcre_8.34.bbappend
> +++ /dev/null
> @@ -1,13 +0,0 @@
> -PR .= "9"
> -
> -do_install_append () {
> -	if [ ! ${D}${libdir} -ef ${D}${base_libdir} ]; then
> -		realsofile=`readlink ${D}${libdir}/libpcre.so`
> -		mkdir -p ${D}/${base_libdir}/
> -		mv -f ${D}${libdir}/libpcre.so.* ${D}${base_libdir}/
> -		relpath=${@os.path.relpath("${base_libdir}", "${libdir}")}
> -		ln -sf ${relpath}/${realsofile} ${D}${libdir}/libpcre.so
> -	fi
> -}
> -
> -FILES_${PN} += "${base_libdir}/libpcre.so.*"
> diff --git a/recipes-support/libpcre/libpcre_8.35.bbappend b/recipes-support/libpcre/libpcre_8.35.bbappend
> new file mode 100644
> index 0000000..558644e
> --- /dev/null
> +++ b/recipes-support/libpcre/libpcre_8.35.bbappend
> @@ -0,0 +1,11 @@
> +do_install_append () {
> +	if [ ! ${D}${libdir} -ef ${D}${base_libdir} ]; then
> +		realsofile=`readlink ${D}${libdir}/libpcre.so`
> +		mkdir -p ${D}/${base_libdir}/
> +		mv -f ${D}${libdir}/libpcre.so.* ${D}${base_libdir}/
> +		relpath=${@os.path.relpath("${base_libdir}", "${libdir}")}
> +		ln -sf ${relpath}/${realsofile} ${D}${libdir}/libpcre.so
> +	fi
> +}
> +
> +FILES_${PN} += "${base_libdir}/libpcre.so.*"
> 

Have commited using wildcard instead of version number.

Thanks :)

-- 
- Pascal

