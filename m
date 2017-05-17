Return-Path: <romain.perier@collabora.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D975E009C2; Tue, 16 May 2017 23:48:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99955E00901
	for <yocto@yoctoproject.org>; Tue, 16 May 2017 23:48:41 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: rperier) with ESMTPSA id 4790B260301
To: Trevor Woerner <twoerner@gmail.com>, ayaka <ayaka@soulik.info>
References: <20170516141808.26629-1-ayaka@soulik.info>
	<20170516141808.26629-2-ayaka@soulik.info>
	<20170516184422.GA1041@linux-uys3>
From: Romain Perier <romain.perier@collabora.com>
Message-ID: <c1ba3232-e5d0-0a15-c33f-8218d652ebee@collabora.com>
Date: Wed, 17 May 2017 08:48:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <20170516184422.GA1041@linux-uys3>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH v3 1/3] recipes-multimedia: add Rockchip MPP library
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
X-List-Received-Date: Wed, 17 May 2017 06:48:49 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hello,


Le 16/05/2017 à 20:44, Trevor Woerner a écrit :
> Randy,
>
> Neither of the issues that were identified in your v2 of this patch were
> addressed in this v3. Namely:
>
> 1) please use your real name (first, last) in your signed-off-by line
> 2) please don't create a package from this recipe whose name doesn't include
>    the recipe name (i.e. please don't create "rockchip-vpu" from a recipe
>    "rockchip-mpp"), suggestions were provided
>
> Aside from the email headers and the version of git used, this patch is
> identical to the v2 you submitted.
>
> Best regards,
> 	Trevor
+1

And please, include a changelog in your new version, at least in the
cover letter, something like:

Changes in v3:
- Item1 fixed
- Item2 fixed

Changes in v2:
- Item1 fixed
- Item2 fixed


Thanks,
Romain

