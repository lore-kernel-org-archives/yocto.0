Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0ABFE00872; Mon, 12 Jan 2015 06:12:35 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B70D6E007BA
	for <yocto@yoctoproject.org>; Mon, 12 Jan 2015 06:12:24 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id t0CECGKG012265
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Mon, 12 Jan 2015 06:12:16 -0800 (PST)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.174.1;
	Mon, 12 Jan 2015 06:12:15 -0800
Message-ID: <54B3D62F.4020901@windriver.com>
Date: Mon, 12 Jan 2015 09:11:59 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: =?UTF-8?B?VmluY2VudCBHw6luaWV1eA==?= <vincent2014@startigen.fr>,
	<yocto@yoctoproject.org>
References: <1421070137-22024-1-git-send-email-vincent2014@startigen.fr>
In-Reply-To: <1421070137-22024-1-git-send-email-vincent2014@startigen.fr>
Subject: Re: [OE-core] fix '[[: not found' error message using dash
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
X-List-Received-Date: Mon, 12 Jan 2015 14:12:35 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit

Not bad for a first patch submission! Just two little things to change.

#1, this should go to the oe-core mailing list 
(openembedded-core@lists.openembedded.org),
and not the yocto one. It definitely is not always obvious at the
beginning which list to use for what!

On 15-01-12 08:42 AM, Vincent Génieux wrote:
> This is a fix for https://bugzilla.yoctoproject.org/show_bug.cgi?id=7112

You can replace the bug reference with:

[YOCTO: #7112]

Bruce

> bash specific syntax '[[ test ]]' replaced with '[ test ]'.
>
> Signed-off-by: Vincent Génieux <vincent2014@startigen.fr>
> ---
>   meta/classes/kernel.bbclass |    2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
> index 70ed95b..2a6ec34 100644
> --- a/meta/classes/kernel.bbclass
> +++ b/meta/classes/kernel.bbclass
> @@ -403,7 +403,7 @@ do_strip() {
>   			  gawk '{print $1}'`
>
>   		for str in ${KERNEL_IMAGE_STRIP_EXTRA_SECTIONS}; do {
> -			if [[ "$headers" != *"$str"* ]]; then
> +			if [ "$headers" != *"$str"* ]; then
>   				bbwarn "Section not found: $str";
>   			fi
>
>


