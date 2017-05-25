Return-Path: <dl9pf@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E79AE00C20; Thu, 25 May 2017 11:32:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_40,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dl9pf[at]gmx.de)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.15.18 listed in list.dnswl.org]
	* -0.0 BAYES_40 BODY: Bayes spam probability is 20 to 40%
	*      [score: 0.3604]
X-Greylist: delayed 303 seconds by postgrey-1.32 at yocto-www;
	Thu, 25 May 2017 11:32:14 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F738E00AA2
	for <yocto@yoctoproject.org>; Thu, 25 May 2017 11:32:14 -0700 (PDT)
Received: from elrond.localnet ([95.89.254.87]) by mail.gmx.com (mrgmx002
	[212.227.17.190]) with ESMTPSA (Nemesis) id 0MRo6b-1dOixD1N0L-00SwyI;
	Thu, 25 May 2017 20:27:10 +0200
From: Jan-Simon =?ISO-8859-1?Q?M=F6ller?= <dl9pf@gmx.de>
To: yocto@yoctoproject.org
Date: Thu, 25 May 2017 20:27:09 +0200
Message-ID: <2588889.vGr6GKFSkr@elrond>
User-Agent: KMail/4.14.10
	(Linux/4.11.0-rc6-jsm-cowfix7-20170415-1209-00180-g1bf4b1268e66;
	KDE/4.14.18; x86_64; ; )
MIME-Version: 1.0
X-Provags-ID: V03:K0:TOVRch/+hCyFgM5Ar/kljWya8t3Oh55l1jm6YXVk0Z4fadZEoT2
	GelbE0rthYaTb62lTAFtz6ungMdHNi1S74BojKQ27Z1AR1/1xGWYvN3PUeX+SgqODvLM7aD
	983/orBzoBYnOJMlnlZizjdy9Kioigxq5v2wLiFbfiZAl2jmPkSZQwaiJVNrPKAfHpCxAL3
	4ZXIH+5K4DneRR8GYy0QA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:i+HBsO+wMF4=:y6PBwPruikXcX2BswJdLtF
	kePEf9JD3SM8NjIZtQ2Zv6DtQTnetWSl54PCIf93ScOU4+bPOaAK3bNRPVun+0qElQRwdBquH
	Ot+SVLDfQ+COaAt7Y9lC3uiTLmv86OLKOYaIXhdU9TKr+XFIOiv6SxNTXlpiie253EMGrXItP
	/F/BaZjt/hITVR7rkC4aNasTO5CaWIN3Py+tPNwfVqlgW0FcxsBjH77BeqiENaCPoEgQXT7Om
	CrM6GhnrZzfw3g5QeFrmga9MtKJ1S1bJqV3PPgu0NN3jS93jlM66Q9uU93RfC8n+8sgKPmugr
	edEIBLfzs8QMAJH6wFX4z9jcJ8afyXI0wPESkTa3F3cR/OUI0XFWDdK7lTNDnTYgYoxzqDjZW
	Znn4Hp51dbCzGv3LLWTH6DbYSlq6JhqYUR/fEnQvaBSz3Gu7spQKQP2tHIFLruNRo+7Et+XSP
	RnuxCobX5t+o1RVP7wkStkLOPr2ScoaC+EfkrT0IpwKoMbJNh4/glAeUh3BXLyJaCfi3madI+
	pmQdLNhKrrT0vp+JGD3fneu9d52835E5MrYUFrRRCvtZDRJ/JDfUb7UbeasqQA/oge0gzQS3N
	tPYHwvd/EjzhQ+j1F+18qfWZDQsmoaS48gDaj4xghakclArEtKW0setObcc/I2BeJQE0wkq0U
	rMErimOMvNxWEBigkgGRM5DhNwqtWkjdUjm/zyoHAYkj5wo2fMqGXugNCzfM2to0TOadfbi92
	0otsukBAhFvWqUteu3a65bdhss7jqNcQdAJi1tC/m0DLanza2N/WGiMunL/HCFZldzQbZ8BVT
	5epK1g/
Subject: Include meta-qt5 in an eSDK build ?
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
X-List-Received-Date: Thu, 25 May 2017 18:32:19 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi !
How can I build an eSDK that includes meta-qt5 ?

The examples I found use the 'traditional' sdk and=20
add the classes from meta-qt5.

But I have not seen the eSDK being used, yet.

--=20
--
Jan-Simon M=F6ller
dl9pf@gmx.de

