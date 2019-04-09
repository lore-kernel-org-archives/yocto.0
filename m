Return-Path: <d.s.e@sordidmusic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFF23E00B5F; Tue,  9 Apr 2019 00:49:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.rpgmaster.net (mail.rpgmaster.net [78.46.222.82])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D020E00AC5
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2019 00:49:02 -0700 (PDT)
Received: from phoenix.invalid (unknown [46.183.103.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits)
	server-digest SHA256) (No client certificate requested)
	by mail.rpgmaster.net (Postfix) with ESMTPSA id D706221090;
	Tue,  9 Apr 2019 09:49:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=sordidmusic.com;
	s=rpgmaster; t=1554796141;
	bh=Ba8FHYBykVIUMEPiW2V0ugrY8LFU/dMrENOBPjrFjuI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=SpSXt6WoLtDOYUEPLBmaSrZ07iDPgMLN8HmL8AFOly+Qt0OOQ/ogEFnmUmMV9Sqrp
	yQ7wXMv7EIIwG9FLwxRxE7Rjrj/N13p0sxOQXu1J0Ay4kZ2urjLofMVwIFeCFtfOUa
	HwQ/o9xdVL3ovWdnW+bydVARui+rBFH+0zqsiJSc=
Date: Tue, 9 Apr 2019 09:48:49 +0200
From: Guenther Meyer <d.s.e@sordidmusic.com>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20190409094450.6a180445@phoenix.invalid>
In-Reply-To: <CAJTo0LbwKobcEg8qp0NY-EaEtkgyBHLoVNSBH41brjoOJPw_Vw@mail.gmail.com>
References: <20190404115301.1820604a@phoenix.invalid>
	<CAJTo0LbwKobcEg8qp0NY-EaEtkgyBHLoVNSBH41brjoOJPw_Vw@mail.gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Metadata is missing in some Python packages
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
X-List-Received-Date: Tue, 09 Apr 2019 07:49:04 -0000
X-Groupsio-MsgNum: 44722
Content-Type: multipart/signed; boundary="Sig_/.N+s+kPhFJsakH2XrKOpQ1V";
	protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/.N+s+kPhFJsakH2XrKOpQ1V
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Fri, 5 Apr 2019 18:17:43 +0100
"Burton, Ross" <ross.burton@intel.com> wrote:

> What metadata in particular do you refer to?

The *egg-info folders and everything contained in them, especially
the files PKG-INFO or METADATA. The recipes are basically identical.

Some packages have it, some not:

Django-2.1.7-py3.5.egg-info
EasyProcess-0.2.5-py3.5.egg-info
HelperSDT
HelperSDT-0.1.0-py3.5.egg-info
OpenSSL
PyHamcrest-1.9.0-py3.5.egg-info
PySocks-1.6.8-py3.5.egg-info
PyVirtualDisplay-0.2.1-py3.5.egg-info
Twisted-0.0.0-py3.5.egg-info
aioredis
aioredis-1.2.0-py3.5.egg-info
asgiref
asgiref-2.3.2-py3.5.egg-info
asn1crypto
asn1crypto-0.24.0-py3.5.egg-info
async_timeout
async_timeout-3.0.1-py3.5.egg-info
attr
attrs-18.1.0-py3.5.egg-info
autobahn
autobahn-19.1.1-py3.5.egg-info
behave
behave-1.2.6-py3.5.egg-info
can
certifi
certifi-2018.8.13-py3.5.egg-info
cffi
cffi-1.11.5-py3.5.egg-info
channels
channels-2.1.7-py3.5.egg-info
channels_redis
channels_redis-2.3.2-py3.5.egg-info
chardet
chardet-3.0.4-py3.5.egg-info
click
click-6.7-py3.5.egg-info
constantly
constantly-15.1.0-py3.5.egg-info
cryptography
cryptography-2.3-py3.5.egg-info
daphne
daphne-2.2.5-py3.5.egg-info
django
django_model_utils-3.1.2-py3.5.egg-info
easyprocess
hamcrest
hiredis
hiredis-1.0.0-py3.5.egg-info
idna
idna-2.7-py3.5.egg-info
incremental
incremental-17.5.0-py3.5.egg-info
model_utils
msgpack
msgpack_python-0.5.6-py3.5.egg-info
ndg
ndg_httpsclient-0.5.1-py3.5.egg-info
parse-1.8.4-py3.5.egg-info
parse_type
parse_type-0.4.2-py3.5.egg-info
ply
ply-3.11-py3.5.egg-info
psutil
psutil-5.4.6-py3.5.egg-info
psycopg2
psycopg2-2.7.5-py3.5.egg-info
pyOpenSSL-18.0.0-py3.5.egg-info
pyasn1
pyasn1-0.4.4-py3.5.egg-info
pycparser
pycparser-2.18-py3.5.egg-info
python_can-2.2.1-py3.5.egg-info
pytz
pytz-2018.5-py3.5.egg-info
pyvirtualdisplay
requests
requests-2.19.1-py3.5.egg-info
selenium
selenium-3.141.0-py3.5.egg-info
service_identity
service_identity-18.1.0-py3.5.egg-info
setuptools
setuptools-40.0.0-py3.5.egg-info
six-1.11.0-py3.5.egg-info
twisted
txaio
txaio-18.8.1-py3.5.egg-info
urllib3
urllib3-1.23-py3.5.egg-info
websocket
websocket_client-0.54.0-py3.5.egg-info
wrapt
wrapt-1.10.11-py3.5.egg-info
zope
zope.interface-4.5.0-py3.5.egg-info


--=20
Summer-Hack-Session 2.8
http://session.pestilenz.org/session2/


--Sig_/.N+s+kPhFJsakH2XrKOpQ1V
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEzA/1q58SJcycb7/KVdabz09aRfwFAlysTmEACgkQVdabz09a
Rfx1Xg//XSUW7Sr58dXABXk0bEzImqQnzn4aDauDXVswyWzysHZKQxpkSQvr66Z4
Hte6S57RcN3Zt1pXJZ+yeBkyix+ctAQeMohN/JdGV/KhFksoFFGg+op2r6RJBGK5
Aodk8K1uvqUEQTr3S4dNsm77gSQYQLmJpIIB3H+B8SEjHTGR0B3+RYOf7Lp4oPU9
fCFQUZ59sQUqMSlkaLVWcTNkM07oUQlHJsL1RFpmKByyjo8O8jj9srijtbXOH1kK
yb0tDZajMnVEVuydatf5gomJ5vSRzHPoFJWpIEWofl3TEnZUp7+98vkEUjsD5J6V
GKSS72Vv0aaCTJUpN+ysjdV73iki8TH4XZ16AGRY8u6Tm+yuaRHxzAjnqxCmhNZC
w/LnRNBIz3qSS1KBOGioIndHieRr4iiPdJp2Dl7QEaslxN0nVBjHnLSyFXPndXzo
V0tMW/HuG/uv19C1ex4ztAd0DKVhbwKFiGhlOk2wrtOyL54SvCi2SFdNlpTqPu3H
eu32tC/RJ1Hk+TRdp20Cn7l0NgCmFEDYjl10kAXyuVX9gs+YTWUEWvsEwpnV2Zsu
J7SyqKK0ON9nbtWi6SG7GgXorga7BHFrBxJlomkkg/b8zGUUwpR+rX245OtCUvMP
hz5MBrSqlwDiRkxZsce9h4hN9qfRWxRftld4FJIy1+wBA+zo+d0=
=hbve
-----END PGP SIGNATURE-----

--Sig_/.N+s+kPhFJsakH2XrKOpQ1V--
