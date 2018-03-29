Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23544E00994; Thu, 29 Mar 2018 07:49:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sherifomran2000[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f45.google.com (mail-pg0-f45.google.com [74.125.83.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE600E0091A
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 07:49:23 -0700 (PDT)
Received: by mail-pg0-f45.google.com with SMTP id b9so3203746pgf.6
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 07:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=RhYYDlbOUuCQI/TYZKQAlvK7PHKNExUnszPTMq7W4E4=;
	b=ZJ769MLF+J99pD2vJO70USwyuxGoy7hMiiW7kV1w0LOq+j6jS0AVEgyyLWcwNQ2rHN
	8P+a53lkD1Mp4kPqYDqp9Hs7JxnIN4Nem0Vhv01EpXDWlLnWzjizEq6Ea10RWQsG4+SV
	IRfBbBZE3gMnbh+MogjPGb+4Yk6Ci1AXN28tPBjah7Bbmh3+ubc2RoypiAJgXNrRkH2t
	SEtcacXNwC96RaWKSCkDiEI8XZs8jPhkj8ubcAZ+OcyEOwZlbIRwLpVa31BOim3zW02W
	2m/SqZRV1UTGN32Q4NwJBnVQe71+NXjzdy6+bAo6kAEwueyNRHmg7p9Z2VisnNy8RX2X
	SzVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=RhYYDlbOUuCQI/TYZKQAlvK7PHKNExUnszPTMq7W4E4=;
	b=dVhT0ZiWii1pJFqQoiVoVhfVdJV6F3cXGFzffCLWO1qZm4VjO8Sl8ZRHUlLu4Tho/w
	KtF7mcA0LasP73P6jqLW+hOf24h1RsxLEG8wChtr7e98t23sGjwAwoJwVwO/vtazl1Gw
	ThdkmbHGv6OQByZw+8d33hpe+tw1+vfFR7Iwd/Symp0ujDFuhBdI9kimujHpYR02qdp2
	11TEEbrw2qXeCrfemgzhAWSUw+qcZEqn7amWmHMv4pwnR0M/mJ6ALOvrqZXdK1qBxE1L
	O6i0OWAZ8I30apApYGF85KN8OgWvaH5tUBHyTnEbefXcF7no9j0GP7rFitdcrYiSCaNZ
	BFNQ==
X-Gm-Message-State: AElRT7H/lX9S0XOfmoJ84jBcLt9DTBT7Hr4386u6hitiLzlClS0V8yL9
	zTZm52uxxg7LPNv17fqoGH8LE8iWwnuRG1PiunM=
X-Google-Smtp-Source: AIpwx48k1D7tgkkNK/89AqhjnHUCQLs4XngJ0KGPxSwUZN8XFZQ3KTqsyObaoBMnhFgwCJ7t8olpt3K5MY3zMj6k3Jk=
X-Received: by 10.98.160.92 with SMTP id r89mr6564300pfe.235.1522334962690;
	Thu, 29 Mar 2018 07:49:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.155.66 with HTTP; Thu, 29 Mar 2018 07:49:22 -0700 (PDT)
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Thu, 29 Mar 2018 16:49:22 +0200
Message-ID: <CAPb0b+NvhD2JhSNnijoBSRt6Wfzbb0JYmJcm7fMF5BbmzBg84A@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: [meta-raspberrypi] change to armhf
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
X-List-Received-Date: Thu, 29 Mar 2018 14:49:24 -0000
Content-Type: multipart/alternative; boundary="001a1140f47aae30d205688e3a2f"

--001a1140f47aae30d205688e3a2f
Content-Type: text/plain; charset="UTF-8"

i created a standard image with meta-raspberrypi with dpkg and tried to
install some packages from the raspbian, but then i faced packaging is
armhf and we have armel.

any body know how to change our system into armhf?

i read someinfo about defaulttune but how to use it, it is arm1176jzfshf
here?

thanks

--001a1140f47aae30d205688e3a2f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>i created a standard image with meta-raspbe=
rrypi with dpkg and tried to install some packages from the raspbian, but t=
hen i faced packaging is armhf and we have armel.<br><br></div>any body kno=
w how to change our system into armhf?<br><br></div>i read someinfo about d=
efaulttune but how to use it, it is arm1176jzfshf here?<br><br></div>thanks=
<br></div>

--001a1140f47aae30d205688e3a2f--
