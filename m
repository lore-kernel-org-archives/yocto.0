Return-Path: <ulfalizer@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2526E008BB; Mon, 18 Jan 2016 23:31:13 -0800 (PST)
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
	*      [209.85.213.41 listed in list.dnswl.org]
Received: from mail-vk0-f41.google.com (mail-vk0-f41.google.com
	[209.85.213.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 972CCE0045F
	for <yocto@yoctoproject.org>; Mon, 18 Jan 2016 23:31:10 -0800 (PST)
Received: by mail-vk0-f41.google.com with SMTP id e185so4343305vkb.1
	for <yocto@yoctoproject.org>; Mon, 18 Jan 2016 23:31:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=3j1ZqCbKi/1gt+Ff/C/VS8IA4OdvwJFfaA//NEnFwWo=;
	b=AnmPeVCV+2vAKN0qQd9Mcpzie3/0tiJDo3+b/w05J1mqt3qh7GODzZ8ObciCfaik2B
	/sjNCFJ4mnZKst7D1PvKviZn1MyjejGSMmt18r72e9UbHnK565j6T66g/3ZPDpjUii8Q
	DJN3Vm/dldaQfj/oVAAtXuGm9sW1uAODmYib/eOv1zOxderCxE4JRxQoBTNwPxv0vVaG
	CAUCTQdRNNyHqj77t4eQ4OLW0tOtWf8N20I8hPnYTFdSMT0onY4ovTCOSXBrFG0Dun4q
	ey8Ayoc00ce/f6Ql2hDwrlOoRz4pDsaFR/+QGBLje2X4DD+qYL0q9hiaApasCHyUUQie
	lx7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=3j1ZqCbKi/1gt+Ff/C/VS8IA4OdvwJFfaA//NEnFwWo=;
	b=Av1Hm0xGlBP2xzhGMcqFjeRKmD+nf3pAAVdFTk5huWVEruiTmri+neHQwophaoat+k
	MNn/1cccv1Hp/5apBFA2QcnfMIyZLOzQMsiAK10nxQUSZKCBo1cQoqP9bi0s4kpeuywb
	SfinmYRm1bL2SmENnOGW7BsP56zXiHG+6ndFV5vdZc+MywP+6c+dOFPY6tiYg0lIfA/P
	0Vld1tPX6ObkcSBr7TZWJL/tAcncidMvNtWRTfzJppKaGOcd8ki1IACaT3kMq7U+GKcB
	BaP8hdeFCcXgtt3br0SNjhfQCXkNdG/ivMIijLAErc25qIcKhgqI02+ja8osOKTiX/8z
	Z77A==
X-Gm-Message-State: ALoCoQmJJ0LlguMTBuLKM8QYSBdCWMolI6wYYLBJE4flxBQeWX5HbxmR7oMsQc9yF6F1VuO5raXXUU/e5nIZhO5ZYhz0V95HVw==
MIME-Version: 1.0
X-Received: by 10.31.137.11 with SMTP id l11mr17615260vkd.98.1453188669668;
	Mon, 18 Jan 2016 23:31:09 -0800 (PST)
Received: by 10.103.64.132 with HTTP; Mon, 18 Jan 2016 23:31:09 -0800 (PST)
In-Reply-To: <1491845.TOkdZ1pxEy@peggleto-mobl.ger.corp.intel.com>
References: <CAFkk2KRuH8g49LBzceZSnFcetQc6ANedd7iMFD8uUqMHZDbKCg@mail.gmail.com>
	<1491845.TOkdZ1pxEy@peggleto-mobl.ger.corp.intel.com>
Date: Tue, 19 Jan 2016 08:31:09 +0100
Message-ID: <CAFkk2KSM9SP=M4dBmQ53PHyTYKueA7EZOTOHsrBmcBo6Xy3sBA@mail.gmail.com>
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
X-List-Received-Date: Tue, 19 Jan 2016 07:31:13 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jan 18, 2016 at 9:15 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> Hi Ulf,
>
> On Mon, 18 Jan 2016 10:56:41 Ulf Magnusson wrote:
>> To support an in-house packaging format, we need to partition the root
>> filesystem into a number of packages (called "internal packages" from
>> here on to avoid confusion), where each internal package corresponds
>> to a number of (e.g. IPK) packages.
>>
>> The way this is currently done is by manually maintaining a database
>> (implemented as a PACKAGE_CLASSES class) that maps files in the root
>> filesystem back to packages, along with a list of what packages should
>> go into each internal package. I suspect it is done this way so that
>> post-processing steps on the root filesystem will be included in the
>> internal packages.
>>
>> To me this feels pretty roundabout, and I suspect that there are much
>> nicer solutions (suggestions welcome!). What I'm mostly curious about
>> at the moment though is whether there's some nicer way to map files
>> from the root filesystem back to packages, without having to maintain
>> a separate database. Having the method be independent of the package
>> format (e.g., IPK) would be a bonus, though I'm not sure if it's a
>> strict requirement.
>
> So, aside from the "internal package" concept, there are two ways to do this:
>
> 1) oe-pkgdata-util find-path - this will tell you the build-time package name
> that provided the specified path within the image (expects a full path,
> wildcards allowed). It also provides some other lookup tools. Note that this
> relies on pkgdata so it'll only work for a particular recipe after that recipe
> has been packaged.
>
> 2) Use the Toaster web UI - it allows you to browse through the image and
> click through from any file back to the package that contained it.
>
> Cheers,
> Paul

Thanks for the hint!

Do you have any suggestions for the other direction as well, i.e.,
mapping packages to files, preferably in a way that's independent of
the packaging format?

I suspect this won't be a problem, but it shouldn't matter whether the
package contents are fetched from the sstate cache or not.

Cheers,
Ulf

