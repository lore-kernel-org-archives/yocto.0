Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 840D2E00543; Fri,  1 Aug 2014 18:03:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
Received: from mail-ie0-f174.google.com (mail-ie0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09FC5E004DD
	for <yocto@yoctoproject.org>; Fri,  1 Aug 2014 18:03:07 -0700 (PDT)
Received: by mail-ie0-f174.google.com with SMTP id rp18so6840427iec.33
	for <yocto@yoctoproject.org>; Fri, 01 Aug 2014 18:03:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=fOB9366EaomueXjcxg0x4gYlzu1s90UV+6AzGL1Lhhs=;
	b=q8NWr2n6zj9v0LLhYUsj7hdpfgIQBWRBNe/Rbf7RHDJzr4AmNIYuMJaKrI4LI16v4r
	pbVn3nVbS0MdWPKGrWknUC1h6opDcl8wvrw7mR10BtPgCguJ3hoN2W+8r5Sbp8B8L4WQ
	YEiP+FFdLvf4fNsqeFAoyVZMS+O4niaIFssd+WiTunAm6dbc7Cp6FZ42Y4NZ9un+6wWy
	jTznrjApvVcWCjRZLSrIiGMo5nktDGbXthW1XoJgn5xJYRkYpWRKT/5XiiyP8grhio12
	H0vaRJSkWXav08rDEqGGY/MZbTWELEom4mED6BREqOsgwxo4jcl+NQPHHns9bYpLp7rw
	cadA==
X-Received: by 10.42.82.6 with SMTP id b6mr11482860icl.51.1406941387038; Fri,
	01 Aug 2014 18:03:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.78.105 with HTTP; Fri, 1 Aug 2014 18:02:36 -0700 (PDT)
In-Reply-To: <1624546.n1hBMRbNts@peggleto-mobl5.ger.corp.intel.com>
References: <mailman.21236.1406788558.26702.yocto@yoctoproject.org>
	<3448592.XcGlM2j8ls@peggleto-mobl5.ger.corp.intel.com>
	<BLU185-W32A6A2A4836734A928F13BC7E70@phx.gbl>
	<1624546.n1hBMRbNts@peggleto-mobl5.ger.corp.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 1 Aug 2014 18:02:36 -0700
Message-ID: <CAMKF1soCaq+40wppj951YCOOTmkHamvTQuc6Gk3E0V0+pzPfDQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Pushpa Teja <pushpa@jtechindia.in>, sadasivam <sadasivam.b@jtechindia.com>
Subject: Re: yocto Digest, Vol 46, Issue 109
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
X-List-Received-Date: Sat, 02 Aug 2014 01:03:08 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Aug 1, 2014 at 2:19 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
>> /home/teju/fsl-arm-yocto-bsp/build/tmp/work/cortexa9hf-vfp-neon-mx6-poky-li
>> nux-gnueabi/fsl-gpu-sdk/1.1-r0/temp/log.do_fetch.9093 ERROR: Task 391
>> (/home/teju/fsl-arm-yocto-bsp/sources/meta-fsl-bsp-release/imx/meta-fsl-dem
>> os/recipes-graphics/fsl-gpu-sdk/fsl-gpu-sdk_1.1.bb, do_fetch) failed with
>> exit code '1'

there might be an EULA that you have to accept. You are better of
asking freescale people about it.

