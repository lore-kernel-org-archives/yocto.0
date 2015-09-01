Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10843E00E12; Mon, 31 Aug 2015 18:07:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62C29E00B9A
	for <yocto@yoctoproject.org>; Mon, 31 Aug 2015 18:07:20 -0700 (PDT)
Received: by iog7 with SMTP id 7so54856550iog.2
	for <yocto@yoctoproject.org>; Mon, 31 Aug 2015 18:07:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=9jYaWLKxVT6p7m+oR3Lo31dy0141fqvHg74D05lOhcI=;
	b=AjdAvA7yoX/9/N8Ef9EBg48HzWou9AvsUApuuKoyUHQieWAvODsTIpLH4hLU/o73Zk
	u0QUWenWXgAD7INLqMsX2Yab+zq9jyyjFSez9ToYC1P7m8QbIRjnjxYpVUn5vFPQxHhB
	kiINcz6NuxmyN6xYcoV7oWJA9YpX+NenxRNQbCZxJ0Q1QZe753JHhAfPrdxJSS2jaefl
	t6JGCqUgYA073xBpdjUugA3vcJrSSZu13U4H2YTXt23zz7zv54OuLWZvLX6Xs7JtO4VS
	t9XxJIVB83RO5iITzPpme7xv+7VEqwDCTJAKgsPgxn93ZeFOuEPocPzo+NQPAiDzB8ph
	TeWg==
MIME-Version: 1.0
X-Received: by 10.107.150.68 with SMTP id y65mr31335205iod.133.1441069640589; 
	Mon, 31 Aug 2015 18:07:20 -0700 (PDT)
Received: by 10.36.98.5 with HTTP; Mon, 31 Aug 2015 18:07:20 -0700 (PDT)
In-Reply-To: <CALbNGRSQGZdyeWGF8vWN9gqJ-iO9CYiQy9pjKNFpCYEyJM09TA@mail.gmail.com>
References: <CALbNGRSQGZdyeWGF8vWN9gqJ-iO9CYiQy9pjKNFpCYEyJM09TA@mail.gmail.com>
Date: Tue, 1 Sep 2015 03:07:20 +0200
Message-ID: <CALbNGRRzu5=TJgYtpPmWRcGwRwjpGvJqzqzgF4mZY5Q=vfLP+Q@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] kernel do_patch lasts ages
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
X-List-Received-Date: Tue, 01 Sep 2015 01:07:22 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 20, 2015 at 12:23 AM, Andreas M=C3=BCller
<schnitzeltony@googlemail.com> wrote:
> Hi
>
> since one week or so my build sometimes freezes with
>
> linux-raspberrypi-3.18.11+gitd64fa8121fca9883d6fb14ca06d2abf66496195e-r0
> do_patch (pid 7335)
>
> without any progress noticeable.
>
> In log.do_patch I see strange stuff:
>
> DEBUG: Executing shell function do_patch
> [INFO] validating against known patches  (raspberrypi2-standard-meta)
>   [######################################################################=
##############################]
> (|)(200 %)
>
> Anybody out there with ideas what's going on?
>
OK a successful log says

DEBUG: Executing shell function do_patch
[INFO] validating against known patches  (raspberrypi2-standard-meta)
  [########################################################################=
############################]
(|)(200 %)   [##################################################]
(completed in 6326 seconds)
DEBUG: Shell function do_patch finished

What takes 108 minutes??

Andreas

