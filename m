Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D50BE01072; Fri, 11 May 2018 05:11:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f195.google.com (mail-io0-f195.google.com
	[209.85.223.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECFC0E00C25
	for <yocto@yoctoproject.org>; Fri, 11 May 2018 05:11:04 -0700 (PDT)
Received: by mail-io0-f195.google.com with SMTP id z4-v6so6727692iof.5
	for <yocto@yoctoproject.org>; Fri, 11 May 2018 05:11:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=NhUvaJA521i5c3skp+ktuqTN1P6ASp33oCD/quWAbJQ=;
	b=UHLmvM/fbQxIAkONzWj7kUrHe3Iw4d13IDIUwwLUi7CVYQwPr4mPj/civfkaBP+0Nn
	lA6fepHsehQHPAgx/SOizyaUW3ffoah7TPEPYEspnBXbMBRV+tKfmYrQNtBDJddHjeev
	dn4bjWA9/elxAEJ3YAJCLwe1D0jDDvMGVDSJftsWRQaOIBCMZUNxsIujS8yRD3rIvP15
	c7Kv7SziPeER+ci9l+8E2CZRMmh5Y7MhGWcM85qL1e+B3KDFv6+aYc76Qlafs/f/TvEX
	IzLZJ8qEblzF55pAFtr6V4BmOY8U5g8UsLZy6OD5LtjrFUkyN574Bw+NnCBqgEpPL3ED
	HuzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=NhUvaJA521i5c3skp+ktuqTN1P6ASp33oCD/quWAbJQ=;
	b=PqUxswGzAEiS33zfWzZbb+pnVyWVDPXaYxcG1BodFw9gEwcRoyhLWxvT2VgqLGJ6Jt
	gCOfUx24/TzjH2rzdcEwJmILOZ/AFeunzexEQYwFtqBhxret1UoANp8FJ+M+pn02Ooh0
	00gtojxF5Tyv6q0+43bFgCrbPy5i96w+Y7vpg/kWHOyZMth0xST/oBhLP7hTt0sB2EaF
	mSR7FbKDxVDzKiwXBtlNVeXVZywaYKztVQlllAdI1QqehvkKBQiIdGJWhyD3DC+9hEmN
	UcEDGGIHHa60/6nqnf4de91ZH1gAOrVtxUntFeYgp7EZEVuxbKq5agqryRbf7DIGfw17
	XLtA==
X-Gm-Message-State: ALKqPweiChbTiRbs2vAHKAsJl0U7ILZBSkFz2XlnXeleAENMZl8Wv9qj
	xc/pMo66PNrceSf3cpXZ6MnfK7GgUOiAUoNO/WfNIg==
X-Google-Smtp-Source: AB8JxZpicTJB0oS+l5IgiFhxglrFLkU4YAuFRIWjKq+GCr/tFakj/0ry3J44+XuvWFKse9oUWJTuRUKX+ewgfcHbUsY=
X-Received: by 2002:a6b:b74b:: with SMTP id
	h72-v6mr5435191iof.201.1526040663803; 
	Fri, 11 May 2018 05:11:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.239.11 with HTTP; Fri, 11 May 2018 05:10:43 -0700 (PDT)
In-Reply-To: <CAALXFYx=4RR+EMcika2M8D=vOiFMqxc==87ZGrME_Rp2gp=khA@mail.gmail.com>
References: <CAALXFYx=4RR+EMcika2M8D=vOiFMqxc==87ZGrME_Rp2gp=khA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 11 May 2018 13:10:43 +0100
Message-ID: <CAJTo0Labg9u1R7=HoYBjUoo0KaDTmVs5uxn3HvzZf+n6M_JTjw@mail.gmail.com>
To: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Compilation error after upgrading rocko branch
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
X-List-Received-Date: Fri, 11 May 2018 12:11:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Turns out this is due to uninative only having a limited subset of the
conversion tables and fontforge checks for ones that we don't ship.
The good news is that Khem sent a patch this morning, but the
workaround right now is to disable uninative.  This in your local.conf
will work:

INHERIT_remove =3D "uninative"

Ross

On 11 May 2018 at 13:02, Iv=C3=A1n Castell <icastell@nayarsystems.com> wrot=
e:
> Hello forum.
>
> After updating all my layers to the lastest state of the "rocko" branch, =
I
> am getting this error in "meta-oe" layer:
>
> | In file included from ../../git/fontforge/splinefont.h:36:0,
> |                  from ../../git/fontforge/sd.h:34,
> |                  from ../../git/fontforge/svg.h:4,
> |                  from ../../git/fontforge/svg.c:28:
> | ../../git/inc/gwwiconv.h:44:21: error: conflicting types for
> =E2=80=98gww_iconv_close=E2=80=99
> |  #define iconv_close gww_iconv_close
> |                      ^
> | ../../git/inc/gwwiconv.h:37:13: note: previous declaration of
> =E2=80=98gww_iconv_close=E2=80=99 was here
> |  extern void gww_iconv_close( gww_iconv_t cd);
> |              ^~~~~~~~~~~~~~~
> | Makefile:2282: recipe for target 'libfontforge_la-svg.lo' failed
> | make[2]: *** [libfontforge_la-svg.lo] Error 1
> | make[2]: *** Waiting for unfinished jobs....
> | make[2]: Leaving directory
> '/home/yocto/yocto/build/tmp/work/x86_64-linux/fontforge-native/20170731-=
r0/build/fontforge'
> | ERROR: oe_runmake failed
> | Makefile:1561: recipe for target 'all-recursive' failed
> | make[1]: *** [all-recursive] Error 1
> | make[1]: Leaving directory
> '/home/yocto/yocto/build/tmp/work/x86_64-linux/fontforge-native/20170731-=
r0/build'
> | Makefile:1398: recipe for target 'all' failed
> | make: *** [all] Error 2
> | WARNING:
> /home/yocto/yocto/build/tmp/work/x86_64-linux/fontforge-native/20170731-r=
0/temp/run.do_compile.13092:1
> exit 1 from 'exit 1'
> | ERROR: Function failed: do_compile (log file is located at
> /home/yocto/yocto/build/tmp/work/x86_64-linux/fontforge-native/20170731-r=
0/temp/log.do_compile.13092)
> ERROR: Task
> (virtual:native:/home/yocto/yocto/sources/meta-oe/meta-oe/recipes-graphic=
s/fontforge/fontforge_20170731.bb:do_compile)
> failed with exit code '1'
>
> This is my build machine:
>
>  lsb_release -a
> No LSB modules are available.
> Distributor ID: Debian
> Description: Debian GNU/Linux 9.4 (stretch)
> Release: 9.4
> Codename: stretch
>
> rocko branch was building fine before the "git update" command.
>
> Something seems to be broken?
>
> Thank you in advance!
>   -- Ivan
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

