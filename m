Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC948E00CF5; Wed, 25 May 2016 05:56:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57BBBE00CE8
	for <yocto@yoctoproject.org>; Wed, 25 May 2016 05:56:26 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u4PCuJ9v026843
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 25 May 2016 05:56:20 -0700 (PDT)
Received: from server.local (147.11.119.192) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.248.2;
	Wed, 25 May 2016 05:56:19 -0700
To: Thomas Perrot <thomas.perrot@tupi.fr>, <yocto@yoctoproject.org>
References: <1464164828-24502-1-git-send-email-thomas.perrot@tupi.fr>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <0f2b3226-b935-4ea4-ed23-9cd15bf8b340@windriver.com>
Date: Wed, 25 May 2016 08:56:18 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.1.0
MIME-Version: 1.0
In-Reply-To: <1464164828-24502-1-git-send-email-thomas.perrot@tupi.fr>
Subject: Re: [meta-virtualization][PATCH] Use bb.utils.contains instead of base_contains because it is deprecated
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
X-List-Received-Date: Wed, 25 May 2016 12:56:29 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-05-25 4:27 AM, Thomas Perrot wrote:
> Signed-off-by: Thomas Perrot <thomas.perrot@tupi.fr>

I already had a change queued here for this, that I managed to
forget to push.

I'll rebase and do that now.

Cheers,

Bruce

> ---
>  recipes-containers/containerd/containerd_git.bb | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/recipes-containers/containerd/containerd_git.bb b/recipes-containers/containerd/containerd_git.bb
> index 46b9dc1..1a2c445 100644
> --- a/recipes-containers/containerd/containerd_git.bb
> +++ b/recipes-containers/containerd/containerd_git.bb
> @@ -59,8 +59,8 @@ do_compile() {
>
>  # Note: disabled for now, since docker is launching containerd
>  # inherit systemd
> -# SYSTEMD_PACKAGES = "${@base_contains('DISTRO_FEATURES','systemd','${PN}','',d)}"
> -# SYSTEMD_SERVICE_${PN} = "${@base_contains('DISTRO_FEATURES','systemd','containerd.service','',d)}"
> +# SYSTEMD_PACKAGES = "${@bb.utils.contains('DISTRO_FEATURES','systemd','${PN}','',d)}"
> +# SYSTEMD_SERVICE_${PN} = "${@bb.utils.contains('DISTRO_FEATURES','systemd','containerd.service','',d)}"
>
>  do_install() {
>  	mkdir -p ${D}/${bindir}
> @@ -73,7 +73,7 @@ do_install() {
>  	ln -sf containerd-shim ${D}/${bindir}/docker-containerd-shim
>  	ln -sf containerd-ctr ${D}/${bindir}/docker-containerd-ctr
>
> -	if ${@base_contains('DISTRO_FEATURES','systemd','true','false',d)}; then
> +	if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
>  		install -d ${D}${systemd_unitdir}/system
>  		install -m 644 ${S}/hack/containerd.service ${D}/${systemd_unitdir}/system
>  	        # adjust from /usr/local/bin to /usr/bin/
>


