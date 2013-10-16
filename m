Return-Path: <gschmottlach@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14FB6E01663
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 15:20:00 -0700 (PDT)
Received: by mail-wi0-f176.google.com with SMTP id l12so7464427wiv.15
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 15:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=8JqvQNwUi+vvQcSdLENapQlDnOyyCeWmgARLpC+mxgc=;
	b=EvPt3GGdmK1fd7fByonQjRBquZjPODVV7J16uJBOpT055xNi87HwEct6ou/gZSTnzH
	BzBWTeZcS/lsdDGf9sUHcwD6/npuSHTHxqtdJeBQyxIgy/m7LmCnQ+VwwTo4OXEU2+d3
	TJafIJs5V/+jzLwXmbLJjyxAPhp8Rtd9Q3EkPmJFfj6xKZoMUugHqSn3FLm/XpQN8NHU
	LRcm7PfktWv0cYIDT3fyxuAbJHQLdrKmXBQ5EIk2XJCz18pTyFpPmmlXxDo05agPG4Dv
	klifo8Hldn/vewv+l0t4blXb3XoGKqS6vnH5rdYmDa7cUAQ1XLP8qN+WA3GME2MyOZwE
	SprA==
MIME-Version: 1.0
X-Received: by 10.194.175.66 with SMTP id by2mr21665wjc.59.1381961999664; Wed,
	16 Oct 2013 15:19:59 -0700 (PDT)
Received: by 10.216.46.196 with HTTP; Wed, 16 Oct 2013 15:19:59 -0700 (PDT)
In-Reply-To: <CAP71WjxftsAwVoew6PtO5fWJv6xTPmWpSAaQgMfy4gZbq_KEeQ@mail.gmail.com>
References: <CAMS2kBFgfdCHF1f3TfDA3PNzL_PGxOpzrmXLOV_GMhkbdTXocA@mail.gmail.com>
	<CAP71WjxftsAwVoew6PtO5fWJv6xTPmWpSAaQgMfy4gZbq_KEeQ@mail.gmail.com>
Date: Wed, 16 Oct 2013 18:19:59 -0400
Message-ID: <CAMS2kBGt8OgC2uL8Yy=xh4U1Cs+tRiN5R8=iH-=eW7nDoa=cWg@mail.gmail.com>
From: Glenn Schmottlach <gschmottlach@gmail.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: OPKG configuration questions
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
X-List-Received-Date: Wed, 16 Oct 2013 22:20:04 -0000
Content-Type: text/plain; charset=ISO-8859-1

See my feedback/comments below . . .

Thanks for your help . . .

On Wed, Oct 16, 2013 at 5:10 PM, Nicolas Dechesne
<nicolas.dechesne@linaro.org> wrote:
> On Wed, Oct 16, 2013 at 10:17 PM, Glenn Schmottlach
> <gschmottlach@gmail.com> wrote:
>> 1) I'm having difficulty getting the /var/lib/opkg directory to be created
>> and populated with a list of installed packages.
>
>  i use that routinely. so there must be something wrong in your config ;-)
> you didn't mention which release and layer set you are using, btw.
>

]] I'm using Dylan-9.0.0 with several custom layers for an i.MX6
Nitrogen6x board.

>>
>> 2) I can't figure out (e.g. can find no documentation) that describe what
>> the "lists_dir ext /var/lib/opkg" option in the opkg.conf file does. Does
>> this point to where the list of installed packages should be found?
>
> yes, i think so. so that you can eventually control where they are.
> e.g. if they need to be on a specific folder/file system. also, note
> that the 2nd arg is simply ignored, see
> https://code.google.com/p/opkg/issues/detail?id=73
>
>>
>> 3) What is the best/preferred approach (e.g. patch, *bbappend, new recipe,
>> etc...) to tailor or modify the opkg.conf file (specifically the opkg source
>> (src) paths) that are appended to /etc/opkg/opkg.conf file by the
>> opkg-collatoral.bb recipe.
>
> yes. .bbappend and provide 'src' file in your layer.


]] That makes the most sense. Thanks for the suggestion,


>>
>> This is what I have done to prepare my image to include package management:
>>
>> 1) My image recipe inherits from core-image
>
> i do that too.
>
>>
>> 2) I've configured ONLINE_PACKAGE_MANAGEMENT = "full" and confirmed that is
>> it set correctly via "bitbake-env -r image-nitrogen6x
>> ONLINE_PACKAGE_MANAGEMENT"
>
> that's the only thing I don't do... i don't think this is required,
> looking throughout the sources, that shouldn't be needed, but that
> shouldn't explain the error you gave neither..
>
>>
>> 3) I've confirmed that IMAGE_FEATURES = "debug-tweaks package-management"
>
> did you get that with bitbake -e? also note that IMAGE_FEATURE *must*
> be set before you inherit core-image, so either in a .conf file
> (local.conf, distro.conf, ...) or if you do it in your image recipe,
> you need to do it before.  so even if bitbake -e seems right, it might
> be wrong...
>


]] I confirmed that with bitbake -e. It's configured in my local.conf file.


> one way to check is to get the value of the following vars:
>
> ROOTFS_BOOTSTRAP_INSTALL
>
> as it is set in image.bbclass like this:
>
> ROOTFS_BOOTSTRAP_INSTALL = "${@base_contains("IMAGE_FEATURES",
> "package-management", "", "${ROOTFS_PKGMANAGE_BOOTSTRAP}",d)}"
>
>

]] That variable isn't defined in my environment. All I see is the following:

 bitbake  -e image-nitrogen6x | grep ROOTFS_BOOTSTRAP_INSTALL
#     "${IMAGE_INSTALL} ${LINGUAS_INSTALL} ${NORMAL_FEATURE_INSTALL}
${ROOTFS_BOOTSTRAP_INSTALL}"
#   " ${IMAGE_INSTALL} ${LINGUAS_INSTALL} ${NORMAL_FEATURE_INSTALL}
${ROOTFS_BOOTSTRAP_INSTALL}"
# $ROOTFS_BOOTSTRAP_INSTALL
#     "${IMAGE_INSTALL} ${ROOTFS_BOOTSTRAP_INSTALL} ${FEATURE_INSTALL}"
#   "${IMAGE_INSTALL} ${ROOTFS_BOOTSTRAP_INSTALL} ${FEATURE_INSTALL}"

]] In my "image" recipe I inherit from core-image. Do I also need to
also inherit from "image" as well to get this expanded?

>>
>> 4) PACKAGE_CLASSES = "package_ipk" is configured and I see packages in my
>> <project>/build/tmp/deploy/ipk directory
>
> looks ok.
>
>>
>> The target boots fine and I have the appropriate opkg applications installed
>> (e.g. opkg, opkg-cl, opkg-key). I also have the default /etc/opkg/opkg.conf
>> and /etc/opkg/arch.conf installed.
>>
>> There is *no* /var/lib/opkg directory and thus "opkg-cl list-installed"
>> returns with an error because the "opkg" directory is missing. If I manually
>> create it the program run successfully but doesn't list anything (which is
>> obvious since it is empty).
>>
>> I read this post
>> https://lists.yoctoproject.org/pipermail/yocto/2013-June/016324.html
>>
>> and confirmed that my setting are correct for IMAGE_FEATURES and
>> ROOT_POSTPROCESS_CMD (= "run_intercept_scriptlets; license_create_manifest;
>> ssh_allow_empty_password;  rootfs_update_timestamp ;")
>>
>> Can anyone offer any suggestions, recommendations, or answers to my
>> questions above?
>
> if you can pastebin the entire content of bibtake -e <your image> , we
> will get all the variables...

]] Wish I could but it's too large for the non-PRO account. One thing
that did disturb me a little was that when I look in my
<project>/build/tmp-eglibc/deploy/ipk is see the following:

  4 drwxr-xr-x 6 gschmottlach gschmottlach   4096 Oct 16 16:38 .
  4 drwxr-xr-x 8 gschmottlach gschmottlach   4096 Oct  3 05:53 ..
 12 drwxr-xr-x 2 gschmottlach gschmottlach  12288 Oct 16 16:38 all
176 drwxr-xr-x 2 gschmottlach gschmottlach 176128 Oct 16 16:38 armv7a-vfp-neon
 24 drwxr-xr-x 2 gschmottlach gschmottlach  24576 Oct 16 16:38 i686-nativesdk
 40 drwxr-xr-x 2 gschmottlach gschmottlach  36864 Oct 16 16:38 nitrogen6x
  0 -rw-rw-r-- 1 gschmottlach gschmottlach      0 Oct 16 16:38 Packages
  0 -rw-r--r-- 1 gschmottlach gschmottlach      0 Oct  3 00:24 Packages.flock
  4 -rw-rw-r-- 1 gschmottlach gschmottlach     20 Oct 16 16:38 Packages.gz
  0 -rw-r--r-- 1 gschmottlach gschmottlach      0 Oct 16 16:38 Packages.stamps

What disturbs me is the the "Packages" and "Packages.gz" files seem
too small for all the ipkg's I have installed in the directory. Is
yours like this?

