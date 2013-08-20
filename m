Return-Path: <marek.belisko@gmail.com>
Received: from mail-ob0-f177.google.com (mail-ob0-f177.google.com
	[209.85.214.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE9AFE014E4
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 04:38:59 -0700 (PDT)
Received: by mail-ob0-f177.google.com with SMTP id f8so375851obp.36
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 04:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=W/FcDrh6gel4BApG8gi9L5wHktGJXwBQ+fv1UgnvdK0=;
	b=UKkGOGAnvODGbvWaJfVuG40qmlcY8OdxTm49VhK8j4SVkRjPZ2su61ovUc+tfHlRG3
	QDg63uGp8s2dze6yeAEvdGasFPkwaAxNSgUJO7bigMjFUtVAqeRYYACdtu1LGH6ggFw2
	dk5yWE6P6eETuzVKlLPb6ojBcwwWojx+T2EgGpoFrCmcAcDZ3JGTAZuLPu1aSxquHz6g
	uuZBEJAwH0kbfRaxIOhDGxixzidZxRDSpcEkyt9YAiLLFiVRKvgU8OLVxxHfGt+je0d/
	tSE7rWNlVGY4XGMRxC6XwhMqQ2ainszFqP/zChhvf1NUf+qWID2lQf+A6j2e00Ifvhbr
	xJpg==
MIME-Version: 1.0
X-Received: by 10.182.247.103 with SMTP id yd7mr104304obc.106.1376998738531;
	Tue, 20 Aug 2013 04:38:58 -0700 (PDT)
Received: by 10.60.60.1 with HTTP; Tue, 20 Aug 2013 04:38:58 -0700 (PDT)
Date: Tue, 20 Aug 2013 13:38:58 +0200
Message-ID: <CAAfyv35Y0dmnQ2mEfeEKeinKjwhdJ-yNty-M548G2EQ9+8iS_w@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
To: yocto@yoctoproject.org
Subject: omxplayer building for Rpi
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
X-List-Received-Date: Tue, 20 Aug 2013 11:39:01 -0000
Content-Type: text/plain; charset=UTF-8

Hello,

I'm trying to build omxplayer for Rpi board but seems libav and other
dependencies was removed (replaced by meta-oe). But libav was also
removed from meta-oe [1]. I was trying to use patches [2] but it
produce errors:
ERROR: Multiple .bb files are due to be built which each provide
virtual/libgles2
(/home/marek/projects/yocto/1.4.1/poky/meta-raspberrypi/recipes-graphics/userland/userland_git.bb
/home/marek/projects/yocto/1.4.1/poky/meta/recipes-graphics/mesa/mesa_9.0.2.bb).
 This usually means one provides something the other doesn't and should.
ERROR: Multiple .bb files are due to be built which each provide
virtual/egl (/home/marek/projects/yocto/1.4.1/poky/meta-raspberrypi/recipes-graphics/userland/userland_git.bb
/home/marek/projects/yocto/1.4.1/poky/meta/recipes-graphics/mesa/mesa_9.0.2.bb).
 This usually means one provides something the other doesn't and should.

Is my procedure correct?
Despite of fact there are error compilation continues.

Thanks,

marek

[1] - https://github.com/openembedded/meta-oe/commit/30ba23377ec568a58c43e466582506980b67baad

[2] - http://patches.openembedded.org/patch/55397/

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

