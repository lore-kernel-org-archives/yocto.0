Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A25CE00B65; Fri, 31 May 2019 12:30:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.48 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 952BAE00A96
	for <yocto@yoctoproject.org>; Fri, 31 May 2019 12:30:26 -0700 (PDT)
Received: by mail-wm1-f48.google.com with SMTP id 16so2272321wmg.5
	for <yocto@yoctoproject.org>; Fri, 31 May 2019 12:30:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=hJSLfPduraRta9fErDp/VYmEaOTMxJX3GR6Mnu9KV7c=;
	b=esFdQLw8AeUf6Z9Rx+FTuc+bbGYGnxsN5fD+fwIzzXLaVngQEdxXC2npbKe0LuIOW+
	0WGwmo+NicbwntXe8/dXEUK0iu50GNN/E4DRj3Ro+oasEhpCeI2r3HSveaNsgC+aAyBK
	/jt3oHN1RhtIb679Kf0Udh1lw4wOwLkL/kQ10di8OFW2e1m9L9KIiYQVuYWVFY2Jt5BX
	WxHVveImDbZ4xtAa6/TC+E4YQyTprb4Kd06KEkGt1Kz3IluFYkn5rGpy8k22L3kPM3k/
	mFaSUyg5gfze2++SefnddE34G/u8GWZGKU3+b8QbIbYlrvWSyKquzdu7n3lnoa1xx+yM
	B4uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=hJSLfPduraRta9fErDp/VYmEaOTMxJX3GR6Mnu9KV7c=;
	b=dCp82O071gmQr8ObtJmorfrSbz11hx9Q7N2m/RVk0zNxJEiI6HL4w82oTgWCZFN7vF
	+gNJvb2u+oltw5/5Jfn9thk5vohI6jY65fdm6iFVYUPrkvZjmcGr8J7OMFtvoRkzn/cA
	dPQ+WeK8JvINeqUwJEtXt2/sKoz2ozH1n28+kM8hMkqsMnQmi8ga9NmWXX4J9S2u1BPn
	uwndRNqakFRqima84BZDxdt35DFzsaI/CRlp6WnDVWGXgxPi/sdJdsL3uz7TBoRi2jsL
	X/bK0ZBTh5opldz8qS5GcrV9C8eRmAjolNO9+TUmMdLUXbGAdoahRM1ditewBVQiE+dt
	vnYw==
X-Gm-Message-State: APjAAAXmVt9oaVvhxGg07jf0eFoGPusQs1oMjCZ2Dy0Oiwimota1AZtK
	jimgfuKDuqRO0U4I/9Bk/4l/dH+KMC1jh9+7awgp4dKN+Sc=
X-Google-Smtp-Source: APXvYqy2o5Cs0EUFzguVmHwhZ+zaGiJ6bmXKEFCZ66CLgxO/yYS5Jncpc4xkFau4w7wbD1/lp9Bqc5jH/fIEUsFmokU=
X-Received: by 2002:a1c:f416:: with SMTP id z22mr5876810wma.44.1559331025254; 
	Fri, 31 May 2019 12:30:25 -0700 (PDT)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Fri, 31 May 2019 21:30:13 +0200
Message-ID: <CAAfyv35m9GRay0j00PRVp96B08bvSNm3MXzSSw=ajuExfmFC-g@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: npm package issue with do_package split_and_strip_files
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
X-List-Received-Date: Fri, 31 May 2019 19:30:29 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm adding recipe for nodejs package and all steps works fine just
when packaging is done I get strange error like:
['arm-poky-linux-gnueabi-strip', '--remove-section=.comment',
'--remove-section=.note',
'/home/marek/projects/tst/.build-opi/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/ifu/4.5.2-r0/sysroot-destdir/usr/lib/node/camera/node_modules/usage/compiled/sunos/ia32/0.10/sysinfo.node']'

Looks like it want strip build executable not for arm arch (I'm
building for arm). In recipe I just fetch sources and include npm
class. Thanks.

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

