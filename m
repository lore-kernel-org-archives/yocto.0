Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B283AE009BF; Tue,  8 Nov 2016 03:37:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50C10E009FA
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2016 03:36:52 -0800 (PST)
Received: by mail-wm0-f66.google.com with SMTP id c17so21917086wmc.3
	for <yocto@yoctoproject.org>; Tue, 08 Nov 2016 03:36:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=/dCFulOkx+5fDN3OuXS1p0a+/ewIMEYlXgdt8YYD5BI=;
	b=P9p/HABMOKR6quQXXzgbvvYjto0EQatxHWTE8pfyd+wtUJEgN5bGDudao7ZxhZsx8y
	7F04HW1LD/eZ9+LVGsI6g1tBmRayYrE5JC6jzA84rzZt/eY7s+P4e+VNwki+B7OGR+zi
	DUwmUaqd/LgInn8fqaXlU+MGCBPaBnfMnxF3EHs2Sy2Sg0cl4Tc4TD+LIE6Ukf4PM8Zt
	QCSAhNDVWK0bJxWd/qnEb6thAI/HollyJIZAnqTrqBGRfw2CTIYOxZJhwrUVuE/P4AI8
	OoM4HV7vdQJcX5jceDXWXzi5uuL0Bu0uZrAfpUHysID5BJ7MZT4nm60nbDeJRABZgLyD
	AA/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=/dCFulOkx+5fDN3OuXS1p0a+/ewIMEYlXgdt8YYD5BI=;
	b=UW4NaYCt7CPOqMo59DJaNMc8MqCAdpW2HUA1YmLjrvBUbAVLgGC5iVuM7krQP3tZOx
	NWtXe8Jq0rxEbZk+7xMsz7fqw4M/3FHyONlUHq2x6Wr6jtjN/hzGbqO6YCH56Heq3bvm
	4r0qaqTAmujmqgoips1YPl9w7bBCAi0e4NKMi1vySNe1fTn48unOHqp+fW3LOtV5dHwi
	V/JxjWr91qPlv7tOwU0i7f/VwFUjoRMTUH1NYYd0Kpb4UeoYbyKumm7sRJgYXhNRu4RA
	56O5GfCvpEq6S1wkl5NqkPerdckSWSjI9FFixJHxCgBZXi8T+BcfRZbjSrotMuJz8fC7
	QZ/g==
X-Gm-Message-State: ABUngvc4lVfU1S1L5lLX/AXMA4PHYsM/jxQZdSPbEofjQ0LnkunlmG3lk0ifqyx+F3lDMQ==
X-Received: by 10.28.69.130 with SMTP id l2mr13179346wmi.123.1478605011900;
	Tue, 08 Nov 2016 03:36:51 -0800 (PST)
Received: from carbonA (adsl-191.109.242.150.tellas.gr. [109.242.150.191])
	by smtp.gmail.com with ESMTPSA id q7sm36547288wjh.9.2016.11.08.03.36.49
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 08 Nov 2016 03:36:51 -0800 (PST)
Date: Tue, 8 Nov 2016 11:36:37 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20161108113637.GB19379@carbonA>
References: <20161103222609.4526-1-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20161103222609.4526-1-raj.khem@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] linux-firmware_git.bbappend: Delete
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
X-List-Received-Date: Tue, 08 Nov 2016 11:37:02 -0000
X-Groupsio-MsgNum: 32916
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="+pHx0qQiF2pBVqBT"
Content-Disposition: inline

--+pHx0qQiF2pBVqBT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Nov 03, 2016 at 03:26:09PM -0700, Khem Raj wrote:
> OE-core already bumped the base rev on linux-firmware package
> to include the upstreamed version of brcmfmac43430 firmware in
> september via OE-Core commit a0bc732976670810505286ba43feee70e2c812ce
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>

Merged to master. Thanks.

--
Andrei Gherzan

--+pHx0qQiF2pBVqBT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYIbjFAAoJEHO76Gt+erfPTNkP/ROlCv/mTs0xdWsoMPfz+sA/
pQxJ5mDKMKoObDrh1xQpXLoox4EdqVt/qXuMdJCa2LSIyL8x/pui4QMA28cLC4Tf
5xopPFWA7v4ANJjaeivHIK7EWCJbdCF3U8rJZSjtZjLiZXA0E6pyxrtfko3z886Y
+K2dshQxqYk9VwZZd6b0Ah2c5ZTvrPangiQrceuCu3iI5hxxlMOP+fZn06Tx6+xN
PHDvMOPGKvSTouq2uS9pz+XQKy2Y3TYM9U7ug81h5SfN2HTkU2Ec3/1cXsZg8s80
830eTJlLbwHmqySuoQHqVRi7LsqZ6MVxMmqG8IiLw7lHPiIuIf8B33DugHxvhMuZ
O5/S0rrhwIaK51s9+rX3+OCEynre0P5vVWOPo+4V4S2IoXsT5jkMSXHHUiqfQfph
lUoCRl9xJjgjEQu4g/Rrr97LxwQSos5VKToGVYJQXsHRqkeywnNBhld6CE0X59kj
LHDw+dK+8mJcBDN7MA1vX1hGfCo2dPT/ElUHCkXjt48JN3jqP4IsajuNZavvvUvL
PImA19xW1SAnBbW+Ib7ldSwXvGazjGdgCo7VbTYapyao55dtSDjYSF1cdenWFvrJ
qXrvyx+6bYOIq7HKUaPrJZzT6rJSENO700Gn8lwBFTfQTJ6EkHU/3KEIf2OIXt2P
bEXWcs4fudH32/XkjWGj
=qGv1
-----END PGP SIGNATURE-----

--+pHx0qQiF2pBVqBT--
