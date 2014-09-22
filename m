Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 390BAE007C2; Mon, 22 Sep 2014 07:12:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.54 listed in list.dnswl.org]
Received: from mail-qa0-f54.google.com (mail-qa0-f54.google.com
	[209.85.216.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF8FEE00798
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 07:12:26 -0700 (PDT)
Received: by mail-qa0-f54.google.com with SMTP id n8so133544qaq.27
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 07:12:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=QLXNmy94Da+cn+fyWSfse7AW/pL4C2OGTlHxM409RzI=;
	b=dRtPRMv2BOw8+IiPzbvmrA9TvrQ9PXHSdKzneGtwRuDbMDl3vyKnHQtgbTqtLRDwVO
	a+0DhxIpqBJm7FDeTpclvuiMYbP00WBljVcQ43LfrVsWKRonEulQzUwvh0ON5NCV9fOm
	eWr0S721eB8zaveDGMwepDqB7Rbjz9OXtG0TAWP+cExZ8dD95wLB8WJdlvoqoUv+Frko
	/ivwBdk3cDeSLQiyXlSook5rgWm0krGlVzyMD4HTsLe6hF0X1ykgJdFW9p9l2b0iBMc/
	1E4D88Hgc9H+ghfo6zD3uclQE3Zn2vxjglCtAHe05L6liw0gvsFK6PdF2iYCMYxcCqeL
	iSSg==
X-Gm-Message-State: ALoCoQm8mkSyPSNYn85Mfny1G52a0MODFvFSyUHQ+ru9VtEoblK6FW+fA3ZaBvIXpg/ZGhv6LrkE
X-Received: by 10.229.238.133 with SMTP id ks5mr30593448qcb.23.1411395145592; 
	Mon, 22 Sep 2014 07:12:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.180 with HTTP; Mon, 22 Sep 2014 07:12:04 -0700 (PDT)
In-Reply-To: <CAJrRHk6hi6A=2ioDMGnfk4JQ0UAk5rJuSvuy4raZGw55rrkW2w@mail.gmail.com>
References: <CAJrRHk5Kt5eqoTH_cnD8Px+NKe99cSLOb7b_1q4am_d=eDnWuQ@mail.gmail.com>
	<CAJTo0LZFP0i+LSYdE35cDNS3ZN4GEkFinoyQ6bTEA0E8gLvnFQ@mail.gmail.com>
	<CAJrRHk4pjaLTwO8ggUoQKs4ALVY565rU2SvcTyAYsSmm=jHvTQ@mail.gmail.com>
	<CAJTo0LZVPdNsbrnqgSfdarqi0bjiJDNOAmb5wgvRhOOy7qkYyg@mail.gmail.com>
	<CAJrRHk6fuL=44SCQuwZRBfbvhvYw6_g=0Uf3Tw=yFowe9KDvWg@mail.gmail.com>
	<CAJTo0LaKrQmFh_SzprfhpMUBQ5zCuG2M6-tSHayW90NxdnkrbA@mail.gmail.com>
	<CAJrRHk71oTAv_Yko4m1_LAWP=cXJy-6jA93qiG40-xkb2-Z=mA@mail.gmail.com>
	<CAJTo0Lba3u=9jxAaFG5yq3cGBJzf9fHkdYFB0koAqqeTXX0HkA@mail.gmail.com>
	<CAJrRHk6hi6A=2ioDMGnfk4JQ0UAk5rJuSvuy4raZGw55rrkW2w@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 22 Sep 2014 15:12:04 +0100
Message-ID: <CAJTo0LaAwtQRBQH9o57EFZNzmQYQDsC+utJHdBeARWORPCqp=A@mail.gmail.com>
To: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Nothing PROVIDES nativesdk-krb5
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
X-List-Received-Date: Mon, 22 Sep 2014 14:12:38 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 22 September 2014 14:16, Joseph Andrew de la Pe=C3=B1a
<jdelapena@lexmark.com> wrote:
> Good day Ross,
>
> How about if I wanted to depend on krb5?

Hopefully, BBCLASSEXTEND=3D"native nativesdk" will work its magic in krb5.b=
b.

Ross

