Return-Path: <zoleelikesdebian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C02FE00AD8; Wed, 24 Oct 2018 07:35:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoleelikesdebian[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.45 listed in list.dnswl.org]
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
	[209.85.208.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1A10E00A0C
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2018 07:35:54 -0700 (PDT)
Received: by mail-ed1-f45.google.com with SMTP id z21-v6so5268806edb.11
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2018 07:35:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=yxFnMFfxBQSRAGAoFOwSukDYfB2CImoX/ZDC2vmR+TY=;
	b=CWVM9FOlp3xLZN8l1YtmCDdHEoLaglAI693B2H+vpN3UpTQRHlVomvLKODSJOAJ68q
	YJYWXnhaHlT/GOptEo3f4PWnwbpGAP5tKzMixjQTPS0V2jZuuC0ri9xkkhrz2ZWCuwyp
	+KiAMY88TNcxQwmu0BPHA+NRSIVf6oIVqEUvYnoNG3sawoVShtXKrKGyEYF+cr9Gx3Jl
	2wDGB3PdEySaV+v4wASTqStpnJBbZbLQlssAZQBVdvshFpEmjDsg1O/SFJMM7MHjsF5L
	M9TYg/KiEG+yoWR2FrE47UMz1VOj0LtM1c/JT2d/3rHLgfbIgAlRMZzgg4lB8RzMgjR+
	XGmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=yxFnMFfxBQSRAGAoFOwSukDYfB2CImoX/ZDC2vmR+TY=;
	b=GTLjS0MXni7s5SqxT44y5Uvw+k3i5Zf/Ka6Ra4QkEJ3ltnQbYtegHwV65eUAw9NhJp
	rhOfnDU1iFUE9GKS9gSs9e8A/GT7eVHrGbDCcsCPcc/TghE8aUzxUh+imCRVde0859tT
	RCq/aZBN3r9UR2b0dNjEFThxp5BlqF9bKq64zwJ7IKXI47ST3YSSooGX9lhck/bSo9I1
	UHgYD6P+R+GyP73XvzijO3GIKjY5M6xN+DMuu+QpkqK88XXD3SjPLkM9Vf1KF1KHG3sx
	TTn0n+SaL46iDRcBDFsBKmDQ7DKGJGQMm9ru2vr+4PyVnlOQgUonLVW/Vg8LMfipOW3s
	Y7UQ==
X-Gm-Message-State: AGRZ1gKV6qyeTG79LAhLcZRRJY+nz+ApGw2WqzZNKLgNE7+YCf0/+H+i
	QSb8BQs3xtjRRgNJwvvMvhpOjFEgjoz9rV2O3Dz2tGM=
X-Google-Smtp-Source: AJdET5cvMWO+qQ57GIvrXdB2G0HvYDa5CxOMD6UeVm8r4PP68mwduwNMI8YkpKqtfM2XWiVRrOBnjHXpaLK+oi24DDA=
X-Received: by 2002:a50:f4ac:: with SMTP id
	s41-v6mr4770083edm.269.1540391753872; 
	Wed, 24 Oct 2018 07:35:53 -0700 (PDT)
MIME-Version: 1.0
From: Zolee K <zoleelikesdebian@gmail.com>
Date: Wed, 24 Oct 2018 16:35:43 +0200
Message-ID: <CAK4Yt2kCv-MnHh+MAc15aR80G1ZJ6_bZ6H22pa=hrKkbHV8R1A@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: time zone
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
X-List-Received-Date: Wed, 24 Oct 2018 14:35:55 -0000
Content-Type: multipart/alternative; boundary="0000000000004df8e10578fa6718"

--0000000000004df8e10578fa6718
Content-Type: text/plain; charset="UTF-8"

Hi All,

I noticed in my device that the time is 2 hours early and UTC. Could you
suggest a correct way to set the timezone with a recipe file to
Europe/Budapest?

Thanks,

Zoli

--0000000000004df8e10578fa6718
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi All,</div><div dir=3D"auto"><br></div><div dir=3D"auto=
">I noticed in my device that the time is 2 hours early and UTC. Could you =
suggest a correct way to set the timezone with a recipe file to Europe/Buda=
pest?</div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks,</div><div =
dir=3D"auto"><br></div><div dir=3D"auto">Zoli</div>

--0000000000004df8e10578fa6718--
