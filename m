Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7286E01363
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 06:47:23 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 998CEF811F5; Wed, 24 Jul 2013 07:47:22 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 3AB15F811E5;
	Wed, 24 Jul 2013 07:47:20 -0600 (MDT)
Message-ID: <51EFDAE9.7060805@mlbassoc.com>
Date: Wed, 24 Jul 2013 07:47:21 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <AF0985D076EB244693F2CCD71AAB10BC2C5E364AEF@BLRINMSMBX01.bglrodc.lntinfotech.com>
	<687289320.4zlV4NqfiV@helios>
	<AF0985D076EB244693F2CCD71AAB10BC2C5E6AB4AB@BLRINMSMBX01.bglrodc.lntinfotech.com>,
	<13093998.oFjvbLO2OA@helios>
	<AF0985D076EB244693F2CCD71AAB10BC2C5E1101B5@BLRINMSMBX01.bglrodc.lntinfotech.com>
	<AF0985D076EB244693F2CCD71AAB10BC2C5E6AB9E0@BLRINMSMBX01.bglrodc.lntinfotech.com>
In-Reply-To: <AF0985D076EB244693F2CCD71AAB10BC2C5E6AB9E0@BLRINMSMBX01.bglrodc.lntinfotech.com>
Subject: Re: FW: Regarding offline build
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
X-List-Received-Date: Wed, 24 Jul 2013 13:47:26 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-07-24 06:48, Amit Kumar wrote:
>
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Amit Kumar
> Sent: Wednesday, July 24, 2013 8:10 AM
> To: Paul Eggleton
> Cc: yocto@yoctoproject.org; Lee_Ballard@Dell.com
> Subject: Re: [yocto] Regarding offline build
>
> Hi,
>       I have tried the steps suggested by Mr. Paul.
> But still i am facing an error to build yocto project offline.
> First - I use the machine that have full Internet access and execute the  - bitbake -c fetchall core-image-minimal Before that i have enabled the DL_DIR in conf/local.conf file.
>
> One the fetching done, i remove the internet and build the image - bitbake -k core-image-minimal But still i am facing an error, some packages still required internet access during build.
>
> Please find the attached error log with this mail.
> Please let me know if i missed out any step.

This process should have worked.  What files were in your DL_DIR at
the end of the fetchall step?

> ________________________________________
> From: Paul Eggleton [paul.eggleton@linux.intel.com]
> Sent: Tuesday, July 23, 2013 4:05 PM
> To: Amit Kumar
> Cc: Lee_Ballard@Dell.com; yocto@yoctoproject.org
> Subject: Re: [yocto] Regarding offline build
>
> Amit Kumar wrote:
>>> To build the Yocot Project offline, i have done the following- [1]
>>> Downloaded the Poky-<latest>.tar.bz2 [2] Untar it. and enter the
>>> poky dir.
>>> [3] execute the - source oe-init-build-env [4] edit the
>>> conf/local.conf file as per ur suggesion.
>>> [5] Build the image - bitbake core-image-minimal
>>>
>>> But still i am getting an error-
>>> To have to look into the error plz find the attached error log-
>
> The missing step is you haven't populated DL_DIR (defaults to downloads/ under the build directory) with files that would normally be downloaded by the system, so it is attempting to download them and stopping because BB_NO_NETWORK is set, hence:
>
> | ERROR: Function failed: Network access disabled through BB_NO_NETWORK
>
> The easiest thing to do is to go to a machine that does have full internet access, untar poky, source oe-init-build-env and then run:
>
>   bitbake -c fetchall <imagename>
>
> Then copy the contents of DL_DIR to the machine without network access and you should be ready to go.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>
> The contents of this e-mail and any attachment(s) may contain confidential or privileged information for the intended recipient(s). Unintended recipients are prohibited from taking action on the basis of information in this e-mail and  using or disseminating the information,  and must notify the sender and delete it from their system. L&T Infotech will not accept responsibility or liability for the accuracy or completeness of, or the presence of any virus or disabling code in this e-mail"
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

