Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2289E00809; Mon,  2 Feb 2015 02:54:04 -0800 (PST)
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
	*      [209.85.223.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f179.google.com (mail-ie0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAE12E0070B
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 02:53:58 -0800 (PST)
Received: by mail-ie0-f179.google.com with SMTP id x19so16622853ier.10
	for <yocto@yoctoproject.org>; Mon, 02 Feb 2015 02:53:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=oD0GB+EKJseNotxg5QhfyRyWLlVheG0ec78iMeCBGSM=;
	b=J1R7R+9c4YPNZ7YK4kfp/1THBJujM1UPZsqZxLAZkU4dkMbsj+P7L4+D0TmhZgqLDG
	+euX6tHDN2CdB8r1p2tJmmn0chZO9b4MxSAESrCkqzGm79vgJuUlxAkovCRGJ+hXLc+U
	qdK8756Ey09k2z0V3El77TZDPDw+yyku4PlQUlR58hkDqMcD9Nd9YLEsO8oLwtRt9ZJS
	iHXM/7vsK1fO5NkeO7csObSveLrZGN8zkuTT1DIu0VX/trvre2aibCMbi9zMU18vWely
	lUgWjhcth1K5VadnCQqJP9woKRkTImX3qMEe2vgbtmqvvEYI/dcFvcsvmjCHd2uikkye
	mVZQ==
X-Received: by 10.50.29.68 with SMTP id i4mr11009020igh.4.1422874437924; Mon,
	02 Feb 2015 02:53:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.117.7 with HTTP; Mon, 2 Feb 2015 02:53:27 -0800 (PST)
In-Reply-To: <CAJTo0LaN3HMhjrpii2pPbJw5zWbywgr1keZe=iQmuKFMFFf=gQ@mail.gmail.com>
References: <CAMKF1souj1-FLTjkQb0y8myTiKMJyNeAa7wiM5-pW1fz0EtheA@mail.gmail.com>
	<CAJTo0LaN3HMhjrpii2pPbJw5zWbywgr1keZe=iQmuKFMFFf=gQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 2 Feb 2015 02:53:27 -0800
Message-ID: <CAMKF1sqb5dCMmMfN1rh5jBPoFVAXAdiwqW8tvgXr4S4yODjdZA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [RFT] upcoming glibc 2.21 and gcc 4.9 upgrade
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
X-List-Received-Date: Mon, 02 Feb 2015 10:54:05 -0000
Content-Type: text/plain; charset=UTF-8

Hi Ross

Please repull. I did not push from right machine first time. Now it
should be good.
Thanks for quick turnaround

Thanks
-Khem

On Mon, Feb 2, 2015 at 2:40 AM, Burton, Ross <ross.burton@intel.com> wrote:
> Hi Khem,
>
> On 2 February 2015 at 10:02, Khem Raj <raj.khem@gmail.com> wrote:
>>
>> I have put together upgrade to gcc 4.9.2 as well as glibc 2.21 (
>> upcoming ) on  a contrib branch ( top 2 patches) its has not got much
>> testing besides x86 qemu thus far.
>
>
> I'm seeing these failures when cherry-picking the top two commits to current
> poky/master.
>
> gcc-cross-initial:
>
> | /data/poky-master/tmp/work-shared/gcc-4.9.2-r0/gcc-4.9.2/gcc/dwarf2cfi.c:
> In function 'void expand_builtin_init_dwarf_reg_sizes(tree)':
> |
> /data/poky-master/tmp/work-shared/gcc-4.9.2-r0/gcc-4.9.2/gcc/dwarf2cfi.c:334:27:
> error: 'struct gcc_target' has no member named 'dwarf_frame_reg_mode'
>
> cross-localdef-native:
>
> | In file included from glibc/locale/programs/locarchive.c:696:0:
> | glibc/locale/programs/../../intl/l10nflist.c: In function
> '_nl_normalize_codeset':
> | glibc/locale/programs/../../intl/l10nflist.c:306:12: error: missing binary
> operator before token "("
> | glibc/locale/programs/../../intl/l10nflist.c:313:9: error:
> '_nl_C_locobj_ptr' undeclared (first use in this function)
> | glibc/locale/programs/../../intl/l10nflist.c:313:9: note: each undeclared
> identifier is reported only once for each function it appears in
>
> Ross

