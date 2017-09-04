Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBDD7E00C9E; Mon,  4 Sep 2017 13:31:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.51 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01AF0E00349
	for <yocto@yoctoproject.org>; Mon,  4 Sep 2017 13:31:48 -0700 (PDT)
Received: by mail-wm0-f51.google.com with SMTP id 187so8828199wmn.1
	for <yocto@yoctoproject.org>; Mon, 04 Sep 2017 13:31:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=54MlsquVJ3N5Lxf7/TW4Gn9A2LbtjO1Olm1bojuHvRk=;
	b=UOTmEIfVobIbDEhminr0W+3An8hq5c7iZ9E5TiR4PI+8UNbC1Ja/MIb216sh6mIyC8
	JwohqYde8tEWf6A++Gbqvd8qWqweQdODSvotqFFFXWfgYFhcqZax50MI9Tk3Awah6yIh
	vKCN69YTljnwH9k4fcDxf43uAvD6y0Txcwp2ucrS5oxgf5Mh4q9l8u8EKwKmxApoHq5R
	gK4IJ3UkbYYoqm1eitXU/Py7ZhSRdE7CCkwIGTefJB0tsaFkcHLXyBS9aGojSNoejJf+
	FJdeQHiH9HnNpcTRbG1MxJenWoVS8EpizRg/uOWjtP/gXTOMHosgqYcpOeXT4iDNFNM6
	n5CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=54MlsquVJ3N5Lxf7/TW4Gn9A2LbtjO1Olm1bojuHvRk=;
	b=Hv9u3WQDYPAADCRVKVlzlRW4ul/SKOgcwxprqZ1nP1BDD2n1r26R2vVZdntF+F5+qt
	rAcrG7DsCuWGm3c/glznhrVKTDNg9pAPPgDgY7PK/AdKtlPXDQujTlfTtLLW8enM6use
	Dmpp6X6QF/C2ogXnUlrLeVa2gGLxfdUXAOHtgmwVmP6A45sX0lTlMc1rQucrGY1ejcOE
	zKOMNWKvmr88Rglw0keN3uvT4IAGtUvcNZpMyL9gFOA07pA/Frui05sMA+saWa/1QtQi
	AVq+RdNVgu8FBGvgqPm6vxxB1hVGLBWJL/cdFxqfwsUYnQ0sF8KtX1tUCrmpANyXXUWr
	Fd8Q==
X-Gm-Message-State: AHPjjUioUy5SUEa5B3Br34FS+mLjH3hEhI6e/8lDu0HiJB/7RMKojsNS
	xMolm5XVqfCKwakmNs3PkzBn3FQUdXta
X-Google-Smtp-Source: ADKCNb6796jeG3sOvpdfVNL3VOlXXlPGZRwIExHboIUvlxpfR1RX8jwQIKquuMUkwC/ydaOnVQIht4kl5sY+/fzJMRY=
X-Received: by 10.28.135.133 with SMTP id j127mr1060101wmd.21.1504557107815;
	Mon, 04 Sep 2017 13:31:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.166.53 with HTTP; Mon, 4 Sep 2017 13:31:47 -0700 (PDT)
In-Reply-To: <CAMKF1sreAs1W_TA9yFSKLhVvjNOcXJMTLjLU=cjZ+EJYQuxVqQ@mail.gmail.com>
References: <BD59C156-6B9B-442C-B8B8-92D2194902C0@korgrd.com>
	<CAMKF1soJ2=jwPnfefEvDppJGBxPutA_usc0E--XbWY9txredpg@mail.gmail.com>
	<6668FC5E-F4CC-4E92-8857-3B3BC71C7045@korgrd.com>
	<CAMKF1sreAs1W_TA9yFSKLhVvjNOcXJMTLjLU=cjZ+EJYQuxVqQ@mail.gmail.com>
From: Paul Barker <pbarker@toganlabs.com>
Date: Mon, 4 Sep 2017 21:31:47 +0100
Message-ID: <CAPyrkgziawJVn2cDbwAziEF78LZDNq1=e1jhHrM6rL41GtK0NQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: raspberrypi3-64 target not booting
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
X-List-Received-Date: Mon, 04 Sep 2017 20:31:49 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 25, 2017 at 6:27 PM, Khem Raj <raj.khem@gmail.com> wrote:
> On Fri, Aug 25, 2017 at 10:14 AM, Bill Jenkins <bill@korgrd.com> wrote:
>>
>> On Aug 25, 2017, at 9:42 AM, Khem Raj <raj.khem@gmail.com> wrote:
>>
>>
>> On Fri, Aug 25, 2017 at 9:39 AM Bill Jenkins <bill@korgrd.com> wrote:
>>>
>>> I am trying to just get the simple 64-bit rpi-basic-image to work, but =
the
>>> Raspberry Pi 3 seems to hang with the rainbow screen at startup.
>>
>>
>> Can you plugin a serial cable and see if that worked or try to add ssh
>> daemon on target and try to ssh into pi
>>>
>>>
>>
>> That was a good call. I can login with the ssh daemon, so it does
>> successfully boot. I just
>> cannot access it from the HDMI port. (I do not have the hardware for a
>> serial connection
>> at the moment)
>>
>> Any ideas on how to get the HDMI port to function the same way as it doe=
s
>> for the
>> 32-bit case?
>>
>
> Readding the mailing list.
>
> what you have is exactly what I had when I submitted the port to
> meta-raspberrypi. Haven;t had a chance to revisit it. but this could
> be related to device tree files we are using here. I have had reports
> from other devs of having been able to boot into graphics using older
> kernels but I never got
> that far myself.

I'm seeing the same issue on builds from both pyro and master
branches. I've confirmed this isn't a HW issue by trying out an
OpenSUSE Leap 42.2 64-bit build for Raspberry Pi 3.

Khem, are you saying this is the current expected state of Raspberry
Pi 3 64-bit support? If so I'd really like us to document this in the
readme and open a bug so we don't lose track of it.

Cheers,

--=20
Paul Barker
Tog=C3=A1n Labs Ltd

