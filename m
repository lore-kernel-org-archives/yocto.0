Return-Path: <bluehills7@comcast.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29966E00E1B; Sat, 21 Jul 2018 06:20:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bluehills7[at]comcast.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [69.252.207.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from resqmta-ch2-12v.sys.comcast.net
	(resqmta-ch2-12v.sys.comcast.net [69.252.207.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA8C2E0086B
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2018 06:20:15 -0700 (PDT)
Received: from resomta-ch2-20v.sys.comcast.net ([69.252.207.116])
	by resqmta-ch2-12v.sys.comcast.net with ESMTP
	id gr7QfdkFx6OTpgrnzfzsJ8; Sat, 21 Jul 2018 13:20:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=q20161114; t=1532179215;
	bh=9mWgTJC1ZHmQ+cjm/OwCJ27Yw6aeeW9dxVc3tYoyBxI=;
	h=Received:Received:From:Content-Type:Mime-Version:Subject:
	Message-Id:Date:To;
	b=Tj6D81vCYYPwm/D+TfH9kkvigAf8uldpgJu1QMPedX6cBS7z9WBASK7GAgiPiQmZv
	j2X6Rxm3hnjARqAcG0XTewwfRmfRqMeLwInyUk2FkHCqE7wkg+ZSxfsvixf1RiLNWs
	Yod+BEZjC3Ws9cYITf/Ic7iuHqwEWeFIUP3ktRQEoAng8Qg0wz4erGK3akPHrw3cSD
	h0+KVzn4FRFAy3Y8RXRZcb4ip448v4CU+NAp8WflxYzBuLn5T02yjGJdNtNQ5VoWKr
	loZXjHLu7P6AGHEzh35h3EkpIPbna97x5yx80/Y94DxFf7cAKk902bU5pQtMfp/ZI2
	PyXUEti2p/LuQ==
Received: from [IPv6:2601:18f:880:9aeb:cc63:b60f:c64:c741]
	([IPv6:2601:18f:880:9aeb:cc63:b60f:c64:c741])
	by resomta-ch2-20v.sys.comcast.net with ESMTPSA
	id grnyf2fkKTGiGgrnyfiAVy; Sat, 21 Jul 2018 13:20:15 +0000
From: Russell Peterson <bluehills7@comcast.net>
Mime-Version: 1.0 (Mac OS X Mail 11.4 \(3445.8.2\))
Message-Id: <16C5EFE1-1FE0-4E48-9797-EEC5E54033AB@comcast.net>
Date: Sat, 21 Jul 2018 09:20:34 -0400
To: yocto-mailing-list <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.3445.8.2)
X-CMAE-Envelope: MS4wfA21Lx8Jnbg1hgoQ/FJfoxcPJGNFT0t479A2JHi/bqTRcE6CwXzLsoO59WfvMQ/ddJuVYd+Nt08o8hKmE4E2r20dKv4PWNM7t5WEwtTnbIbMTn83GbZ4
	K3GMIFDGnITHdiKkjKGWCVJrBv37eYhknl/8kWyvz8ecJOZW2RVtQLlYooWp2z4IgHPMjYHq/kqejN5DosCaOa+8VNghku0ziSNlk1OoEu6lNlTd1C/A3FSz
	TVEFxqb6HXeSTykrcDwbhy6teK4rS8/IDqs965drEPw=
Subject: SDK and out of tree modules
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
X-List-Received-Date: Sat, 21 Jul 2018 13:20:27 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,

I have been building some modules using the SDK for a while now.  This =
is mostly for development flow purposes but we have had a few customers =
doing this as well.  To get this to work we always need to run =E2=80=9Cma=
ke silentoldconfig scripts=E2=80=9D inside the RFS of the SDK on the =
build host.  Many folks forget to do this this and thus many, many =
questions come my way about the SDK being broken and they can=E2=80=99t =
build their modules (not all users are kernel experts or even =
intermediates=E2=80=A6 they just want to apply a patch and quickly move =
on to their app).  Is there a way to do this auto-magically during the =
installation of the SDK by adding some type of scripts etc=E2=80=A6 to =
the recipe?  I assume it needs to be done at install time since while =
the build host is x86=E2=80=A6 the exact linux distro is not known until =
then (or does that matter?).

=E2=80=94Russ


