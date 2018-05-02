Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F6EEE007F2; Wed,  2 May 2018 01:01:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.217.170 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gizero[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f170.google.com (mail-ua0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 115B2E007F2
	for <yocto@yoctoproject.org>; Wed,  2 May 2018 01:01:16 -0700 (PDT)
Received: by mail-ua0-f170.google.com with SMTP id h15so8870379uan.11
	for <yocto@yoctoproject.org>; Wed, 02 May 2018 01:01:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=sOUK/4PdjYDBkRC8hrUEdv0mzq6AlvjNBHAo340pR8A=;
	b=I1QDw2i0y61709rK0Q0ljXH0QBiAVAN6yQctd8qIDk5/Qclzyh9Ld0toJ2VBE9tP4I
	JzshHDraLtb//KkDzzEU7nTihOW4HNaJzcUN2cFEKWFAX695sumEtQhUK/I/atdJ4HOD
	p6qGtkMkHaeW8FfOLKTY1sYkfkd8qGHvpxO1G+Y5THhewoR5lPT6ruF3Vf5sU8vQWjs+
	DPPuRDot+G+y4y9/l2LE+eTuntq7THk/ykJ0i1nWUiKaRvX25V0M7rIG6dpgqPBY7bPF
	cKDIls1yIy7N5A9Ah457e5Oq+kkmtqeSK6ZimHtNGJPTPGDaWGSsRBfqkOO9Udt3BJUg
	niCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=sOUK/4PdjYDBkRC8hrUEdv0mzq6AlvjNBHAo340pR8A=;
	b=Eob80NxVX+1s9BzhT/Qf+dqh+RB/LYxbJ7oF5necdN41ZOVa8Y7czCw0ZTgrsJz2aU
	cQAB0hjrZ64Dvs1GszpJrZ/ZDBcq14hcGF9k+gZjsAx867YtM72HpN9BYn+vsdMbk4er
	osx0cm+ySNPDaqFOSfpru7+cFguSYRoicrKNsKoJGLgJDns/UTyCcU4NIR6gGs4C3qNL
	aZs4/9r3fcaooUc+dGE54PhOThW5WJ9NmLucKTrdsOh+GqCmjzhkbMUjnKZGbieBj10Z
	uT0nNzlmXUr60A3/ZlxmGxrnYv5ePMtHJhFI1s4kQ/AIJuUoWabCrktsb13+ABFN3kFA
	0Dag==
X-Gm-Message-State: ALQs6tBd2ErCxf3BLV/ZlO9zkNMdHKY1izj7rfWPvLBBdr+bP/Xjgyi0
	xqJIrONE0D4TpaUZKMIw4hrLc+17sNMU/N2jTOW/qw==
X-Google-Smtp-Source: AB8JxZqpfQZQ/x4z4rcSuCh7FbYmuCYlWolurEDEQW5nQS6kB/H+8Dx40/MgDuauT/xnKzgK9QHy7GnSTlOFwIai5To=
X-Received: by 10.176.92.44 with SMTP id q44mr17128349uaf.96.1525248075027;
	Wed, 02 May 2018 01:01:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.4.44 with HTTP; Wed, 2 May 2018 01:00:54 -0700 (PDT)
In-Reply-To: <AM5PR0402MB2721423A92FAD6DD6409AA3EC4810@AM5PR0402MB2721.eurprd04.prod.outlook.com>
References: <AM5PR0402MB2721B2D61F1D3477AEE59DFEC4820@AM5PR0402MB2721.eurprd04.prod.outlook.com>
	<CAC+thW3R88fkjU4Gk6xH3=y1BMPLJAb0zvVhpDEPS+yiR7rW7w@mail.gmail.com>
	<AM5PR0402MB2721423A92FAD6DD6409AA3EC4810@AM5PR0402MB2721.eurprd04.prod.outlook.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Wed, 2 May 2018 10:00:54 +0200
Message-ID: <CAC+thW3NTtVWDsbT6pUb8sUMNcb4G_jyWYLC66OcKb+b1t7o3g@mail.gmail.com>
To: Martin Siegumfeldt <mns@gomspace.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Recipe availability through eSDK (cppzmq)
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
X-List-Received-Date: Wed, 02 May 2018 08:01:19 -0000
Content-Type: text/plain; charset="UTF-8"

Martin,

On Tue, May 1, 2018 at 8:49 PM, Martin Siegumfeldt <mns@gomspace.com> wrote:
> Hi Andrea,
>
>
>
> ________________________________
> From: Andrea Galbusera <gizero@gmail.com>
> Sent: Tuesday, May 1, 2018 16:06
> To: Martin Siegumfeldt
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Recipe availability through eSDK (cppzmq)
>
> Hi Martin,
>
> On Mon, Apr 30, 2018 at 9:10 PM, Martin Siegumfeldt <mns@gomspace.com>
> wrote:
>> Hi,
>>
>> I am trying to build cppzmq through a Yocto (Rocko) generated eSDK. The
>> search function does not return anything, despite the recipe being available
>> through local recipe:
>>
>> martin@dell:~/gomspace_sdk$ ls
>> layers/meta-openembedded/meta-oe/recipes-connectivity/zeromq/
>> cppzmq_git.bb  files  zeromq_4.1.6.bb
>>
>> I assume this is expected since it does not come prebuilt as part of the
>> eSDK - is this correct understood?
>>
>> Fortunately, 'devtool modify/build/package' generates the package -
>> unfortunately it is not included in the subsequent image generation:
>>
>> martin@dell:~/gomspace_sdk$ devtool package cppzmq
>> NOTE: Starting bitbake server...
>> NOTE: Starting bitbake server...
>> WARNING: Host distribution "ubuntu-17.10" has not been validated with this
>> version of the build system; you may possibly experience unexpected
>> failures. It is recommended that you use a tested distribution.
>> Loading cache: 100%
>> |########################################################################################################################################################################|
>> Time: 0:00:03
>> Loaded 2773 entries from dependency cache.
>> Parsing recipes: 100%
>> |######################################################################################################################################################################|
>> Time: 0:00:01
>> Parsing of 1968 .bb files complete (1960 cached, 8 parsed). 2780 targets,
>> 305 skipped, 11 masked, 0 errors.
>> NOTE: Resolving any missing task queue dependencies
>> Initialising tasks: 100%
>> |###################################################################################################################################################################|
>> Time: 0:00:00
>> Checking sstate mirror object availability: 100%
>> |###########################################################################################################################################|
>> Time: 0:00:00
>> NOTE: Executing SetScene Tasks
>> NOTE: Executing RunQueue Tasks
>> NOTE: Tasks Summary: Attempted 492 tasks of which 491 didn't need to be
>> rerun and all succeeded.
>>
>> Summary: There was 1 WARNING message shown.
>> NOTE: Your packages are in /home/martin/gomspace_sdk/tmp/deploy/ipk
>>
>> martin@dell:~/gomspace_sdk$ devtool build-image
>> NOTE: Starting bitbake server...
>> WARNING: Host distribution "ubuntu-17.10" has not been validated with this
>> version of the build system; you may possibly experience unexpected
>> failures. It is recommended that you use a tested distribution.
>> Loading cache: 100%
>> |########################################################################################################################################################################|
>> Time: 0:00:00
>> Loaded 2773 entries from dependency cache.
>> Parsing recipes: 100%
>> |######################################################################################################################################################################|
>> Time: 0:00:02
>> Parsing of 1968 .bb files complete (1960 cached, 8 parsed). 2780 targets,
>> 305 skipped, 11 masked, 0 errors.
>>
>> Summary: There was 1 WARNING message shown.
>> WARNING: Skipping recipe cppzmq as it doesn't produce a package with the
>> same name
>
> This is the suspicious bit... If you look at the recipe, you'll notice
> it's re-defining the PACKAGES variable. Then, it's not generating a
> package called 'cppzmq', but only one named 'cppzmq-dev'. That said,
> I'm not sure why you'd want to add a package which only provides
> development headers to your target image...
>
> I understand your doubt here. The header file installed is a wrapper around
> zeromq and thus DEPENDS/RDEPENDS on this library. zeromq is included in the
> image, for which the SDK is generated, hence I would expect this to be a
> valid use case?
>
> Anyhow, I realized that the recipe does not even work in a BB environment -
> the following is encountered for an image including the package:
>
> ERROR: Nothing RPROVIDES 'cppzmq' (but
> /home/martin/work/z7000-distro-zcu102/poky/meta/recipes-core/images/core-image-minimal.bb
> RDEPENDS on or otherwise requires it)

Again, look at the recipe source! This is expected behaviour. There is
no 'cppzmq' package at all. So, regardless how hard you try to add a
package with such a name in your image, bitbake is expected to fail
with the error above. The only valid package that cppzmq recipe is
providing is called 'cppzmq-dev'. Also note that setting
IMAGE_INSTALL_append from your shell's environment does not work: only
a restricted set of variables are whitelisted from the shell's
environment and will be honored within bitbake's environment. Then, if
you really really want to have the header file on your target
filesystem, i.e. something like this will work:

add 'IMAGE_INSTALL_append = " cppzmq-dev" to your local.conf
bitbake core-image-minimal

gizero@gizero-desktop ~/work/upstreaming/build $ find
tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs | grep
'zmq\.hpp'
tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs/usr/include/zmq.hpp


> NOTE: Runtime target 'cppzmq' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['cppzmq']
> ERROR: Required build target 'core-image-minimal' has no buildable
> providers.
> Missing or unbuildable dependency chain was: ['core-image-minimal',
> 'cppzmq']
>
> I wonder why this occurs when the recipe is indeed present:
>
> martin@dell:~/work/z7000-distro-zcu102/build$ bitbake-layers  show-recipes
> cppzmq
> NOTE: Starting bitbake server...
> WARNING: Host distribution "ubuntu-17.10" has not been validated with this
> version of the build system; you may possibly experience unexpected
> failures. It is recommended that you use a tested distribution.
> Loading cache: 100%
> |########################################################################################################################################################################|
> Time: 0:00:00
> Loaded 2773 entries from dependency cache.
> Parsing recipes: 100%
> |######################################################################################################################################################################|
> Time: 0:00:01
> Parsing of 1968 .bb files complete (1961 cached, 7 parsed). 2780 targets,
> 305 skipped, 11 masked, 0 errors.
>
> Summary: There was 1 WARNING message shown.
> === Matching recipes: ===
> cppzmq:
>   meta-oe              4.1.5+gitAUTOINC+68a7b09cfc
>
> Br,
> Martin
>
>>
>> Inspecting the manifest file confirms that the package is not installed -
>> any idea why not? I also tried installing though sdk-install:
>>
>> martin@dell:~/gomspace_sdk$ devtool sdk-install -s cppzmq
>> NOTE: Starting bitbake server...
>> WARNING: Host distribution "ubuntu-17.10" has not been validated with this
>> version of the build system; you may possibly experience unexpected
>> failures. It is recommended that you use a tested distribution.
>> Loading cache: 100%
>> |########################################################################################################################################################################|
>> Time: 0:00:00
>> Loaded 2773 entries from dependency cache.
>> Parsing recipes: 100%
>> |######################################################################################################################################################################|
>> Time: 0:00:02
>> Parsing of 1968 .bb files complete (1961 cached, 7 parsed). 2780 targets,
>> 305 skipped, 11 masked, 0 errors.
>>
>> Summary: There was 1 WARNING message shown.
>> NOTE: Installing cppzmq...
>> WARNING: Host distribution "ubuntu-17.10" has not been validated with this
>> version of the build system; you may possibly experience unexpected
>> failures. It is recommended that you use a tested distribution.
>> Loading cache: 100%
>> |########################################################################################################################################################################|
>> Time: 0:00:03
>> Loaded 2773 entries from dependency cache.
>> Parsing recipes: 100%
>> |######################################################################################################################################################################|
>> Time: 0:00:01
>> Parsing of 1968 .bb files complete (1961 cached, 7 parsed). 2780 targets,
>> 305 skipped, 11 masked, 0 errors.
>> NOTE: Resolving any missing task queue dependencies
>> Initialising tasks: 100%
>> |###################################################################################################################################################################|
>> Time: 0:00:00
>> Checking sstate mirror object availability: 100%
>> |###########################################################################################################################################|
>> Time: 0:00:00
>> NOTE: Executing SetScene Tasks
>> NOTE: Executing RunQueue Tasks
>> NOTE: Tasks Summary: Attempted 487 tasks of which 477 didn't need to be
>> rerun and all succeeded.
>>
>> Summary: There was 1 WARNING message shown.
>> NOTE: Successfully installed cppzmq
>>
>> Which also does not pick up the package upon image building:
>>
>> martin@dell:~/gomspace_sdk$ IMAGE_INSTALL_append="cppzmq" devtool
>> build-image
>> NOTE: Starting bitbake server...
>> WARNING: Host distribution "ubuntu-17.10" has not been validated with this
>> version of the build system; you may possibly experience unexpected
>> failures. It is recommended that you use a tested distribution.
>> Loading cache: 100%
>> |########################################################################################################################################################################|
>> Time: 0:00:00
>> Loaded 2773 entries from dependency cache.
>> Parsing recipes: 100%
>> |######################################################################################################################################################################|
>> Time: 0:00:02
>> Parsing of 1968 .bb files complete (1961 cached, 7 parsed). 2780 targets,
>> 305 skipped, 11 masked, 0 errors.
>>
>> Summary: There was 1 WARNING message shown.
>> WARNING: No packages to add, building image nanocom-sdr-image unmodified
>>
>> What am I missing here?
>>
>> Thanks,
>> Martin
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

