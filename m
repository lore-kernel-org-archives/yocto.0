Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E700E00B23; Thu,  4 Oct 2018 00:33:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (schnitzeltony[at]gmail.com)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com
	[209.85.167.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C4EFE00ADD
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2018 00:33:38 -0700 (PDT)
Received: by mail-oi1-f175.google.com with SMTP id a203-v6so6714576oib.0
	for <yocto@yoctoproject.org>; Thu, 04 Oct 2018 00:33:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=ETTQfzxHcaHyLANO4j051wySJAjlRjgiUecriadl27Q=;
	b=vAGeFcAOLX2CyHSZU9QoYXPqSzr8GvKlZ6OGEBRTT/Rzp6qxWPyJrxR/gnSmvGwNw4
	hwNKzXcz+LUqbb/wYMQjb4xgGrT7sFyCsGMD8PkBx6heKYCo4Qtal0d6I39YdExvkhT2
	XBlM9rLYu+LovG5Vooyb6ryY43Wl+DiLh0TfD5WpbJjCRK0/09Lr95uo3RAEdCtQnhLJ
	2GPTGwoeOzdUQIUfkEmLm8lHbMjar6MogaovWmU9+AoHZfvpLeC8WNddf/+yMrTGd3EA
	lmLIP2mvlIhbtPTpv7o9FTd8ShV80N9UXYWDmvF03yjwaHh9fKZ8SPXXDID7afTaQORK
	Ia9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ETTQfzxHcaHyLANO4j051wySJAjlRjgiUecriadl27Q=;
	b=IjxE00krxGG6CROeg6VawELT/xs4py6MNe46RdXxt36N9+gOaguPOya1xWhKQj4J53
	Tgj5jcXTsaHl9i+nb4+Npc6P1BR0siH5RG8QGUxpbHUYu+Mq9kbYk3KqKTlXHl7ffXyE
	RWg98GgXVQV0rjfLwvuPzPr/vkWsSs6VJtwQQ1jIiw1jj/tsItuwN9KUmK7TgSB8kXtz
	E9izsCkRH4X86UAepEPZZnnkNAueY06XcjDWgyRVZ3nRNWLOYJ5xnkDF5MyoVRML2xmZ
	E9YLOIuUElDj1072NxPHM9q9R4FqbgfR3T4AXCr0gC6XyOf2Oku2e2qIOgkBOqWuo/6+
	Qfmw==
X-Gm-Message-State: ABuFfogTuY3N7e1vLIAkgxxsIh/n1iy/kPyuxk8BbplYw3yntQOBTFcl
	zQvuKRrzd+pKl1Semcy8upNIwhkBpCrT6ubB8OWwWg==
X-Google-Smtp-Source: ACcGV63FhZkUslJFhEAH+W24yk9g1EXAe4C0G5wthURq0aB+kW9DNTR5nu4sUN0mG5Z8EzzAc+fLfe4KXBMHalDm79s=
X-Received: by 2002:aca:ed57:: with SMTP id
	l84-v6mr2598059oih.188.1538638417269; 
	Thu, 04 Oct 2018 00:33:37 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Thu, 4 Oct 2018 09:33:25 +0200
Message-ID: <CALbNGRRN7buT+0g7xQD_nqe=F80-sGjBuDwJs3hkSDG6K4aVuA@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Layerindex - actions required for deleted repos?
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
X-List-Received-Date: Thu, 04 Oct 2018 07:33:39 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I am cleaning my github and want to remove some repos. One of them is
meta-gumstix-community - it is not maintained any more.
This layer is listed in layer-index. Will it be removed automatically
or are there steps I have to take?

Thanks

Andreas

