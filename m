Return-Path: <andreas2025@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25F34E00777; Wed, 12 Nov 2014 12:25:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (andreas2025[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-wg0-f53.google.com (mail-wg0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F794E005B7
	for <yocto@yoctoproject.org>; Wed, 12 Nov 2014 12:25:20 -0800 (PST)
Received: by mail-wg0-f53.google.com with SMTP id b13so15154403wgh.40
	for <yocto@yoctoproject.org>; Wed, 12 Nov 2014 12:25:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=QGDUvN9IBAGylKHW4y20lRIHy6Hg/VV6iQuWeOW5Gvs=;
	b=c67CgQazULDyFbQMXNHO1IKNDVYFhVSKrn17oB1ZR7RYEVPC8IRxD4nf+jAyyXg2k0
	vHsLCbN7O467Dvs0px2MrDKM1KQMPEx9mp1ulY0PaybrMK2HFvnhkK/cYqksCwdmmrwO
	fpaCkwNb/MRViF3CTFScZNsrAHAz9NirBeU6IB/3GhxUGfI1vOfAQkd487/JTmXt1bem
	RtBFH15QqZ47H8o7juQoPd0SlXxxQDMRnZ5/aVhZPM/TeE9n4dibhCAbQtLoNlN4ZDgY
	ZePT1ii+loRt7zfUCmEK5iXqEEmWnzPYnJKetS3zU2JuGcBBdlUuqlnWtJhQmGHn3k0a
	ewsg==
MIME-Version: 1.0
X-Received: by 10.180.76.41 with SMTP id h9mr53774470wiw.40.1415823919453;
	Wed, 12 Nov 2014 12:25:19 -0800 (PST)
Received: by 10.216.203.7 with HTTP; Wed, 12 Nov 2014 12:25:19 -0800 (PST)
In-Reply-To: <20141112130245.GA2450@jama>
References: <CAAVaN8zpgtbJOet0bmYiHJKFNL9_O4UaL6K-cMUP=xVykY=pCg@mail.gmail.com>
	<20141112130245.GA2450@jama>
Date: Wed, 12 Nov 2014 20:25:19 +0000
Message-ID: <CAAVaN8zsR=gZZzViWa-9EL85VCDCa1mkGAsPM0OwPS7Aodr15w@mail.gmail.com>
From: Andy Ng <andreas2025@gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Removing old git revisions from the build
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
X-List-Received-Date: Wed, 12 Nov 2014 20:25:33 -0000
Content-Type: text/plain; charset=UTF-8

Great! It works! I used rm_old_work

Thank you Martin!
A

On Wed, Nov 12, 2014 at 1:02 PM, Martin Jansa <martin.jansa@gmail.com> wrote:
> On Wed, Nov 12, 2014 at 12:02:58PM +0000, Andy Ng wrote:
>> Hello,
>>
>> I am using Dylan and my kernel recipe has AUTOREV.
>> Everything works fine and any new kernel changes are checked out and
>> a new kernel is built. However, I have noticed that the old builds are
>> not deleted and after a while started having space problems.
>>
>> Is there any way to have the old git revisions deleted automatically
>> from the "tmp" area?
>
> rm_work will make them smaller, there is also rm_old_work which will
> remove all WORKDIRs except latest:
> https://github.com/shr-distribution/meta-smartphone/blob/shr/meta-shr/classes/rm_old_work.bbclass
>
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

