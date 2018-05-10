Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C615BE00C25; Thu, 10 May 2018 11:23:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jpewhacker[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1519E009BC
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 11:23:29 -0700 (PDT)
Received: by mail-it0-f53.google.com with SMTP id 144-v6so4227159iti.5
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 11:23:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:subject:to:date:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=Jo4uMyvW3U4OZKUO9an/26ow+XtO6EFDMnTQW5IBkxc=;
	b=iAoSjjtUjPPAH9RLHxvpi6tNoEw18/dvyv9ybtvjJiUbQCeA9rCoqx5HP39azTVvqB
	X3D8TGKjc2vqjvFdBvTs1J1cfJiev0IwwcBHNK/Goqj5T44Eq24xf2p+vWjRS1neZGvX
	Pnt1XMv3/RSm4s0WX+ZhGZom1kyXM57i+6TM84L6GcdXcvnXZOuLB+xC7N3eH3sxKCXL
	aqdGtrTNOCgnFo1LoHC05Pb3FtifbPbXxe7N+FalWqRqsHAIk40AmiDBJMjDgAmexJ6K
	ofp/My5/nLyhkXfZtkEX5iuz4vfbwte/7E11ezVYogTjKZQZqLqq+w2YAmjegynK8GQK
	+r5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:subject:to:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=Jo4uMyvW3U4OZKUO9an/26ow+XtO6EFDMnTQW5IBkxc=;
	b=KuiGCsVkrWvmPFnZj2RHB2Bx3ht46FNCvRdg5fnWXH64bW3zZ+tDlbjGCvHN87fw2R
	d5JML1xC0zzZlP53A5hGoZqift8ZW7bPCXyCORMdaO0acp6Y2pqTtoqHYicDH10sbfoM
	+XyTkNRl0X3YiwwLBaUzo5ldp02QmdOyYY5mf+TcrwMJJ1ktJHDyInpa7qQceI9uMU7W
	0AwuX7kbx41QIpZuEuYEs8KMA9h9IxzAqDHRjyrrALw646pLse2AvXGNmrb65kFfV0Gq
	1UfR1ErA3YCcdEmpsP0Iii9FcuxvgTWPvvTEXXEteoU/K2AmUImuuWzc+i3MNjMTrsKD
	K/CA==
X-Gm-Message-State: ALKqPwfntUuzp5ZIsrS7V9w9GRNdyBSgPkIsCSbBLDNfMWnN9zQ0bhL5
	l+23De7WHyKGveQakyp8jtE=
X-Google-Smtp-Source: AB8JxZr7YsV7YmcpMX5+Z6jgs32oLVwUmzZYykGaFqPqxAYAOIk+N23oGTcppo1jIZzBVxrxdxP8Kw==
X-Received: by 2002:a24:b106:: with SMTP id o6-v6mr84052itf.15.1525976608814; 
	Thu, 10 May 2018 11:23:28 -0700 (PDT)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.googlemail.com with ESMTPSA id
	d37-v6sm672355ioj.33.2018.05.10.11.23.28
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 10 May 2018 11:23:28 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Message-ID: <23b7ca2e08a7e413c3b5dffe7331c36973491f10.camel@gmail.com>
To: "Jolley, Stephen K" <stephen.k.jolley@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, OTC Embedded All <otc.embedded.all@intel.com>
Date: Thu, 10 May 2018 13:23:27 -0500
In-Reply-To: <9ADD3FDE8B189B4AA2F8A3C711F8155EC72FB60E@fmsmsx111.amr.corp.intel.com>
References: <9ADD3FDE8B189B4AA2F8A3C711F8155EC72FB60E@fmsmsx111.amr.corp.intel.com>
X-Mailer: Evolution 3.28.1 (3.28.1-2.fc28) 
Mime-Version: 1.0
Subject: Re: Yocto Project Technical Team Meeting
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
X-List-Received-Date: Thu, 10 May 2018 18:23:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Is the plan to do this the 1st and 3rd Tuesday of every month?

On Thu, 2018-05-10 at 17:41 +0000, Jolley, Stephen K wrote:
> Yocto Project Technical Team Meeting
> Location:	Bridge Info Enclosed
> Start time:	Tuesday 10:00 AM
> End time:	Tuesday 10:30 AM
> 
> We encourage people attending the meeting to logon and announce
> themselves on the Yocto Project IRC chancel during the meeting
> (optional):
> 
> 
> Yocto IRC: http://webchat.freenode.net/?channels=#yocto
> 
> IRC Tutorial: http://www.irchelp.org/irchelp/irctutorial.html
> 
> https://www.yoctoproject.org/monthly-technical-call/
> 
> 
> Conference Details:
> 
> Company:           WIND RIVER SYS
> 
> - dial into: 1-800-262-0778/404-397-1527
> 
> - enter the bridge number: 88748961#
> 
> 
> The international numbers are:
> 
> United States Toll      404-397-1527
> 
> US & Canada Toll Free   800-262-0778
> 
> Albania dial 008000010+ 8558142509
> 
> Angola dial 808000011+  8558142510
> 
> Anguilla Toll Free      18003004779
> 
> Argentina Toll  +541159844583
> 
> Argentina Toll Free     08004446354
> 
> Australia Toll  +610386580431
> 
> Australia Toll Free     1800347095
> 
> Austria Toll Free       080088668498
> 
> Bahamas Toll Free       18003890740
> 
> Bahrain Toll Free       80006770
> 
> Bangladesh dial 1570011+        8558142505
> 
> Barbados Toll Free      18002070056
> 
> Belarus Toll Free       882000110813
> 
> Belgium Toll    +3227925498
> 
> Belgium Toll Free       080029896
> 
> Belize Toll Free        18000130907
> 
> Bermuda Toll free       18002072792
> 
> Botswana Toll Free      002698003004981
> 
> Brazil Toll     +5501149497489
> 
> Brazil Toll Free        08008919885
> 
> British Virgin Islands Toll Free        18002075710
> 
> Brunei Toll Free        8014373
> 
> Bulgaria Toll   +359024916371
> 
> Bulgaria Toll Free      008001201170
> 
> Cambodia Toll Free      1800209578
> 
> Cambodia Toll Free      1800209361
> 
> Canada Toll     +14169810101
> 
> Cayman islands Toll Free        18444305771
> 
> Chile Toll      +56442080836
> 
> Chile Toll Free 12300206143
> 
> China Toll Free 4000342070
> 
> China Toll Free 8008709853
> 
> China Toll Free 4008877140
> 
> China Toll Free 8008768605
> 
> Colombia Toll   +5714864720
> 
> Colombia Toll Free      18000129671
> 
> Costa Rica Toll 40017415
> 
> Croatia Toll    +38517776838
> 
> Croatia Toll Free       08009975
> 
> Cuba dial 2935+ 8558142540
> 
> Cyprus Toll Free        80096877
> 
> Czech Republic Toll Free        0800701476
> 
> Denmark Toll    +4536927940
> 
> Denmark Toll Free       80251209
> 
> Dominica Toll Free      18003004904
> 
> Dominican Republic Toll Free    18887514588
> 
> Ecuador Toll Free       1800000314
> 
> Egypt Toll Free 08000009493
> 
> Estonia Toll    +3726867092
> 
> Estonia Toll Free       8000100708
> 
> Finland Toll    +3580923195770
> 
> Finland Toll Free       0800774585
> 
> France Toll     +33272249926
> 
> France Toll Free        0800947235
> 
> French Guiana Toll Free 0800910113
> 
> Germany Toll    +4930700150733
> 
> Germany Toll Free       08007238960
> 
> Ghana dial 0242426004+  8553944954
> 
> Greece Toll     +302111983414
> 
> Greece Toll Free        0080016122059757
> 
> Grenada Toll Free       18003004905
> 
> Guatemala dial 0019999190+      8553944634
> 
> Honduras Toll Free      80027919493
> 
> Hong Kong Toll  +85230507540
> 
> Hong Kong Toll Free     800961673
> 
> Hungary Toll    +40017789124
> 
> Hungary Toll Free       0680015494
> 
> India Toll      +914466747384
> 
> India Toll Free 18002090252
> 
> Indonesia Toll Free     0078030114912
> 
> Ireland Toll    +35316539376
> 
> Ireland Toll Free       1800948436
> 
> Israel Toll     +97233762260
> 
> Israel Toll Free        1809458778
> 
> Italy Toll      +390200617793
> 
> Italy Toll Free 0800187234
> 
> Jamaica Toll Free       18002196874
> 
> Japan Toll      +810345786573
> 
> Japan Toll Free 0120525303
> 
> Jordan Toll Free        080022545
> 
> Kenya Toll Free 0800723004
> 
> Latvia Toll Free        8002601
> 
> Lebanon dial 01426801+  8558142511
> 
> Lithuania Toll  +37052054804
> 
> Lithuania Toll Free     880031895
> 
> Luxembourg Toll +35228264835
> 
> Luxembourg Toll Free    80023986
> 
> Macedonia Toll Free     080094382
> 
> Malaysia Toll   +600377248228
> 
> Malta Toll      +35627781438
> 
> Malta Toll Free 80062568
> 
> Martinique Toll Free    0800910664
> 
> Mauritius Toll Free     8020440157
> 
> Mexico Toll     +52015515001053
> 
> Mexico Toll Free        018002530547
> 
> Moldavia Toll Free      080062305
> 
> Monaco Toll Free        80094215
> 
> Morocco dial 002110011+ 8558142537
> 
> Netherlands Toll        +310107994621
> 
> Netherlands Toll Free   08000200244
> 
> New Zealand Toll        +64042806288
> 
> New Zealand Toll Free   0800441743
> 
> Norway Toll     +4721034359
> 
> Norway Toll Free        80058604
> 
> Oman Toll Free  80074218
> 
> Pakistan Toll   +924238108753
> 
> Panama Toll     +5078323301
> 
> Panama Toll Free        008002267987
> 
> Paraguay Toll Free      009800110233
> 
> Peru Toll       +51017017728
> 
> Peru Toll Free  080078493
> 
> Philippines Toll        +6322312145
> 
> Philippines Toll Free   180011101073
> 
> Poland Toll     +480223060270
> 
> Poland Toll Free        800080328
> 
> Portugal Toll   +351707201563
> 
> Portugal Toll Free      800788629
> 
> Qatar Toll Free 00800100142
> 
> Romania Toll    +40215291752
> 
> Romania Toll Free       0800400068
> 
> Russia Toll     +74993504823
> 
> Russia Toll Free        81080026895011
> 
> Saudi Arabia Toll Free  8008442574
> 
> Saudi Arabia Toll Free  8008500370
> 
> Senegal dial 800103072+ 8558842521
> 
> Serbia Toll Free        0800190975
> 
> Singapore Toll  +6563494173
> 
> Singapore Toll Free     18005792882
> 
> Slovakia Toll   +4210268622038
> 
> Slovakia Toll Free      0800606692
> 
> Slovenia Toll   +38618281644
> 
> Slovenia Toll Free      080081438
> 
> South Africa Toll       +270214277972
> 
> South Africa Toll Free  0800994623
> 
> South Korea Toll        +827074882482
> 
> South Korea Toll Free   00308132034
> 
> Spain Mobile    900-828-467
> 
> Spain Toll      +34935451755
> 
> Spain Toll Free 900828467
> 
> Sri Lanka Toll  +94720910363
> 
> Sweden Toll     +460114966619
> 
> Sweden Toll Free        0201409738
> 
> Switzerland Toll        +41434569403
> 
> Switzerland Toll Free   800740310
> 
> Taiwan Toll     +8860287933075
> 
> Taiwan Toll Free        0800868159
> 
> Thailand Toll   +6621040574
> 
> Thailand Toll Free      0018001562038778
> 
> Trinidad and Tobago Toll Free   18002038778
> 
> Turkey Toll     +902129003723
> 
> Turks & Caicos Toll Free        18003000086
> 
> UK Toll +442030144000
> 
> UK Toll Free    08005283819
> 
> Ukraine Toll    +380893240452
> 
> Ukraine Toll Free       0800503625
> 
> United Arab Emirates Toll Free  800035703321
> 
> Uruguay Toll Free       00040190461
> 
> Venezuela Toll Free     08001004189
> 
> Vietnam Toll Free       12065242
> 

