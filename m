Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C1FFE011C0
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2012 11:59:05 -0700 (PDT)
Received: by dadz8 with SMTP id z8so2488237dad.35
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2012 11:58:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=user-agent:in-reply-to:references:mime-version:content-type
	:content-transfer-encoding:subject:from:date:to:cc:message-id;
	bh=qJPOU+5Pxey+0b5HG6GfzJuyNhIv1jFlzhpcik9pJmM=;
	b=Fm/n22Kal9iFqdh1y+6CXAcaMk448tsdA/pAovNisqQFRYtIDth4xgDyr50pJ+6+bX
	JorRvnEIBajj28JQDnCnCM+cRNRMRKNh7IPZ5n4PJeh41YlraUcH1KAEtvcIrwvsbAIW
	9mdkj8+3hE0DKixCs2iszg2ubcRqEUa75e4JgSle/DyS0iJmr64ay+ReTM0CQYZtHG2e
	0y5ecG3VXR6HfEs1Ehtven4TVUrSqQSMm5AnUe3zzfgzas/Lk53XK87lcqMrLf8EUmQ8
	RgUa5BOXRKGNynPx9WwEyf09jcyRbi4zn7iiT6vBUu7JUIi5/YF0I1Cyb1gtBuf4uz75
	A8dQ==
Received: by 10.68.216.104 with SMTP id op8mr818213pbc.65.1347562730827;
	Thu, 13 Sep 2012 11:58:50 -0700 (PDT)
Received: from [100.199.17.211] (mff2036d0.tmodns.net. [208.54.32.255])
	by mx.google.com with ESMTPS id qb2sm13507024pbb.15.2012.09.13.11.58.48
	(version=SSLv3 cipher=OTHER); Thu, 13 Sep 2012 11:58:49 -0700 (PDT)
User-Agent: K-9 Mail for Android
In-Reply-To: <CAHUNapScRtp4hTW2z1_wMNJA6AKVYvsHLNu+kzTzUQgQpvVBkA@mail.gmail.com>
References: <CAHUNapQUS19axgi+i=wAr0r_ogFj+UsSBpsBY_mhd+ac=5w8-g@mail.gmail.com>
	<12E1ABCF-B181-4763-88A6-5B7E51758231@gmail.com>
	<AA2F4F97-00C8-48C3-90E8-5AF084D508B8@gmail.com>
	<CAHUNapStNAw21FiO6vFgBPLPfeqnoFjAtuuUuzun+6FuzLfspg@mail.gmail.com>
	<CAHUNapT5HfC+dbzjmuYiQ4ic4m71=iBaaJtygfrhht+JsqMyHA@mail.gmail.com>
	<CAMKF1sozZMQFS4kSbqGGnzzJ9K0O_3NCyujknFpJUZvZ4jOLBA@mail.gmail.com>
	<00209F5B-F153-4F07-BA14-54FF7D6E5762@gmail.com>
	<CAMKF1soXwQXyVo4_p_ufGHAM63qitE67tQ9Fg3pLDCZNk5N+nw@mail.gmail.com>
	<CAHUNapQ9aLCbiEG2eyLzTsBe3k9vaBen4Hfm3E0L85JQJ_j1Kg@mail.gmail.com>
	<CAHUNapScRtp4hTW2z1_wMNJA6AKVYvsHLNu+kzTzUQgQpvVBkA@mail.gmail.com>
MIME-Version: 1.0
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 13 Sep 2012 11:58:37 -0700
To: Trevor Woerner <twoerner@gmail.com>, Elvis Dowson <elvis.dowson@gmail.com>,
	Adrian Alonso <aalonso00@gmail.com>
Message-ID: <1c0cc450-af2a-441a-a2ca-0e34b40f5a03@email.android.com>
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
X-List-Received-Date: Thu, 13 Sep 2012 18:59:05 -0000
Content-Type: text/plain;
 charset=UTF-8
Content-Transfer-Encoding: 8bit



Trevor Woerner <twoerner@gmail.com> wrote:

>PS simply BBMASK'ing out libffi doesn't help as too many things...
>require(?) it (depend on it, rdepend on it...?)


You can try to make libffi as a package group in glib20 if possible other option would be to use something like mdev instead of udev
>
>ERROR: Nothing PROVIDES 'libffi' (but
>/home/trevor/devel/yocto/gitrepo-method/poky/meta/recipes-core/glib-2.0/glib-2.0_2.32.4.bb
>DEPENDS on or otherwise requires it)
>NOTE: Runtime target 'udev' is unbuildable, removing...
>Missing or unbuildable dependency chain was: ['udev', 'glib-2.0',
>'libffi']
>NOTE: Runtime target 'packagegroup-core-boot' is unbuildable,
>removing...
>Missing or unbuildable dependency chain was:
>['packagegroup-core-boot', 'udev', 'glib-2.0', 'libffi']
>ERROR: Required build target 'core-image-minimal' has no buildable
>providers.
>Missing or unbuildable dependency chain was: ['core-image-minimal',
>'packagegroup-core-boot', 'udev', 'glib-2.0', 'libffi']


