Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 710E1E0043F; Fri, 25 Jul 2014 09:47:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
Received: from mail-ie0-f175.google.com (mail-ie0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A346AE003C1
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 09:46:56 -0700 (PDT)
Received: by mail-ie0-f175.google.com with SMTP id x19so3855782ier.6
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 09:46:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=I3z+fFVlxap4MBedQpG7cLaBvSa2lUkaHuw3v+uWGIU=;
	b=G+R46jtgT/LG3Qv82oz3KFQVaixKPZDFh9QE4WlIec/2AxVl6u4jU5qKLXMe2TEgK/
	FPgXhAgOCFgwJ27tL+MJecm8pRF+Ovxgt1+Ee8mLOO8/0uCckClPlDIsSyuPwwPDl4iI
	f5Np1G7P4v33VQoXmRQB207x+RmqDcNE3TsOqyds2e8o0k4UY6xgTaAHPmJ8JfVrLgyO
	RyAffZhHYYumZwRK1Hh5DdhZm2OniN4/aAkr7S72eCl0cJCVUuoTue5LM0PvAKMNWMW7
	ICzpSAclF/tKhu0/ocQFRhI5yYE3d9Uqm0YSoEIJXEG9e4bJJVnVG1sbxHfnxoWsEaL2
	3hAQ==
X-Received: by 10.50.43.134 with SMTP id w6mr7219432igl.17.1406306815817; Fri,
	25 Jul 2014 09:46:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.78.105 with HTTP; Fri, 25 Jul 2014 09:46:25 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.11.1407250833370.3458@localhost>
References: <alpine.LFD.2.11.1407250833370.3458@localhost>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 25 Jul 2014 09:46:25 -0700
Message-ID: <CAMKF1sodH6FbZn1+tX3exH6uSwgjGMv0F_bdp=uNfd5b2si=yw@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: are there any more obvious candidates for ASSUME_PROVIDED?
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
X-List-Received-Date: Fri, 25 Jul 2014 16:47:09 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Jul 25, 2014 at 5:39 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
>   asked about this once upon a time ... are there any other
> possibilities for adding to ASSUME_PROVIDED in local.conf.sample,
> given that there are surely more native utilities that are fairly safe
> by now?
>
>   for example, it's still weird that current default ASSUME_PROVIDED
> includes bzip2 but not gzip, especially since the quick start guide:
>
> https://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-project-qs.html
>
> lists *both* of them as required on your build host.
>
>   it also seems odd that that list includes git but not subversion.
> anyway, you get the idea.

may times utilities have bugs or undesired behavior for OE so this
list is dynamic and sometimes
not all distro carry a certain version which OE expects and there are
ABI/format changes as it happened between svn 1.6 and 1.7

>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

