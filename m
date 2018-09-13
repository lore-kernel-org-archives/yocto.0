Return-Path: <richard.collins@guidedknowledge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EEF8CE006AF; Thu, 13 Sep 2018 02:35:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.180 listed in list.dnswl.org]
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com
	[209.85.210.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 935F4E0053F
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 02:35:44 -0700 (PDT)
Received: by mail-pf1-f180.google.com with SMTP id s13-v6so2416337pfi.7
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 02:35:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=guidedknowledge-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=jqd/5hD5kLqGRqgNoseNbfo4pXq/sPxwm/XBztAdsus=;
	b=kZWoIpUw582MwWvJy5iANbSn+N+Ad9Tdsbptj1ku3K3L+GA9BDV6v2rchTKEiIKrOu
	v2M+9Dw+B7u3lV1jZtpSATkjspstTnWSeRrVoQyX4zVOIIqzu67MMykPPpO6iCoiK5hA
	wZYdmagkVYgoBmut8iij1Xj96K1JrfsajrbqwxkKY2Djy3GNXGymczSTOG4nPvW4hd6e
	blE17Cz0QjjTXEZWjKZV9vIzAFO9b/LSWpd3K6lMi7d9xI7+yQ4lJQQj3UoiWurAwLBp
	tA+ietqFKr3LpLp/amqEZN/VYeZpfTkxmILRfFiv4qI2ST6U/gmdobhTrpGLG2pXBJfW
	vQDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=jqd/5hD5kLqGRqgNoseNbfo4pXq/sPxwm/XBztAdsus=;
	b=stqmK03jBclydoVMkEg3KRYujtmalytTqWbXICdVM9xlMM4xGc6ENt2WrAce9JP+Nk
	xPP/ed+kgg//cXyXx6p0+uz5Rw7RnO6Fz94RKUKd2wBA8GHCJ9XLABS/nvy2LsYVJ8Mp
	Dn4motEd2IciZGxYl1JoTpm4QHYGSpC/i4FvpDexQOV0N2gzFQSWYgvIK2nDRp0G6XYL
	/Kx4Zym+00N4yjFzYtFhP2laXbSxDlLIWvdLh1UfdsudP9lmBkpzvXmRlPftG5d43KOM
	q7lopBwvZ66lYjqVqvzXjwDuW/QiRxJrxOho3CQITfXZNYs1JWXTFQMNLZfJ7h97Zt01
	KpPw==
X-Gm-Message-State: APzg51CNT0Aw9YwPcbCAWbX2yLv8Pzyk8eX7gRqFrIbUdm8o6dsCL/m1
	32R/EcgV/Vdsdm5NV2byXFkFlkyskpEblVuoxYa9YfRFj/w=
X-Google-Smtp-Source: ANB0VdZ4vNCAIDwq127N1kEfEf2d4eCuBIrasmBpQ568COrAYXUnDh+VIDfCVP18ToaioGGefnHXMmRK8av598noE54=
X-Received: by 2002:a63:1b4e:: with SMTP id
	b14-v6mr4953026pgm.303.1536831330885; 
	Thu, 13 Sep 2018 02:35:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:90a:3788:0:0:0:0 with HTTP; Thu, 13 Sep 2018 02:35:30
	-0700 (PDT)
From: Richard Collins <richard.collins@guidedknowledge.com>
Date: Thu, 13 Sep 2018 10:35:30 +0100
Message-ID: <CAD-1PJhoefkOVtzzYt2vijZCSVCgyf1FbfLjCofczs9Djp5DLA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: ext4 rootfs in wrong folder when trying to build sdcard image
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
X-List-Received-Date: Thu, 13 Sep 2018 09:35:45 -0000
Content-Type: multipart/alternative; boundary="0000000000008fa6050575bd6d7b"

--0000000000008fa6050575bd6d7b
Content-Type: text/plain; charset="UTF-8"

This is for a custom carrier board using the Phytec rk3288 SOM.

This worked for 2.2 morty.

I have migrated to 2.5 sumo. I am using their rk3288_sd_image-phy.bbclass
file. This file is only in the morty branch so I had to copy it into my bsp
layer.

I am still a bit of a Yocto noob so any help would be awesome.

When I build with
*IMAGE_FSTYPES += " tar.gz ext4"*
in the local conf the ext4 rootfs file is in the deploy folder.

When I build with
*IMAGE_FSTYPES += " tar.gz ext4"*
*IMAGE_FSTYPES_append_rk3288 = " sdcard"*
in the local conf the ext4 rootfs file ends up in the temp folder and so
the sdcard creation fails as it is looking for the ext4 file in the deploy
folder.

It's a really odd issue. :/

Any ideas on where to look?

Many thanks,
Richard e Collins.

--0000000000008fa6050575bd6d7b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Th=
is is for a custom carrier board using the Phytec rk3288 SOM.</div><div dir=
=3D"ltr"><br></div><div dir=3D"ltr">This worked for 2.2 morty.<div><br></di=
v><div>I have migrated to 2.5 sumo. I am using their=C2=A0rk3288_sd_image-p=
hy.bbclass file. This file is only in the morty branch so I had to copy it =
into my bsp layer.</div><div><br></div><div>I am still a bit of a Yocto noo=
b so any help would be awesome.</div><div><br></div><div>When I build with<=
/div><div><b>IMAGE_FSTYPES +=3D &quot; tar.gz ext4&quot;</b><br></div><div>=
in the local conf the ext4 rootfs file is in the deploy folder.=C2=A0<br></=
div><div><br></div><div>When I build with=C2=A0</div><div><b>IMAGE_FSTYPES =
+=3D &quot; tar.gz ext4&quot;</b></div><div><b>IMAGE_FSTYPES_append_rk3288 =
=3D &quot; sdcard&quot;</b></div><div>in the local conf the ext4 rootfs fil=
e ends up in the temp folder and so the sdcard creation fails as it is look=
ing for the ext4 file in the deploy folder.=C2=A0</div><div><br></div><div>=
It&#39;s a really odd issue. :/</div><div><br></div><div>Any ideas on where=
 to look?=C2=A0</div><div><br></div><div>Many thanks,</div><div>Richard e C=
ollins.</div></div></div></div></div></div>

--0000000000008fa6050575bd6d7b--
