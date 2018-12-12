Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45C23E00C45; Wed, 12 Dec 2018 02:14:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f177.google.com (mail-it1-f177.google.com
	[209.85.166.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3344AE003E1
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2018 02:14:49 -0800 (PST)
Received: by mail-it1-f177.google.com with SMTP id g85so8234996ita.3
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2018 02:14:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=5TJGyKzBbFmYq6P1CsX4mzoREoQfJBUSuFOX0HTAYi8=;
	b=VOJIdmEpNsNp9llvTAaDzEIRX3dXsiAeyhVZITdW05Aja/fl3XuuuDC8zgo+fK8nJj
	PHNThG0ngcq03hut+qmKVZ7+SfG5eDr3Dk3u1PXihQpb6Rolgmu96ljML12TcbTH0m/W
	JjkyATe9AhMwBRMe2alDDYsqX8kinQUDnk856nA2xgWVlUZvY+Pvp9M+w47NsdeBn1zq
	3d0i25Dut5S8hXqPKswzuNmu4XdC12MsE4T/fdDQ9g8Tl9J8uuyz7qFeG0TryNE0gs93
	KOxvE7YtfqsDp0hjgH22wL3GVW4qcWzZ1a73HcEWV4k2bpA8nnYoKZxxOT43qpb6FjQY
	Y+Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=5TJGyKzBbFmYq6P1CsX4mzoREoQfJBUSuFOX0HTAYi8=;
	b=bQ/qQw/Pum4BfvonWVJONyJ5hWlptw4sScuqPMhuo3b+Sv6he26dQDVPGhjQvJiaMX
	hmcHjueAwXdpAlTjPsnQCFHH4OFiAZWMo/KfCS0u860/VEk6e6AgCBMr7K4vUjRSdWp/
	HmScfoU9lOYHY0bbgEjBXlTMRXHJR2cTAbkdMjUBtn3CWyh4PHp+IkRfPEfXcsiLNTtq
	ge1TCaigg5msrZviNsb4KFeYkuL5IwJ60ktao4lqH0eyt9Ri19/W+FEYt2GQGJXO9yAl
	RZUEjc4YwgrZsnObD9tZNNMEeNvSuWZB4eOhvUH8dngrrGd/FPIY9hOhKCPBkLVCW/FG
	MPfA==
X-Gm-Message-State: AA+aEWbKXvakvli+30LzLActGMUuP6gjOZDqaTHPAX2woQfFOxjy3BnK
	GanCMCL4TVYpTUTngDHswPth7d2AKWr5GhWs520Dcg==
X-Google-Smtp-Source: AFSGD/UI4o7VoBD0PVLEBEsJhmcjrZqLRojE59D2LAatdkm1iCLrd52KSsLuWZCfJQX0HIxAm8ydKiSxujA0MWgMyyo=
X-Received: by 2002:a02:1bc5:: with SMTP id 66mr19368398jas.105.1544609689344; 
	Wed, 12 Dec 2018 02:14:49 -0800 (PST)
MIME-Version: 1.0
References: <mailman.6424.1544522247.2881.yocto@yoctoproject.org>
	<HE1P195MB036292F42DABDA874AFBFB73C1A60@HE1P195MB0362.EURP195.PROD.OUTLOOK.COM>
In-Reply-To: <HE1P195MB036292F42DABDA874AFBFB73C1A60@HE1P195MB0362.EURP195.PROD.OUTLOOK.COM>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 12 Dec 2018 10:14:37 +0000
Message-ID: <CAJTo0LZg+y=1F-rwOEg8PcY5Q_wLxoxEvs4YSn2fZBd0+Dh2Hg@mail.gmail.com>
To: MohamedYouseif@outlook.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Enable PACKAGECONFIG Feature
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
X-List-Received-Date: Wed, 12 Dec 2018 10:14:51 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, 12 Dec 2018 at 03:42, Mohamed Youseif
<MohamedYouseif@outlook.com> wrote:
> I'm asking about how to enable PACKAGECONFIG feature from local.conf file, let's say that i have the following pacakgeconfig in a recipe
> PACKAGECONFIG = " f1 f2  "
> PACKAGECONFIG[f1] = "-DENABLE_f1=ON,-DENABLE_f1=OFF,f1,"
>
> so i need to add line in local.conf file to enable this feature for my image?
> I tried to use the following line to loca.conf but it does not help:
>
> PACKAGECONFIG_pn-<my-recipe-name>_append = "-DENABLE_f1=ON"

This is covered in the documentation:

https://www.yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#var-PACKAGECONFIG

Ross

