Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4DD07E00CCD; Mon, 24 Oct 2016 00:30:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE665E00CC7
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2016 00:30:39 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u9O7UYMh015842
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Mon, 24 Oct 2016 00:30:34 -0700
Received: from [128.224.162.183] (128.224.162.183) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.294.0;
	Mon, 24 Oct 2016 00:30:34 -0700
To: Scott Rifenbark <srifenbark@gmail.com>
References: <e31bd25d-f9a1-2e51-b0dc-aa75d6dfd294@windriver.com>
	<CAFNP8OuWkgQNF4D59OHuv4GhYz_MFPSrEwDudxweDvFgLoJFLA@mail.gmail.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <68a992c4-9b7e-9241-619b-e593fdb8bd4a@windriver.com>
Date: Mon, 24 Oct 2016 15:30:32 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <CAFNP8OuWkgQNF4D59OHuv4GhYz_MFPSrEwDudxweDvFgLoJFLA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: Manuals for ROOT LABELS INITRD and INITRD_IMAGE
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
X-List-Received-Date: Mon, 24 Oct 2016 07:30:45 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit


Hi Scott,

We can find INITRD, INITRD_IMAGE, LABELS in this document:

http://www.yoctoproject.org/docs/2.2/ref-manual/ref-manual.html

For example LABELS:
http://www.yoctoproject.org/docs/2.2/ref-manual/ref-manual.html#var-LABELS

We need update all the ROOT LABELS INITRD and INITRD_IMAGE to the _VM or
_LIVE version as I sent in the email.

For ROOT, there is already ROOT_VM, but no ROOT_LIVE.

And we can also find them in documentation/ref-manual/ref-variables.xml and
documentation/ref-manual/ref-classes.xml (I assume that these xmls are the
sources of the web), for example:

$ grep INITRD documentation/* -r
documentation/ref-manual/ref-variables.xml:        <glossentry 
id='var-INITRD'><glossterm>INITRD</glossterm>
documentation/ref-manual/ref-variables.xml:                INITRD[doc] = 
"Indicates a list of filesystem images to concatenate and use as an initial RAM 
disk (initrd)."
documentation/ref-manual/ref-variables.xml:                    The 
<filename>INITRD</filename> variable is an optional
documentation/ref-manual/ref-variables.xml:        <glossentry 
id='var-INITRD_IMAGE'><glossterm>INITRD_IMAGE</glossterm>
documentation/ref-manual/ref-variables.xml:                INITRD_IMAGE[doc] = 
"When building a "live" bootable image (i.e. when IMAGE_FSTYPES contains 
"live"), INITRD_IMAGE specifies the image recipe that should be built to provide 
the initial RAM disk image."
documentation/ref-manual/ref-variables.xml:                    contains "live"), 
<filename>INITRD_IMAGE</filename>
documentation/ref-manual/ref-classes.xml:                <link 
linkend='var-INITRD'><filename>INITRD</filename></link>:
documentation/ref-manual/ref-classes.xml:            <listitem><para><link 
linkend='var-INITRD'><filename>INITRD</filename></link>:

// Robert

On 10/22/2016 04:11 AM, Scott Rifenbark wrote:
> Hi Robert,
>
> I don't quite understand this.  Could you point to some areas in the manual that
> are needing updated?  I don't have any occurrences of ROOT_LIVE, LABELS_VM,
> LABELS_LIVE, INITRD_VM, or INITRD_LIVE in the YP manual set.  I guess I just
> need some more explanation here on how to fix this issue in the manual.
>
> Thanks,
> Scott
>
> On Thu, Oct 20, 2016 at 12:36 AM, Robert Yang <liezhi.yang@windriver.com
> <mailto:liezhi.yang@windriver.com>> wrote:
>
>     Hi Scott,
>
>     The LIVE (such as iso) and VM images (such as vmdk) can't use the same
>     settings for ROOT LABELS INITRD and INITRD_IMAGE, either of them may fail
>     to boot, so when the user uses one of them, they will get warnings like:
>
>     WARNING: core-image-minimal-1.0-r0 do_bootimg: Found potential conflicted
>     var LABELS, please use LABELS_LIVE rather than LABELS"
>
>     We should use _LIVE or _VM version to instead of, would you please update
>     the manual for them ?
>
>     ROOT_VM: Boot loader's root options for vm images, e.g., root=/dev/sda2.
>     ROOT_LIVE: Boot loader's root options for live images, e.g., root=/dev/ram0.
>
>     LABELS_VM: Boot loader's actions for vm images, e.g., "boot".
>     LABELS_LIVE: Boot loader's actions for live images, e.g., "boot install".
>
>     INITRD_VM: Path to initial RAM disk (initrd) for vm images.
>     INITRD_LIVE:  Path to initial RAM disk (initrd) for live images.
>
>     # There is no warnings when use INITRD_IMAGE, I will fix it in Yocto 2.3.
>     INITRD_IMAGE_VM: INITRD's image name (PN) for vm images
>     INITRD_IMAGE_LIVE: INITRD's image name (PN) for live images
>
>     --
>     Thanks
>
>     Robert
>
>

