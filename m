Return-Path: <vikram.chhibber@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E061E015B1; Tue, 17 Jul 2018 11:39:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vikram.chhibber[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f51.google.com (mail-it0-f51.google.com
	[209.85.214.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CE54E006B4
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2018 11:39:50 -0700 (PDT)
Received: by mail-it0-f51.google.com with SMTP id p4-v6so560675itf.2
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2018 11:39:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=iBRtR9UOcNJ4WznMFWRQotDqtcjZLth8ROsM9SOlJIk=;
	b=bocNuCIwBdHAMN2L6vcAVVlKNhx5KT9V8FIC411cBK20xrm6RjYLe3daZy/shZfUB1
	j0yqkyKQfXrtryIuc9B/vYCPmp5e6wnl/AEmSIm2maCd33xzeLe/tjDL8oIfGJakZHYH
	37fRqNTbyv7W0TI4DHxp8LK45W6NFxyJJYRiuYPO7ic09N7JqrdTZMcg5T0Ppk0FX+ki
	afbxO5TKe5g+ORga3NZTt0JcWln4gZ4nmd05N4pxC07Un/D3s9zCjQce8psaHGuUKoUQ
	kpbUhfUe2ZRu66A/wbP3sPVr1OGgeAiJoKduamzdm7PaQ1dI3GWi7PoMemD11L5lONm5
	O7mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=iBRtR9UOcNJ4WznMFWRQotDqtcjZLth8ROsM9SOlJIk=;
	b=sjnBSljDaWWGhBE+NDVXnAaBhqfKSPoySroZ+F+v+ijYGiEd5JyV7vjH6pGZOPNQiY
	ABXUElQX9HpCe1hiRFLLhbv2kj5LbqpQNjnOH33sEEJ44eZfUdAE2TpxrJXt4eQHrHJI
	DTvDtLAPUhpuPnpvPr0lvRmo/QWgyJ8XYzwCQhikyAAinZTAxABV927sv8fahj7jyYgt
	rl2ppTSnYI7UuDrNA7fdYkTw1PWa71VTiWjSm1tUrWmjiCVFLjmX7N8BAclGsKdvGBQv
	bBCaVUJqxufVoQvlQHPGH6/hDNv7dS7lPNL1RuJ/8KTxoHQ0Cw+fOcgy8B4DOTIm/v+4
	8ULg==
X-Gm-Message-State: AOUpUlFZMdQ/E//lFpcUd0HnLDd0ObYjVs4jbMlzCTm9ChJAjEaCX3zM
	+zY+sbLaZC/b1otXurOGoHAK4Gc+cBZBdgL9IX6R
X-Google-Smtp-Source: AAOMgpcRUOLmbu8Ji57ncCDb3u8gj0w4RzHs83iRyZ2j96iBzS6+FPagu0Xo6sLp3OPzIrat5KkVtwzr7aQgFWRakHs=
X-Received: by 2002:a24:130c:: with SMTP id 12-v6mr2695577itz.35.1531852789695;
	Tue, 17 Jul 2018 11:39:49 -0700 (PDT)
MIME-Version: 1.0
From: Vikram Chhibber <vikram.chhibber@gmail.com>
Date: Tue, 17 Jul 2018 11:39:38 -0700
Message-ID: <CALBAsRyftz1B2WKvH4Gf4eouyyfii5hjRyD9SqfGTK5XvinXHA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Reg. rpm changelog
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
X-List-Received-Date: Tue, 17 Jul 2018 18:39:51 -0000
Content-Type: multipart/alternative; boundary="00000000000060c8fa057136457d"

--00000000000060c8fa057136457d
Content-Type: text/plain; charset="UTF-8"

Hi All,

I use the rpm created from my recipe and I need to know if there is a way
to add changelog to this rpm. I should be able to use "rpm -q --changelog"
option to display this changelog.

Please let me know if this is possible.

Thanks

--00000000000060c8fa057136457d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><font color=3D"#000000">Hi All,</font><div><font color=3D"=
#000000"><br></font></div><div><font color=3D"#000000">I use the rpm create=
d from my recipe and I need to know if there is a way to add changelog to t=
his rpm. I should be able to use &quot;rpm -q --changelog&quot; option to d=
isplay this changelog.</font></div><div><br></div><div>Please let me know i=
f this is possible.</div><div><br></div><div>Thanks</div></div>

--00000000000060c8fa057136457d--
