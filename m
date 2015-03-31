Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39F62E0092E; Tue, 31 Mar 2015 09:00:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12210E00959
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 09:00:01 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 31 Mar 2015 09:00:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,502,1422950400"; d="scan'208";a="474977143"
Received: from irsmsx107.ger.corp.intel.com ([163.33.3.99])
	by FMSMGA003.fm.intel.com with ESMTP; 31 Mar 2015 08:59:59 -0700
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.247]) by
	IRSMSX107.ger.corp.intel.com ([169.254.10.137]) with mapi id
	14.03.0224.002; Tue, 31 Mar 2015 16:59:59 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Anders Darander <anders@chargestorm.se>
Thread-Topic: [yocto] [RFC] Toaster integration with Jenkins
Thread-Index: AQHQa8u8/mH+GJeW/kS9ohkAl158lA==
Date: Tue, 31 Mar 2015 15:59:58 +0000
Message-ID: <D1407F76.584DD%belen.barros.pena@intel.com>
References: <D13F4AC9.58302%belen.barros.pena@intel.com>
	<20150331093911.GC19097@ad.chargestorm.se>
In-Reply-To: <20150331093911.GC19097@ad.chargestorm.se>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.8.150116
x-originating-ip: [10.237.224.31]
MIME-Version: 1.0
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
X-List-Received-Date: Tue, 31 Mar 2015 16:00:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <712DB7D24AF1B14B84D629FC8305A156@intel.com>
Content-Transfer-Encoding: quoted-printable

Hi Anders,

Thanks for the comments. Some answers inline.

Cheers

Bel=E9n

On 31/03/2015 10:39, "Anders Darander" <anders@chargestorm.se> wrote:

>Hi,
>
>* Barros Pena, Belen <belen.barros.pena@intel.com> [150330 19:48]:
>> We are considering working on integrating Toaster with Jenkins as part
>>of
>> the next Yocto Project release. Our thinking so far is collected in this
>> Bugzilla feature:
>
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7527
>
>Ah, sounds really interesting. I've recently been thinking about how I
>should be able to benefit from toaster, as we're running out automated
>builds using Jenkins.
>
>> Any thoughts? Are we missing something? Are we going about it in a
>> completely wrong way?
>
>Sounds quite good to me.
>
>If there's some project configuration that needs to be done in Toaster,
>I'd appreciate if as much as possible could be retrieved from our
>current Jenkins setup (i.e. exported from the Jenkins plugin to
>Toaster). (Not least as we're running a couple of scripts to source the
>environment and handling some extra configurations needed; thus I'd
>assume we couldn't just take the freestyle Jenkins project talked about
>in b) of Alexandru 's first comment in #YOCTO-7527.

I will add this to the Bugzilla entry, so that we keep track of all
possible issues.=20

>
>I don't know if this is the right thread but a couple of other things
>that we really would need in order to fully be able to utilize this.
>
>1) Some way of getting the built git branch shown in toaster. (As we
>discussed on YPDD in D=FCsseldorf together with Axis). We're building
>master and release branches for the same machine and image.

If you mean the name of the branch, Toaster currently shows this in
several places. One of them is the configuration information for a
finished build, which displays a list of the layers used, and for each of
them the branch name and the commit used. I've uploaded an screenshot here

http://i.imgur.com/GPDwCh0.png

>
>2) In the proposed bug, would toaser be able to recieve and handle
>toaster/build logs from different YP releases?

Yes, but you would need to create a Toaster project for each release.
Currently, for each Toaster project, you must select the YP release you
want to use. A project can only use a single release at any given time.


>Normally we've at least
>one active release branch, and possibly a master (or master-next) branch
>that's going to the next YP release. If possible, I'd like to visualize
>all this in the same Toaster instance.
>
>Apart from that, I think this is really interesting!
>
>Cheers,
>Anders
>
>--=20
>Anders Darander
>ChargeStorm AB / eStorm AB


