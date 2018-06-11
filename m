Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57D69E01B1A; Mon, 11 Jun 2018 15:48:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f193.google.com (mail-ua0-f193.google.com
	[209.85.217.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7A1DE00D20
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2018 15:48:42 -0700 (PDT)
Received: by mail-ua0-f193.google.com with SMTP id s13-v6so11227667uad.2
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2018 15:48:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=oxFY0Z4RQLBbAWvUs8V92ktyt9yinqjF967x4J8sRlc=;
	b=no4aeNSNKxxT99ouZsUbrY7Uowz0QJDJW3ciBOeciR8eFB6AKcSnLNUwhlZuNKLZUO
	RHB+UJSSlUVo/sLV2TTxPI9MUHvzi6xJdg2z8SILImffYaKsTa3GNPDBDtfzG3NW7F7N
	T/RbaUBAeW1SNA3qjlkSBJeIGrnbUZo/t3d9tXVwTdlJrC1EmjE0FP0jCoVSlDT2s2+H
	XeXsmTInh8rhGy9qh6HYzPQrNR+ZqfN25omchpp9SNl3BljvOzEJgnHMutwKlDZ5QNCm
	PNHa70a6em+wl5iiMgq9xdKF4mHU6mN0Lxnj43jk4YMM8Gjq3OcfQSZnyPHv4ro65IT5
	e2Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=oxFY0Z4RQLBbAWvUs8V92ktyt9yinqjF967x4J8sRlc=;
	b=BeFaAmSTYDiwW+m8Ek/a5eRWtWmo3KIZGGgXR4X/2hK52G65sngO1slartIUDE3tgr
	lSns1ULKDxu8WrexHxjtP+FjPxOOWmfZmNYdDErrzy6o8WDaKvFBhvzH6fLLfo2ZeOuw
	Tm6Bmehl456ZXdXkPtpbc6sVYYPq1QfvbUAO8NHkK6/6t2TJG6Y6uUwaHIKX/4LUeV+h
	sB/WJBJq3xs2BzqKfVWSP4mfXegAvTPmzZRbKA/Qbr6yDFNtqb/Ah7zTYTwAQaHb/EA1
	PkbrepuogjsJPJCJXxHADFJ/XrFtYv+vcAT/lqI+/bF+2jFdGQt2hn1mArlxV2aAAmnC
	K9/w==
X-Gm-Message-State: APt69E3gltGTrLjnnJ5lQdnpAVO8TesNn8TiCUrrnCzWLQUfgg7bvy3X
	Rgb1nc4/nJhAshvgbdrjN8Mple9qNvSsX9zdyAs=
X-Google-Smtp-Source: ADUXVKKbrkClCILjBk7zp5eC+vSDtFqqTCeLX71opad++kC2a7asqq2BoE+rWPPH9imi91dSfe3Eq3E/CwccLDSSKXo=
X-Received: by 2002:ab0:4045:: with SMTP id h63-v6mr789754uad.66.1528757321920;
	Mon, 11 Jun 2018 15:48:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:28a:0:0:0:0:0 with HTTP;
	Mon, 11 Jun 2018 15:48:41 -0700 (PDT)
In-Reply-To: <a7231983-76e8-4307-4eff-d206f4756b5e@here.com>
References: <785a2b9a-d6c8-8356-d218-ecc80af2c46d@here.com>
	<CAMKF1spJvA1pP1BrwmcazY0n1QujJPU270dpL=vq9Vfuri73nA@mail.gmail.com>
	<83419d13-87b0-40a7-dfa0-b30924399405@here.com>
	<536f8a9d-c5db-6cf6-4d4e-fca749d143a0@gmail.com>
	<a7231983-76e8-4307-4eff-d206f4756b5e@here.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Mon, 11 Jun 2018 15:48:41 -0700
Message-ID: <CAJ86T=Vu-4PURtuk3Di1n7WsvV4yoXJUR+1MTWD-M9htiMqdFA@mail.gmail.com>
To: Patrick Vacek <patrick.vacek@here.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: sysroot not being populated
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
X-List-Received-Date: Mon, 11 Jun 2018 22:48:44 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Jun 8, 2018 at 2:42 AM, Patrick Vacek <patrick.vacek@here.com> wrote:
> On 08.06.2018 10:26, Khem Raj wrote:
>> On 6/8/18 12:27 AM, Patrick Vacek wrote:
>>> On 07.06.2018 19:06, Khem Raj wrote:
>>>> Hi Patrick
>>>>
>>>> On Mon, Jun 4, 2018 at 2:01 AM, Patrick Vacek
>>>> <patrick.vacek@here.com> wrote:
>>>>> Hello all,
>>>>>
>>>>> I have a recipe (aktualizr-hsm-prov) that depends on another
>>>>> (aktualizr)
>>>>> to provide an executable and a config file. The former recipe includes
>>>>> `DEPENDS = "aktualizr-native"`, and my do_install() for
>>>>> aktualizr-hsm-prov has a line something like this:
>>>>>
>>>>> aktualizr -i ${STAGING_DIR_NATIVE}${libdir}/sota.conf
>>>>>
>>>>> The binary executable (aktualizr) runs, which tells me that the recipe
>>>>> can find that. (Although to be honest, I'm not sure which version
>>>>> it is
>>>>> running.) However, it doesn't find the config file, and sure enough,
>>>>> ${STAGING_DIR_NATIVE}${libdir} does not have the config file I
>>>>> expect. I
>>>>> can see that aktualizr-native is populating its sysroot-destdir,
>>>>> but it
>>>>> isn't getting copied to the sysroot for aktualizr-hsm-prov.
>>>>>
>>>>> I see this problem in sumo and master, although previously this logic
>>>>> has worked just fine in morty/pyro/rocko.
>>>>>
>>>>> Switching to depending on aktualizr (instead of aktualizr-native) and
>>>>> using STAGING_DIR_HOST or STAGING_DIR_TARGET does not help, and in
>>>>> fact
>>>>> makes it worse, as it can't even find the aktualizr executable in
>>>>> that case.
>>>>>
>>>>> What am I doing wrong? What changed between rocko and sumo?
>>>> is aktualizr recipe installing this .conf file when building native
>>>> version. If not may be
>>>> add it to do_install
>>>>
>>>> install -D -m 0644 <path/to/sota.conf> ${D}${libdir}/sota.conf
>>>
>>> Hello Khem,
>>>
>>> I believe so. The aktualizr recipe includes the following (edited for
>>> simplicity):
>>>
>>> BBCLASSEXTEND =+ "native"
>>>
>>> do_install_append () {
>>>      install -m 0644 ${S}/config/sota.conf ${D}/${libdir}/sota.conf
>>> }
>>>
>>> PACKAGES =+ " ${PN}-host-tools "
>>>
>>> FILES_${PN}-host-tools = " ${libdir}/sota.conf "
>>>
>>
>> Can you check location of sota.conf in the build tree for
>> aktualizr-native in directory called package/
> Oddly, I do not see a package subdirectory inside the aktualizr-native
> directory in the build tree. I do see it inside the aktualizr directory,
> though, and it contains everything that I would expect. Is there some
> sort of configuration of the packaging system for a native recipe that I
> haven't done correctly?

No, what you see is expected - there's no packaging for -native recipes.

Back to the original problem, I think you should consider the
aktualizr executable and the sota.conf file as two separate things.
The host executable should always be provided by aktualizr-native.
It's less clear what should provide sota.conf - it depends whether
it's just required for building other recipes (ie like a header file)
or whether it needs to be present in the final rootfs? If it's only
required for building other packages, then it should be in the -dev
package for aktualizr. If it needs to be present in the final rootfs
then it should be in the default package for aktualizr. Either way,
recipes which need to find sota.conf in sysroot would then depend on
"aktualizr". Therefore recipes which need both the host executable and
sota.conf in sysroot should depend on both aktualizr and
aktualizr-native.

> For the record, here is the actual recipe:
> https://github.com/advancedtelematic/meta-updater/blob/master/recipes-sota/aktualizr/aktualizr_git.bb

