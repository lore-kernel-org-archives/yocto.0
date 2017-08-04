Return-Path: <locutusofborg@debian.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5F80E00C45; Thu,  3 Aug 2017 23:49:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FORGED_MUA_MOZILLA,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [87.248.110.234 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  2.3 FORGED_MUA_MOZILLA Forged mail pretending to be from Mozilla
Received: from sonic317-36.consmr.mail.ir2.yahoo.com
	(sonic317-36.consmr.mail.ir2.yahoo.com [87.248.110.234])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AF8EE00C43
	for <yocto@yoctoproject.org>; Thu,  3 Aug 2017 23:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1501829341; bh=5fsiyx0zrttgdFdb0rY92z7UZdcnWVU2v32zxuUXbis=;
	h=Date:From:Reply-To:To:Subject:References:From:Subject;
	b=NvKWmv81332KPRSnaCG2HxEapcYKWV1lAS+YNW3QhOAaC4Ae6IAoNGS9ykRxjF1egoGTtwAmKVVW04CTPekjhmSJe2uwtxfoNZHDD44tvyEo6K/Z/1OEy5zGCAMijg12pu5K5NzjZ2/mok3f1/7HTiOuFUw/n010BG/OreZ+zS5VhPRVbxCY/KBC+lBvsbEIVfcsOs2Vh7JdIa/UfRRJ2OLDn6wvgFyc9chFH/Mzz1yVrT2+QCJ9AUTMR/lov4C+iBZq8+B+WDl1PD5w6BUJNkBoLVgzBEZkGR0wGtOUAqih4ySqaqDVfEFAVld8KqhPMOcOUSh3adf/Y6EJjbxrrg==
X-YMail-OSG: dRPqOfMVM1ljjE3q53kI2jV4sXxPiB8yXECmkTnaQF_HlGQHKNvcW93vGNMLvVQ
	rE9lFhhqXiZiBqQ7hqjufyoGtknCz_aFr9eup6v0AofQcotCpC_Jvssc28Y1m9I2YHt0OV_ujobx
	9BYH27tExUFFKvDP89VuTwp7qs_IOMQ3Aq.o.HAcUX3IvdlJoWtUa2BraIqU2dAyHPIEmJvbk_Nn
	QD8xEzqjlOY4nGw7f5kwULm4v04vU4NogwUDbw8sDcQiok9lGSUIUBLnDgTk81uhfS6BTCpMoNsn
	fKwK2gzxmeoOMNEHjKP5BRMNbZjU4J3ly6RLSfzbRSRF3z659bInWWbeBdFMFBB0jDXJ6lbO5.EP
	7G8ioJSB.322UQstCTnqdg2e8P5LeiJ7nEm9Zmwi7BmLZSkT1PRo65I1.YfDpSAKIViNHXJCQMCc
	RNJDGVGTxsk13hujheq90HQrOig0fvczNRab5xxCKZffdKV6vgWgRdt6aQ8GolMAew421RoeIAjp
	XYobuwARoSG.Otv3WtPjYaB1NB3OGwAoWi.POaBTwtQ--
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic317.consmr.mail.ir2.yahoo.com with HTTP;
	Fri, 4 Aug 2017 06:49:01 +0000
Date: Fri, 4 Aug 2017 06:48:56 +0000 (UTC)
From: Gianfranco Costamagna <locutusofborg@debian.org>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1280838053.2327487.1501829336917@mail.yahoo.com>
MIME-Version: 1.0
References: <1280838053.2327487.1501829336917.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.10181 YahooMailNeo Mozilla/5.0 (X11; Ubuntu;
	Linux x86_64; rv:54.0) Gecko/20100101 Firefox/54.0
X-Mailman-Approved-At: Sun, 06 Aug 2017 16:56:47 -0700
Subject: feature request: avoid getting the server stuck because of high "-j" value
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Gianfranco Costamagna <locutusofborg@debian.org>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 04 Aug 2017 06:49:04 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello Yocto developers!


recently I found a really nice make feature, that tunes at runtime the number of parallel
execution jobs, according to the current system load [1].

I think such a feature would be really nice on server were multiple yocto builds are run in parallel,
and when people forgets to put the correct number of parallel build jobs.

E.g., a number around CPU+1 is nice, but sometimes CPU*2 gives better results.
Unfortunately if somebody else starts a build in parallel, that CPU*2 locks really hard the server, specially
when building qt-based projects (e.g. qtbase, qtwebengine).

Tuning such value at runtime will probably end in faster compilation time and lower swapping on remote
servers.
(I would think also to something that checks the amount of free RAM)


is such a feature feasible?

[1] https://www.gnu.org/software/make/manual/html_node/Parallel.html#Parallel

thanks,

Gianfranco

