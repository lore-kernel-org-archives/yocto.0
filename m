Return-Path: <damir.anicic@psi.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56D75E009DC; Wed, 14 Sep 2016 04:37:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [82.130.99.26 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from edge20.ethz.ch (edge20.ethz.ch [82.130.99.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E401E009CB
	for <yocto@yoctoproject.org>; Wed, 14 Sep 2016 04:37:18 -0700 (PDT)
Received: from CAS11.d.ethz.ch (172.31.38.211) by edge20.ethz.ch
	(82.130.99.26) with Microsoft SMTP Server (TLS) id 14.3.301.0;
	Wed, 14 Sep 2016 13:37:10 +0200
Received: from MBX114.d.ethz.ch ([fe80::4875:1a61:8b1c:148]) by
	CAS11.d.ethz.ch ([fe80::ecc9:4e2d:b26b:1614%10]) with mapi id
	14.03.0301.000; Wed, 14 Sep 2016 13:37:14 +0200
From: "Anicic Damir (PSI)" <damir.anicic@psi.ch>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Fetcher failure
Thread-Index: AdIOXOA5GKic+Ii1RS2D956AFIO9Bf//+UaAgABB8/Y=
Date: Wed, 14 Sep 2016 11:37:13 +0000
Message-ID: <DB23C91B06C303459B24BC3208AF424A20F8216B@MBX114.d.ethz.ch>
References: <DB23C91B06C303459B24BC3208AF424A20F820DE@MBX114.d.ethz.ch>,
	<CAJTo0LbmE1u1rfe8prA-Mv8bhyOkf2sKesEVQV42DqnLvc-8Lw@mail.gmail.com>
In-Reply-To: <CAJTo0LbmE1u1rfe8prA-Mv8bhyOkf2sKesEVQV42DqnLvc-8Lw@mail.gmail.com>
Accept-Language: en-US, de-DE, de-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [129.129.145.249]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Fetcher failure
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
X-List-Received-Date: Wed, 14 Sep 2016 11:37:22 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB23C91B06C303459B24BC3208AF424A20F8216BMBX114dethzch_"

--_000_DB23C91B06C303459B24BC3208AF424A20F8216BMBX114dethzch_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

No, I have direct internet connection, no proxy needed (and was not needed =
before).

Temporarily I use
  CONNECTIVITY_CHECK_URIS=3D""
in local.conf

That way it works again,
but I would like to have better solution.


After investigating little bit more, I see an error:
   Fetcher failure for URL: 'https://www.example.com/'. URL https://www.exa=
mple.com/ doesn't work. Please ensure your network is configured correctly.

which comes from
bitbake/lib/bb/fetch2/wget.py line 282
275:        try:
276:            uri =3D ud.url.split(";")[0]
277:            r =3D urllib2.Request(uri)
278:            r.get_method =3D lambda: "HEAD"
279:            opener.open(r)
280:        except urllib2.URLError as e:
281:            # debug for now to avoid spamming the logs in e.g. remote s=
state searches
282:            logger.debug(2, "checkstatus() urlopen failed: %s" % e)
283:            return False
284:        return True


All I know is that python did not change,
but there were some additional packages installed,
and may be some other packages/libraries changed on my system
in scope of regular auto-updates.
Unfortunately I do not see which of the newly installed packages have anyth=
ing to do with python.

Any help?



--_000_DB23C91B06C303459B24BC3208AF424A20F8216BMBX114dethzch_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style id=3D"owaParaStyle" type=3D"text/css">P {margin-top:0;margin-bottom:=
0;}</style>
</head>
<body ocsi=3D"0" fpstyle=3D"1">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">No, I have direct internet connection, no proxy needed (and was not =
needed before).<br>
<br>
Temporarily I use<br>
&nbsp; CONNECTIVITY_CHECK_URIS=3D&quot;&quot;<br>
in local.conf<br>
<br>
That way it works again,<br>
but I would like to have better solution.<br>
<br>
<br>
After investigating little bit more, I see an error:<br>
&nbsp;&nbsp; Fetcher failure for URL: 'https://www.example.com/'. URL https=
://www.example.com/ doesn't work. Please ensure your network is configured =
correctly.<br>
<br>
which comes from<br>
bitbake/lib/bb/fetch2/wget.py line 282<br>
275: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; try:<br>
276: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uri =3D u=
d.url.split(&quot;;&quot;)[0]<br>
277:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; r =
=3D urllib2.Request(uri)<br>
278:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; r.ge=
t_method =3D lambda: &quot;HEAD&quot;<br>
279:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; open=
er.open(r)<br>
280:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; except urllib2.URLError as e=
:<br>
281:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # de=
bug for now to avoid spamming the logs in e.g. remote sstate searches<br>
282:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; logg=
er.debug(2, &quot;checkstatus() urlopen failed: %s&quot; % e)<br>
283:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; retu=
rn False<br>
284:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return True<br>
<br>
<br>
All I know is that python did not change,<br>
but there were some additional packages installed,<br>
and may be some other packages/libraries changed on my system<br>
in scope of regular auto-updates.<br>
Unfortunately I do not see which of the newly installed packages have anyth=
ing to do with python.<br>
<br>
Any help?<br>
<br>
<br>
</div>
</body>
</html>

--_000_DB23C91B06C303459B24BC3208AF424A20F8216BMBX114dethzch_--
