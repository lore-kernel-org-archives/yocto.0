Return-Path: <marek.belisko@gmail.com>
Received: from mail-ob0-f181.google.com (mail-ob0-f181.google.com
	[209.85.214.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BAD2E01358
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 04:43:53 -0700 (PDT)
Received: by mail-ob0-f181.google.com with SMTP id dn14so389688obc.12
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 04:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=0TH58dlc3zbIpMwfECzJ191BjuLspRn1bKX51o7Ld6A=;
	b=mKI/TYFRLa7D16Sp43sdiaFaG5ep5+b9fVFsqKIPY5n6LaBZtNWiVFSGkd+yi8X2+w
	suHP64lTGLUxaKb7wEOpZsYxiGcN0drvcq0kAscIh3fY767nIDc3GtWbgFV8gz1oVPKh
	rcFA2g4/lBSU1CSf0IyZR+XXFoHALRigkKD0HTmBp44EHKoHYCPlUGJmdiQhK2Wp5Zig
	EzidwWWlMD1pax/owMNsgg+nzklFn78zL/HFZ7/+WPnvPhtVghk6H0zuG8ZYbYVFYS7W
	9daIFu0fYXtACl18fHmMzAOAdmnDZcW/4WnSmT5mphnzwpwJvWU8IqJ6ymKgk+yNDaJU
	M0vw==
MIME-Version: 1.0
X-Received: by 10.182.38.228 with SMTP id j4mr377587obk.94.1376999033231; Tue,
	20 Aug 2013 04:43:53 -0700 (PDT)
Received: by 10.60.60.1 with HTTP; Tue, 20 Aug 2013 04:43:53 -0700 (PDT)
In-Reply-To: <CAAGt+t0Y-qo5Xo3s13LAf0mK+yc2ytTPmr1KWUThVDiWvFHcaw@mail.gmail.com>
References: <CAAGt+t0Y-qo5Xo3s13LAf0mK+yc2ytTPmr1KWUThVDiWvFHcaw@mail.gmail.com>
Date: Tue, 20 Aug 2013 13:43:53 +0200
Message-ID: <CAAfyv356HsJ=AmNXE+p_LvSQNEUu5B8cFKwkrXLxdDc6Js+omA@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
To: Zafrullah Syed <zafrullahmehdi@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: MD5SUM recipe error.
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
X-List-Received-Date: Tue, 20 Aug 2013 11:43:54 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

On Tue, Aug 20, 2013 at 1:38 PM, Zafrullah Syed
<zafrullahmehdi@gmail.com> wrote:
> Hi all,
>
> I am facing problems while build. Trying to build gumstix-console-image.
>
> I downloaded GNU hello world, extracted and ran MD5SUM against COPYING,
> added to my bitbake. Still it asks me to add MD5SUM or sha256sum.
>
> My hello_2.7.bb file is: http://pastebin.com/MDsCcSB9
> Error Log file: http://pastebin.com/ibZDpMZ9
>
> ERROR: Fetcher failure for URL:
> 'ftp://ftp.gnu.org/gnu/hello/hello-2.7.tar.gz'. No checksum specified for
> /home/siguser/yocto/build/downloads/hello-2.7.tar.gz, please add at least
> one to the recipe:
> SRC_URI[md5sum] = "fc01b05c7f943d3c42124942a2a9bb3a"
> SRC_URI[sha256sum] =
> "fd593b5bcf6d1bb6d7d1bb7eefdccdc0010cf2c4985ccb445ef490f768b927c0"
It's written here ^^^. Just add those 2 lines to your recipe.
> ERROR: Function failed: Fetcher failure for URL:
> 'ftp://ftp.gnu.org/gnu/hello/hello-2.7.tar.gz'. No checksum specified for
> /home/siguser/yocto/build/downloads/hello-2.7.tar.gz, please add at least
> one to the recipe:
> SRC_URI[md5sum] = "fc01b05c7f943d3c42124942a2a9bb3a"
> SRC_URI[sha256sum] =
> "fd593b5bcf6d1bb6d7d1bb7eefdccdc0010cf2c4985ccb445ef490f768b927c0"
> ERROR: Logfile of failure stored in:
> /home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/hello-2.7-r0/temp/log.do_fetch.3686
> ERROR: Task 553
> (/home/siguser/yocto/poky/meta-bebot/recipes-bebot/hello/hello_2.7.bb,
> do_fetch) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 3376 tasks of which 3375 didn't need to be
> rerun and 1 failed.
> No currently running tasks (2494 of 3389)
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

