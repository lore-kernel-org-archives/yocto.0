Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33A7FE005A9; Mon, 26 Jan 2015 05:42:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DE53E003AB
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 05:42:31 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 08B49F811D9; Mon, 26 Jan 2015 06:42:29 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 4C12AF811D8;
	Mon, 26 Jan 2015 06:42:29 -0700 (MST)
Message-ID: <54C6445E.8020500@mlbassoc.com>
Date: Mon, 26 Jan 2015 06:42:54 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1422006426-14375-1-git-send-email-alexey_firago@mentor.com>
In-Reply-To: <1422006426-14375-1-git-send-email-alexey_firago@mentor.com>
Subject: Re: [meta-cgl][PATCH] meta-fsl-ppc: layer.conf: Rename BBFILE_COLLECTIONS
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
X-List-Received-Date: Mon, 26 Jan 2015 13:42:38 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-01-23 02:47, Alexey Firago wrote:
> BBFILE_COLLECTIONS is currently set to "cgl" which is also used
> by meta-cgl-common. Some tools/scripts use this field for
> automatic layers detection, so rename it to "fsl-ppc-cgl".
>
> Signed-off-by: Alexey Firago <alexey_firago@mentor.com>
> ---
>   meta-fsl-ppc/conf/layer.conf | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-fsl-ppc/conf/layer.conf b/meta-fsl-ppc/conf/layer.conf
> index 6818475..be345ff 100644
> --- a/meta-fsl-ppc/conf/layer.conf
> +++ b/meta-fsl-ppc/conf/layer.conf
> @@ -5,6 +5,6 @@ BBPATH .= ":${LAYERDIR}"
>   BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
>   	${LAYERDIR}/recipes-*/*/*.bbappend"
>
> -BBFILE_COLLECTIONS += "cgl"
> +BBFILE_COLLECTIONS += "fsl-ppc-cgl"
>   BBFILE_PATTERN_cgl = "^${LAYERDIR}/"
>   BBFILE_PRIORITY_cgl = "7"

Shouldn't these last two also be changed, e.g.
   BBFILE_PATTERN_fsl-ppc-cgl

Also, why is it called 'cgl' in the first place?  The logic
of that name eludes me...

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

