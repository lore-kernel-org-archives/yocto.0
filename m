Return-Path: <vm.rod25@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D552E00828; Tue,  3 Feb 2015 14:21:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vm.rod25[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f47.google.com (mail-wg0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F1A1E00757
	for <yocto@yoctoproject.org>; Tue,  3 Feb 2015 14:21:26 -0800 (PST)
Received: by mail-wg0-f47.google.com with SMTP id n12so47253075wgh.6
	for <yocto@yoctoproject.org>; Tue, 03 Feb 2015 14:21:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=95cWcORDMJSJEkFlA6XShg5cuLLHLzUxE+FA6PWXlQI=;
	b=iwINyuOF0PZxLK8bE/VqtXT4c0fy3kckbbj3E25NS3hCHnspl3zVR38CbXhtyf0/EX
	qqb1dA4Wrg3vgvIcW4hDetki9H5zn9vw02d8hFA0r7qZMeUuqQF6Fyb5iVoSJlhiknNX
	Pu0HDo4c8OyEyPhDW4V3LrIFA2hfNTMV6UeeK0IyVMgtGcoPu/duSc2MABYYriqPxqxc
	QILP9ocrtE8gtqGnUEwzpolLaH/fxO7az2hd6Ve/9N1HEqi1aQPQVqkFZ/wBFP3RVi3F
	H8f2MtjB0WQiMibJtXRJUuABvg3QB+jEtpFVcSgVlS/r9tihWxoCjYW2/XNLPl2HFYMn
	5YZg==
MIME-Version: 1.0
X-Received: by 10.180.83.129 with SMTP id q1mr38790175wiy.8.1423002085040;
	Tue, 03 Feb 2015 14:21:25 -0800 (PST)
Received: by 10.216.253.1 with HTTP; Tue, 3 Feb 2015 14:21:24 -0800 (PST)
In-Reply-To: <589519159.1002526.1422987266318.JavaMail.yahoo@mail.yahoo.com>
References: <CAK5mtex_6VYORqocsd3A6H44h_=jn2+BjE2GeVhh8nfhMgLzBQ@mail.gmail.com>
	<589519159.1002526.1422987266318.JavaMail.yahoo@mail.yahoo.com>
Date: Tue, 3 Feb 2015 16:21:24 -0600
Message-ID: <CAK5mtewiDEH9eg8BovSiLuZK14vOyTLsZ48k08FheX8=+pZ42Q@mail.gmail.com>
From: Victor Rodriguez <vm.rod25@gmail.com>
To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: MPI support on Yocto
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
X-List-Received-Date: Tue, 03 Feb 2015 22:21:31 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 3, 2015 at 12:14 PM, Alexandru Vaduva
<vaduvajanalexandru@yahoo.com> wrote:
> I will be more then happy to help you with this.
>
>
> Alex Vaduva
>
>
> On Tuesday, February 3, 2015 5:41 PM, Victor Rodriguez <vm.rod25@gmail.com>
> wrote:
>
>
> HI team
>
> I wonder if there is any project or efforts to implement Message
> Passing Interface (MPICH ) support on Yocto ?
>
> If no I am more than happy to work on it , I just will need a little
> bit of guidance
>
> Thanks a lot
>
> Regards
>
> Victor Rodriguez
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

Thanks Alex

Does anybody knows under which meta - list should we send the patch to review?

Regards

Victor Rodriguez

