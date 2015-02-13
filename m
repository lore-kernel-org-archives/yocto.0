Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78208E008DD; Fri, 13 Feb 2015 03:18:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A1EEE0089B
	for <yocto@yoctoproject.org>; Fri, 13 Feb 2015 03:18:38 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP; 13 Feb 2015 03:18:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,570,1418112000"; d="scan'208";a="651707787"
Received: from irsmsx153.ger.corp.intel.com ([163.33.192.75])
	by orsmga001.jf.intel.com with ESMTP; 13 Feb 2015 03:18:26 -0800
Received: from irsmsx109.ger.corp.intel.com ([169.254.13.103]) by
	IRSMSX153.ger.corp.intel.com ([169.254.9.2]) with mapi id
	14.03.0195.001; Fri, 13 Feb 2015 11:18:24 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Gary Thomas <gary@mlbassoc.com>, Yocto Project <yocto@yoctoproject.org>
Thread-Topic: [yocto] Why did my build need to redo so many tasks?
Thread-Index: AQHQR37I7fCM3xmO90mafmj/c1NMNg==
Date: Fri, 13 Feb 2015 11:18:24 +0000
Message-ID: <D1038CAC.54442%belen.barros.pena@intel.com>
References: <54DD1A4C.60004@mlbassoc.com> <20150212221946.GH2272@jama>
In-Reply-To: <20150212221946.GH2272@jama>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.7.141117
x-originating-ip: [10.237.224.32]
MIME-Version: 1.0
Subject: Re: Why did my build need to redo so many tasks?
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
X-List-Received-Date: Fri, 13 Feb 2015 11:18:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <65FE58A67F5A264CB5B201126D31E394@intel.com>
Content-Transfer-Encoding: quoted-printable



On 12/02/2015 22:19, "Martin Jansa" <martin.jansa@gmail.com> wrote:

>On Thu, Feb 12, 2015 at 02:25:32PM -0700, Gary Thomas wrote:
>> Yesterday, I built a large image using Poky/Yocto 870323cac1e
>> Today I updated my Poky repo to 231d4a9d3
>>=20
>> When I rebuilt the same image, bitbake kicked off more than
>> 5200 tasks, building virtually every package from scratch.
>>=20
>> How can I tell why this happened?  I don't have buildhistory
>> enabled, but I do still have the tmp & sstate-cache trees
>> from the process.  Is there enough info laying around that
>> I can tell, e.g. why the GCC toolchain had to be rebuilt
>> completely?
>>=20
>> Am I correct in assuming that bitbake-whatchanged is really
>> a Quija board and can only tell me [in advance] what will need
>> to be done if my layers change?  When I ran it after the long
>> build above, it didn't really tell me much :-(
>
>I'm using
>openembedded-core/scripts/sstate-diff-machines.sh
>to create sstate signature snaphosts for interesting builds, then
>when I'm surprised by number of re-executions, I create another snapshot
>and compare them.

And there is Toaster, which also reports on sstate use, although after the
build is done and it might not give you the same granularity as the other
suggestions. It looks nice, though ;)

Bel=E9n

>
>--=20
>Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com


