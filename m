Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61378E00837; Wed,  1 Apr 2015 01:03:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-lb0-f174.google.com (mail-lb0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D19D6E006E9
	for <yocto@yoctoproject.org>; Wed,  1 Apr 2015 01:03:06 -0700 (PDT)
Received: by lbbug6 with SMTP id ug6so30225578lbb.3
	for <yocto@yoctoproject.org>; Wed, 01 Apr 2015 01:03:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-type
	:content-disposition:content-transfer-encoding:in-reply-to
	:organization:user-agent;
	bh=RL1qVQoBhaXPpTU7twtFhHU2e3mPOB00puaHw0L2mls=;
	b=B5ftzrRmo2L5tVh+Trbt8LVMkhndpWfBdxUxdYQLZTrkpp3SyL0chj7iF7fqVuNLz9
	ZdA191aKq1NsJlQIEfDJYTh7jUowIWa9jqT0I0UJoVGa9njpuD6D4PY/vGI8CJTvjlVQ
	0+plkqXatqm9F/qjoI4w/kKXfI22salKeYH7SgVJAVsUAR1NHy3AwpQ490OnX8A/jr7t
	9O3MpszNE3gBvmv+4Kpq99g7/9aDFE7SjhrQJHEWGYqJB8S80MEEUWTJ2yHPrex9hC6A
	vTuxmyIjjTVCaAPKTjviyML726H9/BThVqkZwVEXdOmJmBfs9CDxDPxJHA262neJZK7/
	5fcA==
X-Gm-Message-State: ALoCoQm3h7Pg0tI6UMdwS/I26NSXGhZZ+xlx1l3ZR0fBEUCMBYSSbm+mEVTbHmffW+LTqjGm1khQ
X-Received: by 10.112.92.66 with SMTP id ck2mr34199644lbb.105.1427875384193;
	Wed, 01 Apr 2015 01:03:04 -0700 (PDT)
Received: from ad.chargestorm.se (213-64-219-84-no126.business.telia.com.
	[213.64.219.84])
	by mx.google.com with ESMTPSA id wl9sm218902lbb.11.2015.04.01.01.03.03
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 01 Apr 2015 01:03:03 -0700 (PDT)
Date: Wed, 1 Apr 2015 10:03:01 +0200
From: Anders Darander <anders@chargestorm.se>
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>
Message-ID: <20150401080301.GB18315@ad.chargestorm.se>
Mail-Followup-To: "Barros Pena, Belen" <belen.barros.pena@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <D13F4AC9.58302%belen.barros.pena@intel.com>
	<20150331093911.GC19097@ad.chargestorm.se>
	<D1407F76.584DD%belen.barros.pena@intel.com>
MIME-Version: 1.0
In-Reply-To: <D1407F76.584DD%belen.barros.pena@intel.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [RFC] Toaster integration with Jenkins
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
X-List-Received-Date: Wed, 01 Apr 2015 08:03:09 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

* Barros Pena, Belen <belen.barros.pena@intel.com> [150331 18:00]:
> On 31/03/2015 10:39, "Anders Darander" <anders@chargestorm.se> wrote:

> >I don't know if this is the right thread but a couple of other things
> >that we really would need in order to fully be able to utilize this.

> >1) Some way of getting the built git branch shown in toaster. (As we
> >discussed on YPDD in D=FCsseldorf together with Axis). We're building
> >master and release branches for the same machine and image.

> If you mean the name of the branch, Toaster currently shows this in
> several places. One of them is the configuration information for a
> finished build, which displays a list of the layers used, and for each of
> them the branch name and the commit used. I've uploaded an screenshot here

> http://i.imgur.com/GPDwCh0.png

Good to know.  Just one question, is it possible to get the branch
information for one layer on the "All build" page? To avoid having to go
into each build to actually see what kind of build that was.=20

For instance, we're having a master layer, that checks out other layers
as submodules. Being able to direclty see which branch of the master all
builds originate from would be extremely useful (or another option would
be if the Jenkins job name could be shown, as that would provide more or
less the same information for us).

Hm, thinking more about that, being able to store the Jenkins job name
and build number in the toaster database would likely be really usefull.
That would allow Toaster to link back to the actual job and build in
Jenkins. Those could be retrieved from the environmant variables
BUILD_NUMBER and JOB_NAME in the Jenkins build.

> >2) In the proposed bug, would toaser be able to recieve and handle
> >toaster/build logs from different YP releases?

> Yes, but you would need to create a Toaster project for each release.
> Currently, for each Toaster project, you must select the YP release you
> want to use. A project can only use a single release at any given time.

I've just spent a couple of minutes looking for this (so excuse me if
it's obvious).

A Toaster project in this case, would that equal to different toaster
instances and databases, or would they still be able to be shown
together in the same "All builds" page? If it's not the latter, it would
be a nice feature for some upcoming release. (Though, it'll obviously
make the implementation slightly harder as support for older YP releases
would need to be kept).

Cheers,
Anders

--=20
Anders Darander
ChargeStorm AB / eStorm AB

