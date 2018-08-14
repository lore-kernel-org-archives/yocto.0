Return-Path: <alexandretm@amotus.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8DC6E00B7D; Tue, 14 Aug 2018 06:33:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f194.google.com (mail-qt0-f194.google.com
	[209.85.216.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04209E00C1C
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 06:33:08 -0700 (PDT)
Received: by mail-qt0-f194.google.com with SMTP id w26-v6so21077020qto.5
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 06:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=amotus-ca.20150623.gappssmtp.com; s=20150623;
	h=from:to:references:in-reply-to:subject:date:message-id:mime-version
	:content-transfer-encoding:content-language:thread-index;
	bh=n+RRAYK82qTOUm50Dr1v8iDVVJuvkRcBc1+tR1Ffcrw=;
	b=qcTPb6SHpXmQZU4ZjArke9T/I2OZq/7iEiNfLNdmczhk2DYLCsL1M1MsPuLayNg0Ri
	PyemvUl1QVCvbZPy88egu6pw52bamQC5P3B/AM6PUtFvqcdiAZX7dyOc9PTNktCd6QK7
	1zCLTEQjuiAGEboMcjuXzRL63V2nH187VNA53nv+RAkskXulpsyvUJGlI7quesgsLrUB
	W4mWIR52OYC17KEvPKfiIlFfbEKweZOZHubB9VZSPTCG0fQcJbFpSZU4LsR1gAPrV+1M
	Lb99+F9jPxQdY3zujBJM3HSEzBSh+5bTj/D8shsUCLN5t2ehOA+5oUYpZxSXNBehjAcl
	kCfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:references:in-reply-to:subject:date
	:message-id:mime-version:content-transfer-encoding:content-language
	:thread-index;
	bh=n+RRAYK82qTOUm50Dr1v8iDVVJuvkRcBc1+tR1Ffcrw=;
	b=gllJMA1vY2lpm3BDW8YDI0xPVrklXSZ3hrtOYzo+GLimlwS51U/Fs3E2xnTZiij8f5
	E5heCUHh2FmrFIZsH/WV0jYytMf20LjWWoG5iIGQSj0e78YJ89zFR9oEhMlWqaQU6Lrm
	W5aB13H20ev+9Dmv+WhABfd2eLWXqcKhThxa3jwtNens2w6Q9wM/SpoATQicCaT2vVMa
	Oj006OBibqaGeVpnRyNRWklbQgBCcDz5k4gS3/2YolXprpvIkX7aFkl9RKoeuISTyjD6
	Fe3HvhTZ3TjCSWqrtzMBDUs7n5F9aHS+DkarivqJ6hR6mISfHTv28H2XhfYXfg9Xx7iz
	9Bcw==
X-Gm-Message-State: AOUpUlEueO5aXZRKxHU+xpcwqlvRBnWYDwP9vgJMvpJHR32Tn1gHPG3H
	B9IAnXETwppKxnMXo4Et/wg98g==
X-Google-Smtp-Source: AA+uWPw7ZUb5sh5AWxM2ZXDleE7LzU7hA2R2Pu+bsL6IK0wMEwLqEJU0HondsNhU+qeCqg6oLkFJMg==
X-Received: by 2002:a0c:d0e3:: with SMTP id
	b32-v6mr18803497qvh.236.1534253587961; 
	Tue, 14 Aug 2018 06:33:07 -0700 (PDT)
Received: from DESKTOPR5AJUPA (modemcable182.194-37-24.static.videotron.ca.
	[24.37.194.182]) by smtp.gmail.com with ESMTPSA id
	h4-v6sm9566127qtp.53.2018.08.14.06.33.07
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 14 Aug 2018 06:33:07 -0700 (PDT)
From: <alexandretm@amotus.ca>
To: "'Bishop, Mark \(STRT\)'" <MBishop@smithsinterconnectinc.com>,
	"'Yocto Project'" <yocto@yoctoproject.org>
References: <26be6edee8b64c4da6cb87ec387e5755@ERDCSEXCH01.SMITHSSII.NET>	<CAMKF1sovuCJuAg-LVTp2RrJOLGMrYDexRudQ9g3L0c-ycwWiDQ@mail.gmail.com>
	<61eea37e605f4645beb3c45232fb6560@ERDCSEXCH01.SMITHSSII.NET>
In-Reply-To: <61eea37e605f4645beb3c45232fb6560@ERDCSEXCH01.SMITHSSII.NET>
Date: Tue, 14 Aug 2018 09:33:06 -0400
Message-ID: <00d701d433d3$55bf3f60$013dbe20$@amotus.ca>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQKjH9DI3dM5B3/r1G8bJpAfu/FM0QL5uZJiAjLVOfui+AGioA==
Subject: Re: bbappend and placing a file into /tmp on the target
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
X-List-Received-Date: Tue, 14 Aug 2018 13:33:24 -0000
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-ca

This might be what you are looking for
https://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-core/initsc=
ripts/initscripts-1.0/volatiles

You could create a iniscripts_%.bbappend to add what you need.

Regards,

Mathieu

> -----Message d'origine-----
> De : yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org>
> De la part de Bishop, Mark (STRT)
> Envoy=C3=A9 : August 14, 2018 9:25 AM
> =C3=80 : Yocto Project <yocto@yoctoproject.org>
> Objet : Re: [yocto] bbappend and placing a file into /tmp on the =
target
>=20
> VOLATILE-BINDS is kinda what I am looking for, but without the =
dependency
> of systemd
>=20
>=20
>=20
> From: Khem Raj [mailto:raj.khem@gmail.com]
> Sent: Monday, August 13, 2018 5:54 PM
> To: Bishop, Mark (STRT)
> Cc: Yocto Project
> Subject: Re: [yocto] bbappend and placing a file into /tmp on the =
target
>=20
>=20
>=20
> May be look into VOLATILE_BINDS
>=20
>=20
>=20
> On Mon, Aug 13, 2018 at 1:12 PM Bishop, Mark (STRT)
> <MBishop@smithsinterconnectinc.com
> <mailto:MBishop@smithsinterconnectinc.com> > wrote:
>=20
> 	I am trying to expand an existing package (base-passwd) and having
> it place /etc/passwd into /tmp/
>=20
>=20
>=20
> 	I=E2=80=99m failing pretty miserably and am looking for some =
hints/tips.
>=20
>=20
>=20
> 	Mark Bishop
>=20
> 	Sr. Firmware/Software Engineer =E2=80=93 Microwave Subsystems
>=20
>=20
>=20
>=20
>=20
> 4726 Eisenhower Blvd.
>=20
> Tampa, FL 33634
>=20
> USA
>=20
>=20
>=20
> T  +1 813 901 7293
>=20
> mbishop@smithsinterconnectinc.com
> <mailto:mbishop@smithsinterconnectinc.com>
>=20
> smithsinterconnect.com <http://www.smithsinterconnect.com/>
>=20
> TRAK MICROWAVE IS NOW SMITHS INTERCONNECT!
>=20
>=20
>=20
>=20
>=20
>=20
> 	This e-mail contains proprietary information some or all of which may
> be legally privileged. It is intended for the recipient only. If an =
addressing or
> transmission error has misdirected this e-mail, please notify the =
authority by
> replying to this e-mail. If you are not the intended recipient you =
must not
> use, disclose, distribute, copy, print, or rely on this e-mail. In =
addition,
> information contained in or attached to this e-mail may be subject to =
either
> 22 C.F.R. Parts 120?130, or 15 C.F.R. Parts 730-774. These regulations =
prohibit
> the release or disclosure of certain information contained herein to =
anyone
> who is not a U.S. citizen or permanent resident alien, without a =
license first
> having been issued. Failure to observe such requirements is a =
violation of
> U.S. law that carries serious penalties.   =C2=AD=C2=AD
>=20
> 	--
> 	_______________________________________________
> 	yocto mailing list
> 	yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> 	https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20
> This e-mail contains proprietary information some or all of which may =
be
> legally privileged. It is intended for the recipient only. If an =
addressing or
> transmission error has misdirected this e-mail, please notify the =
authority by
> replying to this e-mail. If you are not the intended recipient you =
must not
> use, disclose, distribute, copy, print, or rely on this e-mail. In =
addition,
> information contained in or attached to this e-mail may be subject to =
either
> 22 C.F.R. Parts 120=E2=80=90130, or 15 C.F.R. Parts 730-774. These =
regulations prohibit
> the release or disclosure of certain information contained herein to =
anyone
> who is not a U.S. citizen or permanent resident alien, without a =
license first
> having been issued. Failure to observe such requirements is a =
violation of
> U.S. law that carries serious penalties.   =C2=AD=C2=AD


