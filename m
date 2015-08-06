Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18502E00AB4; Thu,  6 Aug 2015 11:10:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.51 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f51.google.com (mail-qg0-f51.google.com
	[209.85.192.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6A90E00AA6
	for <yocto@yoctoproject.org>; Thu,  6 Aug 2015 11:09:53 -0700 (PDT)
Received: by qgeg42 with SMTP id g42so21899068qge.1
	for <yocto@yoctoproject.org>; Thu, 06 Aug 2015 11:09:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=1WgySR2XFKGkKc8FWN3wnOSq0mtvGQTQLZmACElBMbI=;
	b=pILPnYvmitXQUZwjjdbm7AkG5obs6OXi9jafghwVh9htgmqOm+H4StJXt4kZPwk9b8
	HfFnJGMAh7wVrpZzebVOd8EwL5H6rtAezPScsxG9BK+FupkKK+q+3loe/0ZoTWyPeJMr
	4xUU03h3ijNUQrG7UmFkWzqE+SJ1tzEI2QlV1oqRIDdgw8bt5ugNYmIvIsmYiVg43Gze
	QxoqHmIpy+0PG2/rAwI8ebOx0H4x6S3ucbprqwS4WEPY842ghnGvOz7/U8SaDskhg3PL
	57TVUJQ4JjLzcLUFi2x9I6o8HYSAa3s42+IwDT1kBKXPxQSVifZo5vd/jkyFGhf73sMP
	Miqg==
MIME-Version: 1.0
X-Received: by 10.140.91.66 with SMTP id y60mr5419487qgd.90.1438884592879;
	Thu, 06 Aug 2015 11:09:52 -0700 (PDT)
Received: by 10.96.179.74 with HTTP; Thu, 6 Aug 2015 11:09:52 -0700 (PDT)
In-Reply-To: <20150806154922.GA64301@sestofb10.enea.se>
References: <87vbd0xxhj.fsf@email.parenteses.org>
	<CAPTvctUQOCU_5v7jOBqSpZpOs_BCGL=5aqijGiSuQOWGRO3weg@mail.gmail.com>
	<CAPTvctWPkXA2_1Y2hiVEUFQMReOFxKiiz2H4He2LGALPWUbnAQ@mail.gmail.com>
	<87d1z1v7pj.fsf@email.parenteses.org>
	<CAPTvctVy0N7sbxr-KZusSKYOjnGtreieV_1AdGgrV0J=ZZK==g@mail.gmail.com>
	<CAF3SDA5GEjXppXOx_sqqexuMBHyob9u7nAFaSzR7u93DkgTuPA@mail.gmail.com>
	<20150806154922.GA64301@sestofb10.enea.se>
Date: Thu, 6 Aug 2015 15:09:52 -0300
Message-ID: <CAF3SDA6zdYu8uHYZ+2v2aoWDRok-E=DDFj8u-0ekwxoe8p+5jA@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: "Maxin B. John" <maxin.john@enea.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-oracle-java] oracle-jse-jre fetch issue
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
X-List-Received-Date: Thu, 06 Aug 2015 18:10:01 -0000
Content-Type: multipart/alternative; boundary=001a113a4f80080e3f051ca86dc7

--001a113a4f80080e3f051ca86dc7
Content-Type: text/plain; charset=UTF-8

Well so user has enough information to donwload it manualy. Still.. shame
on you Oracle hahaha

Best regards,
- dhs

--001a113a4f80080e3f051ca86dc7
Content-Type: text/html; charset=UTF-8

<div dir="ltr"><div><div>Well so user has enough information to donwload it manualy. Still.. shame on you Oracle hahaha<br><br></div>Best regards,<br></div>- dhs<br></div>

--001a113a4f80080e3f051ca86dc7--
