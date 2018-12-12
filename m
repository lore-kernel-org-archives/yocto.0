Return-Path: <niko.tsirakis@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F828E009B2; Wed, 12 Dec 2018 08:53:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (niko.tsirakis[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.41 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
	[209.85.208.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DE34E0090E
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2018 08:53:33 -0800 (PST)
Received: by mail-ed1-f41.google.com with SMTP id b14so16128052edt.6
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2018 08:53:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=AOnVOFjZKjfwcbM34UFi548sBMja1gnDUEYJBP8wHhk=;
	b=tCmxyFKWeiYYQBS8zSsz0o+x16cbeirm9tg5GygHgq8nvNbuw677ysPMOP0D1udLoN
	IODCshrCipNibdDZYKN//J7f05T1ZS6yg2mBb2YYB0mLOZittDE9CV/NlO5emr6g/IdS
	U6+OoUOBDkKa/JW3cBT488DllDn0BLC1In+XQ1ItxTEjg3lChMDM5/jJxCFqI+1ea6bS
	7h3RUABrPvFoFO28R7RRfM84aHLH16jDzUHCaOd2H08FZoEnGxs1Pwxw4csylBxLg8Mf
	SwUvVkCJEHraz7uGi8ri7BDbW4Qs1osBHS2Urpxsr9vJIUlXeyj55lHr+6M+OWYfVo+l
	mg5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=AOnVOFjZKjfwcbM34UFi548sBMja1gnDUEYJBP8wHhk=;
	b=Hmdxk0lLI2eu64Q72Dvp7o5O5djBjSV7+3MrnZU3928kmPqHs5m0xZhrXvq0pbWVov
	ahHogWHtbR1o9makhAAxmSATbMIMhJsk1W3ErxihlpQHlkgkkgXuBoPuLV6jWh6KpIFh
	PiLgV/aWihJeU1KJu8L7rauldu+3Zrwu+LNIcfMx8V3gJ7/+KQFAph3iKji38JS4j7ho
	dkv5KM3c2vqer8JP5RTzC8Pu2CV3rnodiW4x9eBTw9uLbdhOiBuSf0+RsjjYoZjGidH5
	YGg/gcmhEaCF/IQ6YLAoaUhR6eko1r0vfJJXc20VH/Dx3f/VMc+Vh4kbXlWYNgT6+H5x
	mAmQ==
X-Gm-Message-State: AA+aEWbY97C0Iw48RR/GOfxPSfUK++UQNU3D/a8ZrAis1J8gs8l9xbP/
	Qs9ms0koEluYwAGeD7WDS32jrQOZrlYP3QyuQZ46ew==
X-Google-Smtp-Source: AFSGD/XeaPYP1R/QMnRtz2RL1HZnNJ/tFCdLuigsMZvqSybUxbDGEumbNnL0/Tu/JppkNVcjzZXVeP5wiP62V6M4loA=
X-Received: by 2002:a50:d6c5:: with SMTP id l5mr19686677edj.145.1544633611954; 
	Wed, 12 Dec 2018 08:53:31 -0800 (PST)
MIME-Version: 1.0
From: Nicholas Tsirakis <niko.tsirakis@gmail.com>
Date: Wed, 12 Dec 2018 11:53:20 -0500
Message-ID: <CAFqpmVKxkvP5_UVrmyjowCpCYf12ymoLD1ii3uYZ0q8GsJnYzA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Quick confirmation about multilib
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
X-List-Received-Date: Wed, 12 Dec 2018 16:53:34 -0000
Content-Type: multipart/alternative; boundary="000000000000bfac18057cd60908"

--000000000000bfac18057cd60908
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm trying to build a 32-bit toolchain for my 64-bit image using multilib
and was hoping someone could confirm something for me. I am seeing issues
when building lib32-glibc, and I can't tell if it's attempting to build
properly. The resulting build files are created in a folder called
"x86_64-oemllib32-..." - is this correct? Or should it be "x86-oemllib32"
being that it's a 32-bit library?

Based on the build errors I'm seeing I'm getting the feeling that it's
trying to build a 64-bit toolchain in a 32-bit environment, so if someone
could clear this up I would really appreciate it. Thanks,

--Niko

--000000000000bfac18057cd60908
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I&#39;m trying to bui=
ld a 32-bit toolchain for my 64-bit image using multilib and was hoping som=
eone could confirm something for me. I am seeing issues when building lib32=
-glibc, and I can&#39;t tell if it&#39;s attempting to build properly. The =
resulting build files are created in a folder called &quot;x86_64-oemllib32=
-...&quot; - is this correct? Or should it be &quot;x86-oemllib32&quot; bei=
ng that it&#39;s a 32-bit library?</div><div><br></div><div>Based on the bu=
ild errors I&#39;m seeing I&#39;m getting the feeling that it&#39;s trying =
to build a 64-bit toolchain in a 32-bit environment, so if someone could cl=
ear this up I would really appreciate it. Thanks,</div><div><br></div><div>=
--Niko<br></div></div>

--000000000000bfac18057cd60908--
