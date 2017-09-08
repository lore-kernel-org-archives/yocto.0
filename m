Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20FFEE00CED; Fri,  8 Sep 2017 07:24:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.45 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C319DE00CE7
	for <yocto@yoctoproject.org>; Fri,  8 Sep 2017 07:24:34 -0700 (PDT)
Received: by mail-wm0-f45.google.com with SMTP id f199so5925760wme.0
	for <yocto@yoctoproject.org>; Fri, 08 Sep 2017 07:24:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=Ok0+SOJ2gRA4T3pO78/Xlf8AJjkeLOgdi5sBqu9y6Jw=;
	b=tu1hKKtYvyzlyRVaBGvPNVtbbIWxxRr6JpH2G3km7hmTF9NBqE8Ta+R/SlF7Ah6c+f
	yiEyA9TClX+vPuldqb0cVFq7ti6LVYH+BNiA/bYqcggEfSP7P/Q1PUOCinD8AOWOmGky
	WnkdP12N571RZp2Io3syxI1iZpwaz7nmXU0rG/1gZfI4xcrIt6fwHXBAR1NUoyFXWUS/
	Am8iNHHqen5iI6ePV6hG7qAMzTZdF2wNaeSNGJaJE6TCL0yPPlMcmLhVr+XiAwKpAhcA
	agm3AGKpq09X94pnDr/s/l+/VDAERF+a0WdV7vp/MJ1grKw9lP6yQ+vNU766etH4x/gT
	EOfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=Ok0+SOJ2gRA4T3pO78/Xlf8AJjkeLOgdi5sBqu9y6Jw=;
	b=FrN20ZZPMiTTF5uXXiycbR9BHGHT3lSicCjPqiZ4rJhpUh2TxhLSDOIfBqIp8/VmDt
	JeRmL6HuqeNLnGj1lyxHXoGgjA1H5UX8XnIC8vZQuNy0aGlWwLMkNEWymgC5Ri5LyaFB
	/B71tEz6WixxeJj33jjjIrCQN47+iRDpz3zxE9pas1+4tm1yAZVneOvDIdiUhRncb76w
	9Xj1Q1jJdEjIPIgTFhjHeHhMX+h/iQM/IQYrHCZpaxOtNWe+/Dgz0zFpKl3Rj89Ty7ex
	SoNIBu6yfVtf2f4WbBvj6j7XxgsTLRrC2Fj4qPvwKKojDeYRyvvZ3oa4n0EKXN9xnClS
	i83w==
X-Gm-Message-State: AHPjjUhE2UOPLGYUyd1saF+Swm2a0AAqB5Wtdb6opRQ/Ykcb7VraKbtY
	OHW6mwoXTk8rAxyR2TGhukQqUuJafSYi
X-Google-Smtp-Source: AOwi7QBulcKm71cNW/96RufTALXVWeVhpTRYDBABaGoDtE3sGV3PxlfRUkXccUixfWv//qcxW5W/soHQ4W/o1Y/Jquo=
X-Received: by 10.28.236.212 with SMTP id h81mr1806194wmi.42.1504880673662;
	Fri, 08 Sep 2017 07:24:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.155.157 with HTTP; Fri, 8 Sep 2017 07:24:33 -0700 (PDT)
In-Reply-To: <CAC+thW3U4=wzkAaRm-Uy4hSPOehT8vL2QDx==MBi7v8f96AtTA@mail.gmail.com>
References: <BD59C156-6B9B-442C-B8B8-92D2194902C0@korgrd.com>
	<CAMKF1soJ2=jwPnfefEvDppJGBxPutA_usc0E--XbWY9txredpg@mail.gmail.com>
	<6668FC5E-F4CC-4E92-8857-3B3BC71C7045@korgrd.com>
	<CAMKF1sreAs1W_TA9yFSKLhVvjNOcXJMTLjLU=cjZ+EJYQuxVqQ@mail.gmail.com>
	<CAPyrkgziawJVn2cDbwAziEF78LZDNq1=e1jhHrM6rL41GtK0NQ@mail.gmail.com>
	<CAC+thW1aSXs-C03_7rgenyLXNypJBRBBQsJEpZrUJyRj1OKb_g@mail.gmail.com>
	<CAPyrkgwvwMJ7rmDLVpq1HmmSpqLy35+vDiBXBdPon7WUNwqqHA@mail.gmail.com>
	<CAC+thW3U4=wzkAaRm-Uy4hSPOehT8vL2QDx==MBi7v8f96AtTA@mail.gmail.com>
From: Paul Barker <pbarker@toganlabs.com>
Date: Fri, 8 Sep 2017 15:24:33 +0100
Message-ID: <CAPyrkgzDoLzZz03TdSERqRYEN=QWfNLTYJQQYpztEERBPOsvHQ@mail.gmail.com>
To: Andrea Galbusera <gizero@gmail.com>
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
X-List-Received-Date: Fri, 08 Sep 2017 14:24:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 8, 2017 at 1:17 PM, Andrea Galbusera <gizero@gmail.com> wrote:
> On Fri, Sep 8, 2017 at 11:22 AM, Paul Barker <pbarker@toganlabs.com> wrot=
e:
>>
>> On Fri, Sep 8, 2017 at 10:18 AM, Andrea Galbusera <gizero@gmail.com>
>> wrote:
>> >
>> > The only particular configuration I have here (and probably did not ha=
ve
>> > when testing it a while ago) as you can guess by the missing target na=
me
>> > is
>> > that i boot to U-Boot with KERNEL_IMAGETYPE =3D "uImage". Does this ri=
ng a
>> > bell to anyone?
>>
>> Good timing, this is what I'm actually looking at today! The arm64
>> arch does not support the legacy "uImage" format. We need to use the
>> "Image" format (or "Image.gz") and use "booti" in u-boot instead of
>> "bootm".
>>
>> For now, you'll need to build without u-boot for raspberrypi3-64 by
>> unsetting KERNEL_IMAGETYPE.
>
>
> Understood, maybe we can test transitioning toward using "booti" and any =
of
> the modern image formats for both raspberrypi3 and raspberrypi-64? This
> should keep the platforms more aligned hence easing layer maintenance...
>

Unfortunately "booti" is only supported on arm64 and "bootm" is only
supported on 32-bit arm.

I'm leaning towards having one variable, RPI_USE_U_BOOT, which when
set to "1" will set KERNEL_IMAGETYPE correctly and enable u-boot.

Thanks,

--=20
Paul Barker
Tog=C3=A1n Labs Ltd

