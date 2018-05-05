Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDBB2E00BFD; Fri,  4 May 2018 17:27:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	SUBJ_ALL_CAPS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  1.5 SUBJ_ALL_CAPS Subject is all capitals
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.41 listed in list.dnswl.org]
Received: from mail-pg0-f41.google.com (mail-pg0-f41.google.com [74.125.83.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60161E009DF
	for <yocto@yoctoproject.org>; Fri,  4 May 2018 17:27:22 -0700 (PDT)
Received: by mail-pg0-f41.google.com with SMTP id p9-v6so13558918pgc.9
	for <yocto@yoctoproject.org>; Fri, 04 May 2018 17:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=AxGuZJr3dh3P6b8pRmCoN/4wIDlupj3flo1wcU8AmHs=;
	b=Nt5K9Dm4OESwcnTHaI8naRDCPXnHMpDoCYx4M4u8q9XKfnBzEEBmH9oIoKknmw4F4W
	NFPV0navgJeAZGurX4PtEU28rYv2T4fExjskEKeDCVrMTdarQVSJekCXhlrdlVEO6ip/
	nCAgFi6Sn5ZHf0knF9pNTsXLJa0OMEd0WtEbHZ6+j497Kat8tYlJd/SuXkR/7ETGN4X/
	os/9yORNaejoDe9r2PDXld99owEIFQMe2KaQ8bEaxLFCGxAGIZ1qKJhiee89jDq58d1L
	2bU1kluEbFVoS69mXn9HbVlvMa9GM7qo4PLZH7mwPHuYDt3vWj+hfpTNFW8xmiIijOaD
	RlNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=AxGuZJr3dh3P6b8pRmCoN/4wIDlupj3flo1wcU8AmHs=;
	b=p85smeI/5kCfJMYkgu+6iqHIUAiTf1l8djJ2zEim71y43YYAOj7toe1jhMaqTWEhd1
	45RzjSm4b+KYtd/eAf235N8WJmbxTCDoB9INf6und9LL+wcCVW8EQPvlKuQnQgjenhSl
	VOWzyb/iQai0E60JGNJynoP2dFuwAeCahsDtf2CLEUfcqwljY6MUSP23KbwXSEbrcQ7S
	3WzHyv+btaQSLcZ5Y+RGjmNX2RrPjkSLmaN5H2Z/PoaMN2vCc/6rJwHkpNP9JE5aD898
	OgNrPA9vx1f0pP2XWYmk2vVU+ruLtEf2bhKR2q2H+Q6Gosvmg2UHSI46u2dHPkqtUaeG
	BrrQ==
X-Gm-Message-State: ALQs6tDzu/pd9sVgtcHsvqj9Ia4fAq3HWDTgnmbOIcILX6OA2R25bJgJ
	mFxO6c0OnpEhzbi9PRr0VlfiTrldYPTSGsxrNVM=
X-Google-Smtp-Source: AB8JxZq42GEUbRqo12L+xP755rSGzUp/UFXgzP2udQ0QR39Pr6JCupkn9V5RfgP82DcsP40EJT3MrFFFDD+bZlz8BEY=
X-Received: by 2002:a17:902:59ce:: with SMTP id
	d14-v6mr30353800plj.253.1525480042359; 
	Fri, 04 May 2018 17:27:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.236.159.145 with HTTP; Fri, 4 May 2018 17:26:51 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 4 May 2018 17:26:51 -0700
Message-ID: <CAMKF1spa1bbrUjQWbhdUw3C4Cxu99fU=Be3sEm+SYFNq_oxEKw@mail.gmail.com>
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>, 
	openembeded-devel <Openembedded-devel@lists.openembedded.org>, 
	Yocto Project <yocto@yoctoproject.org>
Subject: [RFT] GCC 8.1
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
X-List-Received-Date: Sat, 05 May 2018 00:27:23 -0000
Content-Type: text/plain; charset="UTF-8"

Hi All

As you might have noticed that gcc 8.1 was released this week, I am
calling out for some testing help on testing branch so we can weed out
issues you might see in your setups. so if you have your
builders idling over weekend, then you know what they can do this weekend :)

Highlighted changes are

https://gcc.gnu.org/gcc-8/changes.html

and porting doc is

https://gcc.gnu.org/gcc-8/porting_to.html

The branch is here

http://git.openembedded.org/openembedded-core-contrib/log/?h=kraj/gcc-8

Its uptodate on top of current master oe-core

May fourth be with you !!

Cheers!

-Khem

