Return-Path: <andreas@galauner.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F6DBE00874; Mon, 29 Sep 2014 02:21:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 319 seconds by postgrey-1.32 at yocto-www;
	Mon, 29 Sep 2014 02:21:01 PDT
Received: from server.galauner.de (server.galauner.de [144.76.20.253])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C7CFE00869
	for <yocto@yoctoproject.org>; Mon, 29 Sep 2014 02:21:01 -0700 (PDT)
Received: from [10.23.35.232] (unknown [149.201.48.102])
	by server.galauner.de (Postfix) with ESMTPSA id C79E84001A
	for <yocto@yoctoproject.org>; Mon, 29 Sep 2014 11:15:39 +0200 (CEST)
Message-ID: <5429233B.4030108@galauner.de>
Date: Mon, 29 Sep 2014 11:15:39 +0200
From: Andreas Galauner <andreas@galauner.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAKC+oqU3-ZQc34489BrPYOVr05JOke=dHUkCruPLfV+LODWDVQ@mail.gmail.com>	<CAKC+oqUbbj9oEeekE6SSqDbyTGBJnwaGGYWgeLLRJKS+QB6aMQ@mail.gmail.com>	<CAMCfZKHQV6X1rL5+jEhjbMF8BYWzEm6XrT9MiD_8gT_uyeokww@mail.gmail.com>	<CAKC+oqX=KmSUcAR=2Ngvnimq46QKzAo=N+gaTw+M496c-QGW2w@mail.gmail.com>	<CAMCfZKHegx_E0SK=k+7bAAomjNCRMzTcg-ji4tf8aSRuoziWWw@mail.gmail.com>	<CAKC+oqUhVfbL-5aNO-xm9y=t-avHdke21X9Gt6N3ge_YkEuYfw@mail.gmail.com>	<CAMCfZKF=bqW=8zWFgCdrUKGtvZt6PrMa7NOpVRAUxLL+Gm6BtA@mail.gmail.com>	<CAKC+oqVYWwraL2V28RCq0ESVwnHB+SqeHZAhQuZ8Ev82R2UqHQ@mail.gmail.com>	<CAMCfZKF8_BWneiG1PpYoRp16=dwQqw6w5v=-REQ7dKC1_4SSPw@mail.gmail.com>	<CAKC+oqW74-KjA3gfy+U+8SmDiLRx3Fm9OFZjs-LOB1+ffq=eAg@mail.gmail.com>	<CAMCfZKEA8romBZk+HRP0tUc3eFBHF-tS9=FVcnkMTts5EXGhAA@mail.gmail.com>	<CAKC+oqUeHaL20vE86SMiM9toTsg3=q0h0dfMY1PhUfkoJsGWFA@mail.gmail.com>	<CAMCfZKGTajCrqFyeOj9SXLqckK-pvh4vLi6Zc_QyFXubkUxHOQ@mail.gmail.com>
	<CAKC+oqWEzdLPS5+MgaXRa2g0erY6QU6Vjbbf=nOgQa0Du_pesw@mail.gmail.com>
In-Reply-To: <CAKC+oqWEzdLPS5+MgaXRa2g0erY6QU6Vjbbf=nOgQa0Du_pesw@mail.gmail.com>
Subject: Re: yocto 1.6 - beaglebone black - cape manager
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
X-List-Received-Date: Mon, 29 Sep 2014 09:21:10 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 26.09.2014 15:17, TakkTakk wrote:
> ok, I removed uEnv.txt, pressed the boot switch.
> Starting kernel ... and hang.
> why - "Image Name:   Linux-3.14.0-yocto-standard " ?

I don't have a solution to your problem, but I can at least assure to
you that you are not alone ;)

I'm facing the same problem. I have a Beaglebone Black Rev. A6 which
boots fine with Yocto 1.6 (no meta-beaglebone) and kernel 3.14.
On another newer board with Rev. B it hangs after "Starting Kernel". I
have no idea why.

According to the elinux.org wiki the difference between Revision A and B
is mainly another Version of the SoC (AM3358BZCZ100 in Rev. B and
AM3359AZCZ100 in Rev. A).

Did you manage to fix your problem by now?

- Andy


