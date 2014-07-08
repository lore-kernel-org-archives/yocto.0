Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6076DE00576; Tue,  8 Jul 2014 00:36:18 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8862DE004FF
	for <yocto@yoctoproject.org>; Tue,  8 Jul 2014 00:36:14 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s687aDG3020064
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 8 Jul 2014 00:36:13 -0700 (PDT)
Received: from [128.224.162.181] (128.224.162.181) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.174.1;
	Tue, 8 Jul 2014 00:36:12 -0700
Message-ID: <53BB9F6B.8040801@windriver.com>
Date: Tue, 8 Jul 2014 15:36:11 +0800
From: Robert Yang <liezhi.yang@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: jags gediya <jags.gediya@gmail.com>, <yocto@yoctoproject.org>
References: <CAP3RZoj3A7EmMB_xeif8PVWUygTrNfFfJAj+XwcjN-hGpJzGyg@mail.gmail.com>
In-Reply-To: <CAP3RZoj3A7EmMB_xeif8PVWUygTrNfFfJAj+XwcjN-hGpJzGyg@mail.gmail.com>
Subject: Re: kernel source code
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
X-List-Received-Date: Tue, 08 Jul 2014 07:36:18 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit



On 07/08/2014 02:04 PM, jags gediya wrote:
> I have run below command
>
> bitbake -c fetchall core-image-minimal
>
> It has created downloads directory and packages source codes are
> there inside, but i am not able to find the kernel and u-boot source code.

By default, the kernel-source code is:

<builddir>/downloads/git2/git.yoctoproject.org.linux-yocto-3.14.git

And the u-boot is:
<builddir>/downloads/git2/git.denx.de.u-boot.git

You can check the SRC_URI in the recipe to figure out the source type, they will
be in DL_DIR if tarball, and DL_DIR/git2 if git, the similar to svn (DL_DIR/svn)
and others.

Usually, the "bitbake -e <recipe> >recipe.py" then look at recipe.py helps.

// Robert

>
> I have build core-image-minimal without internet connectivity, and kernel and
> u-boot have also built properly. I am not getting from where it is taking
> the source code for kernel and u-boot.
>
> I am building yocto sdk for imx6l evolution kit and i have checked out
> daisy branch.
>
> Please suggest where can be the source code for kernel and u-boot
> before build but after running fetchall command.
>

