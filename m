Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00C00E00A10; Tue, 16 Oct 2018 06:01:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com
	[209.85.167.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AB59E00A10
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2018 06:01:34 -0700 (PDT)
Received: by mail-oi1-f178.google.com with SMTP id a203-v6so17954845oib.0
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2018 06:01:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=BedpWJ1w9pjfrMs08il83FzNKetI3VGxv4LygH9neIQ=;
	b=u3Vv3pxR8Z99/Ooid/dRx+2b35gHVzDkliM6D6jFm4lHwgtKxBdh42R6/MVXD4yiB2
	CIOFAeSHWFXRuuya5rm3CUSxS0aEgG6ncDsLulxWhEI7zJgOmkZicdguWtYvemORKzN1
	ALG7xQZSQpNG2RHQs49x8YQh+GfxSJSsac1jKtHQR+JqQFwD5pCaOGH3Y4TL96aySLK7
	UbwIyL19VWGp13bCbnea8ue2Qa8oVNM/Jbe7Ch1IdfwkI1FTpx1jsQ3Pw1GTRZIJbh1U
	3Lg/ziN/WbfYmzJyO1pIumvv4UEcUDAmleOJ7M7yANLkKUTgjXpdk7WMeNkbpcy1Jbth
	NrXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=BedpWJ1w9pjfrMs08il83FzNKetI3VGxv4LygH9neIQ=;
	b=dJ0CYGnVje3IwId3fsxak3C8YHo+vgHlzeSvVJSia7mXodtt25/2dMJ23AuD0k+CXU
	82L4jwAO8dQvc5SVmQtkYojHKPul4ep4kKSJZ4kGVFXuUXBqmFuFM/DQ9fvlFG6FgXeC
	ZI57QYltR/sNbwOn4A/XgHqS7od/okAhx5rk1UWQr++mRQK0uj6uTiTGaeCiyOGtIlCX
	BQIY7NtcTXkrnbJi7yGEHL5+YVJbYU6hjwjfj3qgszeHTrobTGoAWVn8N8X3ULlCY6DU
	6UyQAbR02QYS+be2GAdgAswilYRM58FqGcLt78kNdeQO/wkcPtbUXXXilqqHhbH/yjI9
	EDgQ==
X-Gm-Message-State: ABuFfoiiADW5X6Tm2hSsEsXl7L8Q2JXFz0yOEdwNxCQnWBBjLkS55ypC
	oliCDMnGhMJIvzuVRZUHubXqPREqlT2GVUG14OPYmw==
X-Google-Smtp-Source: ACcGV63G0oP5ep5wKBrbxA37epdfx2IWx5t7DiLNcg/DTAAVGsc93YMYJnNnoqBjq0VFD6D8CoYYY7R5gn5a0szslKc=
X-Received: by 2002:aca:f0d6:: with SMTP id
	o205-v6mr10824750oih.138.1539694893989; 
	Tue, 16 Oct 2018 06:01:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAFjmEbDYvLenPW1D4=x+HxOmC4JUiJ4495xCbYzp6BZkxbAzwA@mail.gmail.com>
	<CAJTo0LZPS49=UK5E_1AJZa7tW7frxv8E4NRHMXRca3iW-e=asQ@mail.gmail.com>
	<CAFjmEbC2Vpe7wa+_ys0MmKFRkoWk2wgP1PE8rhTmJx6ev5EenA@mail.gmail.com>
In-Reply-To: <CAFjmEbC2Vpe7wa+_ys0MmKFRkoWk2wgP1PE8rhTmJx6ev5EenA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 16 Oct 2018 14:01:22 +0100
Message-ID: <CAJTo0LY3H1rckDOU-S05XzzEFRBeRrOci2D49Bu-YTZe2+4+sQ@mail.gmail.com>
To: marwen.brikcha@gmail.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Yocto Poky 2.4.1 - Remove python3 from build
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
X-List-Received-Date: Tue, 16 Oct 2018 13:01:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

How do you know that opencv is responsible for pulling Python 3 into
your images?

Ross
On Tue, 16 Oct 2018 at 13:59, Marwen BRIKCHA <marwen.brikcha@gmail.com> wro=
te:
>
> Hello Ross,
>
> I've set in my receipe opencv_3.%.bappend
> PACKAGECONFIG =3D "eigen jpeg png tiff v4l libv4l gstreamer"
> EXTRA_OECMAKE_append =3D " \
>                   -DBUILD_PYTHON_SUPPORT=3DOFF \
>                   -DBUILD_opencv_python3=3DOFF \
>                  "
> But alway opencv build python 3 dependencies in my images.
> It's weird.
>
> $> bitbake -e opencv | grep "PACKAGECONFIG", I got :
> PACKAGECONFIG=3D" eigen jpeg png tiff v4l libv4l gstreamer"
> and some other log that show -DBUILD_PYTHON_SUPPORT=3DOFF      -DBUILD_op=
encv_python3=3DOFF
>
> Any help ?
>
> Br,
> Marwen
>
>
>
> Le mar. 16 oct. 2018, =C3=A0 13 h 21, Burton, Ross <ross.burton@intel.com=
> a =C3=A9crit :
>>
>> Disable the 'python3' PACKAGECONFIG in the opencv recipe.
>>
>> https://www.yoctoproject.org/docs/2.5.1/ref-manual/ref-manual.html#var-P=
ACKAGECONFIG
>>
>> Ross
>> On Tue, 16 Oct 2018 at 11:17, Marwen BRIKCHA <marwen.brikcha@gmail.com> =
wrote:
>> >
>> > Hello,
>> >
>> > I'm using Yocto Poky 2.4.1 and bitbake version 1.6.0 to build a xilinx=
 embedded linux for zcu102 board.
>> >
>> > I've integrated OpenCV libraries on my image.
>> >
>> > So, I want to remove python3 from image build .
>> >
>> > Can you help me here on how to do that ?
>> >
>> > ----
>> > Best regards,
>> > Marwen
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto

