Return-Path: <luiz.dentz@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E786DE00C5C; Thu, 22 Mar 2018 02:25:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (luiz.dentz[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E825E0084D
	for <yocto@yoctoproject.org>; Thu, 22 Mar 2018 02:25:26 -0700 (PDT)
Received: by mail-oi0-f41.google.com with SMTP id 1-v6so1017049oix.7
	for <yocto@yoctoproject.org>; Thu, 22 Mar 2018 02:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=vPDx+nFpHOvx9bNg1CxN5dfZABPkH8WjDGOgzRFRk04=;
	b=aP5XVx57KZNexed05oqHEGe/kEVoCou/2rMLGL6LrpPZSdHBaXQ+Nkf/Xx1W9or+aV
	rnzgXB9hW/Z5y/Yn0PvBm1bpuLafz6mY7eLOrCX4GQk7VXMtyXfnMKVgCA/mwp0O1IOB
	FRsTAn0yhRAItJNFuV7ofivX+JCsLSk24MG0KcCUXuW8KCcMKYaKWwLMbBRBwQ+LRqm/
	3qODSuP5cTMOusx0F2S83QsTFy04Rz+HwGZ89vPdESZ0DEl2FjBgLTjDiuTKlmTofe+z
	0axFqngNlAhPnm+ojPDjyma9rAXB88JTPg4cW1CgiSjT8pHE3TCO/F8Yb3ssvsPN/e64
	a5Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=vPDx+nFpHOvx9bNg1CxN5dfZABPkH8WjDGOgzRFRk04=;
	b=dXKMa0McLF3lQvISjEkLK8VyRTf8J3iIZHHLPz91XuCKLPqJFX/mn6/BS/OQ22R+Cd
	U3kLCy82JFpTZ+lbvaFBEO+/3g60B2KnJvhal/sZMPCo7DMH/VTfvStZ/upYqC6c/Z+M
	+FBMXPH5p1iyuAoJpI6E//ik1w/VHcXSbM2Tx2x+7WsLAEtAOv22YR7D3LHySB+eDNBe
	TpTAqk/0vZCoLhBKWw8puZ4k5wimsaaW47TzfeVr+j1iK9nh8EaFuapSBCcnWyNe0CHk
	YNfLzalGr4vOM7gWRJvDey6+WkpetH40jo94ceTHr5bgUbJrWEGd68kyOYvQQuaQF2U4
	ETxg==
X-Gm-Message-State: AElRT7GpVo43S1B03HHOE92bhGfTqaNSVvXY06RS5gyDNNSiFMp/qlSH
	2CEG0evk5vaVK9eEFCg2n8IBzauoSNkAYRetXvA=
X-Google-Smtp-Source: AG47ELt/ZjuUeB4CGuynIdPQSSJhjHxRn1w2dB3/t1OPqBptYN2G6eeZXOkn04NmWx76dY+0wedwgYPfQx4EAForw/Q=
X-Received: by 10.202.16.24 with SMTP id 24mr14077836oiq.44.1521710726295;
	Thu, 22 Mar 2018 02:25:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.201.49.196 with HTTP; Thu, 22 Mar 2018 02:25:25 -0700 (PDT)
In-Reply-To: <CAOT_U5ZvVd35LTMMBAm332htfFpStzzXkG+6t=Yedtw5i_WTOQ@mail.gmail.com>
References: <CAOT_U5ZvVd35LTMMBAm332htfFpStzzXkG+6t=Yedtw5i_WTOQ@mail.gmail.com>
From: Luiz Augusto von Dentz <luiz.dentz@gmail.com>
Date: Thu, 22 Mar 2018 11:25:25 +0200
Message-ID: <CABBYNZ+BwyUSvEUuTNmv-P-O27zyaJtp=K8WOjgjqk6nPCCDfg@mail.gmail.com>
To: Alan Martinovic <alan.martinovic@senic.com>
X-Mailman-Approved-At: Fri, 23 Mar 2018 08:41:56 -0700
Cc: Yocto-mailing-list <yocto@yoctoproject.org>,
	"linux-bluetooth@vger.kernel.org" <linux-bluetooth@vger.kernel.org>
Subject: Re: Building BlueZ master from git in Yocto
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
X-List-Received-Date: Thu, 22 Mar 2018 09:25:29 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Alan,

On Wed, Mar 21, 2018 at 5:21 PM, Alan Martinovic
<alan.martinovic@senic.com> wrote:
> Started this issue a few days ago thinking it was a problem with
> the bluez flags. I guess it might still be given it tries to build obex
> even when it's been configured that is shouldn't...
>
> The exact issue seems to point it's a Yocto related
> or might be both (hence both lists). I have configured
> BlueZ to build without any flags.
>
> In terms of BlueZ code this means:
>
>     git clone https://git.kernel.org/pub/scm/bluetooth/bluez.git
>     cd bluez
>     ./bootstrap
>     make
>
> This is built correctly for x86.
>
> Trying to replicate that to Yocto, I've extended the recipe to
> not to pass any feature configuration flags:
>
>     $ bitbake bluez5 -e | grep EXTRA_OECONF
>     ...
>     EXTRA_OECONF=""
>
> Before hand did all the steps so that BlueZ is correctly pulled
> from master, and no patches from Yocto are applied to it.
>
> Building it with Yocto results in the mentioned error:
>
> | ../git/src/genbuiltin hostname wiimote autopair policy   a2dp avrcp
> network input hog  gap scanparam deviceinfo  battery > src/builtin.h
> | ../git/obexd/src/genbuiltin filesystem bluetooth  opp ftp irmc pbap
> mas mns > obexd/src/builtin.h
> | /bin/bash: obexd/src/builtin.h: No such file or directory
> | Makefile:9431: recipe for target 'obexd/src/builtin.h' failed
> | make: *** [obexd/src/builtin.h] Error 1
> | make: *** Waiting for unfinished jobs....
> | ERROR: oe_runmake failed
> | WARNING: exit code 1 from a shell command.

This should be fixed upstream, note that by having --disable-obex it
should no longer build obexd.

>
> It seems that for some reason in Yocto, make can't redirect into
> `obexd/src/builtin.h` while
> it does so successfully for native build.
>
> Open for comments/critics on how to diagnose this.... :)
>
> Be Well,
> Alan
>
>
>
>
>
> On Fri, Mar 16, 2018 at 5:13 PM, Luiz Augusto von Dentz
> <luiz.dentz@gmail.com> wrote:
>>
>> Hi Alan,
>>
>> On Fri, Mar 16, 2018 at 4:50 PM, Alan Martinovic
>> <alan.martinovic@senic.com> wrote:
>> > Hi,
>> > I'm trying to cross compile a BLE BlueZ master.
>> > Am having build issues pointing to obex.
>> > I'm building it using Yocto but have stripped it down
>> > to the essentials:
>> >
>> > ./configure
>> >   --build=x86_64-linux
>> >   --host=arm-linux-gnueabi
>> >   --target=arm-linux-gnueabi
>> >   --prefix=/usr
>> >   --exec_prefix=/usr
>> >   --bindir=/usr/bin
>> >   --sbindir=/usr/sbin
>> >   --libexecdir=/usr/libexec
>> >   --datadir=/usr/share
>> >   --sysconfdir=/etc
>> >   --sharedstatedir=/com
>> >   --localstatedir=/var
>> >   --libdir=/usr/lib
>> >   --includedir=/usr/include
>> >   --oldincludedir=/usr/include
>> >   --infodir=/usr/share/info
>> >   --mandir=/usr/share/man
>> >   --disable-silent-rules
>> >   --disable-dependency-tracking
>> >   --with-libtool-sysroot=/home/alan/senic-os/build/tmp-glibc/work/cortexa7hf-neon-vfpv4-senic-linux-gnueabi/bluez5/5.49+gitAUTOINC+969dfae9a7-r0/recipe-sysroot
>> >   --enable-test
>> >   --enable-datafiles
>> >   --enable-library
>> >   --enable-a2dp
>> >   --enable-avrcp
>> >   --disable-cups
>> >   --enable-deprecated
>> >   --disable-health
>> >   --enable-hid
>> >   --enable-hog
>> >   --disable-midi
>> >   --enable-network
>> >   --disable-nfc
>> >   --disable-obex
>> >   --enable-client
>> >   --disable-sap
>> >   --disable-sixaxis
>> >   --enable-systemd
>> >   --disable-testing
>> >   --disable-threads
>> >   --enable-tools
>> > make -j 16
>> >
>> > This results in a build error:
>> >
>> >  ../git/obexd/src/genbuiltin filesystem bluetooth  opp ftp  mas mns >
>> > obexd/src/builtin.h
>> >  /bin/bash: obexd/src/builtin.h: No such file or directory
>> >  Makefile:9431: recipe for target 'obexd/src/builtin.h' failed
>> >
>> >
>> > Given that I don't need it for BLE, what else is required
>> > besides "--disable-obex" to bypass this error?
>>
>> Obviously, it is a bug in the way we handle --disable-obex so we will
>> need to fix it.
>>
>> --
>> Luiz Augusto von Dentz
> --
> To unsubscribe from this list: send the line "unsubscribe linux-bluetooth" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html



-- 
Luiz Augusto von Dentz

