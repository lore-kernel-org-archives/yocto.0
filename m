Return-Path: <ml@calgera.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C774E00D84; Mon, 13 May 2019 03:02:00 -0700 (PDT)
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
X-Greylist: delayed 356 seconds by postgrey-1.32 at yocto-www;
	Mon, 13 May 2019 03:01:58 PDT
Received: from t4v1.calgera.eu (t4v1.calgera.eu [80.208.226.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A82FE00D4E
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 03:01:58 -0700 (PDT)
Received: from [192.168.1.68] (bl18-13-242.dsl.telepac.pt [188.83.13.242])
	by t4v1.calgera.eu (Postfix) with ESMTPSA id 61C69CB417EF
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 10:55:59 +0100 (WEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=calgera.com; s=mail;
	t=1557741361; bh=7tHq++j/n6gzQHckhvkwHtwDKXIBbvcyjnIsI37syIk=;
	h=To:From:Subject:Date:From;
	b=Yy1PmTldrLeaxrdZC62WRiKuODJothf7LOpNeYWGFmYGqB+vZHZnvgv0bXXq3L6X7
	amogX7bnfyMGaq3rqB34afgQALJs8wQsxHCBRFpfalNrD61dvRIX/yB/TzV92M503x
	Us0qgoTU98CuFiBOo8TAPKQ9okjJAuOxGwqEctx3kOkrlUCENeYefb5C2PRysauGtc
	N0hohjrozkAatP2nTJWgeStexUx1Bc+eyKOUpkfPL4of6jA+0m06ALC4D954erTsJy
	BqfGUKr0Xj4wWNvoKfqJQbKYoS87+ZApgKrl2/YCi+f8Ejm9pLD9i8b0ZZFXHNuPud
	hSDGEI7pS/xpQ==
To: yocto@yoctoproject.org
From: Renato Caldas <ml@calgera.com>
Message-ID: <91a1ac3f-5f4c-c57b-2362-9800dd52e29e@calgera.com>
Date: Mon, 13 May 2019 10:55:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
Subject: openjdk-8-native fetch server error 500
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
X-List-Received-Date: Mon, 13 May 2019 10:02:00 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

I've been having trouble building openjdk-8-native over the weekend. 
Fetching is failing with 500 Internal Server Error.

I assumed it was just a weekend fluke, but it's still failing today:

--2019-05-13 09:45:27-- 
http://hg.openjdk.java.net/jdk8u/jdk8u/langtools/archive/34ee52bc68a4.tar.bz2
Resolving hg.openjdk.java.net (hg.openjdk.java.net)... 137.254.56.63
Connecting to hg.openjdk.java.net 
(hg.openjdk.java.net)|137.254.56.63|:80... connected.
HTTP request sent, awaiting response... 500 Internal Server Error
2019-05-13 09:45:30 ERROR 500: Internal Server Error.

ERROR: openjdk-8-native-172b11-r0 do_fetch: Fetcher failure for URL: 
'http://hg.openjdk.java.net/jdk8u/jdk8u/langtools/archive/34ee52bc68a4.tar.bz2;downloadfilename=openjdk8-172b11-langtools-34ee52bc68a4.tar.bz2;name=langtools;unpack=false'. 
Unable to fetch URL from any source.

Any advice on how to proceed?

Thanks,
-- 
Renato Caldas
Calgera, Unipessoal Lda.
Tel: +351 967 709 735

