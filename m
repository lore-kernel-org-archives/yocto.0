Return-Path: <chmorgan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A41A5E00B68; Thu, 29 May 2014 06:58:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY, RCVD_IN_DNSWL_LOW,
	RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (chmorgan[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.182 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-ig0-f182.google.com (unknown [209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7545AE00A2F
	for <yocto@yoctoproject.org>; Thu, 29 May 2014 06:58:28 -0700 (PDT)
Received: by mail-ig0-f182.google.com with SMTP id uy17so378074igb.9
	for <yocto@yoctoproject.org>; Thu, 29 May 2014 06:58:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=n+B3d36kM92nWtZQhBkRXUSmluAZKXmJcEGh8d0oHMQ=;
	b=dEF67jDYc1t+tjx9LlKeqiABMvg4nXY0SFsqjCMLlZvZ1yNG+RYL01ReqCfJbYfJ8g
	K5piInXJh49RAwWPLDcf9iVIAj8BOdlJHmrWKPgArNFz9NA3Cwk0e11OgmOxLWxZ8nwB
	PFaXWRzOMeCR4SKjP1Ibm/1NGKQET/QLMDOr6LBV5q7PtPxoDqZzOmdMnTZiYJJOoBN0
	6K1n4Dy62r79E3EWZvGh412WsxzIaeHqWi3GMnOqOGIBBC8j+iPatENHUMQqXNGzooWY
	kZDmdnnw5h92/vCS9zV4b4r8Nu8BhpUync5Wo6FJ0Gum+HfnPSb0HjEO8CehNU1u10m4
	3WNw==
X-Received: by 10.42.127.199 with SMTP id j7mr7165970ics.27.1401371907714;
	Thu, 29 May 2014 06:58:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.228.141 with HTTP; Thu, 29 May 2014 06:58:07 -0700 (PDT)
In-Reply-To: <20140529131602.GF2426@jama>
References: <CAAPegz2wnPiugMeJ=ARa6AqLD6J59JUhPbTY7SZ9_yfL2JbDdw@mail.gmail.com>
	<538731AA.6090906@mlbassoc.com> <20140529131602.GF2426@jama>
From: Chris Morgan <chmorgan@gmail.com>
Date: Thu, 29 May 2014 09:58:07 -0400
Message-ID: <CAAPegz0-Pp9+n7ggO1PDVmzSjuYm-LUbSg7Fd0TgzDHh_UX8ow@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: [meta-oe][PATCH 1/2] dfu-util 0.7 recipe
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
X-List-Received-Date: Thu, 29 May 2014 13:58:35 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, May 29, 2014 at 9:16 AM, Martin Jansa <martin.jansa@gmail.com> wrote:
> On Thu, May 29, 2014 at 07:10:02AM -0600, Gary Thomas wrote:
>> On 2014-05-29 06:46, Chris Morgan wrote:
>> > dfu-util 0.7 is the latest release of dfu-util
>>
>> These patches should be sent to the OpenEmbedded mailing list
>>    openembedded-devel@lists.openembedded.org
>>
>> Also, check the README in your repository for details, in particular
>> the use of git send-mail for patches is preferred.
>
> And also please remove 0.1 and add 0.7 in the same commit which will be
> easier to review if sent with -M.
>
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

Thank you for the feedback. I'll get email setup to send through gmail
I guess so I can use the cli send mail. I guess I can use a pull
request instead though, that would let me avoid having to set git
gmail email up.


Today there are 0.1, 0.4/0.4 native and svn versions. I wanted removal
of 0.1 to be separate from adding 0.7 to avoid doing two things in a
single patch and so the 0.1 removal could be rejected separate from
adding 0.7.

If you really want the two together I can do that though, even though
they seem separate.

Maybe 0.4 should also be removed but I didn't want to have to replace
the native build of 0.4 with a native 0.7 build until other changes
were in and I wasn't sure how to test...

Chris

