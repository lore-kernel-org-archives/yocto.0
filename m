Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93AFDE0085D; Tue, 31 Mar 2015 02:39:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-la0-f43.google.com (mail-la0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F6B9E00854
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 02:39:16 -0700 (PDT)
Received: by lajy8 with SMTP id y8so8295864laj.0
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 02:39:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-type
	:content-disposition:content-transfer-encoding:in-reply-to
	:organization:user-agent;
	bh=lQN6b0cmHGjzdh9COf2IXbVlc5jTVOh4W5/5g+sOyBs=;
	b=Tv2rjloJN9SgYIvKlfLKNUmoxqSlNozg0jRYw0sqvAQMNMvnw/GZqXhggNbH2d76By
	KOWdqHOrBfvuvTK0gdQ8R7/3sDQPwTaNfo6NHN4nYm1tK1x2skiuYkyIg1bcgQpAHFnB
	+WvuyZwHqhfNi37Sw6qq04fPsFZaW9wT1zGV9OjxrQmkZkwXK4AlZpAwiYaJGhpuu7az
	h48DAEqYixlyg4SJ8ucTbc2TUdwX/yFSaGu+JqfUEl/TMB+jsVBVmeJHhumnnESRADHh
	2gGM3t8ygk1f0TN+bPOh28TBfdCkfVzuysTwygSW7hUgX3nIpsqj+VnAXANevau8lnkj
	NQYg==
X-Gm-Message-State: ALoCoQmoIM1nFyoXrbODv1TiJf8YkHnPERKK870iMUqo/rqSnUCcuYMm1bY2iNgeOuFeLLH8EOEt
X-Received: by 10.112.133.35 with SMTP id oz3mr29553150lbb.98.1427794754486;
	Tue, 31 Mar 2015 02:39:14 -0700 (PDT)
Received: from ad.chargestorm.se (c-89-160-69-55.cust.bredband2.com.
	[89.160.69.55]) by mx.google.com with ESMTPSA id
	dw11sm2397452lbd.38.2015.03.31.02.39.13
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 31 Mar 2015 02:39:13 -0700 (PDT)
Date: Tue, 31 Mar 2015 11:39:11 +0200
From: Anders Darander <anders@chargestorm.se>
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>
Message-ID: <20150331093911.GC19097@ad.chargestorm.se>
Mail-Followup-To: "Barros Pena, Belen" <belen.barros.pena@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <D13F4AC9.58302%belen.barros.pena@intel.com>
MIME-Version: 1.0
In-Reply-To: <D13F4AC9.58302%belen.barros.pena@intel.com>
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
X-List-Received-Date: Tue, 31 Mar 2015 09:39:27 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

* Barros Pena, Belen <belen.barros.pena@intel.com> [150330 19:48]:
> We are considering working on integrating Toaster with Jenkins as part of
> the next Yocto Project release. Our thinking so far is collected in this
> Bugzilla feature:

> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7527

Ah, sounds really interesting. I've recently been thinking about how I
should be able to benefit from toaster, as we're running out automated
builds using Jenkins.

> Any thoughts? Are we missing something? Are we going about it in a
> completely wrong way?

Sounds quite good to me.

If there's some project configuration that needs to be done in Toaster,
I'd appreciate if as much as possible could be retrieved from our
current Jenkins setup (i.e. exported from the Jenkins plugin to
Toaster). (Not least as we're running a couple of scripts to source the
environment and handling some extra configurations needed; thus I'd
assume we couldn't just take the freestyle Jenkins project talked about
in b) of Alexandru 's first comment in #YOCTO-7527.

I don't know if this is the right thread but a couple of other things
that we really would need in order to fully be able to utilize this.

1) Some way of getting the built git branch shown in toaster. (As we
discussed on YPDD in D=FCsseldorf together with Axis). We're building
master and release branches for the same machine and image.

2) In the proposed bug, would toaser be able to recieve and handle
toaster/build logs from different YP releases? Normally we've at least
one active release branch, and possibly a master (or master-next) branch
that's going to the next YP release. If possible, I'd like to visualize
all this in the same Toaster instance.

Apart from that, I think this is really interesting!

Cheers,
Anders

--=20
Anders Darander
ChargeStorm AB / eStorm AB

