Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43E2EE00C1B; Mon,  2 Apr 2018 05:17:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f193.google.com (mail-yw0-f193.google.com
	[209.85.161.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E77B2E0090A
	for <yocto@yoctoproject.org>; Mon,  2 Apr 2018 05:17:25 -0700 (PDT)
Received: by mail-yw0-f193.google.com with SMTP id u15so4904848ywg.8
	for <yocto@yoctoproject.org>; Mon, 02 Apr 2018 05:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=PkrY45zYQNuMaI+VQb9oOTT91gCPDivq+3kobv0pwYU=;
	b=dP7hEoWLdDbG5ninT11Loi0xtn4V0E7yc+a/apCIp9Mb+mXIBj22UPlnidKV+dORPP
	708Q2Ls4X/rlq5lUst3RuNoQX6tNB8JjqByxRisqzTcGgedc1l9fXODIXPNw5aUsRzV4
	OPCNt9K9ogQsxI/N2C0HsQkQuo8kqjNZ4rigEOfsHDRZ+XgA+jM0+MFnKlPmgsRD0Tjd
	PjrbiPHyfCveI9ra9+YXfYqt9KLJ0sZN1OcBOaxNKTVh4EUILOUDBwvcnGrENwveo3Vp
	maLtLZ76E2KkNIoQWyLRkzGy4J5VJBhz3YVBR/V9IZxXkkMm1UA25C8/xn3XXJxofd8a
	I8Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=PkrY45zYQNuMaI+VQb9oOTT91gCPDivq+3kobv0pwYU=;
	b=YjfmfdFwayZaNF+kBB0YLtXMyhLFcRfA53qjixwpDmGkUchLu2tCdEOCq21aQmPdwL
	5KPSzBof3aWMayyux7t3aAy0pTwe9I22SLaTkYBXGPP3gTxPWGsoz3ftOqzhkQgWxOW6
	e2i8xTOOgSIrwQvFRh1EnIyoYOCXOmZlYk9hsz9CS3WQa5obdko5R4xAhZBH0VBWQydO
	+/qIR8xIejNDGB6c3Jxmqj8zu/tiMHMkFXuJwIcRgt3knWVVXBlkn/KeXU3byWsdQjhI
	WLkibidqR7aG2CE9BAZFpUDVsvmYUg/uI8b8LI3JmTAvBOxMkso0LXT92YO276HFGfHk
	cJrg==
X-Gm-Message-State: AElRT7HjQfPmIXbYAxKPqLVCp6z6kLrjC+WESz/VXh5f8i5KpphEWz/Y
	nnN2LNwf+mOOyq6R2j9pEZy26MtIH/DHxN/mecY=
X-Google-Smtp-Source: AIpwx4/EB2csgPq+KP2WrXSKgCrjSh8GfZqHKemAWzmXHJJDGLWN8y1OWuJxFr/MlvVluMvDap4GUYoiQpT44hEnk9s=
X-Received: by 10.13.205.65 with SMTP id p62mr5239457ywd.511.1522671444848;
	Mon, 02 Apr 2018 05:17:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a25:d105:0:0:0:0:0 with HTTP;
	Mon, 2 Apr 2018 05:17:24 -0700 (PDT)
In-Reply-To: <CAHUNapTBry7BbPkLyJCjN_2ss4FcqgEXkL==YUqZS1X5NToJ6Q@mail.gmail.com>
References: <CALbNGRRA3Ev3mPT4ZDRO_koC_uwVWy4qXc8onJN5nSeXnE3JRg@mail.gmail.com>
	<CAHUNapQhvr8UWBuF-Z5y0ojhsfF=fUU3nfgmRdxNGi4iKdkbqA@mail.gmail.com>
	<CAMKF1sonaNhe0jznAaVFySa5z-JOBdqxDRjifq-F04kra=_rfg@mail.gmail.com>
	<CALbNGRR0qo=yS2dop-3pfpAZVSC9NekDyg_aFCzURs7NM3UGvg@mail.gmail.com>
	<CALbNGRTKdu+H4eW8U1D4FxM9+LjfoOeZUC0c=irJyHmK69bdMQ@mail.gmail.com>
	<CALbNGRS06u3NTU=2XYRiga=B_rPj_rNyLwv2dC8hRUkx=mJt+A@mail.gmail.com>
	<CAHUNapQP=2OYu6qjf5QLmMbcurXRFo_O1fWg0_oiqCXDZykccA@mail.gmail.com>
	<CALbNGRTifa4-1SW2+zNCB_1a6+wHAjAYigMA1chrNMFiDb15Kg@mail.gmail.com>
	<CALbNGRRR2z6bZFtU=aRBrY8FqAxU1YLtJaD+TGAw3yA-Vr+6AA@mail.gmail.com>
	<20180329214654.GA25163@linux-uys3>
	<CALbNGRR__b_jq3zRaOP8iawqgPgpxnH5ceQpo7+Tq-wPdWqaow@mail.gmail.com>
	<CAHUNapTBry7BbPkLyJCjN_2ss4FcqgEXkL==YUqZS1X5NToJ6Q@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Mon, 2 Apr 2018 14:17:24 +0200
Message-ID: <CALbNGRR2TfpNm+v3+sRQXjMx1P54+GXNaO1LT75R6ZRSA6XfRw@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Has anybody run VC4 + X + recent meta/masters lately
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
X-List-Received-Date: Mon, 02 Apr 2018 12:17:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 2, 2018 at 5:10 AM, Trevor Woerner <twoerner@gmail.com> wrote:
> On Fri, Mar 30, 2018 at 6:45 AM, Andreas M=C3=BCller <schnitzeltony@gmail=
.com>
> wrote:
>>
>> After party hangover: sddm and kde look horrible with this patch.
>> Should respect linear if requested explicitly - wonder if that slows
>> down horses...
>
>
> Out of curiosity, are you going to follow up on this? Maybe with the mesa
> people?
> When I encountered this issue, my google-foo didn't yield anything.
I did already [1].

My problem was that meta-raspi-light did not enable dri3 explicitly
any more. meta-raspi-light uses more PACKAGECONFIG defaults coming
from oe-core's mesa. There was a change in oe-core's mesa that enables
dri3 only if x11 AND vulcan are enabled - and I don't have vulcan in
DISTRO features (there will be no vulcan support for VC4). So my
builds disabled dri3.
After fixing my problem I've tried to turn the thread in the direction
of your chromium problem. The fact that I did not get further response
can either mean that Daniel is out or that my question was that stupid
that he is not willing to give further support (and I think this is
the case). Have not looked into that further but I think dri2/dri3 is
an either/or - there is no configuration supporting both.

[1] https://lists.freedesktop.org/archives/mesa-dev/2018-March/190645.html

Andreas

