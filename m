Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42975E007DC; Fri, 17 Oct 2014 13:53:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,URIBL_BLACK
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.7 URIBL_BLACK Contains an URL listed in the URIBL
	blacklist *      [URIs: configure.ac]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51B39E00796
	for <yocto@yoctoproject.org>; Fri, 17 Oct 2014 13:53:30 -0700 (PDT)
Received: from durham.keylevel.com ([88.97.63.243]:36757
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.82)
	(envelope-from <opensource@keylevel.com>)
	id 1XfEWY-003eEa-R5; Fri, 17 Oct 2014 21:53:25 +0100
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <12089180.Y153nkpj4z@comp-006-thk>
Date: Fri, 17 Oct 2014 21:53:24 +0100
Message-Id: <B93465FB-0AF4-4A48-82BF-21B18F30B95D@keylevel.com>
References: <4608AA16-9CBF-46C9-9C01-D78ED6A0C7C6@keylevel.com>
	<12089180.Y153nkpj4z@comp-006-thk>
To: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
X-Mailer: Apple Mail (2.1878.6)
X-OutGoing-Spam-Status: No, score=-1.8
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
Cc: yocto@yoctoproject.org
Subject: Re: How to get autotools to use C++11 under 'danny'
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
X-List-Received-Date: Fri, 17 Oct 2014 20:53:36 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


On 17 Oct 2014, at 20:17, Maciej Borzecki <maciej.borzecki@open-rnd.pl> =
wrote:

> On Friday 17 of October 2014 17:47:29 Chris Tapp wrote:
>> Does anybody know what I need to add to my configure.ac to get C++11 =
(or
>> C++0x) support added to the gcc flags at compile time?
>>=20
>> I've tried using:
>>=20
>>   AC_LANG([C++])
>>   AC_PROG_CXX
>>   AX_CXX_COMPILE_STDCXX_11([noext])
>>=20
>> But that fails at configure time.
> Care for posting how exactly that fails?

Ah - I meant to say "with a syntax error" !

> Besides AX_CXX_COMPILE_STDCXX_11 is part of autoconf-archive. Adding =
autoconf-
> archive to DEPENDS might help. You could also dump the macro directly =
into say=20
> m4 dir in your source package and add EXTRA_AUTORECONF_append =3D =
"-I${S}/m4"=20
> the recipe.

Thanks, I'll have a look at that. In the mean time I've added CFLAGS+=3D" =
-std=3Dc++x0" to get me going.

>=20
> --=20
>=20
> Maciej Borz=C4=99cki=20
> Senior Software Engineer Open-RnD Sp. z o.o.=20
> www.open-rnd.pl, Facebook, Twitter=20
> mobile: +48 telefon, fax: +48 42 657 9079=20
>=20
> Niniejsza wiadomo=C5=9B=C4=87 wraz z za=C5=82=C4=85cznikami mo=C5=BCe =
zawiera=C4=87 chronione prawem lub=20
> poufne informacje i zosta=C5=82a wys=C5=82ana wy=C5=82=C4=85cznie do =
wiadomo=C5=9Bci i u=C5=BCytku os=C3=B3b, do=20
> kt=C3=B3rych zosta=C5=82a zaadresowana. Je=C5=9Bli wiadomo=C5=9B=C4=87 =
zosta=C5=82a otrzymana przypadkowo=20
> zabrania si=C4=99 jej kopiowania lub rozsy=C5=82ania do os=C3=B3b =
trzecich. W takim przypadku=20
> uprasza si=C4=99 o natychmiastowe zniszczenie wiadomo=C5=9Bci oraz =
poinformowanie=20
> nadawcy o zaistnia=C5=82ej sytuacji za pomoc=C4=85 wiadomo=C5=9Bci =
zwrotnej. Dzi=C4=99kujemy.=20
>=20
> This message, including any attachments hereto, may contain privileged =
or=20
> confidential information and is sent solely for the attention and use =
of the=20
> intended addressee(s). If you are not an intended addressee, you may =
neither=20
> use this message nor copy or deliver it to anyone. In such case, you =
should=20
> immediately destroy this message and kindly notify the sender by reply =
email.=20
> Thank you.

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!


