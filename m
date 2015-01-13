Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 650D9E00874; Tue, 13 Jan 2015 07:25:49 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EE6DE00823
	for <yocto@yoctoproject.org>; Tue, 13 Jan 2015 07:25:37 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP; 13 Jan 2015 07:25:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,750,1413270000"; d="scan'208";a="636648969"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by orsmga001.jf.intel.com with ESMTP; 13 Jan 2015 07:25:36 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.116]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.116]) with mapi id
	14.03.0195.001; Tue, 13 Jan 2015 07:25:36 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Trevor Woerner <twoerner@gmail.com>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] PDF manual support
Thread-Index: AdAvPTfs2OLcKNIbRquUaPipNR9tdgARlN8AABCZZcD//4PIAIAAhZvw
Date: Tue, 13 Jan 2015 15:25:35 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237988E938FB@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237988E9387E@ORSMSX101.amr.corp.intel.com>
	<54B53112.6050302@gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237988E938C9@ORSMSX101.amr.corp.intel.com>
	<54B53844.4080605@gmail.com>
In-Reply-To: <54B53844.4080605@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: PDF manual support
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
X-List-Received-Date: Tue, 13 Jan 2015 15:25:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I guess I could leave that target in the Makefile but remove it from the "a=
ll:" target.  So, you would have to specifically call out that target to ma=
ke PDF versions (e.g. make pdf DOC=3D<manual>).

>-----Original Message-----
>From: Trevor Woerner [mailto:twoerner@gmail.com]
>Sent: Tuesday, January 13, 2015 7:23 AM
>To: Rifenbark, Scott M; Yocto discussion list
>Subject: Re: [yocto] PDF manual support
>
>On 01/13/15 09:57, Rifenbark, Scott M wrote:
>> Are you generating those on your own or are you using the "pdf:" target
>from the Makefile that is currently part of the repo?
>
>I'm using the pdf target from the Makefile:
>
>    $ make pdf DOC=3Ddev-manual
>
>usually by running:
>
>
>https://github.com/twoerner/meta-
>trevor/blob/master/misc/build_yocto_docs.sh

