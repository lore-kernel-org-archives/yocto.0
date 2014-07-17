Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29B9DE00777; Thu, 17 Jul 2014 06:30:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ie0-f179.google.com (mail-ie0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFC86E006B9
	for <yocto@yoctoproject.org>; Thu, 17 Jul 2014 06:30:10 -0700 (PDT)
Received: by mail-ie0-f179.google.com with SMTP id rl12so2899237iec.10
	for <yocto@yoctoproject.org>; Thu, 17 Jul 2014 06:30:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=lJtl+WWz11p4/g1EHtnSjBz7k5bwKenQ6Kvvlp9Nxeg=;
	b=VsrtPQ0H+NfJhzPAYm7555johiPUi2QMCVeJV56JoSTd3G2UiGpsrDZC/uaQedggTD
	y1/RR/yzZugCVSQM8VZ6f3mUTaqJYr01YEl5F06tOOw9gGn8HQWU2Xl1DY2uxtusp24u
	0LaVsKBond09R04Z6Yo43j/Q2OFG89IYlhhGAWr/LfSVQ6J3ZUNqmEoiU122x9rH/5NN
	zxN+GNe0f/TUmhUec+UmQYFW2hMTcsmitNJ6Z6tXramzuWkuv5etWOcdoi77dZk/+45O
	Cn5KYtbLfeOD1ses16Sf1rS1ceK0EQNETKs28VBE0CjuPr2QxhXhvoE2yhPcem1Z3qWT
	4hnw==
X-Gm-Message-State: ALoCoQkKp8YHcXY92IBzTGw/AvFGqoeTnjCAP+pibgoMBU3PLQjrv8YxrvjTahztvR2SY1SuYFyK
X-Received: by 10.60.176.225 with SMTP id cl1mr44931683oec.36.1405603808988;
	Thu, 17 Jul 2014 06:30:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.171.168 with HTTP; Thu, 17 Jul 2014 06:29:48 -0700 (PDT)
In-Reply-To: <DUB128-W61984D1885C48F388A748692F40@phx.gbl>
References: <DUB128-W12498E2678002801067F3092F40@phx.gbl>
	<CAP71WjwYGsUt7ye2JFsotAis2TPEfk7wFH0jS_1+u72Svc2iBA@mail.gmail.com>
	<DUB128-W323C87A7D073BC1437172E92F40@phx.gbl>
	<CAP71WjyPw1aArDo75U18k=1td+zDnUE_Vxek_9yBZFhy_C8C_g@mail.gmail.com>
	<DUB128-W61984D1885C48F388A748692F40@phx.gbl>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 17 Jul 2014 15:29:48 +0200
Message-ID: <CAP71WjyoTmOBQau2Ddj1yPxAWzGom5SELBuC6nW_=VVciovLSA@mail.gmail.com>
To: Natural Groove <natural_groove@hotmail.fr>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to include native bitstream dependency in recipe?
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
X-List-Received-Date: Thu, 17 Jul 2014 13:30:15 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jul 17, 2014 at 3:11 PM, Natural Groove
<natural_groove@hotmail.fr> wrote:
>
> do_install() {
> install -d ${D}${includedir} ${D}${includedir}/atsc ${D}${includedir}/dvb
> ${D}${includedir}/dvb/si ${D}${includedir}/mpeg ${D}${includedir}/mpeg/psi
> ${D}${includedir}/ietf
> install -m 0755 common.h ${D}${includedir}
> install -m 0755 atsc/a52.h ${D}${includedir}/atsc
> install -m 0755 dvb/ci.h dvb/si.h dvb/sim.h dvb/si_print.h dvb/sub.h
> ${D}${includedir}/dvb
> install -m 0755 mpeg/aac.h mpeg/h264.h mpeg/mp2v.h mpeg/mpga.h mpeg/pes.h
> mpeg/psi.h mpeg/psi_print.h mpeg/ts.h ${D}${includedir}/mpeg
> install -m 0755 ietf/rtp3551.h ietf/rtp.h ${D}${includedir}/ietf
> cp -r mpeg/psi/ ${D}${includedir}/mpeg/
> cp -r dvb/si/ ${D}${includedir}/dvb/
>
> }
>
> but after launching the compilation for the framework config.log says :
> configure:17806: checking bitstream/common.h usability
> configure:17806: arm-angstrom-linux-gnueabi-gcc  -mfpu=vfpv3-d16
> -march=armv7-a -mthumb-interwork -mfloat-abi=hard
> --sysroot=/home/rick/oe-core/build/out-eglibc/sysroots/colibri-t20
> -std=gnu99 -c -O2 -pipe -g -feliminate-unused-debug-types -D_REENTRANT
> conftest.c >&5
> conftest.c:71:30: fatal error: bitstream/common.h: No such file or directory
> compilation terminated.

from the recipe snippet you seem to have installed common.h in
${includedir}, not ${includedir}/bitstream, and you are looking for
bistream/common.h which in turn doesn't exist.

you probably need to install the files in your bitstream-dev package
at the appropriate location in the sysroot.

