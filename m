Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E41DE00B81; Tue,  9 Apr 2019 03:24:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.181 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f181.google.com (mail-it1-f181.google.com
	[209.85.166.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 879B9E00798
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2019 03:24:29 -0700 (PDT)
Received: by mail-it1-f181.google.com with SMTP id x132so4007356itf.2
	for <yocto@yoctoproject.org>; Tue, 09 Apr 2019 03:24:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=BDWBla5qIuIaJN9gREBKk+HXCI34L0jN9m9gApEW4l0=;
	b=lYIkaLA1RrDox0egIda0w/fujUd38oay6JyDIzSgmY3F53OgN2I7x5TYV6anTA9hJU
	+R5ym0kidnlbsWnk9kQy9eXqG1hmhuWU9+GL2FWv56TOWOeI9nc4wLIgoHhvf+K4Z9H/
	+qbK/zKTJXjjEBtBtacpp24Dy7jPFw71X6OxXw85exteGSe0yHE37ljL0j4uk8tYDasf
	x+JT74G9AydgFg9Tm6kSZ0SwjyEZjJqiDIT5VJcwXMfIVzuU0q8gdz7ngztB86Ok/CsL
	UDrLLdv+DYSSYjTBJx8Isnk8+xVUZBNzjGdmpypO+fgFxP4GSquJsnfC9Ewk0L2JODw+
	IunA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=BDWBla5qIuIaJN9gREBKk+HXCI34L0jN9m9gApEW4l0=;
	b=pcSdn+dmNNJoTC3AIjmoCCcV0iWeVB5jai5yfPUWT+8XbUH00Fc/mN3VAowrK9IxBE
	TN7Gc86B4A0hVqLB2lQPE/ghRdaScaeSf1fuWZipwyCrUmNwq1O9BhKojOgdhv9d2tL5
	+dNR56OtpiM98XLAinmDgU7ElPL8a5bFgN0R9D+rblAQ1X9YZu8XvVWzkpeaENkC7j9M
	kH3RHhpOnbN33egerYRjvW6+qzlIbbRWUgKQmFuYuCQOlij+oJXCBzhuw7PlrnIjRC6P
	vTYK0DNxriqUf+V1JjgreF7exqdwGijvA/fMxJDBUwoBiKE9FRZxTmtMMOsVfeONdeUX
	1P4g==
X-Gm-Message-State: APjAAAWZECOwe3R19oGBpHlYhg/8FeWVl9trjnF0zK4kEdsvYSB5OZ8V
	GQ4+oWLwxrt/erjhqX3nWbhEyD4Oz1QopYztdxgZ6w==
X-Google-Smtp-Source: APXvYqzsDDZTr20oA8/raSC/iyCL1Uan3ouNX2ImQNuO946tZvJhFy0xeEeWl6vc28qB6uFi+caPhU2/+IWqOEXcybY=
X-Received: by 2002:a24:ad2:: with SMTP id 201mr23318469itw.26.1554805468841; 
	Tue, 09 Apr 2019 03:24:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190404115301.1820604a@phoenix.invalid>
	<CAJTo0LbwKobcEg8qp0NY-EaEtkgyBHLoVNSBH41brjoOJPw_Vw@mail.gmail.com>
	<20190409094450.6a180445@phoenix.invalid>
	<CAJTo0LY2nx8PUBywRwBtFv2otHq5OKPBYv9fpuvpftnCe0Zp7w@mail.gmail.com>
	<20190409120329.0c68afca@phoenix.invalid>
	<CAJTo0LbNzZs=Ba=PmVzAKrK0FsVNVPSKCud6AMgGUgt+q4osWw@mail.gmail.com>
	<20190409121710.52ee90e0@phoenix.invalid>
In-Reply-To: <20190409121710.52ee90e0@phoenix.invalid>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 9 Apr 2019 11:24:17 +0100
Message-ID: <CAJTo0LZ7MOqt_9UcR7VDXG6odDNxcmZKEEdK0iT5R+H=1gD=5Q@mail.gmail.com>
To: Guenther Meyer <d.s.e@sordidmusic.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Metadata is missing in some Python packages
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
X-List-Received-Date: Tue, 09 Apr 2019 10:24:30 -0000
Content-Type: text/plain; charset="UTF-8"

An upgrade should just be a matter of taking the meta-python recipe
and doing a version bump/checksum update.  If you've written a recipe
from scratch then you're probably missing some of the glue required.

Ross

On Tue, 9 Apr 2019 at 11:17, Guenther Meyer <d.s.e@sordidmusic.com> wrote:
>
> On Tue, 9 Apr 2019 11:11:04 +0100
> "Burton, Ross" <ross.burton@intel.com> wrote:
>
> > So for me they're in python3-twisted-core on target, and if you have
> > the right DEPENDS then it should be there for build time.
>
> I will have a look at this, when I'm back in the office again.
> The thing is, I needed a newer version of twisted, so I did my own
> recipe. But obviously it is not enough to let setuptools do the work.
>
>
> --
> Summer-Hack-Session 2.8
> http://session.pestilenz.org/session2/
>

