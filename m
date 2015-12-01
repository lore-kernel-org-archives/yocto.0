Return-Path: <alejandro.franco@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73698E00AE4; Tue,  1 Dec 2015 10:25:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEEC2E00ADD
	for <yocto@yoctoproject.org>; Tue,  1 Dec 2015 10:25:16 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 01 Dec 2015 10:25:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,369,1444719600"; d="scan'208";a="864377094"
Received: from afshjern.zpn.intel.com (HELO [10.219.5.144]) ([10.219.5.144])
	by fmsmga002.fm.intel.com with ESMTP; 01 Dec 2015 10:25:15 -0800
To: Martin Jansa <martin.jansa@gmail.com>,
	"Barros Pena, Belen" <belen.barros.pena@intel.com>
References: <1448920985-995-1-git-send-email-alejandro.franco@linux.intel.com>
	<2603447.ByLEse0mF5@peggleto-mobl.ger.corp.intel.com>
	<20151201094058.GA2251@jama>
	<D2832681.6BDCB%belen.barros.pena@intel.com>
	<20151201111451.GC2251@jama> <565DDB89.1030005@intel.com>
From: Alex Franco <alejandro.franco@linux.intel.com>
Message-ID: <565DE64A.60805@linux.intel.com>
Date: Tue, 1 Dec 2015 12:26:18 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <565DDB89.1030005@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Eggleton,
	Paul" <paul.eggleton@intel.com>
Subject: Re: [PATCHv2] [layerindex-web] recipe blacklisted information
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
X-List-Received-Date: Tue, 01 Dec 2015 18:25:19 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

@Martin, I think this information about blacklisting would indeed be
very useful, thanks for your input as always.

@Belen, yes indeed I noticed the label also hovers even when no tooltip
is present, this bugged me a little too to be honest! No worries though,
I can fix the hover situation and also add in the link to the
documentation.

@All: I suppose the link should go to:

http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-
PNBLACKLIST

- - Alex Franco
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBAgAGBQJWXeZFAAoJEPR9uwMY2lTL65EH/171Bk40iVaF7Jgg/gdYDOSG
1HS8eYw55ldjEDh8YAGKKdboHyPD8pY65P8lAovY9lzFDP9rx29QO8pKv2CoG48S
9MLjLxrAtRmXpqUWhp5LZ+GKjRNfSvUTnyergS/8uzh6uG0fsAnQ9li4XvHqonAi
c/mMG44tWTYclA4YBVFRLaAR5aDCYbIGZOf7qL79XkdNF3WMOLHPzzeGcZQ8Ch89
/Ox4KxFMfS3jLcn7uMSTGddX5ehjsbA+WvF9sBfeKkjYVzUhMIGJ/r7uNWOeHBwJ
aB4tVHBtGrGHVrstgeKIlpjyppv9qfHReOZG841Sf8XVY02kdX6jH4kwM1Wg11k=
=WLLq
-----END PGP SIGNATURE-----

