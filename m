Return-Path: <mark.hatle@kernel.crashing.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 616DEE00D46; Mon, 23 Sep 2019 07:41:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C20D9E00CD5
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2019 07:41:57 -0700 (PDT)
Received: from Marks-MacBook-Pro.local ([76.164.61.198]) (authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id x8NEfrid008351
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO); Mon, 23 Sep 2019 09:41:54 -0500
To: Hongxu Jia <hongxu.jia@windriver.com>, jason.wessel@windriver.com,
	yocto@yoctoproject.org
References: <1569164228-26934-1-git-send-email-hongxu.jia@windriver.com>
	<1569164228-26934-6-git-send-email-hongxu.jia@windriver.com>
From: Mark Hatle <mark.hatle@kernel.crashing.org>
Message-ID: <f89ba972-a797-e471-74d5-2aaa69b3d8cb@kernel.crashing.org>
Date: Mon, 23 Sep 2019 09:41:53 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1569164228-26934-6-git-send-email-hongxu.jia@windriver.com>
Subject: Re: [meta-openssl102-fips][PATCH 5/15] openssh: add generation of HMAC checksums in pkg_postinst
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
X-List-Received-Date: Mon, 23 Sep 2019 14:41:58 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Same comment here as in the fipscheck about the post install stuff.

--Mark

On 9/22/19 9:56 AM, Hongxu Jia wrote:
> Refer https://src.fedoraproject.org/rpms/openssh/c/d93958db19129e0f4615865eab22fb36e1f4fb8a
> 
> Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
> ---
>  recipes-connectivity/openssh/openssh_fips.inc | 26 ++++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 
> diff --git a/recipes-connectivity/openssh/openssh_fips.inc b/recipes-connectivity/openssh/openssh_fips.inc
> index 99a3482..df84c39 100644
> --- a/recipes-connectivity/openssh/openssh_fips.inc
> +++ b/recipes-connectivity/openssh/openssh_fips.inc
> @@ -6,3 +6,29 @@ DEPENDS += " \
>  SRC_URI += " \
>      file://0001-openssh-8.0p1-fips.patch \
>  "
> +
> +do_install_append() {
> +    install -d ${D}${libdir}/fipscheck
> +}
> +
> +inherit qemu
> +
> +pkg_postinst_append_${PN}-ssh () {
> +    if [ -n "$D" ]; then
> +        ${@qemu_run_binary(d, '$D', '${bindir}/fipshmac')} \
> +            -d $D${libdir}/fipscheck $D${bindir}/ssh.${BPN}
> +    else
> +        ${bindir}/fipshmac -d ${libdir}/fipscheck ${bindir}/ssh.${BPN}
> +    fi
> +}
> +
> +pkg_postinst_append_${PN}-sshd () {
> +    if [ -n "$D" ]; then
> +        ${@qemu_run_binary(d, '$D', '${bindir}/fipshmac')} \
> +            -d $D${libdir}/fipscheck $D${sbindir}/sshd
> +    else
> +        ${bindir}/fipshmac -d ${libdir}/fipscheck ${sbindir}/sshd
> +    fi
> +}
> +
> +FILES_${PN} += "${libdir}/fipscheck"
> 

