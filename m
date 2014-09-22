Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78DD3E0086B; Mon, 22 Sep 2014 04:01:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.176 listed in list.dnswl.org]
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13B11E00869
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 04:00:57 -0700 (PDT)
Received: by mail-qc0-f176.google.com with SMTP id x3so5826343qcv.7
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 04:00:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=N8Da848GNvkdfL9BiKnJ3QU50Zu9HN36X/gxzafGeOo=;
	b=CPY6oOdB/CoespnDI0KEaGNl3yJwVgNEjj//jZK0UWgM+tcxDxJTtiLaPne8eDXWVW
	ji3knfHMpkY80siUKq/7RXN6RqBo8C5BoZeMm7zTW9M8LdhXgld2w7zEM1ugKPe1wKWa
	46dtdWEYE0rzDUpT4fCwjvEjea4y811pHw0G/3hX3ehdVW86pUVfOz3UU3U0Z24A3Qvq
	qRK4NSgXDE4/cFcDqr8Ma89gEuyhs+zNtu3aGrYLkq0mAx/foVV04smKXr411uZBR3JG
	bw5AOSUFSvpM3k5JIDNUF2qGmUcZWLQ7FrF1IHFBMl+0rULkrsb3N8GCoamRE8BtWXtU
	R+nQ==
X-Gm-Message-State: ALoCoQlUbUX5tifjsO+zSKUbIPQkTG0R4E1rNkoYzVOdi6HlmaY/9f9KvK4+QVl8NzVg9BVIYDf9
X-Received: by 10.140.97.247 with SMTP id m110mr20741551qge.80.1411383656193; 
	Mon, 22 Sep 2014 04:00:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.180 with HTTP; Mon, 22 Sep 2014 04:00:35 -0700 (PDT)
In-Reply-To: <1541757.qLRXd1AgeH@comp-006-thk>
References: <d412ce5cffb0466c897447c7b8674054@SRV-MAIL.greenflex.group>
	<CAJTo0LZv+ee0DRnfGXtrtx6Q3Pa17pA3TiLmqPvcyf8rBNL16w@mail.gmail.com>
	<CAMCfZKFb9MZFK4mcwxbXn2Kub=wY7M7XdaOzfTZWb84Bv5Lziw@mail.gmail.com>
	<1541757.qLRXd1AgeH@comp-006-thk>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 22 Sep 2014 12:00:35 +0100
Message-ID: <CAJTo0LYWYKGhW0vqV0rZyHe4n4M_bvavzWhGp8=PVg_mZtyi0Q@mail.gmail.com>
To: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Poky/Yocto drivers for cellular modem
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
X-List-Received-Date: Mon, 22 Sep 2014 11:01:02 -0000
Content-Type: text/plain; charset=UTF-8

On 20 September 2014 14:00, Maciej Borzecki <maciej.borzecki@open-rnd.pl> wrote:
>> Take a look at meta-eca:
>> http://git.yoctoproject.org/cgit/cgit.cgi/meta-eca/tree/
>
> Do you have any clue why it's a separate layer? The recipes mostly seem to
> overlap with OE-core.

There's what were at the time newer versions, or tweaks to existing
recipes.  Hopefully the maintainers will refresh the layer when 1.7 is
released.

Ross

