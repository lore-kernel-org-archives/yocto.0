Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96E13E0074B; Sat, 18 Apr 2015 10:12:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.72 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-la0-f72.google.com (mail-la0-f72.google.com
	[209.85.215.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37C86E0049A
	for <yocto@yoctoproject.org>; Sat, 18 Apr 2015 10:12:09 -0700 (PDT)
Received: by laat2 with SMTP id t2so31134451laa.2
	for <yocto@yoctoproject.org>; Sat, 18 Apr 2015 10:12:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=Tefgfb0BrYoP+RhbgTz7DSwCYiCxx+S/aD8TNDHgMsk=;
	b=JF1GSNKkTy8X1oTiRbJoeKOLZg3hQ9uIBE/X44PlC814f/GlVHEO6EsDZ1Cgt4DLaO
	CsG6xoI7OzSLcgxekx3VriaMoqKkIEGau9VLKJ+Ql7TJa8Tlyj6rvQZfapHQuj7HpIEM
	b8JMrhvwcsVkD3iKwsWloJKDCvJK6kmUj6a7nP2gfLaEoSZ6ZIp8AAIRVCFg9zNwwT6i
	dBe6BZbnrZOjLsax8nKem/tVxTHpsJkrsw6+fw+T7ncJUOe5Tu1JGi4kav5vKGaTDkUj
	w2o7LPq5uQ5pCRfMjPqdP5lhPUBtShoHYo8Y8rnUxHDapOKGs6ME2Gb70X1sz0MCutB1
	nqLA==
X-Gm-Message-State: ALoCoQlBVwWjARyNlTeFTk9LZMzPRUeCiscfNtoWEcFkdznjQqL3lbPPRr0GsJlAVqY9MzAcUMzG
MIME-Version: 1.0
X-Received: by 10.194.20.67 with SMTP id l3mr15709095wje.94.1429377127140;
	Sat, 18 Apr 2015 10:12:07 -0700 (PDT)
Received: by 10.28.3.130 with HTTP; Sat, 18 Apr 2015 10:12:07 -0700 (PDT)
Received: by 10.28.3.130 with HTTP; Sat, 18 Apr 2015 10:12:07 -0700 (PDT)
In-Reply-To: <9223869.PKDofxJfeZ@peggleto-mobl.ger.corp.intel.com>
References: <552FA28B.5010507@actia.se>
	<CAP71WjyfbFWiTdGt5FQ46MK1w_3wf9g50mrAixaRDRfC4t7Dug@mail.gmail.com>
	<CABcZANkZpNCrYKjS0DYP8kqmeQ2+ax=87Cox1LQge3jeAA4f7Q@mail.gmail.com>
	<9223869.PKDofxJfeZ@peggleto-mobl.ger.corp.intel.com>
Date: Sat, 18 Apr 2015 19:12:07 +0200
Message-ID: <CADt1enP_Hpwt0cN5T=b_QqUZeLo9iP8BVnU_18vTfrJEwFZL5Q@mail.gmail.com>
From: Anders Darander <anders@chargestorm.se>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Badly formatted subpath for git SRC_URI deletes portions of hard drive.
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
X-List-Received-Date: Sat, 18 Apr 2015 17:12:14 -0000
Content-Type: multipart/alternative; boundary=047d7b5d649ae9e401051402cbc1

--047d7b5d649ae9e401051402cbc1
Content-Type: text/plain; charset=UTF-8

On 17 Apr 2015 16:30, "Paul Eggleton" <paul.eggleton@linux.intel.com> wrote:
>
> I have sent an additional patch to the bitbake list to try to protect
against
> future instances of this issue, at least for bb.utils.prunedir() and
> bb.utils.remove():
>
>
http://lists.openembedded.org/pipermail/bitbake-devel/2015-April/005664.html

Good! That should give us some extra confidence for the future.

All the patches mentioned in this thread ought to be cherry-picked to all
currently supported Poky releases.

Thanks and cheers,
Anders

--047d7b5d649ae9e401051402cbc1
Content-Type: text/html; charset=UTF-8

<p dir="ltr"><br>
On 17 Apr 2015 16:30, &quot;Paul Eggleton&quot; &lt;<a href="mailto:paul.eggleton@linux.intel.com">paul.eggleton@linux.intel.com</a>&gt; wrote:<br>
&gt;<br>
&gt; I have sent an additional patch to the bitbake list to try to protect against<br>
&gt; future instances of this issue, at least for bb.utils.prunedir() and<br>
&gt; bb.utils.remove():<br>
&gt;<br>
&gt; <a href="http://lists.openembedded.org/pipermail/bitbake-devel/2015-April/005664.html">http://lists.openembedded.org/pipermail/bitbake-devel/2015-April/005664.html</a></p>
<p dir="ltr">Good! That should give us some extra confidence for the future. </p>
<p dir="ltr">All the patches mentioned in this thread ought to be cherry-picked to all currently supported Poky releases. </p>
<p dir="ltr">Thanks and cheers, <br>
Anders </p>

--047d7b5d649ae9e401051402cbc1--
