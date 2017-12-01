Return-Path: <rail@esenciatech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A6FCE00CF7; Fri,  1 Dec 2017 11:05:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f65.google.com (mail-vk0-f65.google.com
	[209.85.213.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1E15E00CE8
	for <yocto@yoctoproject.org>; Fri,  1 Dec 2017 11:05:52 -0800 (PST)
Received: by mail-vk0-f65.google.com with SMTP id s197so6145031vkh.11
	for <yocto@yoctoproject.org>; Fri, 01 Dec 2017 11:05:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=esenciatech-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=R8cq+eUYfcnmsBD0HfKb0GIViAxXd4L1qs2Zxl4Nf+c=;
	b=XxELWZHEUNyL5K0qxd8RNNvvLc5eFcw5Z0mRK5UwevY0Om93CJMYKglOA+/5uI81Uo
	Puahjkw+D1fCzRp7cqxJ6Ho99m2GMVEBEPw/t1XfSRoMyeGYwDIedw4bDKJZd2jHA/se
	vYKgjw7PD6bTTDVcqTjeimMZJV93kZtPQmJ5PDaKY4YiOLQVBChg4lJQxVj5IyCyk/GQ
	n6U6O1hdC3T1PMHg3DnsPDbG/6A+4QeJouI0P0iC2Ng0lAkYxEgj47DRt2rwPFj6ZQeO
	LPbMLZtYDi2+j+H7Emi2Y7pe6vXOAj82KlNAPuGI6ZMciIN6RUvGf08J53lmfqck9vwd
	KS9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=R8cq+eUYfcnmsBD0HfKb0GIViAxXd4L1qs2Zxl4Nf+c=;
	b=nbJ8YgXUV7ctca3R9DKSrdPvYtA3Whcxq2GmanPS72c0ELCcwLlFW4C5uYieCLL2UQ
	/JLFcArLYmH/6JV1JWIM8hek0voK3Ftnw5p4a9PqFx4V+qxwrblWKC3vmGoKaPNQMNUO
	kA8zD40dIVeb7nUnBesGfdKQAZV1BT48fBG7Dfx/HMtd18F9Hsa08ITBhjkYeZg7qX8h
	EIAq64xLNvEmV+8jZYP/jwrd1ZlXsi47rQeW8qWltOYQkOQ+h/b6ffA7Ni33JdnjjSMw
	f57GJcOAH0CWB3HZzKdh+pba2LCFE5zLDHfpYO0Y1q/X0VrGMc+3GmdF8w6iw+Etulxs
	3IfQ==
X-Gm-Message-State: AKGB3mJhJDKo9DQL/VNXt4AiVqg5INloZA1Vbs3ksahGNHbeW/ZUkizY
	TpgE31fCAqk/Eu1xzMsvtYi3o+O/iB4HGO+vWtqssz0LwW149Ij9cFsIvH3S0ehE8AAMfQZJzO0
	AGYDUU5bh3BfUFOShf+SwxJs=
X-Google-Smtp-Source: AGs4zMbJajmbR/3J0/ezC5k7ftka+NNomUjdMep8VMHcjnLAbmw2Qhy5uJYEW8jIVv6xJ1ajtEjztG0KZMn3emKEh6U=
X-Received: by 10.31.160.132 with SMTP id j126mr5142119vke.155.1512155151628; 
	Fri, 01 Dec 2017 11:05:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.95.198 with HTTP; Fri, 1 Dec 2017 11:05:51 -0800 (PST)
In-Reply-To: <7e45414a-664c-1b6f-dcd5-1e4faea34c12@linux.intel.com>
References: <CAOLNbFYR+Y9WsUu0Cw3KLtHdDyZ_giUQO00bj==58LKZ87DAeQ@mail.gmail.com>
	<eed2b610-b2af-7ef1-de4d-c92109f1a144@linux.intel.com>
	<CAOLNbFZMaR7-zY-u0QE45PppBUQQKKv0CuarKNrru1KOn+mRqg@mail.gmail.com>
	<7e45414a-664c-1b6f-dcd5-1e4faea34c12@linux.intel.com>
From: Rail Shafigulin <rail@esenciatech.com>
Date: Fri, 1 Dec 2017 11:05:51 -0800
Message-ID: <CAOLNbFb3gUh6p2fO5xLaRJTXn_FVcoeZkuMOaNZKwip0yvqGgw@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: dev package non-sym link
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
X-List-Received-Date: Fri, 01 Dec 2017 19:05:54 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Dec 1, 2017 at 12:12 AM, Alexander Kanavin
<alexander.kanavin@linux.intel.com> wrote:
> On 11/30/2017 11:46 PM, Rail Shafigulin wrote:
>>
>> do_install () {
>>    install -d ${D}${libdir}/
>>    install -m 0755 ${S}/libAnokiWave.so.1.0.1 ${D}${libdir}
>>    ln -s ${D}${libdir}/libAnokiWave.so.1.0.1
>> ${D}${libdir}/libAnokiwave.so.1
>>    ln -s ${D}${libdir}/libAnokiWave.so.1 ${D}${libdir}/libAnokiwave.so
>> }
>
>
> You need to call 'ln -sr', then you'll get relative symlinks. Better yet,
> add some build system support to the project (meson, cmake), then it'll take
> care of these things for you.
>
> Alex

Thanks for the reply. It worked. I will definitely will look into
meson and cmake at a later time.


-- 
Rail Shafigulin
Software Engineer
Esencia Technologies

-- 




*ESENCIA TECHNOLOGIES, INC.*3945 Freedom Circle, Suite #360,
Santa Clara CA 95054
________________________________________________________

Phone: +1 408 736 8284 Fax: +1 408 519 3475 
http://www.esenciatech.com | http://www.lnttechservices.com



