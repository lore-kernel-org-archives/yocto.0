Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC9B8E00C9F; Sun, 28 Feb 2016 03:02:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7928CE00BBF
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 03:02:32 -0800 (PST)
Received: by mail-wm0-f45.google.com with SMTP id n186so12516931wmn.1
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 03:02:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=S1WA3oZV10fllespnKADo5xUua7Ct3yg2wymRBzS1pM=;
	b=iDNpkxWaa4+hUCYrt72Aez9hhAkcBVdpYlQrvZ44yjmtdmjNrOBHN+wElYiKFOYp4E
	x/k5nT+Up7wJ2nh+DvOYNEwbChEf5RCcQE3e6HjbZdHtKHMadJFjDKSoMzPtR0hjhwcW
	LSbCQYj+ZMyAgROn4FAqxFa+f3EPRctjiP9T2yzVuF7WF1wP7g6zKGv9MH4xMTe1+f0J
	bhJrprpF4Lhjy/Na/VS2yqmRPdw0W4LvucBFlFdzGaSILPTkS5nx6igqEH70TophBQ69
	zBrHe2xqsxGRsDN19dH4srDsqsH9y3KCsBpVQrkWUcVL6BN9D/WeiPMdmEolhq+VyWZs
	QCuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=S1WA3oZV10fllespnKADo5xUua7Ct3yg2wymRBzS1pM=;
	b=bQAt6VEa33xsUWe5ZGlICC4VAh1nd/hylulvYTPQdBADcrEedIlbjsGI+o2yNvkYbb
	6gKPx79nAdMu02FcDk+iqf054QT1utuE9XuQU0hiosNKXnBhfwZt9IjFN4AuKzpEvzYd
	T0Wu7uiVhIROrlBTKAzM5Yok/0e7rebW9PmvwEaqOnwnPGn7Hv5kAfs6fSHgqVgz71kw
	e9aFMqCSB0VVaaCr/pokHn+rQU0KstN0oahDtuoN2HLh6LuvlU/QP/D3UK9OgBjHuNFS
	oBGalmzgJQx+ZWffmlX009+2xC8CDZ2DNO+SWK2i62To2iPHlZlzmlKMNTEONkHWpwgF
	6iRw==
X-Gm-Message-State: AD7BkJKysVroYMGhNMEtKVn2RKeAlfGjzWWuqDaK8989h3CYeaCeMjIpBNwoXovOeS12QQ==
X-Received: by 10.28.57.85 with SMTP id g82mr4907297wma.96.1456657352212;
	Sun, 28 Feb 2016 03:02:32 -0800 (PST)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	q139sm6814762wmd.2.2016.02.28.03.02.30
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 28 Feb 2016 03:02:31 -0800 (PST)
Date: Sun, 28 Feb 2016 12:02:22 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Petter =?iso-8859-1?Q?Mab=E4cker?= <petter@technux.se>
Message-ID: <20160228110222.GA2087@resin.home>
References: <1452789643-17903-1-git-send-email-petter@technux.se>
	<1452789643-17903-4-git-send-email-petter@technux.se>
	<decadab49c1ce664ee1e7b5e52cbfcaa@technux.se>
	<20160228105158.GF12618@resin.home>
MIME-Version: 1.0
In-Reply-To: <20160228105158.GF12618@resin.home>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v2 3/7] linux-raspberrypi: Update 4.1 recipe to 4.1.15
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
X-List-Received-Date: Sun, 28 Feb 2016 11:02:36 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Sun, Feb 28, 2016 at 11:51:58AM +0100, Andrei Gherzan wrote:
> On Sun, Feb 28, 2016 at 08:56:33AM +0100, Petter Mabäcker wrote:
> >    2016-01-14 17:40 skrev Petter Mab?cker:
> >
> > [Support #69]
> >
> > Signed-off-by: Petter Mab?cker <[1]petter@technux.se>
> > ---
> >  recipes-kernel/linux/linux-raspberrypi_4.1.bb | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/recipes-kernel/linux/linux-raspberrypi_4.1.bb b/recipes-kernel/linu
> > x/linux-raspberrypi_4.1.bb
> > index 3a3cf40..cae459a 100644
> > --- a/recipes-kernel/linux/linux-raspberrypi_4.1.bb
> > +++ b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
> > @@ -1,6 +1,6 @@
> > -LINUX_VERSION ?= "4.1.10"
> > +LINUX_VERSION ?= "4.1.15"
> >
> > -SRCREV = "b74df9228c27f55361c065bc5dbfba88861cc771"
> > +SRCREV = "02a8ee530e32b08e5df44f10e24d5fd82bb960e3"
> >  SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.1.y
> > "
> >
> >  require linux-raspberrypi.inc
> >
> >    Hi Andrei,
> >
> >    This commit can be skipped, since Khem have done an even newer update
> >    of the 4.1 kernel (4.1.10 --> 4.1.17) in the large series of commits
> >    from yesterday
> >    (https://lists.yoctoproject.org/pipermail/yocto/2016-February/028754.ht
> >    ml). Do you want me to send an updated version of this series of commit
> >    without it or not?
> >
> >    BR Petter
> >
> > References
> >
> >    1. mailto:petter@technux.se
>
> Thanks Peter. No need to bother. I'll keep in mind not to pull this patch.

Petter,

Actually I do have a request. Could you please send the v2 again (or a v3)
cause even if they are on the ml archive I don't have it in my mailbox (this
kinda worries me). Sorry for this and thank you in advance.

--
Andrei Gherzan

