Return-Path: <vashok890@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E55EFE00E3A; Wed, 20 Nov 2019 06:08:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (vashok890[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com
	[209.85.214.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B6CAE00E2F
	for <yocto@yoctoproject.org>; Wed, 20 Nov 2019 06:05:54 -0800 (PST)
Received: by mail-pl1-f177.google.com with SMTP id a18so13874170plm.10
	for <yocto@yoctoproject.org>; Wed, 20 Nov 2019 06:05:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:content-transfer-encoding:mime-version:subject:message-id:date
	:to; bh=qdGYRGss9dviSsMuv5XKkJXJWaH2SjNtrzLPa8jrEVs=;
	b=ovfHF+1D9asCS+hHAwow9w+cmzVcJ9c1EUz1/0/lXJXRWKb9mdCp1omnBuVPDJ7ZfH
	XODwku9xWyODwK/XXpfj3X9/AHZCb0gtIJXH93NmmSI43I3bMPv4eSla3C34BhdnYNZW
	fo5hFreYutIGqv+RQGP6QouRULs7o0WF7VEXIDPrRtS0d/NfDN/bWIFFozskp11mRJ0g
	QhoJsBOM3cwN7Ihz3IRfj13eozTMjgwH4dBPk5h/klWZXf9W7p3zC714A9BoNd8Z55xJ
	33GPXBkHQvwl7JvO1e53xMxvWLvIc+ggyy571rHddS7jps7pp0xOJBD3MAJcbQ2uSZWD
	ricg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:message-id:date:to;
	bh=qdGYRGss9dviSsMuv5XKkJXJWaH2SjNtrzLPa8jrEVs=;
	b=UQ3EduCrcJew30YEeS0QYbkYFqguvjh4svijRGsldsC2j0mKNWGYOfMUT4bhTStsoj
	/CQ4l+4J3vxxEmbi83+Vx71HO3vtum2o1SdBQI4v0Arb2QxtYmJc3vpPxeOmiVwgElwJ
	U97MUN+vxvIaM4/yELWh5FMMywx9/gK5qbK2YoyOmM86N97Pvxh5MCRA7hbGPVRMjvbP
	753k1E3KFfmcANJgzbtPirEHHg8pjeye1afJkKsN2MUs4MA6jnjqqYgc5N5G5i1KLMTK
	E+iZojuRFhIHSAnWxLFm038ul9agzMqrI7xs2lhhqOFUOjSWlCF7iIk8Z0XKGOBdNXh6
	BObw==
X-Gm-Message-State: APjAAAVRwZ7xrlOHtFZq8PmL1xNlU5wL5wg62zHKIaLLLAvwlYX9pZ8Y
	jgeI+v65OnzlDBV2BLHAoV2FjZposV0=
X-Google-Smtp-Source: APXvYqycekGSc7YISHzLgnVqEwJSEEBybS2Xg0XsWi6y6/x74IMKocfWyApCrQHGhBXPLP028lC84g==
X-Received: by 2002:a17:90a:7608:: with SMTP id
	s8mr4431991pjk.75.1574258753534; 
	Wed, 20 Nov 2019 06:05:53 -0800 (PST)
Received: from [10.24.2.97] ([128.107.241.162])
	by smtp.gmail.com with ESMTPSA id
	p9sm30305860pfq.40.2019.11.20.06.05.51 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 20 Nov 2019 06:05:52 -0800 (PST)
From: Varun A <vashok890@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Message-Id: <F8C77973-3C80-4D55-BE49-800557B4DA4F@gmail.com>
Date: Wed, 20 Nov 2019 19:35:45 +0530
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3445.9.1)
Subject: Doubt regarding python-elementtree rpm
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
X-List-Received-Date: Wed, 20 Nov 2019 14:08:38 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi

Had a doubt. While building python3 rpms using python 3.4.3 bit bake =
file, I am noticing that python-elementtree rpm is missing. It used to =
be available in package feeds in python 2.7 case. Has it been merged =
with another RPM? If so which one.

Regards
Varun=

