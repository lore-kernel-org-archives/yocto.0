Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41C8DE00873; Tue, 23 Sep 2014 06:32:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qc0-f177.google.com (mail-qc0-f177.google.com
	[209.85.216.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BA97E0086E
	for <yocto@yoctoproject.org>; Tue, 23 Sep 2014 06:32:53 -0700 (PDT)
Received: by mail-qc0-f177.google.com with SMTP id x13so1711569qcv.36
	for <yocto@yoctoproject.org>; Tue, 23 Sep 2014 06:32:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=jehord4JEioRnCnJnom1i/obnpbtXTUv282yoHyRDHM=;
	b=VFfU9h7luorGiY6X44vToYNaDMIB0vpBJuX4TaLnFjgOhy6wWShWc/rYTOsOA4A26m
	by6x8V5qVdEI9hUgKzDPvbOwh1ns2iIqdfixdmPC3GOcOMKovapvdXNMRGdXIwnnOpQS
	R2lB3BYsTngy7mhvjPhh1/Uw0d80F7B+iV2g0OPvBRGD26FD1iFKajoC1agwDfNatrmE
	NeCi5YfpEL7gaaGicWYf+h99X3Fgg7sbIA51ZLrjfsB5Nx1J1+LkO294sJ5JAs9x+ZTX
	bmRUUajxR0VxS9CeJ9IeCJvGoYbndiLAYz0x+PbIX30goFFplp7gyAEcTXd9pCpZ0Pnm
	BJfA==
X-Gm-Message-State: ALoCoQm7+urz25A8cAJdTeCpHSvpvdUAJVwTZHRPEN6uBrW1SHEolHb0deqae14otIeyjFX1Gtck
X-Received: by 10.224.103.65 with SMTP id j1mr32197835qao.17.1411479172609;
	Tue, 23 Sep 2014 06:32:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.180 with HTTP; Tue, 23 Sep 2014 06:32:31 -0700 (PDT)
In-Reply-To: <30C2D590D16A5C46ADFE6521910377982FDD6E5A@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE6521910377982FDD658D@AZ-US1EXMB03.global.avaya.com>
	<CAJTo0LZHQDW6ALvgvZZQ2snwd36TA5Ug6sKTnMWLyfUTq5GF1A@mail.gmail.com>
	<30C2D590D16A5C46ADFE6521910377982FDD6E5A@AZ-US1EXMB03.global.avaya.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 23 Sep 2014 14:32:31 +0100
Message-ID: <CAJTo0LankC7Z_KZREj-eNciRo2RVus+Y5yc-V8dCT38mn4obbA@mail.gmail.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Forcing fetch task when source changes
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
X-List-Received-Date: Tue, 23 Sep 2014 13:32:55 -0000
Content-Type: text/plain; charset=UTF-8

On 23 September 2014 13:46, Vuille, Martin (Martin) <vmartin@avaya.com> wrote:
> Perhaps due to my old versions: Poky 1.2 and bitbake 1.15.1?

Yes.

http://git.yoctoproject.org/cgit.cgi/poky/commit/meta/conf/bitbake.conf?id=eaf54b8dbf9371965b4ccf18609edeb8eee16144
is where the hashing was introduced to rebuild automatically when
inputs change, but that landed in 1.3 onwards.  The support was there
in 1.2 so you could try setting BB_SIGNATURE_HANDLER in your
distribution configuration to see if it works...

Ross

