Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 394B9E00D01; Thu,  2 Nov 2017 08:06:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f194.google.com (mail-ot0-f194.google.com
	[74.125.82.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0D30E00CFF
	for <yocto@yoctoproject.org>; Thu,  2 Nov 2017 08:06:28 -0700 (PDT)
Received: by mail-ot0-f194.google.com with SMTP id 96so1663420otw.11
	for <yocto@yoctoproject.org>; Thu, 02 Nov 2017 08:06:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=hI56tGBWcBfK7BT69zw5lZcfTeYrrxiePKStB9G+CNg=;
	b=hsQmSHs+cKiOUL7dOsR5aeYSYGoDQg3wsnonMLT4reLGPtCuYfl6zyiOXs8GQfkWnT
	NkK5vCg00rHQRbfk7ONkWD5EeqTkZTTTfdqhwL9RMQti+xx2+USgGnyKQ0pMcMJeII0k
	5oMqEDvz6ri9YaIocZ+ke0YuuYYiDEFVsAhopa+1ZGw3opT0WVQIcbPrwCgENKlUcRBI
	+SHE16nWiWaHqIj98lw6oxX/XLjFlI9GJd3avcQj7gHIQzpeRzffm5TDVGYi6y7sIS69
	ztINJQkcLfOEUkrNAwCkOSJWppb5o2Bgs6ioRIaCAw1Il03JQKGzJ2GpVTS/B5XIqhUF
	Z0Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=hI56tGBWcBfK7BT69zw5lZcfTeYrrxiePKStB9G+CNg=;
	b=tNPJlzuyhuai3zP+bZlUoSowQ8CAmn6uEf7zJahu9S8CtpK3mbLusP47CAIqqA9Fnl
	YCQiqPGI7eXkDbFSw5tw44i8LUYhW5Ad3eY6vQdA6wn6kNRC179Pygl6gPhJaxFej2ka
	3EZaJGocxNb2JAzu91RaXbd4ZF4Q3fCyzie76l9gCycWSrDvy6/yaNr0mwnpR59wt8cp
	/1uuoDksGTlXkb/hMrR8gVpQJ9HQ0bNL9K2O9OkyM06VP8qHihKmkJaCnGvOhOddzpBZ
	b3PxC2c8AP7VtnL56tMIScgqusfGOkfToQyP5O8fEPrDqyl58hL/nd1blg8QxJVHq8XJ
	0/EA==
X-Gm-Message-State: AJaThX7Hm6x8L5O9JJWbums4Wu1e0uQCH4NfbY4N8Jgaf7j4ePsAQwSH
	RFlyf4YvEAP3nM3uD9sqEzlaJ4sNgAz0A1GUhGEC8Q==
X-Google-Smtp-Source: ABhQp+T+dDuPnDvSwM8JphoCNVG060F8FLfbbOk6pU9XGADITpwmz+AN9SyXf0PXoeOp9U2PfanOzGsWahXdDs2JDT4=
X-Received: by 10.157.12.187 with SMTP id b56mr2151725otb.288.1509635187695;
	Thu, 02 Nov 2017 08:06:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.41.133 with HTTP; Thu, 2 Nov 2017 08:06:27 -0700 (PDT)
In-Reply-To: <CAJTo0Lb0f+34B5icJt3W1oTfAnA_+-G5OgGfOWbpKO+WJnGWTg@mail.gmail.com>
References: <CAOT_U5ZYFa_5Ua0swNRGyxG+hV9xNtTzGuEe5yGzYG4rDxsdNQ@mail.gmail.com>
	<CAGxhq2aHU7xgimpRhavOp6AqL4ALf9SBDk6Wti6BFPtftGC99Q@mail.gmail.com>
	<CAOT_U5ZsGM5WHnkX+eQ3KeeAFwR=mzaBgqqW-698jd9euXxoCg@mail.gmail.com>
	<CAJTo0LbY+nCmSA3o_hbaTm69okMA9z9V_V_CULY3e6rMNKV6xQ@mail.gmail.com>
	<CAOT_U5bvt5FfWMowG2YcknTy2=t0hJG8XO90OyqyypNa94BLbw@mail.gmail.com>
	<CAJTo0LaPLuDMi=vQf+EvXnftzm11OqPPbEAiJmNh0XPdDtz7sQ@mail.gmail.com>
	<CAOT_U5ZY+UWe-69XuS_m+D5LKE0OyxkrabPcHgOB3p226aiZdA@mail.gmail.com>
	<CAOT_U5b8m+Tp6OBrtqSO30Kn2At4akXxK_AEUUCeg=z2sc4LHw@mail.gmail.com>
	<CAJTo0Lb0f+34B5icJt3W1oTfAnA_+-G5OgGfOWbpKO+WJnGWTg@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Thu, 2 Nov 2017 16:06:27 +0100
Message-ID: <CAOT_U5bntkU59=xvbOuVFOJKWenrD-YL1Tyk-cGaFg1GYhfevw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Debugging a build issue in an isolated enviroment
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
X-List-Received-Date: Thu, 02 Nov 2017 15:06:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Opa! Great command for the future, tnx.

Strange that it isn't listed here and is greppable in bitbake -e
u-boot-fw-utils-senic...
Here it is:

u-boot-fw-utils-senic-v2017.03+git999-r0 do_listtasks: do_build
           Default task for a recipe - depends on all other normal
tasks required to 'build' a recipe
u-boot-fw-utils-senic-v2017.03+git999-r0 do_listtasks: do_buildclean
           Call 'make clean' or equivalent in
/home/alan/senic-os-update/build/workspace/sources/u-boot-fw-utils-senic
u-boot-fw-utils-senic-v2017.03+git999-r0 do_listtasks: do_checkuri
           Validates the SRC_URI value
u-boot-fw-utils-senic-v2017.03+git999-r0 do_listtasks: do_checkuriall
           Validates the SRC_URI value for all recipes required to
build a target
u-boot-fw-utils-senic-v2017.03+git999-r0 do_listtasks: do_clean
           Removes all output files for a target
u-boot-fw-utils-senic-v2017.03+git999-r0 do_listtasks: do_cleanall
           Removes all output files, shared state cache, and
downloaded source files for a target
u-boot-fw-utils-senic-v2017.03+git999-r0 do_listtasks: do_cleansstate
           Removes all output files and shared state cache for a
target
u-boot-fw-utils-senic-v2017.03+git999-r0 do_listtasks: do_compile
           Compiles the source in the compilation directory
u-boot-fw-utils-senic-v2017.03+git999-r0 do_listtasks: do_configure
           Configures the source by enabling and disabling any
build-time and configuration options for the software being built
u-boot-fw-utils-senic-v2017.03+git999-r0 do_listtasks: do_deploy
           Writes deployable output files to the deploy directory
u-boot-fw-utils-senic-v2017.03+git999-r0 do_listtasks: do_devpyshell
           Starts an interactive Python shell for
development/debugging
u-boot-fw-utils-senic-v2017.03+git999-r0 do_listtasks: do_devshell
           Starts a shell with the environment set up for
development/debugging
u-boot-fw-utils-senic-v2017.03+git999-r0 do_listtasks: do_fetch
           Fetches the source code
u-boot-fw-utils-senic-v2017.03+git999-r0 do_listtasks: do_fetchall
           Fetches all remote sources required to build a target
u-boot-fw-utils-senic-v2017.03+git999-r0 do_listtasks: do_install
           Copies files from the compilation directory to a holding
area
u-boot-fw-utils-senic-v2017.03+git999-r0 do_listtasks: do_listtasks
           Lists all defined tasks for a target
u-boot-fw-utils-senic-v2017.03+git999-r0 do_listtasks: do_package
           Analyzes the content of the holding area and splits it into
subsets based on available packages and files
u-boot-fw-utils-senic-v2017.03+git999-r0 do_listtasks: do_package_qa
           Runs QA checks on packaged files
u-boot-fw-utils-senic-v2017.03+git999-r0 do_listtasks:
do_package_write_ipk       Creates the actual IPK packages and places
them in the Package Feed area
u-boot-fw-utils-senic-v2017.03+git999-r0 do_listtasks: do_packagedata
           Creates package metadata used by the build system to
generate the final packages
u-boot-fw-utils-senic-v2017.03+git999-r0 do_listtasks: do_populate_lic
           Writes license information for the recipe that is collected
later when the image is constructed
u-boot-fw-utils-senic-v2017.03+git999-r0 do_listtasks:
do_populate_sysroot        Copies a subset of files installed by
do_install into the sysroot in order to make them available to other
recipes
u-boot-fw-utils-senic-v2017.03+git999-r0 do_listtasks: do_prepare_recipe_sy=
sroot
u-boot-fw-utils-senic-v2017.03+git999-r0 do_listtasks: do_provide_mender_de=
fines
u-boot-fw-utils-senic-v2017.03+git999-r0 do_listtasks: do_unpack
           Unpacks the source code into a working directory

On Thu, Nov 2, 2017 at 3:58 PM, Burton, Ross <ross.burton@intel.com> wrote:
> On 2 November 2017 at 13:31, Alan Martinovic <alan.martinovic@senic.com>
> wrote:
>>
>> Found what I was asking for with:
>>
>> bitbake -e <package>
>>
>> going through the output, there are mentions of patch_do_patch().
>> I've traced it to meta/classes/patch.bbclass.
>>
>> However, trying to execute just the patching for the recipe doesn't work=
.
>>
>> build=E2=9F=AB bitbake -c patch u-boot-fw-utils-senic
>> ...
>> ERROR: Task do_patch does not exist for target u-boot-fw-utils-senic
>> (/home/alan/senic-os-update/oe/../meta-senic/recipes-bsp/u-boot/u-boot-f=
w-utils-senic_2017.03.bb:do_patch).
>> Close matches:
>>   do_fetch
>>   do_unpack
>> ERROR: Command execution failed: 1
>
>
> Whhhaaaaat.
>
> Can your paste the output of this please:
>
> $ bitbake u-boot-fw-utils-senic -c listtasks
>
> Ross

