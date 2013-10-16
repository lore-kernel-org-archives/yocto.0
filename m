Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-ob0-f180.google.com (mail-ob0-f180.google.com
	[209.85.214.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E5FDE0165C
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 14:10:39 -0700 (PDT)
Received: by mail-ob0-f180.google.com with SMTP id wo20so955141obc.11
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 14:10:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=QCKy/xp1xJS9QhuZf7Pf0+W5GbGx0wR9373B3ERcKBw=;
	b=gyd6P0R8JClwRK7QLX96IiJ9t/KClepkqXAc0d9FDP2Tr7DC+rBzFTCfwPYSYr4VC2
	kUqiXWJW/VeP0qXV5MOUba/1gnKI8+s97VSxsfrBOB74abf+ECP4XetZfR4HhoSPB0mv
	DQBor/NjL1loMqymymusZB/ZH6RgnKHcUk0YvYFO//SSbb2qgSmzFvkBfhxdPw1EuRmZ
	dMP8+Q6gddEDyh6oypgDxmZjwX7B/HMMkRDQ4oqG7Qwj6MuK6CKhhqwcMxv/fWyeg8pE
	YylCXw5Dl5urmBBR3+9NamN19kOLyB7MRU/KtZHZgP1trpPcblk3nn6AUql/F0BuY+ue
	5VQg==
X-Gm-Message-State: ALoCoQkCUCv5AcazLUKElL+QZ/kglciWC0A0OljkxeUimnLfin1fENro03VaRULrVL/Zv9t9myXS
X-Received: by 10.182.28.134 with SMTP id b6mr8089936obh.27.1381957838896;
	Wed, 16 Oct 2013 14:10:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.156.40 with HTTP; Wed, 16 Oct 2013 14:10:18 -0700 (PDT)
In-Reply-To: <CAMS2kBFgfdCHF1f3TfDA3PNzL_PGxOpzrmXLOV_GMhkbdTXocA@mail.gmail.com>
References: <CAMS2kBFgfdCHF1f3TfDA3PNzL_PGxOpzrmXLOV_GMhkbdTXocA@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Wed, 16 Oct 2013 23:10:18 +0200
Message-ID: <CAP71WjxftsAwVoew6PtO5fWJv6xTPmWpSAaQgMfy4gZbq_KEeQ@mail.gmail.com>
To: Glenn Schmottlach <gschmottlach@gmail.com>
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
X-List-Received-Date: Wed, 16 Oct 2013 21:10:43 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Oct 16, 2013 at 10:17 PM, Glenn Schmottlach
<gschmottlach@gmail.com> wrote:
> 1) I'm having difficulty getting the /var/lib/opkg directory to be created
> and populated with a list of installed packages.

 i use that routinely. so there must be something wrong in your config ;-)
you didn't mention which release and layer set you are using, btw.

>
> 2) I can't figure out (e.g. can find no documentation) that describe what
> the "lists_dir ext /var/lib/opkg" option in the opkg.conf file does. Does
> this point to where the list of installed packages should be found?

yes, i think so. so that you can eventually control where they are.
e.g. if they need to be on a specific folder/file system. also, note
that the 2nd arg is simply ignored, see
https://code.google.com/p/opkg/issues/detail?id=73

>
> 3) What is the best/preferred approach (e.g. patch, *bbappend, new recipe,
> etc...) to tailor or modify the opkg.conf file (specifically the opkg source
> (src) paths) that are appended to /etc/opkg/opkg.conf file by the
> opkg-collatoral.bb recipe.

yes. .bbappend and provide 'src' file in your layer.

>
> This is what I have done to prepare my image to include package management:
>
> 1) My image recipe inherits from core-image

i do that too.

>
> 2) I've configured ONLINE_PACKAGE_MANAGEMENT = "full" and confirmed that is
> it set correctly via "bitbake-env -r image-nitrogen6x
> ONLINE_PACKAGE_MANAGEMENT"

that's the only thing I don't do... i don't think this is required,
looking throughout the sources, that shouldn't be needed, but that
shouldn't explain the error you gave neither..

>
> 3) I've confirmed that IMAGE_FEATURES = "debug-tweaks package-management"

did you get that with bitbake -e? also note that IMAGE_FEATURE *must*
be set before you inherit core-image, so either in a .conf file
(local.conf, distro.conf, ...) or if you do it in your image recipe,
you need to do it before.  so even if bitbake -e seems right, it might
be wrong...

one way to check is to get the value of the following vars:

ROOTFS_BOOTSTRAP_INSTALL

as it is set in image.bbclass like this:

ROOTFS_BOOTSTRAP_INSTALL = "${@base_contains("IMAGE_FEATURES",
"package-management", "", "${ROOTFS_PKGMANAGE_BOOTSTRAP}",d)}"


>
> 4) PACKAGE_CLASSES = "package_ipk" is configured and I see packages in my
> <project>/build/tmp/deploy/ipk directory

looks ok.

>
> The target boots fine and I have the appropriate opkg applications installed
> (e.g. opkg, opkg-cl, opkg-key). I also have the default /etc/opkg/opkg.conf
> and /etc/opkg/arch.conf installed.
>
> There is *no* /var/lib/opkg directory and thus "opkg-cl list-installed"
> returns with an error because the "opkg" directory is missing. If I manually
> create it the program run successfully but doesn't list anything (which is
> obvious since it is empty).
>
> I read this post
> https://lists.yoctoproject.org/pipermail/yocto/2013-June/016324.html
>
> and confirmed that my setting are correct for IMAGE_FEATURES and
> ROOT_POSTPROCESS_CMD (= "run_intercept_scriptlets; license_create_manifest;
> ssh_allow_empty_password;  rootfs_update_timestamp ;")
>
> Can anyone offer any suggestions, recommendations, or answers to my
> questions above?

if you can pastebin the entire content of bibtake -e <your image> , we
will get all the variables...

