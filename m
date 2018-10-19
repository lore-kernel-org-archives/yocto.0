Return-Path: <imdibene@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E12E4E0097C; Fri, 19 Oct 2018 14:33:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (imdibene[at]gmail.com)
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.51 listed in list.dnswl.org]
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
	[209.85.208.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F62FE00920
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2018 14:33:59 -0700 (PDT)
Received: by mail-ed1-f51.google.com with SMTP id c1-v6so32692800ede.5
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2018 14:33:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=K67SYBVLBJ7e5sbcTR/lqftJL8Y1P8l9hvFIIZT6Ulk=;
	b=TF2g/c5siTUbkxB5QJ2f9UepBGzR5wLR3dM/zM0I0bwqsRYZmT7mc8IW36VML3kqZq
	ljDOCyE7cJhExdruceRG1LuQ3i3m8IYbJ9ZZxDp3oX8aiEPBpj4zwK9bqa6a7cIvvrdS
	xlYg0FhLulAWcGRwq782PjxIZ7nUzNk2iBx/uSbp9GjpbSxON5i4ys97z8tZw4Sc+aF5
	zrHG5snCLU3ULU92k6Lw5Jx0sEmAiYqIQ6T2oNt7o3fjF9ADIrnmlculCINWnfCWuLi8
	7uiD73hFVyjgSOLBpWfR6UuC61L35/G/VoBHA8G8e6lp+dp+WIwrIGL0bdjOn8dNx/bZ
	FupQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=K67SYBVLBJ7e5sbcTR/lqftJL8Y1P8l9hvFIIZT6Ulk=;
	b=UV7i9ZLkNoQS5P0wa/jjElyKdmhhzwKPLe70Vd+QQsAoIeqsRFFGyeY7qkD6B4Wb+r
	9fi21ibxEJwwCtRC883Zyg6KI84CFCx+Spv+E4hhclXIdzCFAbR2VskOprJlqNnPmgvN
	3JFGCUl/tXqTQLwCWoXy+n/FRHtzyBuURiaLf2D6E5jlm3D4ewVosjPWGZ5L5rujjQQ5
	jd2IPkY59gv8Mg5BIh5FiccfIhgVwTBJhBgZc0Olzfvk3/PU1woYgi8WzwE91IjTnA/4
	1INt2FtacQFvPrHpcs70YW3NivkAGn6evoAI54876fBintcOb6bB/pM+hnVE++nh5K9j
	iHXA==
X-Gm-Message-State: ABuFfogSDtSAe4saPjGbaSficMZDuki9mpoUqHLRsqMds5Gb6VX+MSp+
	bhRk8JzwUzNR/EltxvYl4FnegZBCsbvrhw==
X-Google-Smtp-Source: ACcGV61/EJpT49pnMZxe7KKItF/SMgsLgaiR3QzNFfHFYje5KdiM3hAyzQs3t9h8ENXx79OXZwqFsQ==
X-Received: by 2002:a50:8325:: with SMTP id
	34-v6mr7165022edh.265.1539984838015; 
	Fri, 19 Oct 2018 14:33:58 -0700 (PDT)
Received: from [10.46.39.55] ([200.68.129.135])
	by smtp.gmail.com with ESMTPSA id
	l22-v6sm5168901ejd.53.2018.10.19.14.33.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 19 Oct 2018 14:33:57 -0700 (PDT)
Mime-Version: 1.0 (1.0)
From: =?utf-8?Q?Ismael_Mart=C3=ADnez_Dibene?= <imdibene@gmail.com>
X-Mailer: iPhone Mail (16A405)
In-Reply-To: <CA+4=ZEM9oFXNUTU8EKb_e2rCzpqZLw6Yc7dQV4mVMH2TbzRiaw@mail.gmail.com>
Date: Fri, 19 Oct 2018 16:33:54 -0500
Message-Id: <2DE4399C-7659-49BD-AF9E-259315E5D1DD@gmail.com>
References: <CA+4=ZEM9oFXNUTU8EKb_e2rCzpqZLw6Yc7dQV4mVMH2TbzRiaw@mail.gmail.com>
To: Joe Flowers <joe.flowers@nofreewill.com>
Cc: yocto@yoctoproject.org
Subject: Re: SUSE SLES target OS
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
X-List-Received-Date: Fri, 19 Oct 2018 21:34:00 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Do you mean OpenSuse? Since SLES is only build/provide to you by SUSE direct=
ly, it would be the same as trying to build your own RHEL instead of fedora.=
 That would be difficult without theirs repositories ;-)=20

Saludos / Regards / Mit Freundlichen gr=C3=BC=C3=9Fen / Atenciosamente
Ismael Mart=C3=ADnez Dibene

> Am 19.10.2018 um 16:17 schrieb Joe Flowers <joe.flowers@nofreewill.com>:
>=20
> Hello everyone,
>=20
> I need to get started on a Yocto set that will build a minimal core for a t=
arget OS of SUSE Linux Enterprise Server on x64 target hardware like a Minno=
wBoard.
>=20
> I have scoured the web, SUSE, and this list's (Yocto Project) archives, bu=
t have run into no pointers.  My guess is that it is right under my nose tha=
t can be seen with more experience rather than being hidden behind private w=
alls.
>=20
> Will someone please get me started on the pointers and downloads I need to=
 get started?
>=20
> I have already run through a tutorial on creating a core OS using Yocto fo=
r a WandBoard target hardware.
>=20
>=20
> Thank you !
>=20
> Joe
> --------------
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

