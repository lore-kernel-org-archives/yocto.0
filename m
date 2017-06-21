Return-Path: <gandersson@genivi.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88C35E00BBD; Wed, 21 Jun 2017 13:42:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [38.101.164.234 listed in list.dnswl.org]
Received: from smtp1.genivi.org (smtp1.genivi.org [38.101.164.234])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D3DDE00B83
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 13:41:59 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.genivi.org (Postfix) with ESMTP id D13A8103F1D;
	Wed, 21 Jun 2017 13:41:58 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at smtp1.genivi.org
Received: from smtp1.genivi.org ([127.0.0.1])
	by localhost (smtp1.genivi.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xt9CD26jtHFW; Wed, 21 Jun 2017 13:41:57 -0700 (PDT)
Received: from linuxlap.lan (217-211-99-246-no148.bredband.skanova.com
	[217.211.99.246])
	by smtp1.genivi.org (Postfix) with ESMTPSA id C8996103E2B;
	Wed, 21 Jun 2017 13:41:56 -0700 (PDT)
Message-ID: <1498077710.8095.77.camel@genivi.org>
From: Gunnar Andersson <gandersson@genivi.org>
To: yocto@yoctoproject.org
In-Reply-To: <mailman.66388.1498056021.15860.yocto@yoctoproject.org>
References: <mailman.66388.1498056021.15860.yocto@yoctoproject.org>
Organization: GENIVI Alliance
Date: Wed, 21 Jun 2017 22:41:50 +0200
Mime-Version: 1.0
X-Mailer: Evolution 3.22.1 (3.22.1-2.fc25) 
Subject: Re: AppArmor
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
X-List-Received-Date: Wed, 21 Jun 2017 20:42:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit


Dominic ar Foll writes:

> I have been presenting AGLÂ  Smack based security model in quite a few 
> conferences over the world and not many people have come to me
> to talk about their "solution" working either on SE Linux or
> AppArmor. So far I have the impression that AGL is quite unique in
> its full integration of an LSM module in an embedded project.
>
> One of the member of Genivi Alliance (I believe it was Bosh with 
> its product called at the time eCore) told (about 3 years 
> that they would put their security framework which was based on 
> AppAmor, in the Open, but I have never eared about it since that

https://apertis.org

Code and docs came out around a year after the initial announcement under
the new name, so it has been published about 2 years or so.

Apertis builds with OBS, so it might not directly help the OP however.


- Gunnar

-- 
Gunnar Andersson <gandersson@genivi.org>
Development Lead
GENIVI Alliance



