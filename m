Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3BB80E00A7D; Tue, 12 Jan 2016 00:43:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F9F7E008A5
	for <yocto@yoctoproject.org>; Tue, 12 Jan 2016 00:43:09 -0800 (PST)
Received: by mail-ig0-f169.google.com with SMTP id ik10so142083544igb.1
	for <yocto@yoctoproject.org>; Tue, 12 Jan 2016 00:43:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=hYv2IIUnxqZQ/CCoMkR+is2aDic4+KwtvG2c+8zIeZ4=;
	b=DwM/M7IRqykxGFH4SbDcATbHVAmv0LotugOtZcGTC+erduR9y8sqGMJOy0E3rId15J
	CMsLlDLWbXov7DSdOtYQmp5KZOoPP6oXnT72XqYWMA8fnILlrIUXAdJT5zFdCEkxQsz8
	8j0iyOnB/8q6fN1ZiUj1YK2CPEX6qtXfkn2SVmDF/exJy3lnJKoNWK5VYZOaNw1Kvsrb
	EW8E3SJsmXTsuc+nRuJfG3TG0eWTeJan88Y4KPmPa+hGUj/OgpKhmGqfgME/c8J3eMuR
	fde7Op3FcVvANXi/RmFbV0BCWw6pic4vDrP84p4q5zJtakMWYzie+eDfvoWf8fW6eXpl
	J3hg==
X-Received: by 10.50.33.81 with SMTP id p17mr1519859igi.75.1452588188718; Tue,
	12 Jan 2016 00:43:08 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.16.74 with HTTP; Tue, 12 Jan 2016 00:42:39 -0800 (PST)
In-Reply-To: <CAF5S8SOmOLVR9gU_=WgxW1fPZNxUyyEqO5j_mH5xsFnr=Ex-Cg@mail.gmail.com>
References: <CAF5S8SOmOLVR9gU_=WgxW1fPZNxUyyEqO5j_mH5xsFnr=Ex-Cg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 12 Jan 2016 00:42:39 -0800
Message-ID: <CAMKF1srH4wXuEohCrj3_hxK6=uO-UX0ETjtpnGsMdrc0fUrREg@mail.gmail.com>
To: Sarayu Krishna Sivanandam <sarayu@zaikenn.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to build jffs2 rootfs image in freescale community build
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
X-List-Received-Date: Tue, 12 Jan 2016 08:43:13 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jan 12, 2016 at 12:32 AM, Sarayu Krishna Sivanandam
<sarayu@zaikenn.com> wrote:
> Hi all ,
>
> I was initially using the QorIQ-SDK-V1.8 SDK and was using the command
> "bitbake corre-image-full " to generate the full images including the uboot
> , the jffs2 filesystem etc as shown below ,
>
> -rw-r--r--. 1 sarayu sarayu 30670848 Oct 14 13:46
> fsl-image-core-ls1021atwr-20151014203509.rootfs.jffs2
>
>
> Hoe ever now i have moved to the fsl-community-bsp and want to generate the
> full images . I am uisng the command "bitbake core-image-full-cmdline"  as
> the "core-image-full " command was not available . But it still did not
> generate the individual filesystem types . It generated a filesystem file
> like the below .
>
> -rw-r--r--. 1 sarayu sarayu 24353214 Jan 11 23:12
> core-image-full-cmdline-ls1021atwr-20160112065953.rootfs.tar.gz
>
>
>  Can you please let me know how to generate the jffs2 image in my community
> bsp ? Please let me know what i am missing here .

Add IMAGE_FSTYPES += "jffs2" in your local.conf

>
>
> Thanks in advance for your help.
>
> Thanks and Regards,
> Sarayu K S
> Tech Lead
> Zaikenn Technologies
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

