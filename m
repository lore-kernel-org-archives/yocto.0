Return-Path: <dl9pf@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E14FFE00B19; Tue, 30 May 2017 06:39:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	FREEMAIL_REPLY, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dl9pf[at]gmx.de)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.17.21 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [212.227.17.21 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0021]
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
X-Greylist: delayed 303 seconds by postgrey-1.32 at yocto-www;
	Tue, 30 May 2017 06:39:57 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5372FE00953
	for <yocto@yoctoproject.org>; Tue, 30 May 2017 06:39:57 -0700 (PDT)
Received: from samweis.auenland.lan ([122.212.58.43]) by mail.gmx.com
	(mrgmx103 [212.227.17.168]) with ESMTPSA (Nemesis) id
	0MPlMc-1dKdF02zkA-00547i; Tue, 30 May 2017 15:34:53 +0200
From: Jan-Simon =?ISO-8859-1?Q?M=F6ller?= <dl9pf@gmx.de>
To: yocto@yoctoproject.org
Date: Tue, 30 May 2017 15:34:48 +0200
Message-ID: <9141764.5niMDUV06v@samweis.auenland.lan>
User-Agent: KMail/4.14.10
	(Linux/4.9.0-rc1-jsm-cowfix-20161020-2241-00145-gf4814e6;
	KDE/4.14.25; x86_64; ; )
In-Reply-To: <2588889.vGr6GKFSkr@elrond>
References: <2588889.vGr6GKFSkr@elrond>
MIME-Version: 1.0
X-Provags-ID: V03:K0:WRn4obsuiB2ahT4Gw+lYixMzdK/WoWV1AdVjn8P8pjH1GMPkxZ5
	xizcH4VLe0obKwRffZ+RFWK6ACLnqnbj/RABrh7RBPN3RwGw42+i/7Du9guqlYtqNjlpOie
	UsdP++d0o2MOMlcdh8OWt6rn+Cgrow4BF5dGEdW7mqRvh4w8j3qpKFNTARBs6rw70e2nQen
	wk6YRLmqxYD8LHYgihZEw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:WdtOYzxfAuI=://U9AsjoBrlhAa9K8zFLVo
	BcmFemot9untkLe3dNkJmm1BPfbugBBbhQEG9+WkFDLmdDbAVVf99BD6FUQKrrvCF5/xtOpNl
	w01IJ2oabPQeY2Fpc9eINv2DERP5oOpuqGhgEMs2I+q+uIjdamAqq21mii14h5j7f/33SrNpO
	QFBselV5U64wnsjZax8kvAQX5iQhflBEJ1f4kJTze0+aw9/2d4AneC3i1J8OVxbdfZofMOVyu
	Oz83Ymiq6MIV0Z1d13bZ+IJ6VsRwgHFfMF9hoAohQsmaDyzRzb1sIhVMgVUpTcf+OT9KI5ciX
	/fMzt/wl37Yi5CKnbWs6/rLrqRlzZeTnu3N/rAs7aN6243+c1zptSweK3sbRINR+z14BeXaW8
	Dx9bI+s8zr2aBbk7NwhSeVN7cQUa2sCAioDu4Qe41Fmc+wlZi1yR4uOchUb0mcQ3uTm/wnC2x
	299DMGBI+eoe+HiibKQt4vR45URPfxL41waLzivTrIqIqIh5fLOzGkYhjATsXZScWjjAjMkWD
	M35D+msT435NaWGW1jBHHcd2aCIWVPWmFg58/wO2tlWRUb2clYZt5WSF6ceelpmnJ0NYlDRZI
	iQp3boTMf6DHuIZEkYb/m7HJyNS92CckCC9FcviYj3Ralyj7s2QQJHuGZMiJeE1ngDNqS3fEf
	ZtgvX3mOmTRfZgtAPda7QW9Sywerk2Lf6LBidEscNB0x/4cAfAfAx7R8RsUZS+Zq+jPOSX0WZ
	Kattw1vsny70lnZKRdbrr7k/Y5stejdi9xCkpYPkwOaKzf/YsPcR86c/vwExHbpWvhOu0r2s5
	1hHzrcq
Subject: Re: Include meta-qt5 in an eSDK build ?
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
X-List-Received-Date: Tue, 30 May 2017 13:40:00 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Any pointers if it is possible to build the eSDK with meta-qt5 ?

--=20

Dipl.-Ing.
Jan-Simon M=F6ller

jansimon.moeller@gmx.de
On Thursday 25 May 2017 20:27:09 Jan-Simon M=F6ller wrote:
> Hi !
> How can I build an eSDK that includes meta-qt5 ?
>=20
> The examples I found use the 'traditional' sdk and
> add the classes from meta-qt5.
>=20
> But I have not seen the eSDK being used, yet.


