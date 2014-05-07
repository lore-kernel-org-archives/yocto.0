Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD6AFE006EC; Wed,  7 May 2014 02:34:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD973E003C7
	for <yocto@yoctoproject.org>; Wed,  7 May 2014 02:34:18 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s479Xep4021688; Wed, 7 May 2014 10:33:40 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id M-CDFk_cmFgR; Wed,  7 May 2014 10:33:40 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s479XXvV021683
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Wed, 7 May 2014 10:33:34 +0100
Message-ID: <1399455207.31891.9.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Date: Wed, 07 May 2014 10:33:27 +0100
In-Reply-To: <CAPhnLPBPjaGTzttRQrh+zS1Gh4QZbubZ1FBL3X7DmL25ZQcMaA@mail.gmail.com>
References: <CAPhnLPBPjaGTzttRQrh+zS1Gh4QZbubZ1FBL3X7DmL25ZQcMaA@mail.gmail.com>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Otavio Salvador <otavio@ossystems.com.br>
Subject: Re: Weekly build soon available
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
X-List-Received-Date: Wed, 07 May 2014 09:34:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2014-05-06 at 23:34 -0700, Flanagan, Elizabeth wrote:
> The most recent weekly will soon be available at:
> 
> http://autobuilder.yoctoproject.org/pub/nightly/20140506-3
> 
> bitbake 4eb2dc8048e2722d64d589f453df1ce6262c71b8
> eclipse-poky-juno 26bfc407781aa185f244a47ba63120343cee4a37
> eclipse-poky-kepler 1dfe1d2f1322b5fda8e1a7637c447b0e060efb3e
> meta-fsl-arm e9971b67b893cb345386cc38d774edff07f86b2a
> meta-fsl-ppc 913fc371e9976cc95fc1b2ee2deb87efd13faafb
> meta-intel 67300efd13626ac711c28f409b7e984c9a52b8dc
> meta-minnow 7bdcd1140b729598bae6246a4bbc21c3950aadd8
> meta-qt3 3016129d90b7ac8517a5227d819f10ad417b5b45
> oecore 82813d27640549255dc81a15d7fb63688431f747
> poky 59ef9768399f50ecc10e148950bb434698cac3c0

This was a complete failure due to two issues:

a) the tcmode-defaults for the sdk were broken
b) we exposed a bitbake bug for the handling of x86_64 in OVERRIDES

I've merged fixes for those two issues and restarted a new build.

Cheers,

Richard


