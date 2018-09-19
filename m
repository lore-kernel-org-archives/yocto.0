Return-Path: <f@rtfs.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F96CE00708; Wed, 19 Sep 2018 10:13:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.rsk6.de (h1435773.stratoserver.net [85.214.108.125])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3026AE00546
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2018 10:13:02 -0700 (PDT)
Received: from yoga (ipbcc04aa7.dynamic.kabel-deutschland.de [188.192.74.167])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128
	bits)) (No client certificate requested)
	by mail.rsk6.de (Postfix) with ESMTPSA id 5319A2526907;
	Wed, 19 Sep 2018 19:13:01 +0200 (CEST)
Message-ID: <1537377180.12258.22.camel@rtfs.org>
From: Fabian Sturm <f@rtfs.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 19 Sep 2018 19:13:00 +0200
In-Reply-To: <CANNYZj8nvG3ty5J0vrapSYK+=VQauNQF71dLnbY8gZAfPf19fg@mail.gmail.com>
References: <1537304423.12258.18.camel@rtfs.org>
	<CANNYZj8nvG3ty5J0vrapSYK+=VQauNQF71dLnbY8gZAfPf19fg@mail.gmail.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Native yocto compile in docker container without cross compile
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
X-List-Received-Date: Wed, 19 Sep 2018 17:13:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi,

no this is not what I am searching for. What I want is gcc cmake and
other tools to be installed inside of the Yocto image, so that I can
compile natively in Yocto without having to hack build scripts to work
with a cross compiler. 
But of course I don'T want to deliver gcc and others with the image on
a device. One solution would be to build a separate image that contains
the tools. But my hope is to use the original image and just add those
tools later on.

Any ideas how to set something like this up best?

Kind regrads,
Fabian

Am Mittwoch, den 19.09.2018, 10:07 +0200 schrieb Alexander Kanavin:
> I think what you are looking for is a Yocto generated SDK for your
> image?
> 
> bitbake -c populate_sdk <image>
> 
> Alex


