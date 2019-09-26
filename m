Return-Path: <mark.hatle@kernel.crashing.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C998E00D85; Thu, 26 Sep 2019 07:58:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9C25E00CBC
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2019 07:58:21 -0700 (PDT)
Received: from Marks-MacBook-Pro.local ([76.164.61.198]) (authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id x8QEwGqK028325
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO); Thu, 26 Sep 2019 09:58:18 -0500
From: Mark Hatle <mark.hatle@kernel.crashing.org>
To: "Westermann, Oliver" <Oliver.Westermann@cognex.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <BN6PR06MB31385BF1EE592AF8730582AA86860@BN6PR06MB3138.namprd06.prod.outlook.com>
Message-ID: <a19f1119-675f-cd0b-672a-2e8536f8af0f@kernel.crashing.org>
Date: Thu, 26 Sep 2019 09:58:16 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <BN6PR06MB31385BF1EE592AF8730582AA86860@BN6PR06MB3138.namprd06.prod.outlook.com>
Subject: Re: Transfer meta-data between recipes
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
X-List-Received-Date: Thu, 26 Sep 2019 14:58:22 -0000
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 9/26/19 8:59 AM, Westermann, Oliver wrote:
> Hey,
> 
>  
> 
> I’m trying to implement a bootloader-signing mechanism within yocto for extended
> secure-boot support. The bootloader and it’s recipes are provided by NXP (in
> this case it’s the imx-boot_*.bb recipe from meta-freescale) and I want to use a
> secondary recipe which I am creating to sign the resulting boot binary. My issue
> is that the NXP code signing tool needs some info about the binary to sign.
> These details are send to stdout by imx-mkimage tool, which is called by the imx
> boot makefile (used here:
> https://github.com/Freescale/meta-freescale/blob/master/recipes-bsp/imx-mkimage/imx-boot_0.2.bb#L104).
> 

In the cases I know of, most code signing is either done in the recipe itself
(via an added task from a special class after install and prior to packaging) or
it's being done at rootfs/image generation time.

> 
> I can override the compile step of imx-boot to save stdout into a file, deploy
> this file and later parse it to extract the offset dump, but that feels “ugly”
> and the file is by no means a output of the imx-boot recipe for the target
> system, but for another step. Is there any recommended way to parse such
> variable metadata between recipes?

Namespace is local to a recipe.  The only way you can share from one namespace
to another is write the data into a file, and then load it in the second.  That
is done occasionally for link time settings and such.  (i.e. pkgconfig).

--Mark

>  
> 
> Olli
> 
>  
> 
> 


