Return-Path: <suvi.usa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C298E0049D; Sun, 12 Feb 2017 10:10:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (suvi.usa[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.179 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.179 listed in list.dnswl.org]
Received: from mail-qt0-f179.google.com (mail-qt0-f179.google.com
	[209.85.216.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3E25E003E1
	for <yocto@yoctoproject.org>; Sun, 12 Feb 2017 10:10:45 -0800 (PST)
Received: by mail-qt0-f179.google.com with SMTP id x49so69026264qtc.2
	for <yocto@yoctoproject.org>; Sun, 12 Feb 2017 10:10:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=O2p4JekPeIteu4o74tCy93UbrbjueIEo6a+voqDdvfI=;
	b=XownzWtq8sBxdSTGk1h8AqbGi7+B7ta96+hOHg1VS1nq5VIQDaJjSxGLF+tmcLsaPX
	tQ+UzTHOcI54oO1qI0Eab99ZRS8upvhNEODmrxS3NRPy/dOwAqgzdaIuHpq79h5gtaFD
	kfOU/MyWWvi44HlTT4vZFbxx4G41zf2t2N5gaxvE1EyJAO5oRzOflBC0nuCmp5XDT/4E
	mHLZZzHufdMejt/YLz8rHZKskhBgy3dp9A1JQ/bqbpy8XODIz9557EW6pFKpVD+1uiLk
	FyRatS8qnMhl78tqNB477DVcgS3oXfSrC6JX2oElbWPO5d4OFbCJUVZ4MjuCvItI2CF0
	H7UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=O2p4JekPeIteu4o74tCy93UbrbjueIEo6a+voqDdvfI=;
	b=dUH7FPMoWMfdsFqeVk3QN3Y8sa6cuAVuj9/utIr4BeCQpJ4xx6P+XDyGY+Kw/0ZI/t
	hLaLu7AQR2HanaajsMhmiewR2UXFd7k+DBF9pcUpaekVMjlyvWq5EslnOHqxgN3DBbKO
	IlRV1AY2XBiEvdC++i9U/Vj3cdml7f4S+P/lik+3Phv3l+qX7VkrmCpnR8OC9datK83p
	neTCsLLaqCjv7sWOCgwvzwdeA5NG8iV9a/MM+gT6b60DJcKkV781EMGmhs73PcYkG4xZ
	l5ub6T1TnDfrzKK+8Ns6K7o2SEkSBw+VaoJRu9kgIXa0yJcFO1cO/7OtIeHIotYoS7Hp
	DsIg==
X-Gm-Message-State: AMke39lTKLBBYxbe81przBn1FbKHB45SbsTz548+OoCqYHsX5+Cxpp2YR9iVw13lOG/OUtvbsVI0aAJz/Zbggg==
X-Received: by 10.237.37.50 with SMTP id v47mr16578925qtc.126.1486923045128;
	Sun, 12 Feb 2017 10:10:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.53.40 with HTTP; Sun, 12 Feb 2017 10:10:44 -0800 (PST)
From: Suvi S <suvi.usa@gmail.com>
Date: Sun, 12 Feb 2017 10:10:44 -0800
Message-ID: <CAMnJoLP30N+xfxfdSdLQG_dZbmECpYs+GbXosbL4VxHV6oxvjQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: gtest 1.8.0
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
X-List-Received-Date: Sun, 12 Feb 2017 18:10:50 -0000
Content-Type: multipart/alternative; boundary=001a114030a4e9de940548593fba

--001a114030a4e9de940548593fba
Content-Type: text/plain; charset=UTF-8

Hi All,

I have included gtest 1.8.0 recipe from following site
https://github.com/openembedded/meta-openembedded/blob/master/meta-oe/recipes-test/gtest/gtest_1.8.0.bb
----
inherit cmake

ALLOW_EMPTY_${PN} = "1"
ALLOW_EMPTY_${PN}-dbg = "1"

RDEPENDS_${PN}-dev += "${PN}-staticdev"

BBCLASSEXTEND = "native nativesdk"
----

When I do populate_sdk from my custom image, it is not including as part of
sysroots or sdk does not have gtest, gmock libraries

Any help would be much appreciated,

Thanks
Suvi

--001a114030a4e9de940548593fba
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<div><br></div><div>I have included gtest 1.8.0 rec=
ipe from following site</div><div><a href=3D"https://github.com/openembedde=
d/meta-openembedded/blob/master/meta-oe/recipes-test/gtest/gtest_1.8.0.bb">=
https://github.com/openembedded/meta-openembedded/blob/master/meta-oe/recip=
es-test/gtest/gtest_1.8.0.bb</a></div><div>----</div><div><div>inherit cmak=
e</div><div><br></div><div>ALLOW_EMPTY_${PN} =3D &quot;1&quot;</div><div>AL=
LOW_EMPTY_${PN}-dbg =3D &quot;1&quot;</div><div><br></div><div>RDEPENDS_${P=
N}-dev +=3D &quot;${PN}-staticdev&quot;</div><div><br></div><div>BBCLASSEXT=
END =3D &quot;native nativesdk&quot;</div></div><div>----</div><div><br></d=
iv><div>When I do populate_sdk from my custom image, it is not including as=
 part of sysroots or sdk does not have gtest, gmock libraries</div><div><br=
></div><div>Any help would be much appreciated,</div><div><br></div><div>Th=
anks</div><div>Suvi</div><div></div></div>

--001a114030a4e9de940548593fba--
