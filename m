Return-Path: <bryan.fishell@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 199D9E00939; Mon, 27 Aug 2018 08:13:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bryan.fishell[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78D74E0090A
	for <yocto@yoctoproject.org>; Mon, 27 Aug 2018 08:13:06 -0700 (PDT)
Received: by mail-oi0-f46.google.com with SMTP id q204-v6so27842110oig.9
	for <yocto@yoctoproject.org>; Mon, 27 Aug 2018 08:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=dnJ+ENT93mgjbkaoum3C42axutpLTF87VcJ+lFlhec8=;
	b=XckdIWBlvt04vQ1ZhhcdDE36BaDmE9Je9nltfb4Drh1rp8ThVDGPS/1NYogpHRJOd4
	oVieSi92z5v4d10zM4lajar4EA+tbiMiDTYaFIi1NODa5KREXn53jaf7NQIsbL08oawJ
	aLXFll3grkaEJYGTb3ZLqsLrBXbqrIn/5xzupEW9Alsl81ilbdPkpkj7pEkbRv6jJ4/H
	L9BWeiZEu/lImyMczNgTbDZ2k1loUUP50vylvySJomde4KCggnGBBHEhmXI5ipoGlmJC
	+bvlfLc+66nYntBDLKRgzIsGed9DHezJHBs7s2F5w3dhHxkBzyg3zqxNhyuBZZ+792Wo
	jieQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=dnJ+ENT93mgjbkaoum3C42axutpLTF87VcJ+lFlhec8=;
	b=TF2QLsSmtip5lw9gQvTRiPUg767dI0HJ/BgIiNx0WF8KxzCNJrX5Rn8r/z462Yq/Oh
	lwxopchb8Kmz1mJJqfIA2a7Xb4OmIC/HjxhVlVGO1D2JzO/cYgDos3FnBOSxaNJh44E8
	3Oi7Gy/ZvyyzSpjG0Xxk1pCdJzbUHCCh0vdXuqDd8Yiokz2PwfrTJxFeRDo0mDTTijS4
	Hx4WEq97x2FXdoOH2GNqMefx76h2UHZS7HYJdqHlLhcmFaG8Xv5Frjy6wm51TYFefLW9
	Tm9pprEUj9hDxB9ryICPkNNXOAtN5baQ+8/dDE0naAkI46J1Q43ihmiBCigf+uXjfPfz
	gObg==
X-Gm-Message-State: APzg51DD1p9NaKEo4U7gXG5YTTyXi3skgZBDjJVmS4BHWjI2BCtf2OUN
	zNcQsgio3YNbS9oyjrcal1HxMzlGUkZHFYDyCpijLQ==
X-Google-Smtp-Source: ANB0VdaCDLHiLHig+xMSturu+sccmaHNmrknwj0w9k/y1Fs83K+NtVejsaW4A9iImxzUUrhp42ZaX3UYrD8qvb9umn8=
X-Received: by 2002:aca:2808:: with SMTP id 8-v6mr11793934oix.7.1535382785491; 
	Mon, 27 Aug 2018 08:13:05 -0700 (PDT)
MIME-Version: 1.0
From: Bryan Fishell <bryan.fishell@gmail.com>
Date: Mon, 27 Aug 2018 11:12:29 -0400
Message-ID: <CAPC-RGmuQF54sdp8q6LLzt1VxhyoZFpeV63RQ6ot_GQoRe3=uQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Tracking changes in image
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
X-List-Received-Date: Mon, 27 Aug 2018 15:13:07 -0000
Content-Type: multipart/alternative; boundary="0000000000008613a805746c29ef"

--0000000000008613a805746c29ef
Content-Type: text/plain; charset="UTF-8"

Hi,
I want to be able to track different parts of my image, accessible from
within userspace so I can programmatically (via an environment variable or
something) what version of my patches have been applied. Ultimately, I want
to be able to answer questions from the field to know 'what changed' in a
deployed image. Is there already a method to do this? For example, our
project has u-boot, a zImage and rootfs. Is there a way to tell the patched
version (from my layer) for each of those so I can connect what is in the
field to what is in my layer in version control?

Thanks in advance

--0000000000008613a805746c29ef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,=C2=A0<div>I want to be able to track different parts o=
f my image, accessible from within userspace so I can programmatically (via=
 an environment variable or something) what version of my patches have been=
 applied. Ultimately, I want to be able to answer questions from the field =
to know &#39;what changed&#39; in a deployed image. Is there already a meth=
od to do this? For example, our project has u-boot, a zImage and rootfs. Is=
 there a way to tell the patched version (from my layer) for each of those =
so I can connect what is in the field to what is in my layer in version con=
trol?</div><div><br></div><div>Thanks in advance</div><div><br></div></div>

--0000000000008613a805746c29ef--
