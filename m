Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65DD0E006EC; Tue,  6 May 2014 23:34:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.178 listed in list.dnswl.org]
Received: from mail-vc0-f178.google.com (mail-vc0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87D21E003C7
	for <yocto@yoctoproject.org>; Tue,  6 May 2014 23:34:19 -0700 (PDT)
Received: by mail-vc0-f178.google.com with SMTP id hu19so681399vcb.23
	for <yocto@yoctoproject.org>; Tue, 06 May 2014 23:34:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=IFuDSNAJ+Eq/xJ6AP/KZW/1wDrxXTq8wsdmaRrgB/OE=;
	b=BxDH7oSWf6SpG/rxMWVnH3eBwpA2LNXoI9l1lRm6UPds1R5QyYik0977dFOQeMvqkd
	ybOuq8mpLHBNAQU0c57AjhCgKINQa7At7LW/fOyGZIUXuTbp5/OqCiFBpbXOYm2g06Ne
	ieee7+ddd2LtFepvRXj9nS/ru8RRl0nzX0MbiJg3/nJ27zZ7fM12GukBZKNOwjvhlGVx
	bL/2FFtkwDeA4hn1gGzqqyExWaih2eZfHm/KryxzLCjV0I6pkzIuFwg5wJXHlf8OnfAE
	5Yf9X8kepKmlkkCrL8LXVCMrvy8SBhWstzNd6vIEb0Gq/ynzmyiXm6w6IM/schtnet02
	qQog==
X-Gm-Message-State: ALoCoQlzKYMtsHtMaJLpQycg37xEdwaq4By5r2qy31z0k55BJg5p4ZXzNczbSxfeMw07Qtihk9BW
MIME-Version: 1.0
X-Received: by 10.52.185.105 with SMTP id fb9mr5048787vdc.12.1399444459333;
	Tue, 06 May 2014 23:34:19 -0700 (PDT)
Received: by 10.52.164.111 with HTTP; Tue, 6 May 2014 23:34:19 -0700 (PDT)
Date: Tue, 6 May 2014 23:34:19 -0700
Message-ID: <CAPhnLPBPjaGTzttRQrh+zS1Gh4QZbubZ1FBL3X7DmL25ZQcMaA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Zhao Yi <yi.zhao@windriver.com>, Otavio Salvador <otavio@ossystems.com.br>
Subject: Weekly build soon available
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
X-List-Received-Date: Wed, 07 May 2014 06:34:23 -0000
Content-Type: text/plain; charset=UTF-8

The most recent weekly will soon be available at:

http://autobuilder.yoctoproject.org/pub/nightly/20140506-3

bitbake 4eb2dc8048e2722d64d589f453df1ce6262c71b8
eclipse-poky-juno 26bfc407781aa185f244a47ba63120343cee4a37
eclipse-poky-kepler 1dfe1d2f1322b5fda8e1a7637c447b0e060efb3e
meta-fsl-arm e9971b67b893cb345386cc38d774edff07f86b2a
meta-fsl-ppc 913fc371e9976cc95fc1b2ee2deb87efd13faafb
meta-intel 67300efd13626ac711c28f409b7e984c9a52b8dc
meta-minnow 7bdcd1140b729598bae6246a4bbc21c3950aadd8
meta-qt3 3016129d90b7ac8517a5227d819f10ad417b5b45
oecore 82813d27640549255dc81a15d7fb63688431f747
poky 59ef9768399f50ecc10e148950bb434698cac3c0

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

