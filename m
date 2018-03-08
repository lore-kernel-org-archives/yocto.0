Return-Path: <pinganddu90@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D88FE01077; Wed,  7 Mar 2018 22:20:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pinganddu90[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f196.google.com (mail-ot0-f196.google.com
	[74.125.82.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23875E00AD8
	for <yocto@yoctoproject.org>; Wed,  7 Mar 2018 22:20:31 -0800 (PST)
Received: by mail-ot0-f196.google.com with SMTP id h8so4441489oti.6
	for <yocto@yoctoproject.org>; Wed, 07 Mar 2018 22:20:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=YuQaZ++lFbR6OLGcFX8t8LhbPNqSnx8YpiVupXfCo4U=;
	b=GKHFcrhfuwfTMxcKYtpuQ9k8pYNQm+ZmXqX0O0mnIvAyA5FXGMXz7UgaTsyaYlT22J
	qkJbVvZl1dfAwv1lDOkmfM7INYXdRmYqhHsXKYYC0BI8iYAur0xSdpKSHnWLKw5/RUWN
	dleJHWzy/Ovqffm9wPOQTjRBjOSCovmbMT3UMEACgGlpVHS4nC13rCtaETkB76P50lt/
	sWaCLax1no7H5SepnoBazEVOgVNHlvk5iQ3uBTF+89sxueW7Y3H+hvk6jg/57ZDG6fQb
	y9k/tXY87r09571Lq4ZVxisQvR9jMNhTczr+j1aEOhnvvxMVO73WhZx8A4Ff10On+Sht
	BP3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=YuQaZ++lFbR6OLGcFX8t8LhbPNqSnx8YpiVupXfCo4U=;
	b=BPTef+sDpdxoK7qL+r5fNu5vuqVvRYAjKyg5zP9fpb5Eingh8//wrBs6COnCElp+vu
	T7n9qh+UQl5VcFe2y4JopE0lqAj+u2j3dktp9XoMgeZp6jBI7rGGN46X2SU+Qk1e3e8s
	6Z/F4h4sLJfn4DWRyeQE/ElaeS51R6rE3bndA9z0Ries7Z0oZz2AU4oYgkYO1wi4z4UB
	abDpyXoOWDrsKYD0vYiTDt3qVQcLhtf3c4sEMtPEb8Jrb3RntpfD9hA2RlmkXlHe96GW
	x6NTy5+u7Sa1YPyADwKy25LYIpAQTC69iLBnBsmqkvkOlzOGiT35ZBuRrGIPL5x8BpLH
	Magw==
X-Gm-Message-State: AElRT7ERkPW+18YKj5qp6rj3brIStoZxGpSEithDm2y8RhVn0pEbsD0d
	gz90ZFzj6tRuzMVsqLaTPSiL40aR9qXPx7G5RMo=
X-Google-Smtp-Source: AG47ELukKA0T3vxOIwnTP+USOrumc70kaXm1H0yuFl024gfjhRjkV5SmhwmQmSjw09AvRm3u4Exk8djEVvHtfaUmxnE=
X-Received: by 10.157.0.220 with SMTP id 28mr12685948otk.201.1520490030821;
	Wed, 07 Mar 2018 22:20:30 -0800 (PST)
MIME-Version: 1.0
Received: by 10.74.137.141 with HTTP; Wed, 7 Mar 2018 22:20:30 -0800 (PST)
From: kk <pinganddu90@gmail.com>
Date: Thu, 8 Mar 2018 14:20:30 +0800
Message-ID: <CAKHP1duYgAf5jG3Y=Jm4yCPF+H9mcC+VS8u_aeYHGCTrBz1rZQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-raspberrypi] how to install rpi-config package?
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
X-List-Received-Date: Thu, 08 Mar 2018 06:20:32 -0000
Content-Type: multipart/alternative; boundary="94eb2c1c1b482bf5bf0566e0acf6"

--94eb2c1c1b482bf5bf0566e0acf6
Content-Type: text/plain; charset="UTF-8"

This is ok:
    $ bitbake rpi-config
But I check the image directory under workdir, I found nothing in it, and
no command raspi-config.

--94eb2c1c1b482bf5bf0566e0acf6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This is ok:<div>=C2=A0 =C2=A0 $ bitbake rpi-config</div><d=
iv>But I check the image directory under workdir, I found nothing in it, an=
d no command raspi-config.</div></div>

--94eb2c1c1b482bf5bf0566e0acf6--
