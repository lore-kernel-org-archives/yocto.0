Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4B2AE00BB6; Mon, 19 Jun 2017 22:09:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62B3BE00B05
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 22:09:04 -0700 (PDT)
Received: by mail-wm0-f51.google.com with SMTP id x70so10248551wme.0
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 22:09:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=lCB/d5piFWgQmDj0dK8GtDtEWJchJ7Ga/NG0GTf+mCE=;
	b=F5M88/h8B2/XZ0KHpI4YCUnUV3D3u8LvwNz2sjAWaKmFm+Fq6daOP1AYTurFfKN3sT
	/4tFXzl9yuwZaCqUuUMv+IrPpcSWBtINsncYInCy2WXUPwmv61IHJXjoNOktGZjRCqiE
	LwnWNoiv+kSePtB1wJ4ODkJTix+Jfyj4t9PsUOQpP/KivRpBTg3fRMJW4tsVoBDtXX0f
	+OBeCYJsNnMwxRmJ3yifiLdrrqo3IdNIeRwTPTe9rh6GjufHVDaLN4hYcrEwPUHUTWC6
	p/s5pO17bEszk8sPgTfc8ntakq7J1I66E8oRAoJv2DYC9xiDGXHlpTNvmw/Fl/Am2VGL
	FcJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=lCB/d5piFWgQmDj0dK8GtDtEWJchJ7Ga/NG0GTf+mCE=;
	b=gSOg4XL0surJZBTEl50vtPNSPlbHh4anQslV+hcDMJxfDl1hemnhK5LSLz42LM11sG
	oNl8Mu6BQ1lNksks05YDs3tHQ9iKWJLuko7pEBWt16OVpQUBnq6KuDflFyXp6isAE7EE
	lOMaZMdtCarh/kIkXClrMNtJ7334EbRKq4CyHYeypxNCUuaxbGAdhzQT0YPUO4on3bOG
	Uwn0qVzYRqQBjp/jo7OgYNHuXYIn4KA+vkBsO3ZKxB6yzQyJd80wkGmruZE4qP1eTUUE
	436fcI9ExcEtMOLIewHN22YbXOlsrxqmkEOgihXWTebUbF4Hh6ctR+SxotkQbjxboTvH
	8/+w==
X-Gm-Message-State: AKS2vOxFgsfTV+FdQA9Tw4G3Lcb0zstA3HPDudB2j7OK7VEGqSSygHtM
	4bH/vdW8ufG8K/n4k2ZtEgu5DqSsdZIB
X-Received: by 10.80.151.37 with SMTP id c34mr20169068edb.30.1497935342846;
	Mon, 19 Jun 2017 22:09:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.153.222 with HTTP; Mon, 19 Jun 2017 22:08:32 -0700 (PDT)
In-Reply-To: <dd9e6cf6-dcd3-9e90-2275-323b5c9fd0b6@gmail.com>
References: <mailman.66247.1497786545.15860.yocto@yoctoproject.org>
	<1497809434.2788.77.camel@genivi.org>
	<7ee7dd60-a45d-350d-b213-0917fe6e32cb@igalia.com>
	<CAMKF1sr-5mxP2_WCXtvnfzMt4OgUAf_V2ZhLQFgQAqGMbPDovQ@mail.gmail.com>
	<dd9e6cf6-dcd3-9e90-2275-323b5c9fd0b6@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 19 Jun 2017 22:08:32 -0700
Message-ID: <CAMKF1sp_5+1N_+okGXxZMREir62snRDk+BtbwDMz+t5SUYo5pg@mail.gmail.com>
To: Riko Ho <antonius.riko@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gunnar Andersson <gandersson@genivi.org>
Subject: Re: Compiling meta-browser ==>chromium ? cleaning ?
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
X-List-Received-Date: Tue, 20 Jun 2017 05:09:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 19, 2017 at 8:32 PM, Riko Ho <antonius.riko@gmail.com> wrote:
> My memory is 8Gb and swap 8Gb, 8 cores i7, may be a homemade cluster can
> help ?
>

add something like

EXTRA_OEGYP_prepend =3D " -Dcomponent=3Dshared_library
-Dremove_webcore_debug_symbols=3D1 -Dfastbuild=3D1 "

and see if that helps.

> I compiled firefox and it worked well, but still wondering why chromium
> didn't work.
>
>
> On 20/06/17 04:01, Khem Raj wrote:
>
> On Mon, Jun 19, 2017 at 7:21 AM, Jacobo Aragunde P=C3=A9rez
> <jaragunde@igalia.com> wrote:
>
> On 18/06/17 20:10, Gunnar Andersson wrote:
>
> Riko Ho <antonius.riko@gmail.com> wrote:
>
> Hello Everyone,
>
> I tried to compile chromium but never succeeded, took me already 12
> hours and stopped on 99%, I used bitbake for doing it,
>
> Not sure what would cause it to just stop and it could have been some
> temporary glitch?   Maybe you want to provide some logs of your build if
> Martin's reference does not help.
>
> Just a heads-up, if it stopped at 99% it probably was in the linking
> phase (you can check the logs under
> tmp/work/$arch/chromium-wayland/$version/temp/log.do_compile to be
> certain). This phase has a very high RAM demand, you could even need to
> temporarily increase your swap space to go past that point.
>
> linker takes a whole lot of memory here, if you have < 8G of RAM
> its likely to fail with out of memory errors. Can you check your dmesg
> and see if there were such errors in there
>
> Best,
> --
> Jacobo Aragunde
> Software Engineer at Igalia
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
> --
>
> /*******/
> Sent by Ubuntu LTS 16.04,
> =E8=B0=A2=E8=B0=A2,
> Regards,
> Riko Ho
> /*******/

