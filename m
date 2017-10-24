Return-Path: <remco+vogels@beryllium.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C8C7E00CC1; Tue, 24 Oct 2017 06:12:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from treon.beryllium.net (treon.beryllium.net [5.135.167.165])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3907FE00C45
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 06:12:51 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by treon.beryllium.net (Postfix) with ESMTP id 9BD6F90E;
	Tue, 24 Oct 2017 15:12:50 +0200 (CEST)
X-Virus-Scanned: Ubuntu amavisd-new at treon.beryllium.net
Received: from treon.beryllium.net ([127.0.0.1])
	by localhost (treon.beryllium.net [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pSdD5mJ33cRy; Tue, 24 Oct 2017 15:12:50 +0200 (CEST)
Received: from webmail.beryllium.net (localhost [IPv6:::1])
	by treon.beryllium.net (Postfix) with ESMTP id EDAEC800;
	Tue, 24 Oct 2017 15:12:49 +0200 (CEST)
MIME-Version: 1.0
Date: Tue, 24 Oct 2017 15:12:49 +0200
From: Remco Poelstra <remco+vogels@beryllium.net>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Organization: Vogel's Products B.V.
In-Reply-To: <28f74eb6-1a5f-85db-ef26-5c6e4192ac63@linux.intel.com>
References: <4b2b01b16549fc2c8a21edf445b53ee0@beryllium.net>
	<28f74eb6-1a5f-85db-ef26-5c6e4192ac63@linux.intel.com>
Message-ID: <d291c19096ce2163a5fa4f1a52db7ed6@beryllium.net>
X-Sender: remco+vogels@beryllium.net
User-Agent: Roundcube Webmail/0.9.5
Cc: yocto@yoctoproject.org
Subject: Re: libcap compile error
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
X-List-Received-Date: Tue, 24 Oct 2017 13:12:53 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 7bit

Alexander Kanavin schreef op 2017-10-24 14:19:
> libcap 2.22 is very old, so your SDK must be using a very old release
> of Yocto (2014 or earlier). It's difficult to provide help for that.
> Perhaps you could address your question to the makers of the SDK and
> find out if they have anything more recent?

Thanks for your fast response. I've contacted them to see if they have 
an update.

Kind regards,

Remco Poelstra


