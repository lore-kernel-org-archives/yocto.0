Return-Path: <alberk@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1411CE00873; Thu, 25 Sep 2014 19:11:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alberk[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.170 listed in list.dnswl.org]
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 736FAE00790
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 19:11:48 -0700 (PDT)
Received: by mail-ig0-f170.google.com with SMTP id a13so219370igq.5
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 19:11:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=5NZAfULkbpLCHjmD7A+NV91MtLudHvdTyid1zK5XSHs=;
	b=NW+Az2sBEU3mwNsiU0tLQsAEqAZy4R+404jm926mIJNOawnuBk8OU7ffcth3MAhYLc
	k0MT8HoYAZVCNng3S9KJhfkZ8WkA0+2bqyoismDlRtqglC3xzMtUw3fu1mU/oB9A12CY
	00/My7LherfOLGp9zNiGnCp4FW87yQyGrja9BeTkGVkPgWJ3AVZv4xwjKGanK1Edoi3K
	GvN5VYh+m0/94q7GCEpNhC2/fna4DuL1iihr9QJnG3agm1p+o0Wc+nkP4OpCtxochPiB
	I2EZNYlS3biVNO/PNUVpTiGrjuf4gqpBB+Uy2QFBTyEeJGz7ii+kyuBIvRm2K6dTVrmd
	56Zg==
MIME-Version: 1.0
X-Received: by 10.43.61.4 with SMTP id wu4mr23426489icb.77.1411697507662; Thu,
	25 Sep 2014 19:11:47 -0700 (PDT)
Received: by 10.107.7.95 with HTTP; Thu, 25 Sep 2014 19:11:47 -0700 (PDT)
In-Reply-To: <CAJTo0La-_4byM=QnF8-_wT_JBaPs=P-vUjqvxHfBTBo2boaO-w@mail.gmail.com>
References: <CACjDgAMYTpdLF5YSJNVkceaYMXCVT1n-th1nJuTc=nYFu7EPDg@mail.gmail.com>
	<CAJTo0La-_4byM=QnF8-_wT_JBaPs=P-vUjqvxHfBTBo2boaO-w@mail.gmail.com>
Date: Fri, 26 Sep 2014 10:11:47 +0800
Message-ID: <CACjDgAO+390wcoRYGkcPOSMeXNmjgATskfWhyFTzP7y60CgV-Q@mail.gmail.com>
From: Albert K <alberk@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding OpenEmbedded layer
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
X-List-Received-Date: Fri, 26 Sep 2014 02:11:50 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

Thanks for the information.   I removed the previously cloned
directory and re-clone it with the following command and now it works.

sudo git clone -b daisy git://git.openembedded.org/meta-openembedded



On Thu, Sep 25, 2014 at 6:18 PM, Burton, Ross <ross.burton@intel.com> wrote:
> On 25 September 2014 11:00, Albert K <alberk@gmail.com> wrote:
>> ExpansionError during parsing
>> /yocto/poky/meta-openembedded/meta-oe/recipes-support/lzip/lzip_1.15.bb:
>> Failure expanding variable do_fetch[file-checksums], expression was
>> ${@bb.fetch.get_checksum_file_list(d)} which triggered exception
>> MalformedUrl: The URL: '${SAVANNAH_GNU_MIRROR}/lzip/lzip-1.15.tar.gz'
>> is invalid and cannot be interpreted
>
> You're using poky 1.7.1 but meta-oe from git master, which depends on
> some variables that have been added to poky master.
>
> Switch the meta-oe clone to the daisy branch, and it will work.
>
> Ross

