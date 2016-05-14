Return-Path: <pknopf@medxchange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85F8DE0085E; Sat, 14 May 2016 14:16:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f48.google.com (mail-vk0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 520E4E007DA
	for <yocto@yoctoproject.org>; Sat, 14 May 2016 14:16:38 -0700 (PDT)
Received: by mail-vk0-f48.google.com with SMTP id c189so22019788vkb.1
	for <yocto@yoctoproject.org>; Sat, 14 May 2016 14:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=medxchange-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:date:message-id:subject:from:to;
	bh=7C+wBQC1OR1dQMawJEeuCwdDVrKRrJUGfeM0NipNmrg=;
	b=xQbQAlhyks2laicYHHPDAsaLFKdzJIzejgBfPFU+FxgJ5DZ7qjit3wVqBvpT6WY8Ow
	iQ2F3KA0viLfu4fsOspxCjMjiUK6ymOL65cGlPhZFqcTsn4sbAN5E4qzVQGvCxIPLXm4
	pRnoCTaFXqKcuQV+ML6b+t4ljNq8hElKfxu+ij7ij5Ub2Q4d5CM72tsiVoro5zNg/oXV
	nHW6sKttLjaRcf05ZXNCIo/aqc6FTpZ8o6PI+rpvvgXs+Oxa3w15wXiBXaucMW7BlyGK
	SEKDGkZULdpfokPjoNw0jqjYRAyszDXrqSPwmel2uI1ysQxPjzXkf9ZJRVj+32YgGujl
	b3wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=7C+wBQC1OR1dQMawJEeuCwdDVrKRrJUGfeM0NipNmrg=;
	b=aPvmqDBWgocxWoNeQ2qk9UYiyZZRNCus8VKkhqyPxNZRmSVbqseNNxBX7C6nqumjfV
	J8gWS/Zenf9Z/EFbcpSNQWpdaGbMxaXGrwy2Zm2Rx1E9EuZIgzBYSPIq9gr/PaFR/Fc+
	xiWAf9FuobOnyYDRzxkD6ZTCGTywmGJvP+TT8vRLS0Ba4BVrAYExwngSXHdKt04tQrMK
	g6BqA9MdkAPNeQnP1uQHUskVNRm/TXyU5wRI0UB5NsxYCl3cLuxQuMvfFjvelakKp01N
	jrxq89H3cxJ/yZgyIA6ciimep7arrXZrXTIcVQA2xSKP+ih0C0FqAvulj12avLr40pQO
	P38A==
X-Gm-Message-State: AOPr4FVMQViTbBPumdNXR7eawnkd91g3OZCVhaLQMWyccvTA4mv5TLZzeAKo2k6RksAkuBN30wKXqnJVZ2uWAA==
MIME-Version: 1.0
X-Received: by 10.31.152.211 with SMTP id a202mr11087427vke.115.1463260598115; 
	Sat, 14 May 2016 14:16:38 -0700 (PDT)
Received: by 10.31.193.20 with HTTP; Sat, 14 May 2016 14:16:38 -0700 (PDT)
Date: Sat, 14 May 2016 17:16:38 -0400
Message-ID: <CABfz71dsLkf5W9LDsEewXj2Rmw715jqqMFvwKE7WYT=83iAs6g@mail.gmail.com>
From: Paul Knopf <pknopf@medxchange.com>
To: yocto@yoctoproject.org
Subject: machine arch files for Jetson TX1 (Quad-core ARMCortex-A57 MPCore Processor)
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
X-List-Received-Date: Sat, 14 May 2016 21:16:42 -0000
Content-Type: multipart/alternative; boundary=001a1141f4ec2a37200532d3e8bf

--001a1141f4ec2a37200532d3e8bf
Content-Type: text/plain; charset=UTF-8

What configs do I need to include in my machine.conf to support this
processor?

http://www.nvidia.com/object/jetson-tx1-dev-kit.html

"require conf/machine/include/arm/arch-*.inc" ?

Thanks,
Paul Knopf
Software Engineer
Med X Change, Inc
pknopf@medxchange.com

--001a1141f4ec2a37200532d3e8bf
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>What configs do I need to include in my machine.conf =
to support this processor?</div><div><br></div><div><a href=3D"http://www.n=
vidia.com/object/jetson-tx1-dev-kit.html">http://www.nvidia.com/object/jets=
on-tx1-dev-kit.html</a><br></div><div><br></div><div>&quot;require conf/mac=
hine/include/arm/arch-*.inc&quot; ?<br></div><div><br></div><div><div class=
=3D"gmail_signature"><div dir=3D"ltr"><div>Thanks,</div><div>Paul Knopf</di=
v><div>Software Engineer</div><div>Med X Change, Inc</div><div><a href=3D"m=
ailto:pknopf@medxchange.com" target=3D"_blank">pknopf@medxchange.com</a></d=
iv></div></div></div>
</div>

--001a1141f4ec2a37200532d3e8bf--
