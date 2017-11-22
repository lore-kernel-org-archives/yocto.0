Return-Path: <prvs=4927113d4=Martin.Hundeboll@prevas.dk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A87EE00A9C; Wed, 22 Nov 2017 00:53:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.95.78.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail02.prevas.se (mail02.prevas.se [62.95.78.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D32EE008A4
	for <yocto@yoctoproject.org>; Wed, 22 Nov 2017 00:53:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=prevas.dk; i=@prevas.dk; l=1620; q=dns/txt;
	s=ironport2; t=1511340806; x=1542876806;
	h=subject:to:references:from:message-id:date:mime-version:
	in-reply-to:content-transfer-encoding;
	bh=uAHEvMJsCNSQi5IXFDhZ+qu84s4iKg8mb1kml0VjP5E=;
	b=XrHGmrc/A9/e+8U0zQW86aPnZUfR29EwP72PKbwNGQI/DIYVnCrd54YC
	8RhPuODTvFZ42e7hyyQCi3k0FHdNzdWsN21iutZJ1EGAjKit8p5C609x0
	PQJ4YH/8HEwk+WCh+9Pwv+jIdxdjPhqO9hCvkKsnj3YQ9lQPbXUmaq6L0 E=;
X-IronPort-AV: E=Sophos;i="5.44,436,1505772000"; 
   d="scan'208";a="2712038"
Received: from vmprevas4.prevas.se (HELO smtp.prevas.se) ([172.16.8.104])
	by ironport2.prevas.se with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	22 Nov 2017 09:53:22 +0100
Received: from [172.16.11.15] (172.16.8.31) by smtp.prevas.se (172.16.8.104)
	with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Wed, 22 Nov 2017 09:53:22 +0100
To: Paul Knopf <pauldotknopf@gmail.com>, <yocto@yoctoproject.org>
References: <CAKmWj-1mYZcWzfVZdQe+QSahca8HoK7Ukk5wZoSejz2HqOhNGA@mail.gmail.com>
From: =?UTF-8?Q?Martin_Hundeb=c3=b8ll?= <martin.hundeboll@prevas.dk>
Message-ID: <21664373-a625-570c-6143-018cee0e762a@prevas.dk>
Date: Wed, 22 Nov 2017 09:53:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAKmWj-1mYZcWzfVZdQe+QSahca8HoK7Ukk5wZoSejz2HqOhNGA@mail.gmail.com>
X-Originating-IP: [172.16.8.31]
Subject: Re: Forcing a single task to re-run each build, by default.
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
X-List-Received-Date: Wed, 22 Nov 2017 08:53:27 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi Paul,

On 2017-11-22 07:12, Paul Knopf wrote:
> I have a task that I would like to be forced to run for every build.
> 
> NOTE: I am aware of the deploy.bbclass, but I want to not use sstate. 
> Assume I am not using deploy.bbclass.
> 
> So, let's say I have this.
> 
> --------------------------------------------------------------------
> DEPLOYDIR = "${WORKDIR}/deploy-${PN}"
> do_deploy[dirs] = "${DEPLOYDIR} ${B}"
> do_deploy[vardeps] += "DATETIME"
> 
> do_deploy() {
>      install -d ${DEPLOYDIR}
>      # custom stuff...
> }
> 
> addtask do_deploy after do_install
> --------------------------------------------------------------------
> 
> Now, when I run this recipe, I get "non-deterministic" errors, which I 
> get. Maybe I can get a DATETIME-ish variable that has the same random 
> value throughout the entire bitbake process?

Yes, DATETIME includes the seconds, which changes during the build and 
leads to tasks hashes changing from the initial recipe parsing to the 
actual execution of the task.

> Or, what about this?
> 
> --------------------------------------------------------------------
> #do_deploy[vardeps] += "DATETIME"
> do_deploy[stamp-extra-info] = "${DATETIME}"
> --------------------------------------------------------------------

In our process we force redeployment of images with "nostamp":

do_deploy[nostamp] += "1"

I think that would work for you too.

-- 
MARTIN HUNDEBØLL, Prevas A/S
Software Developer

Hedeager 3, DK-8200 Aarhus N
Phone +45 87438070
Mobile +45 25562438
Martin.Hundeboll@prevas.dk
www.prevas.com

