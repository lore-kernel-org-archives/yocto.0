Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB095E00872; Tue,  6 Jan 2015 07:15:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.169 listed in list.dnswl.org]
Received: from mail-ob0-f169.google.com (mail-ob0-f169.google.com
	[209.85.214.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74726E00571
	for <yocto@yoctoproject.org>; Tue,  6 Jan 2015 07:15:43 -0800 (PST)
Received: by mail-ob0-f169.google.com with SMTP id vb8so66074497obc.0
	for <yocto@yoctoproject.org>; Tue, 06 Jan 2015 07:15:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=50SzEet8LZ+NXkz4HyjWDv3UAUerO0WD82rCVCho+Oc=;
	b=U4VxDCRhaU8wJ8NPBKoZRyzXuG7tQmTXpqlteQG+I2FNEJ47Kf9zM72P9R3/hwnm9/
	0MPgAyb6AjSCiWGyE3hDP6BXl4QzfW4meeomQhtC88joJqG6uP+3hKbsFTscyfMtHqqV
	5TlAhlMeCSf3n+Y4wy8lE12dKgFFXM2pBQSWM+HxuxEP5cLZKCKyAbEOHwO9bu76VLqO
	qSoOivAB8ZMvO9Lk4nEi7v+tq2tHQit5uB55jsF8cxonp9CgQqy+88tBWxQBNKFe2C3Y
	cYx1FPUVKc0LGUQa9yVs9Y1wsmN9aOn7nrMEssJpLV7gCZkDnYAzCv/iDNTaTsIGaZTM
	opSw==
X-Gm-Message-State: ALoCoQl2m+CS5YP4At7lLuEF2IUYbngOH3nM4EnZV6DraYo3oOnStL23zIpYBYJ+XObJHwrMLpO1
X-Received: by 10.202.213.144 with SMTP id m138mr53780414oig.87.1420557342964; 
	Tue, 06 Jan 2015 07:15:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.79.1 with HTTP; Tue, 6 Jan 2015 07:15:22 -0800 (PST)
In-Reply-To: <7B6FE55CD594D7478CED8A39DF3BFC0A5E70ED9C@UT40SVCWEM001.atk.com>
References: <BLU406-EAS388E30ADBB7B8ABF5E862C58B580@phx.gbl>
	<7B6FE55CD594D7478CED8A39DF3BFC0A5E70EBD9@UT40SVCWEM001.atk.com>
	<BLU406-EAS2048C24D52F9E36403A1FAB8B590@phx.gbl>
	<7B6FE55CD594D7478CED8A39DF3BFC0A5E70ED9C@UT40SVCWEM001.atk.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Tue, 6 Jan 2015 16:15:22 +0100
Message-ID: <CAP71WjxjRe9kY1xNZos+NMKR4xOjs8MGZ1EfSdnB0HRZXo0-5Q@mail.gmail.com>
To: "Moore, Thomas (FtWorth)" <Thomas.Moore2@atk.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Andre Marschalek <andre.marschalek@outlook.com>
Subject: Re: separate partition support
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
X-List-Received-Date: Tue, 06 Jan 2015 15:15:48 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 6, 2015 at 4:05 PM, Moore, Thomas (FtWorth)
<Thomas.Moore2@atk.com> wrote:
> I spent some time trying to determine how to generate multiple images as
> you=E2=80=99ve mentioned. However, the process used to generate the rootf=
s image
> appears to be buried deep in the Open Embedded core and I wasn=E2=80=99t =
able to
> figure out how it works. Maybe someone else can chime in on how that migh=
t
> be accomplished.


i believe you should be able to create your own image type class for
that. maybe a generic solution might make sense for OE in general..
but adding a custom type that creates multiple images should be simple
to implement.

an example of such a custom image type class that comes to my mind is:

https://github.com/shr-distribution/meta-smartphone/blob/shr/meta-android/c=
lasses/android_image_types.bbclass

so basically, you can look at how IMAGE_CMD_ext4 is implemented in OE
core, and extend it to create multiple image for /opt, /usr, ...

cheers

