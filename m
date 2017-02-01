Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C7CBE009BC; Tue, 31 Jan 2017 17:50:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EAD4E0095F
	for <yocto@yoctoproject.org>; Tue, 31 Jan 2017 17:50:51 -0800 (PST)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga104.fm.intel.com with ESMTP; 31 Jan 2017 17:50:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,317,1477983600"; d="scan'208";a="59760919"
Received: from shyuesio-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.185.240])
	by fmsmga005.fm.intel.com with ESMTP; 31 Jan 2017 17:50:49 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jakob Hasse <jakob.hasse@smart-home-technology.ch>
Date: Wed, 01 Feb 2017 14:50:47 +1300
Message-ID: <1676063.Csm5fO6USZ@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/5.3.3 (Linux/4.9.5-200.fc25.x86_64; KDE/5.29.0; x86_64; ; )
In-Reply-To: <2116568.gZo4XLsKAG@peggleto-mobl.ger.corp.intel.com>
References: <4bf25102-0b23-f4dd-7688-bebf892946ab@smart-home-technology.ch>
	<a68bf963-cd32-38b1-dbc6-557437b08113@smart-home-technology.ch>
	<2116568.gZo4XLsKAG@peggleto-mobl.ger.corp.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Empty "normal" package, filled dev and dbg packages, tr-50 lib
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
X-List-Received-Date: Wed, 01 Feb 2017 01:50:52 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, 1 February 2017 10:04:50 AM NZDT Paul Eggleton wrote:
> What you really need to do is look in the install destination directory -
> i.e. the "image" subdirectory under the work directory - you can find the
> latter pretty easily if you're unsure:
> 
> bitbake -e tr-50 | grep ^WORKDIR=
> 
> Where are files being installed under there? Are there any files there at
> all? Once we see what's there we can figure out what the fix will be.

Actually I just tried this here and it seems like libtr50 is not set up to 
write out standard versioned libraries - the authors have chosen their own 
scheme. To work around this you can add the following to the recipe:

FILES_SOLIBSDEV = "${libdir}/libtr50.so"
FILES_${PN} += "${libdir}/libtr50-*.so"

BTW, missing from your original email were the warnings / errors that you 
surely should have seen printed (assuming you haven't disabled them). For 
future reference those would have been useful to have.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

