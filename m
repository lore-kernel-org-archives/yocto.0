Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDF21E00CC9; Tue,  1 Nov 2016 06:43:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.204.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp485.redcondor.net (smtp485.redcondor.net [208.80.204.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E52FE00CB6
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2016 06:43:52 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp485.redcondor.net ({3be039ea-4351-44b0-a8af-642c38b25916})
	via TCP (outbound) with ESMTPS id 20161101134149978_0485;
	Tue, 01 Nov 2016 13:41:49 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [216.191.234.70] (port=41195 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1c1ZJv-0004ba-2x; Tue, 01 Nov 2016 09:41:43 -0400
Date: Tue, 1 Nov 2016 09:40:41 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@ca624034.mitel.com
To: Christopher Larson <clarson@kergoth.com>
In-Reply-To: <CABcZANkhAGHrMTfJ7GeYxUTvJWiFf74Y7eyHe60LvK_A5HeJ+w@mail.gmail.com>
Message-ID: <alpine.LFD.2.20.1611010940200.379@ca624034.mitel.com>
References: <alpine.LFD.2.20.1611010455040.19781@ca624034.mitel.com>
	<CABcZANkhAGHrMTfJ7GeYxUTvJWiFf74Y7eyHe60LvK_A5HeJ+w@mail.gmail.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: why do some openstack layer.conf files add classes to BBFILES?
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
X-List-Received-Date: Tue, 01 Nov 2016 13:43:54 -0000
Content-Type: multipart/mixed; BOUNDARY="587864349-412835803-1478007643=:379"

--587864349-412835803-1478007643=:379
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Tue, 1 Nov 2016, Christopher Larson wrote:

>
> On Tue, Nov 1, 2016 at 1:57 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>         just noticed the following property for a bunch of the openstack
>       layers at:
>
>       http://git.yoctoproject.org/cgit/cgit.cgi/meta-cloud-services/tree/
>
>       some of the layer.conf files contain the line:
>
>       BBFILES += "${LAYERDIR}/recipes*/*/*.bb ${LAYERDIR}/recipes*/*/*.bbappend
>       ${LAYERDIR}/classes/*.bbclass"
>
>       why is the classes/ directory being appended to BBFILES? i thought the
>       purpose of BBPATH was to contain locations of .conf and .bbclass
>       files. i'm puzzled by the above.
>
>
> You’re right to be puzzled, as that addition is pointless and will do nothing useful.

  i already sent a patch to the meta-virt list to get rid of the
cruft.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--587864349-412835803-1478007643=:379--
