Return-Path: <costamagnagianfranco@yahoo.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8007AE00B67; Thu, 24 Aug 2017 03:14:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (costamagnagianfranco[at]yahoo.it)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [212.82.97.72 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm29-vm3.bullet.mail.ir2.yahoo.com
	(nm29-vm3.bullet.mail.ir2.yahoo.com [212.82.97.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9ECC4E00C97
	for <yocto@yoctoproject.org>; Thu, 24 Aug 2017 03:14:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.it; s=s2048;
	t=1503569666; bh=qIk+qLElA8gIEshB4CPVLOXyBYLhT9iFTagxGmuRSRY=;
	h=To:References:Subject:From:Date:In-Reply-To:From:Subject;
	b=SlKilxB3Wzq1l5Nz5Uue7PiELeJ73quNRC8mr+QFmXAAK5MxxVjm8JpR9wIaqDf8iBwGlxlCifDTi6wateP7WkelDFVmvOtpfKidrJlhrGeM80HA7fT4JgCTw77SXqRAERUdVv6GZBSTAaWJwBvelU/Sf6ooAMZgmF99+X3s3rBE11XxK36G2KTyZSRRV6WnXz9cXSdttTYg53HnAeelXSlRmxBB/foDrnf6fd2KtLDdKAzjfHfh5Q+lNgN9qeQ3vE4EVzTsgb92yYrcB5GRP2iAwJMRLjfZdSQG/UE4m9Ki9M8cnXHe2C3tYA5Tf/Fz6wyJNd1X25RKiFzZyDovXQ==
Received: from [212.82.98.124] by nm29.bullet.mail.ir2.yahoo.com with NNFMP;
	24 Aug 2017 10:14:26 -0000
Received: from [46.228.39.75] by tm17.bullet.mail.ir2.yahoo.com with NNFMP;
	24 Aug 2017 10:14:26 -0000
Received: from [127.0.0.1] by smtp112.mail.ir2.yahoo.com with NNFMP;
	24 Aug 2017 10:14:26 -0000
X-Yahoo-Newman-Id: 618564.18003.bm@smtp112.mail.ir2.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: aGnKn0EVM1kVYMRuun8SMM1jejH9O5aYetPQGT30b40ppCp
	bd5MiLtzuYBW5jNzZeqmR5TS_hE1bpEmW.E80gLkrh_8xvWCsJ9X8SN9GlBT
	HJxYm9RPvCzdilseQupjU6Krq1R_s7NoQflYEdcKG0P7WtXQV6.9G_wEgsFr
	qu0u2HSv3wXlLcNPaGUjashi14lyUN6k6h.d2LkqiUviH4ozaNVC03Ps1MX8
	4Aox.Hn8.hianH6va1X4Bom7dftu.jZlrZsEP7O2pd1uvxQtpjGhMQ5UqqhG
	Mlww5MP3GZ23Qll6zG6N2F97HGpH3aEvqGADoAuPVHCs8yS8rV62IIMJG8j9
	DwMbdKiErJ4oqPEgFVCntKGLwVELa4BJo75yDLaVVK44mpfVjXkgxIbsQ8Yx
	cEiaMZOGy.oCcFFvFb4_tihyNgGAorReOo8o7Q8LwcFoC1FEjncdBS0S95Zj
	oQOMTqeNFFGacz0yI0DAsPMBqUPYLM3xB2.AH2d5qegFasQhj7VgpprgKLkD
	xHCUlY94YEw--
X-Yahoo-SMTP: t31zqrOswBAbEww2oEk_YrQwXwiWGJ5qCQ6vhBCF7lqk
To: yocto@yoctoproject.org
References: <CAJTo0LbYyEQz0UW8MfDXVa1huwXZ=1cgr6Js_HC=Km1dyuGGtQ@mail.gmail.com>
From: Gianfranco Costamagna <costamagnagianfranco@yahoo.it>
Message-ID: <3cea8d48-c280-c944-9979-90a1d2056220@yahoo.it>
Date: Thu, 24 Aug 2017 12:14:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0LbYyEQz0UW8MfDXVa1huwXZ=1cgr6Js_HC=Km1dyuGGtQ@mail.gmail.com>
Subject: Re: [feature request] avoid getting the server stuck because of high "-j" value
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
X-List-Received-Date: Thu, 24 Aug 2017 10:14:35 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Thanks you all for the valuable answers!

cheers,

Gianfranco

