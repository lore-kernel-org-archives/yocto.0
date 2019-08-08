Return-Path: <jonaskgandersson@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A05E1E00DA4; Wed,  7 Aug 2019 22:38:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jonaskgandersson[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.171 listed in list.dnswl.org]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com
	[209.85.208.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 372ABE0074B
	for <yocto@yoctoproject.org>; Wed,  7 Aug 2019 22:38:24 -0700 (PDT)
Received: by mail-lj1-f171.google.com with SMTP id z28so33457511ljn.4
	for <yocto@yoctoproject.org>; Wed, 07 Aug 2019 22:38:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=AAHhG9WCwBqhsOF3LSxaslAeIfaYm0NFUljN1k2ndPU=;
	b=YmJDnowK2FAL3ONl9QTFrYR+O5RAPTGNsOzeTb0KVov/BTRT/h96JD8xAaTPKdG3Jc
	DrQVKJ3Rj0F8x2YgWLjZCKqy4qNtgshQ1zHERYlCA1O1H1nNqbqgqVU9tMALYUoMp28s
	UciT0F2MnmDwbUS3kkUiLkkBARYew06YQi0RH6XeoKuh22N709k/2mxab2Yym3P5NdeZ
	YhdxBRiFV+wXBNwB2wEy+PyE2J7R2KFje+f0NN6x/bRzXeTF0BhPT8wKb1uoTptHhY6v
	U0YpNmqZIesx/W79Y3whkeB2gIQUXsbureoCfTy8+l+cxScwVG9DstvYdSU/eNnqnTaz
	AINQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=AAHhG9WCwBqhsOF3LSxaslAeIfaYm0NFUljN1k2ndPU=;
	b=dRkrxaaVMYJOTWmZ5+DETvW73TKmWJwGJ4RJTX7b/tiFTLGf+DujzLDDws5QVHng/Z
	ZmG5Jq7rM7olhzaDMSKsvTopkqIRsPg3gYtP23yZZZulvf5KRS5pj8eTT+ldgNOvpcI8
	UB1GRhELg1bJCcXi9A3ahVhB2qMXKeQev2qd8E1Oj+jfYh81rU2+8U4S+1/A5DpzKeOu
	WWIXbKOOCSbLQ6zoG4zNdO1kpczakHXlp6G/UYQo3ec2LQvBo0s5RUGODdAtU7O1aaIT
	SykWAs83RP7xJcGFQalNBGPE27Gif54gwUyQegs7Owl8WrvhXwvyP+I0S3xvwKsLHHGI
	BpCQ==
X-Gm-Message-State: APjAAAXAUXf/Wn0pVlX7lJCyEzcIkWReAhMxv+U8YzZfsXCiH2O6rqcI
	SI1DAL9X1a/Ep4sntEZMbcEurc5i
X-Google-Smtp-Source: APXvYqzmCtqBlHzfyvMURab/Tg0Rr3DB5wIrBwGfHIDnbi82bTej/NKlGzLwADs1jkWnVs4OoqTeXg==
X-Received: by 2002:a2e:9bc6:: with SMTP id w6mr7121446ljj.156.1565242703170; 
	Wed, 07 Aug 2019 22:38:23 -0700 (PDT)
Received: from [172.21.20.159] (78-69-166-142-no533.tbcn.telia.com.
	[78.69.166.142]) by smtp.gmail.com with ESMTPSA id
	z83sm18775289ljb.73.2019.08.07.22.38.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 07 Aug 2019 22:38:22 -0700 (PDT)
Mime-Version: 1.0 (1.0)
From: Gmail <jonaskgandersson@gmail.com>
X-Mailer: iPhone Mail (16F203)
In-Reply-To: <2d30857640b244c1a8903078c86e03bf@sakuraus.com>
Date: Thu, 8 Aug 2019 07:38:21 +0200
Message-Id: <E62D42AF-4605-424F-80F1-E045B3225B5B@gmail.com>
References: <2d30857640b244c1a8903078c86e03bf@sakuraus.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: How to patch a recipe .inc file
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
X-List-Received-Date: Thu, 08 Aug 2019 05:38:25 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

To add some kernel config I have created an extra .cfg file in:
my_recipe/recipes-kernel/linux/linux-raspberrypi/
and add an bb_append file:

recipes-kernel/linux/linux-raspberrypi_%25.bbappend
__________________________________________________________
FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"

SRC_URI +=3D "file://your_conf.cfg"
__________________________________________________________

BR
Jonas

> 8 aug. 2019 kl. 01:02 skrev Greg Wilson-Lindberg <GWilson@sakuraus.com>:
>=20
> I'm working with a Yocto Sumo build provided with Qt's boot2qt system. I'm=
 trying to enable using initramfs as a step in trying to enable OSTree updat=
es.
>=20
> In the meta-raspberrypi documentation, section 3.14, it says to add some k=
ernel config to the linux-raspberrypi.inc file. I would prefer to keep my ch=
anges to Yocto layer files in my own tree so I'm trying to figure out how to=
 patch the existing file. I've got bitbake finding my patch file, but it can=
't find the file to patch.
>=20
> Can somebody help me to specify that the file that I'm patching is part of=
 the meta-raspberrypi linux recipe?
>=20
> I'm going to be gone for a week, but I wanted to ask this now so maybe I'l=
l have some information when I get back.
>=20
> Regards,
> Greg Wilson-Lindberg =20
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

