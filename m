Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C39EE00B8A; Fri, 11 Oct 2019 09:45:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.45 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14868E009E7
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2019 09:45:29 -0700 (PDT)
Received: by mail-wr1-f45.google.com with SMTP id o18so12625460wrv.13
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2019 09:45:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=EFauRRQyZVm8snQkL6kLjZgi3FfiHihPvw114NjpDKI=;
	b=ZOj+fpt3Cow0re+WnOgNCWTP2hsovmDCF7ctKceqYwRuzwfggcPanbjZxIG1f0L4SV
	yFZSSonq2KUUNPcP/3mdc36NkBS2OAdCkf7CzBTMzh+3Nc4bZ/lG94H1JU9xwNlLx650
	8Q8qqShwWq+do7cbjeWb+4wYx0IqSYoghRZ+c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=EFauRRQyZVm8snQkL6kLjZgi3FfiHihPvw114NjpDKI=;
	b=aGfe9JANFS0EeNC2uhnGmp5Upx0ArjQzlqsG+74KOzrtiT4jth72H4Eb0NgL4UVr7k
	IhM4gxsRPn1459+TRE+SoqOj9x9/j9tkII/yBv+5gGI7eMkFSng36TeYHhoo/Ev3CJbS
	s6/v17maI7sB89MpcIcizhvOm/qjXBzhUSFedPsLWJOaKiGRB4CTzRgs9y7R+rqHqaRl
	jhQ+LS9+pE0sPwAagVSuMaGsjsKtEZ8TPTNsi4DfR1eSAx1AbRkByUnkQ2KOy4JALrue
	LsuQa8cmKuXv/ypl04247qTph57n08N/9qzjvP6W2NSH3ryBqkwD5KkX5nAvSPz0PqiA
	LnCQ==
X-Gm-Message-State: APjAAAUGDopSK6bw2uQFTv77WaEv1DrNPrOZTNKKKN5Xe7HEtJ41twYz
	sd18DSREAjuWJ0cNk6s2mCYdzQ==
X-Google-Smtp-Source: APXvYqzUEkYJd3j94loM0vuJ7aRALrVDVfR4BBPl/Xr1XVVT3Evcl/y/Z0LLQsK/3sKj5g3dpTJoYw==
X-Received: by 2002:a5d:6349:: with SMTP id b9mr14346450wrw.387.1570812329156; 
	Fri, 11 Oct 2019 09:45:29 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	b62sm13908441wmc.13.2019.10.11.09.45.26
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Fri, 11 Oct 2019 09:45:28 -0700 (PDT)
Message-ID: <bec60eb90762feb06f014079d98aca92464d5568.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: Alejandro Del Castillo <alejandro.delcastillo@ni.com>, 
	"opkg-devel@googlegroups.com"
	<opkg-devel@googlegroups.com>, Ycn aKaJoseph <ycnakajsph@gmail.com>, 
	"yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, Haris Okanovic <haris.okanovic@ni.com>
Date: Fri, 11 Oct 2019 17:45:25 +0100
In-Reply-To: <2e40c398-ccf3-ee90-56df-3a2c6d458088@ni.com>
References: <CAC3TgAKRkeRjHDasNM6S_eSeBe82i3VYVWWuwLkUxm4GxTca4Q@mail.gmail.com>
	<2e40c398-ccf3-ee90-56df-3a2c6d458088@ni.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Subject: Re: [opkg-devel] [OE-core][opkg-utils ] Bug 13528 : adding SPDX license identifier
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
X-List-Received-Date: Fri, 11 Oct 2019 16:45:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2019-10-11 at 15:54 +0000, Alejandro Del Castillo wrote:
> On 10/11/19 8:51 AM, Ycn aKaJoseph wrote:
> > Hi guys,
> > 
> > https://bugzilla.yoctoproject.org/show_bug.cgi?id=13528 
> > <
> > https://urldefense.com/v3/__https://bugzilla.yoctoproject.org/show_bug.cgi?id=13528__;!fqWJcnlTkjM!8RtsWJXbDz_l063ZSVKrRMwvQ5KGdD0lk9aSjlUW9VHM2wufITJnBuIvovQxoT0yJXu-6Q$
> > >
> > 
> > I'm about to work on that bug however most of the script in opkg-
> > utils 
> > dir are un-licenced and there's no hint for me to decide what SPDX 
> > Identifier to add.
> 
> thanks for doing this!
> 
> > The doubt concerns those script :
> > makePackage
> > opkg-build
> > opkg-buildpackage
> > opkg-compare-indexes
> > opkg-diff
> > opkg-extract-file
> > opkg-graph-deps
> > opkg-list-fields
> > opkg-make-index
> > opkg-show-deps
> > opkg-unbuild
> > opkg-update-index
> > 
> > What license do you want them to carry ?
> 
> Looking at the commit history, opkg-graph-deps was authored by Haris 
> Okanovic, and the rest by Richard Purdie (included them on the
> thread).
> 
> My take on it:  since opkg is licensed as GPLv2+, and the files that 
> have a license in opkg-utils are GPLv2+, make sense to me to license
> the rest as GPLv2+ too.

I didn't author these, they were imported from ipkg-utils which was
part of handhelds.org. I did modify things quite a bit during the
import.

handhelds.org's CVS repos aren't there any more but I do have old
sources lying around locally. I have a snapshot of the CVS repo from
20050930 and it has GPLv2 COPYING file (not 2+, just 2).

I'd suggest we follow the original licensing of that and go with GPLv2.

Cheers,

Richard





