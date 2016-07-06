Return-Path: <mtl1nuxd3v@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B165AE00DE4; Wed,  6 Jul 2016 10:40:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.177 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mtl1nuxd3v[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f177.google.com (mail-yw0-f177.google.com
	[209.85.161.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EF6DE00D8D
	for <yocto@yoctoproject.org>; Wed,  6 Jul 2016 10:40:51 -0700 (PDT)
Received: by mail-yw0-f177.google.com with SMTP id i12so92740654ywa.1
	for <yocto@yoctoproject.org>; Wed, 06 Jul 2016 10:40:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=D9fBvY8ek3u/xRKO0LPh5Z0KxqFmXUCM7KDY/FENyPw=;
	b=DVCwFbF4Djs4gm3i71st6lr8gVOmrEePNxpdRI5zZ5tCKL2aK63Db2UF8IDD5+4FyM
	l7eiwXlLonK8gOGBtaCy4zChPbDf7Z/e1l8xndFvJ1dgS3DGVcfMnbXYXpg3XFddcEGo
	hvC+NnCK09DJtXF/AE+MF0N2nIWY/97LRYN4/IpS3Ny04RQkF4k8qkqU0jIKGVkPb7qk
	UQVCL06p27uyS5bUIa2oW67XetmECLX4hnF7Cz16jXJOg1RAkHdHvTZ+HpxIWejZ8cHl
	q5eaXG20er8aMhHHfaOvpQ70vIKNe1ec1FE5kARov95vsL7hIfxyCSPdtmGR+gbyoUcw
	ltFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=D9fBvY8ek3u/xRKO0LPh5Z0KxqFmXUCM7KDY/FENyPw=;
	b=epdxJ48mVzMySaYzeuW0+NDDpvV3K5vrY3g3tvtAgYth7iYL2GA59ar925QjR/h7Bd
	PnU6TT5pz3qeNduxiO2/kuRbo+3tKcrOavJADS1Q+AkCw18sSTAJFD0ZVucGr84Hzl2X
	lDrSPjAvUcxDRs39aYbVDiHw6HCEK1qC3pgkYWfxPvjCvw+84rgGxjBma0T0cyk6rYra
	goGakLZsxPLvpXQgHDxtJeqg3/jk7Z6u7GU9ZS0rkDgOn05llMeNIYKNIqOxWWVdwphw
	eRiJM9mnnoInBPkvIK50yVwrXI2FUV1+53CcU4RBxsunKq1B+pVppNjWmZuPuHIzrBib
	EBVQ==
X-Gm-Message-State: ALyK8tLPh1n9ez/l65E4XHsEb0Yu9Jj42HD/0zM54lhffwq6SGeBfOu9eRfvnMfAiKoedimPZrxfZMHWmqLruw==
X-Received: by 10.37.38.135 with SMTP id m129mr12294144ybm.17.1467826851112;
	Wed, 06 Jul 2016 10:40:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.81.68 with HTTP; Wed, 6 Jul 2016 10:40:50 -0700 (PDT)
From: Mark T <mtl1nuxd3v@gmail.com>
Date: Wed, 6 Jul 2016 18:40:50 +0100
Message-ID: <CALf_N3Yd-h21rBw2U_v_Qr3=J4SHDrBS75i7TyS=sLrJv7c54A@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: How do I select the kernel version in Dizzy ? ( 3.10 | 3.14 | 3.17 )
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
X-List-Received-Date: Wed, 06 Jul 2016 17:40:52 -0000
Content-Type: multipart/alternative; boundary=94eb2c191a480d6d160536fb12d4

--94eb2c191a480d6d160536fb12d4
Content-Type: text/plain; charset=UTF-8

Hi,

The Dizzy revision looks to support 3 kernel versions ( 3.10 | 3.14 | 3.17
).

If I chose Dizzy 1.7.3 - how do I ensure  the 3.10 kernel is used for the
build ?

Thanks,

Mark

--94eb2c191a480d6d160536fb12d4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi,<br><br></div>The Dizzy revision lo=
oks to support 3 kernel versions ( 3.10 | 3.14 | 3.17 ). <br><br></div>If I=
 chose Dizzy 1.7.3 - how do I ensure=C2=A0 the 3.10 kernel is used for the =
build ?<br><br></div>Thanks,<br><br></div>Mark <br></div>

--94eb2c191a480d6d160536fb12d4--
