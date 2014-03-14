Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-ob0-f171.google.com (mail-ob0-f171.google.com
	[209.85.214.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 106CDE00AC7
	for <yocto@yoctoproject.org>; Fri, 14 Mar 2014 03:18:26 -0700 (PDT)
Received: by mail-ob0-f171.google.com with SMTP id wn1so2346143obc.2
	for <yocto@yoctoproject.org>; Fri, 14 Mar 2014 03:18:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=bE5h1PJA7OPd3Mtj6Igs07HxOCOP56cAmlfahkcfpxA=;
	b=W6sT+YZ0Amf5PlK2POoFdsiFl3HY54VLRzC7WtVMlTxhHaJFUt5qOE/Io9zrt1ew0o
	oPf9AbjPd1T00IRoSEes7V5pOiU7FrJG2RBX3O/QRhzXmf2CIw01dFofVbhdFXoYx1Wu
	Vy7vaCwyg9hMOQKH9L82cxMReEHtpAC7ABhm4zquxoDMs5yT9uSnFrsfkm3bgOYFxuiv
	PVrbfj8+GBHP37MQ+57AQkPoNhTKwTzvBS2Qp1P8bgHQtDUz1xghT/39XxYNv/9gf2Sx
	S1qzy4hcwnnd/fBcZ78cRs7YoHb445ugvQnGpTFNXoClhRZcqypRBQHfa2snonYooYaB
	5rTA==
X-Gm-Message-State: ALoCoQkYCxVaV55l3mCIx4eg2L8QHuKa5suzNlxLU4zkbEGG5ui8MXqWwAeKcqki8VUUMUM/H21T
X-Received: by 10.182.142.37 with SMTP id rt5mr262658obb.76.1394792305861;
	Fri, 14 Mar 2014 03:18:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.182.99 with HTTP; Fri, 14 Mar 2014 03:18:05 -0700 (PDT)
In-Reply-To: <CAD78y+5oXeVFhmq8QYiftL+SXLY0SuPx=PS2gWE1-+a6aVimMg@mail.gmail.com>
References: <CAD78y+7tSFGtRUy89p1Sut+aBuw2Rghmq9uc0y+uySgKXozp1g@mail.gmail.com>
	<CAP71Wjxkzj1t=Fq_a1-AJMJcik3jD1P1LrbfPK809QjJtU2aMg@mail.gmail.com>
	<CAD78y+4tJLHEGAd6NZ-S=XU7j_J9=-pFb5vYRxF7gZb52Qkq-Q@mail.gmail.com>
	<5322C771.8070601@mlbassoc.com>
	<CAP71WjzXHvngY_gk5_jdC4jDD5DhFBR7pfL_GDUMOVfHc9Cpag@mail.gmail.com>
	<CAD78y+5oXeVFhmq8QYiftL+SXLY0SuPx=PS2gWE1-+a6aVimMg@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Fri, 14 Mar 2014 11:18:05 +0100
Message-ID: <CAP71Wjx9ab3bf_6=k-oocYTo0vZuy+oBbq=kTWGQBibsHonyNw@mail.gmail.com>
To: Federico Vitali <fede.vitali@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: What is the best practice for customizing libraries included in yocto distribution?
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
X-List-Received-Date: Fri, 14 Mar 2014 10:18:27 -0000
Content-Type: text/plain; charset=ISO-8859-1

Frederico,

On Fri, Mar 14, 2014 at 11:09 AM, Federico Vitali <fede.vitali@gmail.com> wrote:
> Thank you Nicholas and Gary! I'm quite experienced in linux embedded
> developement, but I'm new to yocto / openembedded.
> Nicolas, can you please explain me how to use my sources separate from OE
> build dir tree and still using oe built system?
> Do I have to edit the sources directly in builddir/tmp/work/etcetera or can
> I keep it separate?

Please have a look at

http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#ref-classes-externalsrc
http://www.yoctoproject.org/docs/1.5.1/dev-manual/dev-manual.html#building-software-from-an-external-source

let us know if you have additional questions

