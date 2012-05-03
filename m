Return-Path: <elvis.dowson@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77FD9E00723
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 04:25:59 -0700 (PDT)
Received: by wibhm17 with SMTP id hm17so201729wib.11
	for <yocto@yoctoproject.org>; Thu, 03 May 2012 04:25:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=VhQLBQWJZE7GsbZ2S+uvPwShjGjuQkrnZ9IRGCIxJZ4=;
	b=KNKYnotLcK7/8ldxDpaiFN53zb/5Qe0pWNzGsDZTK7umQsnqs5+oxFKWMSFwl83+XD
	DlndGH2EuZZv5DLAOBNU5O2BF3r29pJgALjVUHcDNofWpj4MQE+61mqKR5DYvlWtP4n7
	iNhn6maGnnKDOFqyAvI5gaxss1ydpQLgeF5FWDnBizuInOOX1k1TciFr0+lmffzmd/M5
	YkckC8XdgYJ+TzkplgyLrd5CXpjtJwXfZjILzOVTAMN5rkziVbGce09DvL6AburvnBqw
	9J8lPac6WKwHSfl2TbcMThl3imdYTjvUeGrJQcIZ/CL+tEg6WoQn8sZ+vQD/CO4yGyyr
	gNhA==
Received: by 10.180.104.231 with SMTP id gh7mr2427154wib.10.1336044357466;
	Thu, 03 May 2012 04:25:57 -0700 (PDT)
Received: from [192.168.1.33] (240.Red-88-6-19.staticIP.rima-tde.net.
	[88.6.19.240])
	by mx.google.com with ESMTPS id u9sm1595487wix.0.2012.05.03.04.25.56
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 03 May 2012 04:25:56 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1257)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <2960292.LSzt9uS7CS@helios>
Date: Thu, 3 May 2012 13:25:54 +0200
Message-Id: <1CF4363A-45FD-44E2-A56A-F76F6F07B008@gmail.com>
References: <44738C6D-691F-4F6D-ACCC-11A51F9CE4B2@gmail.com>
	<3705393.MBXsxixX8C@helios> <2960292.LSzt9uS7CS@helios>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1257)
Subject: Re: Is it necessary to specify TARGET_ARM = "arm" ?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 03 May 2012 11:25:59 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Paul,

On May 3, 2012, at 12:59 PM, Paul Eggleton wrote:

> On Thursday 03 May 2012 11:49:08 Paul Eggleton wrote:
>> Also, it's worth noting that in current meta-ti master you don't need =
to
>> require tune-cortexa8.inc either since omap3.inc does this too =
(unless
>> you're wanting to support use with an older version of the meta-ti =
layer).
>=20
> Similarly the following are also taken care of by the current version =
of=20
> omap3.inc:
>=20
>>> SOC_FAMILY =3D "omap3"
>>> require conf/machine/include/soc-family.inc

Thanks for the reply! I've made the changes as indicated! It's much =
cleaner now. I really like Yocto, it's so much more organized and easier =
to manage than OpenEmbedded Classic. Well upto this points its been just =
setting up my machine configuration.

Now to build something and see how that goes!! :-)

Best regards,

Elvis Dowson=

