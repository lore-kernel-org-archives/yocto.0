Return-Path: <ulfalizer@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 946DEE00A27; Tue, 19 Jan 2016 04:01:24 -0800 (PST)
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
	*      [209.85.213.51 listed in list.dnswl.org]
Received: from mail-vk0-f51.google.com (mail-vk0-f51.google.com
	[209.85.213.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 620D1E008F5
	for <yocto@yoctoproject.org>; Tue, 19 Jan 2016 04:01:20 -0800 (PST)
Received: by mail-vk0-f51.google.com with SMTP id e185so7496853vkb.1
	for <yocto@yoctoproject.org>; Tue, 19 Jan 2016 04:01:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=IMo5gRRkumftnnOvqolRGNl7rBQ4v3UOvn0AcFNgYKA=;
	b=Lj/g3f+9SRqKWLjxEqRJTOCyehQW6FsCWsX1sQNHAkl8XEAq6yg6pDRvCkYC7nHsqi
	rkaNcyEqzG+YPtRDFXminHw/Tpgcgx+2G0NijpkBPEVynlgTIDhlb0KbKs1+2u/BvKF9
	P0n6jXS38xI26o5Tv71xIC89Q5fOf0Nv6CI7Tp1Z/USrNZgyx6ilqU1T6RlloOVoMw5/
	47+cGWImTbtG70hoODhjuAekKcKouvkYGtDPJ/WFpa1aoCK7EEPJ4Wvj15R0y0T6idwZ
	FlX2Mm64Dt/d2gI/wD7POyRrx7Wd+lwvuki28BdyJDgVL+NnHR5BRqFoYh9ywvtS27BQ
	ZOmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=IMo5gRRkumftnnOvqolRGNl7rBQ4v3UOvn0AcFNgYKA=;
	b=HuGQiFFZ5h1Dqw7ITPMRBDVE9kk9HTLlR5/fqVv99miZBeQ2WwnzYel7uQlP2j12/m
	70Ut2X05eJ1vYX1kLkOrPP2BXjtTMAAbUDFW2Fds/4aznosmH6N+9r7quOBMJHZmhafY
	bCqAuQ28TqgRGOgZkGwUJv03B/xOYMWSQKrYJcAKrY2rV/jTLsTE5PUpP4TJBbWAtpP7
	6XQSrYhPjw3fXZjMyTOp30keXVkFcETB8e2ykz8/2ez1MRTs+Cmo19T3PnVBB/4F3YSc
	P+7sXy0QwL2KTvckOvFuqHYlmfnI+r9Ulf5wiVa+tBpuWgaJfClBwHAew/mAJDl14eYc
	mBnw==
X-Gm-Message-State: ALoCoQkcyH97SuDaW9v87+FIyUe3Wyo6mmNr4Kx/c5nJG8ibvLcWq6qnGs+UdmWV/b9Equ/Hf+gt8lWEcQvyCVRbcSEFtR74CA==
MIME-Version: 1.0
X-Received: by 10.31.8.4 with SMTP id 4mr17959772vki.60.1453204880247; Tue, 19
	Jan 2016 04:01:20 -0800 (PST)
Received: by 10.103.64.132 with HTTP; Tue, 19 Jan 2016 04:01:20 -0800 (PST)
In-Reply-To: <6298415.jCEuhodfvm@peggleto-mobl.ger.corp.intel.com>
References: <CAFkk2KRuH8g49LBzceZSnFcetQc6ANedd7iMFD8uUqMHZDbKCg@mail.gmail.com>
	<1491845.TOkdZ1pxEy@peggleto-mobl.ger.corp.intel.com>
	<CAFkk2KSM9SP=M4dBmQ53PHyTYKueA7EZOTOHsrBmcBo6Xy3sBA@mail.gmail.com>
	<6298415.jCEuhodfvm@peggleto-mobl.ger.corp.intel.com>
Date: Tue, 19 Jan 2016 13:01:20 +0100
Message-ID: <CAFkk2KQ0THLaw1NGB3Zzj9bJzT8EZyuuurvNCsbNL2HSBsO2aw@mail.gmail.com>
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
X-List-Received-Date: Tue, 19 Jan 2016 12:01:24 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jan 19, 2016 at 10:20 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Tue, 19 Jan 2016 08:31:09 Ulf Magnusson wrote:
>> On Mon, Jan 18, 2016 at 9:15 PM, Paul Eggleton
>> <paul.eggleton@linux.intel.com> wrote:
>> > On Mon, 18 Jan 2016 10:56:41 Ulf Magnusson wrote:
>> >> To support an in-house packaging format, we need to partition the root
>> >> filesystem into a number of packages (called "internal packages" from
>> >> here on to avoid confusion), where each internal package corresponds
>> >> to a number of (e.g. IPK) packages.
>> >>
>> >> The way this is currently done is by manually maintaining a database
>> >> (implemented as a PACKAGE_CLASSES class) that maps files in the root
>> >> filesystem back to packages, along with a list of what packages should
>> >> go into each internal package. I suspect it is done this way so that
>> >> post-processing steps on the root filesystem will be included in the
>> >> internal packages.
>> >>
>> >> To me this feels pretty roundabout, and I suspect that there are much
>> >> nicer solutions (suggestions welcome!). What I'm mostly curious about
>> >> at the moment though is whether there's some nicer way to map files
>> >> from the root filesystem back to packages, without having to maintain
>> >> a separate database. Having the method be independent of the package
>> >> format (e.g., IPK) would be a bonus, though I'm not sure if it's a
>> >> strict requirement.
>> >
>> > So, aside from the "internal package" concept, there are two ways to do
>> > this:
>> >
>> > 1) oe-pkgdata-util find-path - this will tell you the build-time package
>> > name that provided the specified path within the image (expects a full
>> > path, wildcards allowed). It also provides some other lookup tools. Note
>> > that this relies on pkgdata so it'll only work for a particular recipe
>> > after that recipe has been packaged.
>> >
>> > 2) Use the Toaster web UI - it allows you to browse through the image and
>> > click through from any file back to the package that contained it.
>> >
>> > Cheers,
>> > Paul
>>
>> Thanks for the hint!
>>
>> Do you have any suggestions for the other direction as well, i.e.,
>> mapping packages to files, preferably in a way that's independent of
>> the packaging format?
>
> You'd use the same mechanisms - both of the above options will let you look up
> a package and then its contents.

Could you provide an example for getting package contests via oe-pkgdata-util?
I tried

$ oe-pkgdata-util read-value
tmp/sysroots/i686-xs-baytrail-hmgua1/pkgdata/ FILES_INFO busybox
{"/bin/busybox.nosuid"

, but as seen from the output, that only gives part of the string after the
FILES_INFO key in pkgdata/runtime/busybox before the first space. I'm not
sure if that's the right key to use either.

>
>> I suspect this won't be a problem, but it shouldn't matter whether the
>> package contents are fetched from the sstate cache or not.
>
> Nope, that's not an issue.
>
> Cheers,
> Paul

Thanks,
Ulf

