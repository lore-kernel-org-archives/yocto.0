Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65795E00BFD; Fri,  1 Jan 2016 10:15:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [89.248.60.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0026]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 969 seconds by postgrey-1.32 at yocto-www;
	Fri, 01 Jan 2016 10:15:19 PST
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16D5CE0033E
	for <yocto@yoctoproject.org>; Fri,  1 Jan 2016 10:15:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=keylevel.com; s=default; h=Mime-Version:To:Message-Id:Date:Subject:
	Content-Type:From; bh=XuaM2GJjQUyXjNHUIWRFj7ZCleEScIeYlOtYFqwwXHs=;
	b=Qd22kiA
	93tninegXWz2r3je3WcZoqKeWW3Gbmu5BT+NTqcr78BMl1/Q4QaNUhpRbOeOmcbfuP+SD9FJ4ICAJ
	3BIOq1BPKB10bq02QEOiWjEEgGSvKC/m8CO/WYwutzrmfZYkEBrA2TGlnzF0x0/wrHDPLA/RdfihX
	P/xhdAtP7E=;
Received: from durham.keylevel.com ([88.97.63.243]:29191
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.86) (envelope-from <opensource@keylevel.com>)
	id 1aF3yk-0009gG-8z
	for yocto@yoctoproject.org; Fri, 01 Jan 2016 17:59:06 +0000
From: Chris Tapp <opensource@keylevel.com>
X-Pgp-Agent: GPGMail 2.6b2
Date: Fri, 1 Jan 2016 17:58:59 +0000
Message-Id: <C68BAE9A-0899-4588-844C-4FC9AF68F0D4@keylevel.com>
To: Yocto Project <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Mailer: Apple Mail (2.3112)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
X-Authenticated-Sender: a180.4uh.net: chris.tapp@keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: GCC segmentation error when compiling boost under Jethro
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
X-List-Received-Date: Fri, 01 Jan 2016 18:15:24 -0000
X-Groupsio-MsgNum: 27840
Content-Type: multipart/signed;
	boundary="Apple-Mail=_8F783460-B6E1-4149-8F21-103B182FE09A";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_8F783460-B6E1-4149-8F21-103B182FE09A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

I=E2=80=99m getting the following when I try to =E2=80=9Cbitbake boost" =
under Jethro:

gcc.compile.c++ =
bin.v2/libs/log/build/bad679ea642ec2fca3b5d11f9f0014c5/formatter_parser.o
In file included from libs/log/src/spirit_encoding.hpp:23:0,
                 from libs/log/src/formatter_parser.cpp:42:
./boost/spirit/home/support/common_terminals.hpp:200:65: internal =
compiler error: Segmentation fault
     inline void silence_unused_warnings_##name() { (void) name; }       =
        \
                                                                 ^
./boost/spirit/home/support/common_terminals.hpp:229:9: note: in =
expansion of macro 'BOOST_SPIRIT_CHAR_CODE'
         BOOST_SPIRIT_CHAR_CODE(lowernum, =
spirit::char_encoding::charset)        \
         ^
./boost/spirit/home/support/common_terminals.hpp:235:1: note: in =
expansion of macro 'BOOST_SPIRIT_DEFINE_CHAR_CODES'
 BOOST_SPIRIT_DEFINE_CHAR_CODES(iso8859_1)
 ^

However, it compiles if I then immediately run =E2=80=9Cbitbake boost=E2=80=
=9D again (change nothing, do nothing).

The do_compile log shows that other parts of boost are built before the =
first (failed) compilation task terminates reporting the error. Does =
this sound like a parallel compilation race?

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!


--Apple-Mail=_8F783460-B6E1-4149-8F21-103B182FE09A
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJWhr5sAAoJEAM2GeiJDBSGxtAQAJpxRSECBMlTRMR0ivKQFFsz
o10PdKrZgc8ks6TQlNNW5nkFhEGtdo7mBbVZg/ZsWzuX+qAh4vin2+Mbr7Cooldc
uEc4eZBpyO9RtM1SV5yf0Zzt0FqkXRGrKd4ntK5Tq6RPKBFX0hdmuVjdb3nlpvHf
EQHDv9vzQYVPHWerRpR4h9XTi945gwajqRKxM6xJd+7QXmy3HjWrt4X54+rQBa3F
DZcu7ji2tlhPBNQpKH+rYHLLR/Ph4WUsg5V+Z05IA4CFt2fij6uNGPo8Cpm2gXCT
+14OpIHZco6pi4mwI4Xx8W9tnxMW4iNA0buJD5543twqlEzMvh655MqGbtDvBlqv
RVP4SHAWYXNUW3n3gEyL5wZ8OTI8lD1Ae2xorUwsoM9XXsW/Rhg3CkESy3p3R8mw
G+CcZ5Toswz4fyxTgGAUMfI0O8+e1xIDfBlIpYkqQsYg0Ww+2EuRfHUY1hN6ei40
2e7coBu6x39Fv5OGiC7c0pr/U6QO+XHb2vUdl/SYFmKPGrFDkuZglSYk5xKic53I
EmlEfZg5KgSGjxCunqDG/YaF8ybzn9klHskMziNl1jH/btVvC8E1crnXD3bEfClA
yyVx8/mSljpW+1+8KVCtcosr3hX3W+coZ4CWF1mj1qPf6fEhJCcQPHSk75q5Us66
YZdUrp++9g9GxAX7ssK9
=Ks9A
-----END PGP SIGNATURE-----

--Apple-Mail=_8F783460-B6E1-4149-8F21-103B182FE09A--
