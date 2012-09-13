Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FC7DE0142C
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2012 10:13:27 -0700 (PDT)
Received: by eekd41 with SMTP id d41so2344574eek.35
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2012 10:13:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=/w8CqcB/t3DiIyv45V+OjBaekysPjbd0fq7L30Ndljw=;
	b=wAN2nvRoerOK4OEff3ToB1NU7BzgHwLmlGu+3ouzxPXkW5FZYs60qFGQqtXqZS1qtS
	HgTRKUROXCIzC4uQ+XEs3G8vWoMNvJy/sHDwA8/DIFwlcDwYbjJK7uwdcn/op8Pq0zk6
	z0XDQ846knKpmxyY41L/KDs4i84bh7LxjLRi17hZ04cahuah3pK+cqgNWUaWKYeKHAZz
	0ImceDUMIwP1RdIxQ0/XxgqU/qtzk1qCliqm+cB0VLJ3QAHt0sMjET0LshkuDCxSIQDc
	0PQcvvG9yMk1a5yZGBZ8GrvfakKybszGE2GycJ5GcEyNZA43HTM+emFsyWUlYg+rWkI1
	Mzrg==
Received: by 10.14.173.131 with SMTP id v3mr3961414eel.15.1347556406891; Thu,
	13 Sep 2012 10:13:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.5 with HTTP; Thu, 13 Sep 2012 10:12:56 -0700 (PDT)
In-Reply-To: <00209F5B-F153-4F07-BA14-54FF7D6E5762@gmail.com>
References: <CAHUNapQUS19axgi+i=wAr0r_ogFj+UsSBpsBY_mhd+ac=5w8-g@mail.gmail.com>
	<12E1ABCF-B181-4763-88A6-5B7E51758231@gmail.com>
	<AA2F4F97-00C8-48C3-90E8-5AF084D508B8@gmail.com>
	<CAHUNapStNAw21FiO6vFgBPLPfeqnoFjAtuuUuzun+6FuzLfspg@mail.gmail.com>
	<CAHUNapT5HfC+dbzjmuYiQ4ic4m71=iBaaJtygfrhht+JsqMyHA@mail.gmail.com>
	<CAMKF1sozZMQFS4kSbqGGnzzJ9K0O_3NCyujknFpJUZvZ4jOLBA@mail.gmail.com>
	<00209F5B-F153-4F07-BA14-54FF7D6E5762@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 13 Sep 2012 10:12:56 -0700
Message-ID: <CAMKF1soXwQXyVo4_p_ufGHAM63qitE67tQ9Fg3pLDCZNk5N+nw@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
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
X-List-Received-Date: Thu, 13 Sep 2012 17:13:28 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 13, 2012 at 9:36 AM, Elvis Dowson <elvis.dowson@gmail.com> wrot=
e:
>
>                    I just briefly tried building it, using gcc-4.5.1, and=
 got build failures too. It looks like it will take some effort to get this=
 up and running with the current version of yocto. I just managed to get po=
werpc440 soft-float working with gcc-4.5.1 & eglibc-2.13 with a specific co=
mmit id for poky and meta-openembedded. Now I have to try and make that leg=
acy gcc-4.5.1 support with with the latest poky and meta-openembedded maste=
r branch. Perhaps if you get a Xilinx SP601 board and dive in, you could he=
lp get microblaze up and running!

we always like good problem reports so if you find anything wrong with
core metadata we would be more than happy to help in fixing it.
Elvis, btw. I have done a patch for gcc 4.7 in master which should
help fix ppc/soft-float I dont know if it will help you but you could
try that out.

