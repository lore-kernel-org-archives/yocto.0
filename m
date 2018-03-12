Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18A1BE00A75; Mon, 12 Mar 2018 03:26:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f45.google.com (mail-lf0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3D0EE0081A
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2018 03:26:06 -0700 (PDT)
Received: by mail-lf0-f45.google.com with SMTP id q69-v6so22313464lfi.10
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2018 03:26:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=GfClc5ITVLX4y+NtolifWlkWn6Jo5MYIqiEWbI+wbDg=;
	b=Bh54/uWZSCOpg/RCLNX5ErvdIuQVCb/S6YwDt7OGaxAR6G/8utrIiUu+U6MK1sS5fc
	M8pDpBeUNz7vn6uUwxisgqsRlVY/RmTSbnlPmwABRv0eqQ5FJC9xlPoyIkosTD3Q25XG
	ifNpoIvVMgETSm6z8JF3XlijWzBqKOJykzz2Cfd3///rTJrsB6cMQxkDF65AfNCgzojm
	bs13sBuyrTfSONG8mBKKq+6Xr5s2dNnOlSyluuv+QdwNOKnFfsUyDTKcvkgCdBfuHhDK
	0lAMYf8l2DPa5RR7V6fWklcO48TTTTHHgjggSdZF9DcdVc5Bx8oJl181cOr4u1E6UYDD
	tvsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=GfClc5ITVLX4y+NtolifWlkWn6Jo5MYIqiEWbI+wbDg=;
	b=RrJatbBEjZbs/M40nAzywNf4bEvpWVK+tYmv2p76cTZ6PQtjm/dTc55PSBb+JeILWG
	0yOHoduFni4P6NZkRkWkel2onYn9J0lHrEBNuJ45bnRUN4hDM6xNwUHOhY/5kjdTeDZ2
	w0pgTS6tD+o+9S0SIvlfRCEZWlUUNGcmngj3MdY5hNhpXKcn2E9uo8HApOZiYTMgTvLg
	CkKuFPeOhvAylJMCBFL2c42Tt79+mQBj3g6/x28+g29HQMzQbXt8ZMYHr9uoq2lYd+el
	f81SMGh3EGWyLCF5R5bpTLnpkXsT60MaORmCdr01eB5N7FoFkMuD1apoqK3LGK+fGfZi
	znEQ==
X-Gm-Message-State: AElRT7HVvILaQxZ8lUQpyZwmAcYg6PbGeg55/HZUqZ1H0chdgDNo5agR
	OIL8LBH/1/GLIuc07FoVej7rGFj5alnHW+/WdUr1Jg==
X-Google-Smtp-Source: AG47ELsBY7Vmm0yio0RiE8xzi5hPdVwPtIt+zxhw/m+/HQiCVnYuzL6iiJBs87uIb0LQYd5C2yylSNrfy+0xr+Gzjb4=
X-Received: by 10.46.7.80 with SMTP id i16mr4572274ljd.78.1520850365626; Mon,
	12 Mar 2018 03:26:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:1f0f:0:0:0:0:0 with HTTP; Mon, 12 Mar 2018 03:26:05
	-0700 (PDT)
In-Reply-To: <CAFq4t4iDwYGcV-Zx03+9Xu09KfZRRRUN+-FWQHTsN=YciKMeSg@mail.gmail.com>
References: <CAFq4t4gHeuROOaP3q7k3_i2BthqH2GQtf93OCTOcb6XhA1ANvw@mail.gmail.com>
	<CAOT_U5Z_Oph_QdPy3XsG-0Wi-e8AYU=BJv4TX+UYjX-F87WdmQ@mail.gmail.com>
	<CAFq4t4j-4B1T4k2fq31eZA0mTYx=kZ1iZFGnUc+kJ6FazmmRGA@mail.gmail.com>
	<CAFq4t4iDwYGcV-Zx03+9Xu09KfZRRRUN+-FWQHTsN=YciKMeSg@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Mon, 12 Mar 2018 11:26:05 +0100
Message-ID: <CAOT_U5Zsz7nw-fNojfHzSM3aRaJGfr8A0X6_CzhyR8QMO6O7LA@mail.gmail.com>
To: Peter Balazovic <balazovic.peter@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: python-pyqt
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
X-List-Received-Date: Mon, 12 Mar 2018 10:26:08 -0000
Content-Type: text/plain; charset="UTF-8"

Don't know if I can help you with that, sorry.
Seems to be a promise of a nest of snakes :)

Perhaps a suggestion before you go down that rabbit hole...
Try getting the whole `meta-qt5` that has the required python packages in
it already.
Perhaps you'll have more luck with that than porting a recipe.

Be Well,
Alan





On Sat, Mar 10, 2018 at 7:28 PM, Peter Balazovic
<balazovic.peter@gmail.com> wrote:
> i've added "sip" package to my build and mow by using python-pyqt5_5.8.2.bb
>
>
> ERROR: python-pyqt5-5.8.2-r0 do_patch: Command Error: 'quilt --quiltrc
> /home/ubuntu/work/morty/fsl-release-bsp-imx6/build/tmp/sysroots/x86_64-linux/etc/quiltrc
> push' exited with 0  Output:
> Applying patch fix-sm.patch
> patch: **** Only garbage was found in the patch input.
> Patch fix-sm.patch does not apply (enforce with -f)
> ERROR: python-pyqt5-5.8.2-r0 do_patch: Function failed: patch_do_patch
> ERROR: Logfile of failure stored in:
> /home/ubuntu/work/morty/fsl-release-bsp-imx6/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/python-pyqt5/5.8.2-r0/temp/log.do_patch.6327
> ERROR: Task
> (/home/ubuntu/work/morty/fsl-release-bsp-imx6/sources/meta-qt5/recipes-python/pyqt5/python-pyqt5_5.8.2.bb:do_patch)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 7479 tasks of which 7474 didn't need to be
> rerun and 1 failed.
>
>
>
>
> On Sat, Mar 10, 2018 at 6:14 PM, Peter Balazovic <balazovic.peter@gmail.com>
> wrote:
>>
>> I have repo from
>> http://git.freescale.com/git/cgit.cgi/imx/fsl-arm-yocto-bsp.git/ branch
>> imx-morty
>> there is layer "meta-qt5" but does not contain "python-pyqt" or
>> ""python-pyqt5" recipes.
>>
>> I copied python-pyqt5_5.8.2.bb recipe from
>> https://layers.openembedded.org/layerindex/recipe/60914/
>>
>>
>> On Sat, Mar 10, 2018 at 3:41 PM, Alan Martinovic
>> <alan.martinovic@senic.com> wrote:
>>>
>>> Seems like the name of the package is: python-pyqt5
>>>
>>> A recipe with that name does exist in meta-qt5:
>>> https://layers.openembedded.org/layerindex/recipe/60914/
>>>
>>> As on why bitbake didn't automatically set the recipe for execution
>>> (based on RDEPENDS) but you would need to manually add it to
>>> IMAGE_INSTALL_append
>>> I don't know.
>>>
>>> Do you have meta-qt5 in your layers?
>>>
>>>
>>> On Sat, Mar 10, 2018 at 1:53 PM, Peter Balazovic
>>> <balazovic.peter@gmail.com> wrote:
>>> > Dears,
>>> >
>>> >
>>> >
>>> > per Yocto build from fsl-arm-yocto-bsp.git - i.MX Linux BSP Release
>>> > Yocto
>>> > Project manifests of imx-morty branch I have built fsl-image-qt5 image,
>>> > I
>>> > need to add qt5 python support, how to add to the image?
>>> >
>>> >
>>> >
>>> > Modifying local.conf not works
>>> >
>>> > IMAGE_INSTALL_append += "python-pyqt"
>>> >
>>> >
>>> > I end up with errors...
>>> >
>>> >
>>> > ERROR: Nothing RPROVIDES 'python-pyqt5' (but
>>> >
>>> > /home/ubuntu/work/morty/fsl-release-bsp-imx6/sources/meta-fsl-bsp-release/imx/meta-sdk/recipes-fsl/images/fsl-image-qt5.bb
>>> > RDEPENDS on or otherwise requires it)
>>> >
>>> > NOTE: Runtime target 'python-pyqt5' is unbuildable, removing...
>>> >
>>> > Missing or unbuildable dependency chain was: ['python-pyqt5']
>>> >
>>> > ERROR: Required build target 'fsl-image-qt5' has no buildable
>>> > providers.
>>> >
>>> > Missing or unbuildable dependency chain was: ['fsl-image-qt5',
>>> > 'python-pyqt5']
>>> >
>>> >
>>> >
>>> > How to add python QT5 support to Yocto image build?
>>> >
>>> >
>>> > Thank you.
>>> >
>>> > --
>>> > _______________________________________________
>>> > yocto mailing list
>>> > yocto@yoctoproject.org
>>> > https://lists.yoctoproject.org/listinfo/yocto
>>> >
>>
>>
>

