Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2162E00BF3; Tue,  1 Aug 2017 15:09:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f53.google.com (mail-vk0-f53.google.com
	[209.85.213.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49E16E00BB6
	for <yocto@yoctoproject.org>; Tue,  1 Aug 2017 15:09:49 -0700 (PDT)
Received: by mail-vk0-f53.google.com with SMTP id u133so11537030vke.3
	for <yocto@yoctoproject.org>; Tue, 01 Aug 2017 15:09:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=9YJcb+WlDK8Q2eFUSr924mtp5BlexbD+mL6QZ/6qdaU=;
	b=irAqhULHNbmM01XEkIR+2Zb1yW5VeX3JW43oH6Ca5G+pZpqvEPZzrBPubV+SJ45RQV
	i0DymXMjba1qFwOs0eVxdG0TKmPr3gwqhzoineYX4eNbhs03vs4lWg/0UUZ+WmOhSNKi
	somwstqZJQjmwWCPBJYWWNe5vCzk4L7RZ0JlnahiIzmSIWmFxpdLBJRi/NUCikpexC7s
	+Pa5CVTKRtFVSfYG57nW+UC9rnNfdwZk1PD8bo33IckNG9/UoPFwsfATkV58rMPe3b4s
	LJ1jCMXTzaR6iOcyaU0At/WrJPpseD+yyKSr138TaYXCYkL2qgF9DK7uV0IfP1voYGNh
	pSkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=9YJcb+WlDK8Q2eFUSr924mtp5BlexbD+mL6QZ/6qdaU=;
	b=SN7MwBrMK9ghxvEuSrOGda3Po8QtVhXDrQdvwYZRhfZEj+dDj9BfDfvryg7L2uE4fQ
	cZU41pjVJsFh+5fifrZ8CChxr5Zmd4A0JvuLkHn/19aIJI0jt31WN4DxrRK2UvDFvkTq
	dL3uws202nvFaSHPajMqRuFiomTiFvCm7YpOs+wC9tmckGb43SWAEt1f1c0TAyQjHORw
	AESMrsC48RyjHYyC6aJplECjYcWd4JOF76nO7voFbTPWgVo2m5xuRDsKSO6w8WKMjT3L
	nh2AFVJMbpu+LJNaffC2jv40e99X9m5Kus2iG6SvWpZoete4Qo5lWu6XfCxmrYMkXd2c
	73wA==
X-Gm-Message-State: AIVw1118jNLYD7hI6uvnjqR3VkW1DfjO8SetDluhu0AeV/tMs5cev9tU
	vEfYcaNNCvOHQMNPNc/vFnIaTDaTi/x4
X-Received: by 10.31.150.6 with SMTP id y6mr4236027vkd.1.1501625389087; Tue,
	01 Aug 2017 15:09:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.48.88 with HTTP; Tue, 1 Aug 2017 15:09:48 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
Date: Tue, 1 Aug 2017 18:09:48 -0400
Message-ID: <CAHUNapSbUEvxWjn4AOgO3JyrfYRe_LoV=t=vkN_Yv+O+R1w+Cg@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: bitbake memres usecase
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
X-List-Received-Date: Tue, 01 Aug 2017 22:09:51 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm trying to understand if memres is right for me.

Every night my machine, via jenkins, grinds away doing about a dozen
builds. Each of these builds is for a separate MACHINE, in separate
directories, with separate layers, configurations, etc. My jenkins
instance has two executors (on the same machine). So if one build runs
long, two builds could be running at the same time.

Should I enable memres?

Also, sometimes I kick off a jenkins job or two during the day, while
at the same time doing manual builds somewhere else on the same
machine. Maybe all I want to do manually is to run "bitbake -e" and
investigate some packageconfig setting. Would having one
memres-bitbake running cause issues with multiple builds running at
the same time?

Is it possible to have one memres-bitbake running for the jenkins
jobs, but have my own bitbake running for my manual jobs?

Or maybe none of the above is the use-case for memres?

Best regards,
    Trevor

