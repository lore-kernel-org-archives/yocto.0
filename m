Return-Path: <ulfalizer@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C94ABE00B9C; Wed, 20 Jan 2016 00:30:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ulfalizer[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.50 listed in list.dnswl.org]
Received: from mail-vk0-f50.google.com (mail-vk0-f50.google.com
	[209.85.213.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6019BE0073D
	for <yocto@yoctoproject.org>; Wed, 20 Jan 2016 00:30:42 -0800 (PST)
Received: by mail-vk0-f50.google.com with SMTP id e185so891764vkb.1
	for <yocto@yoctoproject.org>; Wed, 20 Jan 2016 00:30:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=B8Y0Fo6a+Pm8jHTnXiRGce/aeOBbjahrnDZ0FODopl0=;
	b=OhSYh1RMhEOiKsExHRtEPCT+NfX7tgK06xnDPYbbNAjM19v9vzvcWZOg4N7eFlhhWk
	on4O8gZXBwYb97r8LkF7llSEQM/pO7sO3NNHjEl6mwXbBDTolsTk2B+2xplE+gZk7Es0
	jOD/Hu1bnDz1DBaf65Vq3uWZjLkSAJVCp1CqVBafTBmHODwSj3N3dJuVctIvhzZbeB1p
	xeXK+USSIfEGBZJD1i98xSuHQW9kL6kqwq4lmHmvPmzPx6ScWkfcf0/2ESGWXXewOD1u
	GK6FL+QdNDF7YUWgbj8aMtFKNaubqwjGHc7RYB0qKLGN5UqMIdv/FA51oUrus7b39bht
	kvbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=B8Y0Fo6a+Pm8jHTnXiRGce/aeOBbjahrnDZ0FODopl0=;
	b=MhfXZKmWgsLk27Bxc02klBO60cZCSjMYbyMBnK9i83h+TwnwkUta6bPTjopRDL+CSL
	hAk/8cN+9sLrzhpLbn653dhDGypb4k4JOS9X7Gn/PK3w9bnv4N0S2vVxLAtNi7Eg4Nbk
	N4VGYpRR1RqZHFv1Fn7m596ZGUsmxsn5l9w1VoOS09A75Cv6NS74qfmnRbrBFhPTepEn
	KLJV9y2nE/J2v9UT5fRx+icn906SDDVZXQUENMmq2+gabRCk4CD/ORvhgjYaT16+VhUR
	4oeJAjxQMEg8gppnPQTEndMW5n7a80doFkfFAZGa0Mex98n9G515gaorYFUbojv3O3pM
	nXWg==
X-Gm-Message-State: ALoCoQmt3CuzhkI0nrkbmK1EpYU/j+V7jpl8kFp7aB5QgixZLL5ctSf4UauELpeU9RUiY0JknvZK2xojMxIm2Kcl780vXksalw==
MIME-Version: 1.0
X-Received: by 10.31.58.139 with SMTP id h133mr23459785vka.158.1453278641981; 
	Wed, 20 Jan 2016 00:30:41 -0800 (PST)
Received: by 10.103.64.132 with HTTP; Wed, 20 Jan 2016 00:30:41 -0800 (PST)
In-Reply-To: <7943507.QKW1M6tPCz@peggleto-mobl.ger.corp.intel.com>
References: <CAFkk2KRuH8g49LBzceZSnFcetQc6ANedd7iMFD8uUqMHZDbKCg@mail.gmail.com>
	<6298415.jCEuhodfvm@peggleto-mobl.ger.corp.intel.com>
	<CAFkk2KQ0THLaw1NGB3Zzj9bJzT8EZyuuurvNCsbNL2HSBsO2aw@mail.gmail.com>
	<7943507.QKW1M6tPCz@peggleto-mobl.ger.corp.intel.com>
Date: Wed, 20 Jan 2016 09:30:41 +0100
Message-ID: <CAFkk2KSUVOB5DJZ82+o_uDi44OiTTUGt0kvONGee+g1BeOrvdA@mail.gmail.com>
From: Ulf Magnusson <ulfalizer@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Mapping root filesystem files back into packages
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
X-List-Received-Date: Wed, 20 Jan 2016 08:30:45 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jan 19, 2016 at 6:03 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Tue, 19 Jan 2016 13:01:20 Ulf Magnusson wrote:
>> On Tue, Jan 19, 2016 at 10:20 AM, Paul Eggleton
>>
>> <paul.eggleton@linux.intel.com> wrote:
>> > On Tue, 19 Jan 2016 08:31:09 Ulf Magnusson wrote:
>> >> On Mon, Jan 18, 2016 at 9:15 PM, Paul Eggleton
>> >>
>> >> <paul.eggleton@linux.intel.com> wrote:
>> >> > On Mon, 18 Jan 2016 10:56:41 Ulf Magnusson wrote:
>> >> >> To support an in-house packaging format, we need to partition the root
>> >> >> filesystem into a number of packages (called "internal packages" from
>> >> >> here on to avoid confusion), where each internal package corresponds
>> >> >> to a number of (e.g. IPK) packages.
>> >> >>
>> >> >> The way this is currently done is by manually maintaining a database
>> >> >> (implemented as a PACKAGE_CLASSES class) that maps files in the root
>> >> >> filesystem back to packages, along with a list of what packages should
>> >> >> go into each internal package. I suspect it is done this way so that
>> >> >> post-processing steps on the root filesystem will be included in the
>> >> >> internal packages.
>> >> >>
>> >> >> To me this feels pretty roundabout, and I suspect that there are much
>> >> >> nicer solutions (suggestions welcome!). What I'm mostly curious about
>> >> >> at the moment though is whether there's some nicer way to map files
>> >> >> from the root filesystem back to packages, without having to maintain
>> >> >> a separate database. Having the method be independent of the package
>> >> >> format (e.g., IPK) would be a bonus, though I'm not sure if it's a
>> >> >> strict requirement.
>> >> >
>> >> > So, aside from the "internal package" concept, there are two ways to do
>> >> > this:
>> >> >
>> >> > 1) oe-pkgdata-util find-path - this will tell you the build-time
>> >> > package
>> >> > name that provided the specified path within the image (expects a full
>> >> > path, wildcards allowed). It also provides some other lookup tools.
>> >> > Note
>> >> > that this relies on pkgdata so it'll only work for a particular recipe
>> >> > after that recipe has been packaged.
>> >> >
>> >> > 2) Use the Toaster web UI - it allows you to browse through the image
>> >> > and
>> >> > click through from any file back to the package that contained it.
>> >>
>> >> Thanks for the hint!
>> >>
>> >> Do you have any suggestions for the other direction as well, i.e.,
>> >> mapping packages to files, preferably in a way that's independent of
>> >> the packaging format?
>> >
>> > You'd use the same mechanisms - both of the above options will let you
>> > look up a package and then its contents.
>>
>> Could you provide an example for getting package contests via
>> oe-pkgdata-util? I tried
>>
>> $ oe-pkgdata-util read-value
>> tmp/sysroots/i686-xs-baytrail-hmgua1/pkgdata/ FILES_INFO busybox
>> {"/bin/busybox.nosuid"
>>
>> , but as seen from the output, that only gives part of the string after the
>> FILES_INFO key in pkgdata/runtime/busybox before the first space. I'm not
>> sure if that's the right key to use either.
>
> Ah, you must be using the version before we fixed that bug. In later versions
> we have a "list-pkg-files" command - you can supply it with a package name or
> -p recipename; additionally you no longer have to supply the pkgdata path.
>
> Cheers,
> Paul

That must be it. We're currently using 1.8, but are in the process of
upgrading to
2.1. Thanks for the hint!

Cheers,
Ulf

