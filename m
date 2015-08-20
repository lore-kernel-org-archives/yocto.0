Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0B7EE00A49; Thu, 20 Aug 2015 03:58:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.177 listed in list.dnswl.org]
Received: from mail-pd0-f177.google.com (mail-pd0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88085E0097F
	for <yocto@yoctoproject.org>; Thu, 20 Aug 2015 03:58:03 -0700 (PDT)
Received: by pdbmi9 with SMTP id mi9so13086442pdb.3
	for <yocto@yoctoproject.org>; Thu, 20 Aug 2015 03:58:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=I+H8YWCIAPEEgnUjBZWts+OSunaHjb+sfn8oSHftTeY=;
	b=WupwMEf6bWExfjaSCXs2Iodyw8eDrN0zxdg1qwbm3yW40OszuepIIBBOgT0WFwx2jX
	pUv3wJy2VJkzQVGH4Dnfm/GpomK1XumH4PEq1fKNADN7n6W5KQSiEbNXMseqcFHweXdf
	pepiKmW4FxqtSYB/dv4DFsTjxE4MUOLzwCOvuBnUioiirSTUuLdxjPXMGiRd2s+5GjKC
	lAwDr60Htl/tIYdpglvnZnrTysr3PiC/1Dvc6ftGSAtGCv66XQ+4pxtQVHjToSNCnKK0
	dXyhqDnqsLY0Q+RLLvByD28j3wzLMIrpsTc/CUqDKQBTTEs1kA7FC0ruIUyXEvNbCcIE
	vg8w==
X-Received: by 10.70.4.3 with SMTP id g3mr5167440pdg.73.1440068283197;
	Thu, 20 Aug 2015 03:58:03 -0700 (PDT)
Received: from [192.168.0.2] (60-242-179-244.static.tpgi.com.au.
	[60.242.179.244]) by smtp.gmail.com with ESMTPSA id
	qp13sm3966686pbb.9.2015.08.20.03.57.59
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 20 Aug 2015 03:58:01 -0700 (PDT)
Message-ID: <55D5B2B2.5020900@gmail.com>
Date: Thu, 20 Aug 2015 20:57:54 +1000
From: Jonathan Liu <net147@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Andrei Gherzan <andrei@gherzan.ro>
References: <1439651308-12048-1-git-send-email-net147@gmail.com>
In-Reply-To: <1439651308-12048-1-git-send-email-net147@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] rpi-config: fix setting decode_WVC1 in config.txt
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
X-List-Received-Date: Thu, 20 Aug 2015 10:58:10 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 16/08/2015 1:08 AM, Jonathan Liu wrote:
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>   recipes-bsp/bootfiles/rpi-config_git.bb | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
> index 29ced34..45b9f1d 100644
> --- a/recipes-bsp/bootfiles/rpi-config_git.bb
> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
> @@ -26,7 +26,7 @@ do_deploy() {
>           sed -i '/#decode_MPG2/ c\decode_MPG2=${KEY_DECODE_MPG2}' ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>       fi
>       if [ -n "${KEY_DECODE_WVC1}" ]; then
> -        sed -i '/#decode_WVC1/ c\decode_MVC1=${KEY_DECODE_WVC1}' ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> +        sed -i '/#decode_WVC1/ c\decode_WVC1=${KEY_DECODE_WVC1}' ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>       fi
>       if [ -n "${DISABLE_OVERSCAN}" ]; then
>           sed -i '/#disable_overscan/ c\disable_overscan=${DISABLE_OVERSCAN}' ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
Bump. It's a simple typo fix. Notice MVC1 should be WVC1.

Regards,
Jonathan

