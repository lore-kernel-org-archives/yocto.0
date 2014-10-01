Return-Path: <tomek82221@gazeta.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C17DEE0077F; Wed,  1 Oct 2014 13:36:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tomek82221[at]gazeta.pl)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qc0-f171.google.com (mail-qc0-f171.google.com
	[209.85.216.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9230E006DB
	for <yocto@yoctoproject.org>; Wed,  1 Oct 2014 13:36:49 -0700 (PDT)
Received: by mail-qc0-f171.google.com with SMTP id i17so1138265qcy.2
	for <yocto@yoctoproject.org>; Wed, 01 Oct 2014 13:36:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=iZ+stk68q6pimbSrdSSOASWfE3roBZnM3KrSrq/kbVc=;
	b=cmtoKdfo8i91yexVjNVBNJvgfdVrYnNwdheNp7E+bteUNA44MLdTAjauZ1nwCsoBmm
	/95nzxt2kt0gS8TqM3l4gg+Q4k/X35yc+HCGduKo4AKW/Gr9wLnW5OBYESvZr7whmC19
	IysZyf+X8hrvuBqk8ZtBEIXEya8y8ToxbIhc0AkjILGPIPs8ntrvOzJkyVCrj3SSbmjk
	3Sd2VStUyqWamMFAbtfVOU7194RbYSTtYHRYlL1+nENFth7T/C5kCOCv7CUjzMx9mA1o
	S1XfgZPL+a4Ws5qg8W/7OEsdaB42MpaIpVE04q+O0xVovmiva8fl29g1hdzM4HYGWag6
	DURw==
X-Gm-Message-State: ALoCoQmsaBNPocGzh1cO2l7sVYk48RYGtOLSYC6q+LxOEWM12CnyAAgz9acCh2Aaz3NTz8t0CaL1
MIME-Version: 1.0
X-Received: by 10.140.92.199 with SMTP id b65mr43260485qge.86.1412195808954;
	Wed, 01 Oct 2014 13:36:48 -0700 (PDT)
Received: by 10.140.16.15 with HTTP; Wed, 1 Oct 2014 13:36:48 -0700 (PDT)
In-Reply-To: <5429233B.4030108@galauner.de>
References: <CAKC+oqU3-ZQc34489BrPYOVr05JOke=dHUkCruPLfV+LODWDVQ@mail.gmail.com>
	<CAKC+oqUbbj9oEeekE6SSqDbyTGBJnwaGGYWgeLLRJKS+QB6aMQ@mail.gmail.com>
	<CAMCfZKHQV6X1rL5+jEhjbMF8BYWzEm6XrT9MiD_8gT_uyeokww@mail.gmail.com>
	<CAKC+oqX=KmSUcAR=2Ngvnimq46QKzAo=N+gaTw+M496c-QGW2w@mail.gmail.com>
	<CAMCfZKHegx_E0SK=k+7bAAomjNCRMzTcg-ji4tf8aSRuoziWWw@mail.gmail.com>
	<CAKC+oqUhVfbL-5aNO-xm9y=t-avHdke21X9Gt6N3ge_YkEuYfw@mail.gmail.com>
	<CAMCfZKF=bqW=8zWFgCdrUKGtvZt6PrMa7NOpVRAUxLL+Gm6BtA@mail.gmail.com>
	<CAKC+oqVYWwraL2V28RCq0ESVwnHB+SqeHZAhQuZ8Ev82R2UqHQ@mail.gmail.com>
	<CAMCfZKF8_BWneiG1PpYoRp16=dwQqw6w5v=-REQ7dKC1_4SSPw@mail.gmail.com>
	<CAKC+oqW74-KjA3gfy+U+8SmDiLRx3Fm9OFZjs-LOB1+ffq=eAg@mail.gmail.com>
	<CAMCfZKEA8romBZk+HRP0tUc3eFBHF-tS9=FVcnkMTts5EXGhAA@mail.gmail.com>
	<CAKC+oqUeHaL20vE86SMiM9toTsg3=q0h0dfMY1PhUfkoJsGWFA@mail.gmail.com>
	<CAMCfZKGTajCrqFyeOj9SXLqckK-pvh4vLi6Zc_QyFXubkUxHOQ@mail.gmail.com>
	<CAKC+oqWEzdLPS5+MgaXRa2g0erY6QU6Vjbbf=nOgQa0Du_pesw@mail.gmail.com>
	<5429233B.4030108@galauner.de>
Date: Wed, 1 Oct 2014 22:36:48 +0200
Message-ID: <CAKC+oqXvCzZNjdYy0J9Dh=0dc5vWKyFne9-fQwk+KSVHMJh1eA@mail.gmail.com>
From: TakkTakk <tomek82221@gazeta.pl>
To: Andreas Galauner <andreas@galauner.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 01 Oct 2014 20:36:53 -0000
Content-Type: text/plain; charset=UTF-8

No Andreas. I could not solve the problem.

2014-09-29 11:15 GMT+02:00 Andreas Galauner <andreas@galauner.de>:
> On 26.09.2014 15:17, TakkTakk wrote:
>> ok, I removed uEnv.txt, pressed the boot switch.
>> Starting kernel ... and hang.
>> why - "Image Name:   Linux-3.14.0-yocto-standard " ?
>
> I don't have a solution to your problem, but I can at least assure to
> you that you are not alone ;)
>
> I'm facing the same problem. I have a Beaglebone Black Rev. A6 which
> boots fine with Yocto 1.6 (no meta-beaglebone) and kernel 3.14.
> On another newer board with Rev. B it hangs after "Starting Kernel". I
> have no idea why.
>
> According to the elinux.org wiki the difference between Revision A and B
> is mainly another Version of the SoC (AM3358BZCZ100 in Rev. B and
> AM3359AZCZ100 in Rev. A).
>
> Did you manage to fix your problem by now?
>
> - Andy
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
TakTak

