Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18EA5E00C58; Wed, 14 Nov 2018 20:07:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.48 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 958D0E00C4B
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2018 20:07:41 -0800 (PST)
Received: by mail-wm1-f48.google.com with SMTP id f19-v6so14920611wmb.0
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2018 20:07:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=W2+q+wecTfZHR/gmsrUnt4+pG46JjZKXzw2g/nSPVLk=;
	b=iKuDZ1iDehkAWH8CffzFCz9ZjlFnaP1C5j0Bu8gUjhEJFQHQa8xeudZl4YAHpXlB/Y
	JYZckF/9F31PqQhXRxEMz74kL6g8nLZPdp4nZaetdS/cq+subSnaCl0Fv+LrYbD3ekp1
	6Q1+8kVVcSo4p4Z/Vur3jkathRqhm2aIqMXjVC/HgxAnHh4Ix/MGcnmCkTgscxOM6QuW
	WatxKHCFsPLj4wic3u7tQvBar5zRi5lX3VObd9K26sRD3DB+K8D1m09R8j9Qv58Gjt+e
	K2o6dsy+uQFGWgHy5FG+O6z2PWB6eFfwj8B8kIhwZgMIHdFbfhf8RdpolzFiSa6WjK36
	OB0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=W2+q+wecTfZHR/gmsrUnt4+pG46JjZKXzw2g/nSPVLk=;
	b=NoTDuYryQQzcIDKBOFB1iIAcTY9dERtQWJHyCPjAUUAo0Eq3/nfIPk5Eq0CcoDm+xH
	WlzPRvLJGHfeej19MnFhJmI4jiAbZxe+l7Fy2w69+uu9asoMfyRLTnQco51SzbMDgNQT
	p68CkIQXT+u/2Yls98/XXURngUpA8z48yJ+CTpYWHpUHhmXFx10fLQQr2o0BKC1FJOww
	geWtUQwaqqCX2f7W1UPAaw858Jx03BFrov7nq5tyKxYpYUPzTSeRsbchtckuJX2ei6HS
	2RthibU8Dh0PhLbG3V0tRwfsbxon3J/xzQi2KV9eEE9dwqN4EVfgKIo2KrDMNESuxFfL
	7sbw==
X-Gm-Message-State: AGRZ1gLw29c/Ecxnln+8tk6XoNpnom+5hQJ+nwuxxFnmeZvKxfL7ubwL
	/NpWYBbhYCYh2snmRavVVc2zgIjkydjqh3bt/kE=
X-Google-Smtp-Source: AJdET5c93wL9XrGJ/FwJlWrVxNoSCu29jjticXNbyNHJSQAY3mugg0hyqcsIAunPj/gR8QHbfPnu5Nt76+3aWJb3NRg=
X-Received: by 2002:a1c:8d86:: with SMTP id
	p128-v6mr3864173wmd.48.1542254860470; 
	Wed, 14 Nov 2018 20:07:40 -0800 (PST)
MIME-Version: 1.0
References: <CABXoSoXbsZTmZokUW5sfuw2xHP4cENo7iuE5kgffQ-WPOzS-Bg@mail.gmail.com>
	<377de133-4849-78e0-e8dc-69a79c487069@windriver.com>
	<4fd5b99a-9d4a-629f-8d65-20786f984a38@windriver.com>
In-Reply-To: <4fd5b99a-9d4a-629f-8d65-20786f984a38@windriver.com>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Wed, 14 Nov 2018 22:07:29 -0600
Message-ID: <CAJdd5GZJ7SakYHNL3HgbPS3ZkmHvweicr6mU75ui8HA4kK3qog@mail.gmail.com>
To: mark.hatle@windriver.com
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: meta-mingw: unable to run executables on Windows
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
X-List-Received-Date: Thu, 15 Nov 2018 04:07:42 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Nov 14, 2018 at 8:41 PM Mark Hatle <mark.hatle@windriver.com> wrote:
>
> On 11/14/18 9:54 AM, Mark Hatle wrote:
> > On 11/13/18 3:56 AM, Samuli Piippo wrote:
> >> Hi,
> >>
> >> I've just upgraded poky and meta-mingw layers from sumo to thud and as a result
> >> a lot of the executables in the toolchain no longer run correctly on Windows.
> >
> > Which version of windows?
> >
> >> I've built meta-toolchain for SDKMACHINE=x86_64-mingw32. From that, gcc/g++ work
> >> fine on Windows 10, but ar, as, objdumb, and others hang for ~30 seconds and
> >> exit without any output.
> >>
> >> Has anyone else seen this?
> >
> > I've run a toolchain made on mingw after sumo, but before thud's release.  I'll
> > see if I can find a VM and give it a try later today.
>
> I'm running on Windows 7 for my testing (ya, I know old.. but it's what I got.)
>
> Can you try adding the following to your conf/local.conf: GCCPIE_mingw32 = ""
>
> I found that the SDK was not working properly here as well, but only binutils.
> The above seems to fix the issue.  (You do have to rebuild your SDK.)

I also saw this issue on Windows 7, and your described fix corrected
it (Thanks!). On the plus side, the automated SDK testing that I'm
working on discovered it as well (e.g. the tests failed because of
it), which means that the tests are working and should help prevent
issues like this in the future once I get it merged.

>
> > --Mark
> >
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

