Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55CD0E0137A
	for <yocto@yoctoproject.org>; Fri, 18 May 2012 19:12:47 -0700 (PDT)
Received: by wgbfg15 with SMTP id fg15so2765306wgb.11
	for <yocto@yoctoproject.org>; Fri, 18 May 2012 19:12:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=jsXCLIxVBpnOfA73DMrkYl0mRcDuzqnDuvYyMA3zflU=;
	b=TPJIX/qEEXsfkg+lTZ466Sm1/0wzbQmPyFlPr2le9cogKJD4JhTXoUWWIdGvMVS6hh
	qWP+zEN3wyXD1kqGFe5B8//kEPohjLQ0GrlkNpp4WEzh7UUUOtXR/rmepeXDqvaxIlVN
	bX0TAOv29GbixCsxXnbhWAzP0pjZ1ichYusXEkmJ8Y1W0B7aTZaVHbYPJI0SdK3d1Dup
	XzhiFVBsJj+iPb244UwFORUWOX9N8UfzwCEahoi+hPtQr40zl+OywN5nH+UV3aPB7Gwk
	HGIMwykFytjkSz9red+X3LxzQdLIiBBC7Ihuv3GRtNr4jnjckssBvdzbhELWwSUM+4mW
	HZ/Q==
MIME-Version: 1.0
Received: by 10.180.99.70 with SMTP id eo6mr6612204wib.17.1337393566118; Fri,
	18 May 2012 19:12:46 -0700 (PDT)
Received: by 10.216.235.22 with HTTP; Fri, 18 May 2012 19:12:46 -0700 (PDT)
In-Reply-To: <cover.1337368253.git.kishore.k.bodke@intel.com>
References: <cover.1337368253.git.kishore.k.bodke@intel.com>
Date: Fri, 18 May 2012 23:12:46 -0300
Message-ID: <CADkTA4PGHnMnR9vD2PvPTaVhK+AhpPbHB+bTwtFMX_-=Y6ZrKw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: kishore.k.bodke@intel.com
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1] [KERNEL] Cedartrail: Move PVR specific to meta
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 19 May 2012 02:12:47 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, May 18, 2012 at 4:15 PM,  <kishore.k.bodke@intel.com> wrote:
> From: Kishore Bodke <kishore.k.bodke@intel.com>
>
> Moving the Cedartrail PVR specific kernel
> features to the meta area and removing
> them from the BSP.

Looks  fine to me. I won't be near a real computer for another day or so, b=
ut
I'll queue this then!

Cheers,

Bruce

>
> Please pull into linux-yocto-3.0/meta.
>
> Thanks
> Kishore.
>
> The following changes since commit 34e0d2b4b4e9778b31f9ea99ca43f0dc71a7ee=
23:
>
> =A0meta: Clean up BSPs kernel config (2012-04-17 16:01:19 -0400)
>
> are available in the git repository at:
>
> =A0git://git.pokylinux.org/linux-yocto-2.6.37-contrib kishore/cedartrail
> =A0http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=3D=
kishore/cedartrail
>
> Kishore Bodke (1):
> =A0Cedartrail: Move PVR specific to meta
>
> =A0.../bsp/cedartrail/cedartrail-pvr-merge.scc =A0 =A0 =A0 =A0| =A0 =A06 =
++++++
> =A01 file changed, 6 insertions(+)
>
> --
> 1.7.9.5
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

