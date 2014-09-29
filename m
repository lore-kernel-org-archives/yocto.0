Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19985E00869; Mon, 29 Sep 2014 00:52:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (k4230r6[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f174.google.com (mail-ie0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB711E00861
	for <yocto@yoctoproject.org>; Mon, 29 Sep 2014 00:52:40 -0700 (PDT)
Received: by mail-ie0-f174.google.com with SMTP id tr6so891998ieb.19
	for <yocto@yoctoproject.org>; Mon, 29 Sep 2014 00:52:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=bM9iZu8M4Q7BA4lOR0DLIxA3sjR1wT9YjSa1qd61RCU=;
	b=mq3Tav1CV4F3pQcTCaaEnEIkVcIHOxcddfcbBDLJ9P4I3EzSndoW/YqFwLDwdoUY3A
	SWdI6ulFCfagTZ/FU0iZro5eD12A9sZIj1ruJPCkkJQVfenQy4xTawuxZuYbCflUq04M
	f7CLhxmuYY3v63/t1k1SqD3Gy6sLE6FAHRLW7rnnW/RpLfU1ufRvNSVfyQTo9rJ1tOdI
	/ncSxyVJJpz7SiWhWmAC4STJ5u+vn5FCzwaW3PTlXo4l3Y31R7zzmCkc60iX7zLOFIyX
	bsF5FWuqckq0UmKoKVn4Ee68R/M3vYyp6Xt6RwcYIhY+GiFQXLyf2OcH8u0H5zTXWaoX
	yqfA==
MIME-Version: 1.0
X-Received: by 10.50.122.5 with SMTP id lo5mr32981430igb.25.1411977159441;
	Mon, 29 Sep 2014 00:52:39 -0700 (PDT)
Received: by 10.64.76.108 with HTTP; Mon, 29 Sep 2014 00:52:39 -0700 (PDT)
In-Reply-To: <AD958144-D4EB-42F9-B6C9-D391C7D9A84C@keylevel.com>
References: <AD958144-D4EB-42F9-B6C9-D391C7D9A84C@keylevel.com>
Date: Mon, 29 Sep 2014 09:52:39 +0200
Message-ID: <CAALGJZbTYeiqynQm7_7igto48annBnKUSihFSNzHtn4QBfdxjA@mail.gmail.com>
From: Christian Ege <k4230r6@gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: PR and bbappend files
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
X-List-Received-Date: Mon, 29 Sep 2014 07:52:49 -0000
Content-Type: text/plain; charset=UTF-8

Hi,
2014-09-28 11:47 GMT+02:00 Chris Tapp <opensource@keylevel.com>:
> I'm currently using a bbappend file to patch bash under 'danny' due to "Shellshocked" - basically by adding patches 11..50 to the SRC_URI.
>
> However, patches are still coming out ;-)
>
> How do I make sure that new ones get reflected in the build? I would normally bump PR in a .bb file, but I don't think a .bbappend should be changing this?
For danny you can use PRINC
http://www.yoctoproject.org/docs/1.3.2/poky-ref-manual/poky-ref-manual.html#var-PRINC
For newer releases this is deprecated.

Could you please be so kind and share your bbappend + patches?
Is there any chance to get this in the official poky branches?


regards,
Christian
>
> --
>
> Chris Tapp
> opensource@keylevel.com
> www.keylevel.com
>
> ----
> You can tell you're getting older when your car insurance gets real cheap!
>
>
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
http://project-magpie.github.io/

