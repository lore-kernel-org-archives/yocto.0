Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D8A8E0142C
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2012 09:36:43 -0700 (PDT)
Received: by pbbrq13 with SMTP id rq13so5297512pbb.35
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2012 09:36:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=BCu9UzY2cfdPyOf7D8UWLEWAirv1cFRjycn42VB/zEc=;
	b=PHixI0oaMaI0aHP44ERHsEvjnwnCoeBDqn9srzHwMqN5XvxvJkj8bSy5GvpqQut6nf
	xlz7c5EuxSP0SnZB05e3t4lL2KneQL0xO8aHqs0uI5k1buck9Gd27OFL0aa14uy2axy6
	I2P+wcEV5Prmr7FM+YXdZ1wzwviAmLgccu0yH/yWzWdmMDjHS8sow5p8+BmfQsSeElBK
	XTBECyc4zZpsvJ2+dDjdb47wXZWepC/8YQsIVlcQA4rD46CIOcqDLZ200dFB3nb4aDi9
	m1wmk4o6b1jswkVYyaDOHSeHsvsEyNgdUfeBMNJYLL/fSCB/nZC3TBeCAh1ydP8NEM3G
	2TcQ==
Received: by 10.68.213.138 with SMTP id ns10mr186980pbc.157.1347554198934;
	Thu, 13 Sep 2012 09:36:38 -0700 (PDT)
Received: from [192.168.1.100] ([94.205.108.162])
	by mx.google.com with ESMTPS id hf1sm13323322pbc.42.2012.09.13.09.36.29
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 13 Sep 2012 09:36:31 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CAMKF1sozZMQFS4kSbqGGnzzJ9K0O_3NCyujknFpJUZvZ4jOLBA@mail.gmail.com>
Date: Thu, 13 Sep 2012 20:36:25 +0400
Message-Id: <00209F5B-F153-4F07-BA14-54FF7D6E5762@gmail.com>
References: <CAHUNapQUS19axgi+i=wAr0r_ogFj+UsSBpsBY_mhd+ac=5w8-g@mail.gmail.com>
	<12E1ABCF-B181-4763-88A6-5B7E51758231@gmail.com>
	<AA2F4F97-00C8-48C3-90E8-5AF084D508B8@gmail.com>
	<CAHUNapStNAw21FiO6vFgBPLPfeqnoFjAtuuUuzun+6FuzLfspg@mail.gmail.com>
	<CAHUNapT5HfC+dbzjmuYiQ4ic4m71=iBaaJtygfrhht+JsqMyHA@mail.gmail.com>
	<CAMKF1sozZMQFS4kSbqGGnzzJ9K0O_3NCyujknFpJUZvZ4jOLBA@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: any success with spartan6-lx9mb?
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
X-List-Received-Date: Thu, 13 Sep 2012 16:36:43 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Trevor,
                   I just briefly tried building it, using gcc-4.5.1, =
and got build failures too. It looks like it will take some effort to =
get this up and running with the current version of yocto. I just =
managed to get powerpc440 soft-float working with gcc-4.5.1 & =
eglibc-2.13 with a specific commit id for poky and meta-openembedded. =
Now I have to try and make that legacy gcc-4.5.1 support with with the =
latest poky and meta-openembedded master branch. Perhaps if you get a =
Xilinx SP601 board and dive in, you could help get microblaze up and =
running!

Best regards,

Elvis=

