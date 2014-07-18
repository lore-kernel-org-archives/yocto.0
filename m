Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37C6CE006C4; Fri, 18 Jul 2014 01:02:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.219.54 listed in list.dnswl.org]
Received: from mail-oa0-f54.google.com (mail-oa0-f54.google.com
	[209.85.219.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 066A1E00563
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 01:02:27 -0700 (PDT)
Received: by mail-oa0-f54.google.com with SMTP id n16so2592821oag.13
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 01:02:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=8Q3LEnoUcdwWavNsxej4/hQ2nNG2SkZYnAgYKI3egls=;
	b=UIUmOezSzldPH8wXi2v9EScuZ2btU3MqWQwGLvHsDhVPC7SK/2aupP38VKgx7JL/NL
	fNxLx/QZ25BJhFSfKfQq4WQBmidJX8da2wnEvCNdhPkKpPM0cloo+DhMZ3v6JKWGErlz
	rIGbkXOII3FUyU90pWWIWXRvDJmxOBvyBeoQ9GZz9ZQXH34uCujrMyGGQXlrUj7zEDhs
	YrOHvG/0iYUjhwt23Et1cR6qYuJp1FbXrGinUNEe3K66tctrLJwqp86bb/VBJLE4KXpb
	NZpLtM45HZ9DbwOQyJIrbpXM+LUUnCjGPMMcgE34bzvON2ud94sKbz5vQL1VWG0rB0iC
	QKzg==
X-Gm-Message-State: ALoCoQlu1KfLvX9wQGSYZazCwN4QmVEYezIUJ8fOPbdBtGrb5U3bu/4tEMqPrtOH4RQ+MUwZEYqJ
X-Received: by 10.182.106.137 with SMTP id gu9mr3901611obb.7.1405670546089;
	Fri, 18 Jul 2014 01:02:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.171.168 with HTTP; Fri, 18 Jul 2014 01:02:06 -0700 (PDT)
In-Reply-To: <E4938C0D959B3445943720B88F0721341564DE52@NDA-HCLT-MBS05.hclt.corp.hcl.in>
References: <E4938C0D959B3445943720B88F0721341564DE52@NDA-HCLT-MBS05.hclt.corp.hcl.in>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Fri, 18 Jul 2014 10:02:06 +0200
Message-ID: <CAP71Wjy6Sp6aiATOz2w_7FdO-=pyGeqKdJ-7orpZgvTbge0yVA@mail.gmail.com>
To: Meenakumari Shedole <meenakumari.s@hcl.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding prebuilt binaries/libraries to /usr/bin or/usr/lib on rootfs
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
X-List-Received-Date: Fri, 18 Jul 2014 08:02:33 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Jul 18, 2014 at 7:55 AM, Meenakumari Shedole
<meenakumari.s@hcl.com> wrote:
> I have few prebuilt binaries and libraries, and I want to add them to the yocto build rootfs at the
> build itself.
> So Can any one please tell me the steps to add recipes or suggest me any other method for this.
>

just make a regular recipe as usual.

you can add:

do_configure[noexec] = "1"
do_compile[noexec] = "1"

to skip the configure and compile step (or you can make them empty function..)

