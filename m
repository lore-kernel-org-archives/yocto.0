Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 067E4E00901; Mon, 15 Oct 2018 03:11:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
	[209.85.128.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EC0EE008D7
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2018 03:11:22 -0700 (PDT)
Received: by mail-wm1-f54.google.com with SMTP id r63-v6so18278710wma.4
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2018 03:11:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=4boaOJFyOhZZXtwhAbVX3tfDZxcevgXDLHli8Yjz2/M=;
	b=rmO93Q43XKl9pujzIS+Ke9736utKChDyZRYL4SbqJG0c4/x1POVOx7/7dXZJ97Jhg7
	1UCx+JzWzWLQ1TNEyYwZ7GqRISYAUtqykcBpW7mUJqpXmD4Tekeo2Mi/iDMBl0/NhjFa
	yPL70llxPXFCClmzboGqKIM9WhhUEtuWoUYyl+tgDfQBDUS+q6P+THgXInu4EUyw/eeS
	2EIYMu6qHxx/2Tbm0wN+o50F7sJDL/96ke4Cww4RLkJq0IkPxHCP+yPsmxGOfXRLQ8x+
	9juaVWFzozkiGgPAvc8ZO1nduqoeLMoQQowws3hmW28UCJGxjgrSxUytmDs3L3Ddzq2s
	EmnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=4boaOJFyOhZZXtwhAbVX3tfDZxcevgXDLHli8Yjz2/M=;
	b=qVdI9wrIt4gJXksxVNqtdN0+wdhjawWlCYl8Qgw1jq8oTZhZ9OXeW/5X2CigR3Pug+
	m2dp2icaxRVVdhmOP9uGBbC8PA+4PtxX1dYXr7YJFI9PMVKURCw3bOTa+7KdQko/lBhr
	VBoWG5TJiT+x6f69rm8NjWcs87yGzrIVEtVYZmwyrzjX4RVePvNJH/9vT7vnRNM0lfum
	jeXT7Ez7tn2DZmP9HHuokeGrXJX2lKrrM5s8frQmX/4ea0carGQ4Qv6x+/14XyjHivPC
	RDt1IVuFKTDvC7VbPRXfjPFrxk+27miVSDUCW3yI1zPABEfcxZeCZoVCTqhbHGoaVNKL
	paJA==
X-Gm-Message-State: ABuFfojDb4jSzqRHbSfn0Y/AAha/ruheZWdQNDeO+T0DtERDDyOYgbqn
	eT3cFMNNJ0QoPp908C5v7ODiKVrJbNRqhmqBQOwMvufu7QI=
X-Google-Smtp-Source: ACcGV60/jUXPKfsTG28H2BBFOSH8KrL9CrYGmDJmxfoI2coXU5rJvSjnPQB2CTCCjQk09qBoYidmID+yxHE2SGOnVgE=
X-Received: by 2002:a1c:6744:: with SMTP id
	b65-v6mr12974577wmc.98.1539598281073; 
	Mon, 15 Oct 2018 03:11:21 -0700 (PDT)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Mon, 15 Oct 2018 12:11:09 +0200
Message-ID: <CAAfyv36x=np5fcK96ozCHoXe-CFjvpMTdJDA4shpXBMRvd10Hg@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: permissions when installing scripts
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
X-List-Received-Date: Mon, 15 Oct 2018 10:11:23 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I have package which contains bunch of scripts (with +x flag for
user). When installed in do_install method (simply by copying them to
destination) they loose +x flag. I know copying directly is not best
approach but there exists better way how to keep scripts permissions
like in repo (except calling install -m 755 for all of them)? Thanks.

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

