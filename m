Return-Path: <fabien.lahoudere@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD391E00A9C; Tue, 10 Oct 2017 13:01:47 -0700 (PDT)
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
X-Greylist: delayed 427 seconds by postgrey-1.32 at yocto-www;
	Tue, 10 Oct 2017 13:01:44 PDT
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44CB8E006CA
	for <yocto@yoctoproject.org>; Tue, 10 Oct 2017 13:01:44 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aragua) with ESMTPSA id 88ECA26D94F
Message-ID: <1507665273.9509.20.camel@collabora.co.uk>
From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
To: yocto@yoctoproject.org
Date: Tue, 10 Oct 2017 21:54:33 +0200
In-Reply-To: <9615587B-3637-4ABB-BB94-9C9416352354@cisco.com>
References: <9615587B-3637-4ABB-BB94-9C9416352354@cisco.com>
X-Mailer: Evolution 3.22.6-1 
Mime-Version: 1.0
Subject: How to use same user in two recipes?
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
X-List-Received-Date: Tue, 10 Oct 2017 20:01:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hello

I want to use the same user in two different recipe. 
I create the user in recipe A.bb and it works fine.
Now I want to use the same user in B.bb so I add DEPENDS = "A" thinking that sysroot will be
populated with A.bb users.

But when I bitbake the recipe, user is not found. 
I conclude that I have to use USERADD_* in each recipe, right?

What happen if I use different USERADD_PARAM_${PN} in each recipe?

I also try to use EXTRA_USERS_PARAMS but without success?

Is there a way to populate sysroot with users?

Thanks

-- 
Fabien

