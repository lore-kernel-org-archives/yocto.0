Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70144E00B3F; Wed,  4 Jul 2018 22:41:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 614C4E008E0
	for <yocto@yoctoproject.org>; Wed,  4 Jul 2018 22:41:33 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Jul 2018 22:41:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,310,1526367600"; d="scan'208";a="242754673"
Received: from pgsmsx102.gar.corp.intel.com ([10.221.44.80])
	by fmsmga005.fm.intel.com with ESMTP; 04 Jul 2018 22:41:32 -0700
Received: from pgsmsx103.gar.corp.intel.com ([169.254.2.4]) by
	PGSMSX102.gar.corp.intel.com ([169.254.6.26]) with mapi id
	14.03.0319.002; Thu, 5 Jul 2018 13:38:16 +0800
From: "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [PATCH] [yocto-ab-helper] utils.py: Resolved unicode data
	expansion
Thread-Index: AQHUEm+B3v5pXgFmfEOz1Y4aJeZz4qR897AAgAGeoST//5Z5gIAB7AgG
Date: Thu, 5 Jul 2018 05:38:15 +0000
Message-ID: <AA9B40170ABA1047B45E714CB2B866B7068EF20C@PGSMSX103.gar.corp.intel.com>
References: <1530582284-6467-1-git-send-email-aaron.chun.yew.chan@intel.com>
	,<bbf68c28f4d23fb85f282f59190fd898e93e87ef.camel@linuxfoundation.org>
	<AA9B40170ABA1047B45E714CB2B866B7068DE9A6@PGSMSX103.gar.corp.intel.com>,
	<b9d1bb59d864d8720b7d1398c36a5d6e6d262a20.camel@linuxfoundation.org>
In-Reply-To: <b9d1bb59d864d8720b7d1398c36a5d6e6d262a20.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.19.9.42]
MIME-Version: 1.0
Subject: Re: [PATCH] [yocto-ab-helper] utils.py: Resolved unicode data expansion
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
X-List-Received-Date: Thu, 05 Jul 2018 05:41:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Richard,

This is what I did on which you asked me to do

~/yocto-autobuilder-helper/janitor/clobberdir

1. Change to use python3=20
    #!/usr/bin/env/python2 to #!/usr/bin/env/python3
   =20
    Retain and add print to debug message
    trashdir =3D ourconfig["TRASH_DIR"]
    print(trashdir)  =20

Results:
mv: cannot move '/home/pokybuild/yocto-worker/nightly-x86-64-bsp/' to a sub=
directory of itself, '${BASE_HOMEDIR}/git/trash/1530767509-20564/nightly-x8=
6-64-bsp'
${BASE_HOMEDIR}/git/trash   <----------------------- debug message
Traceback (most recent call last):
  File "/home/pokybuild/yocto-autobuilder-helper/janitor/clobberdir", line =
54, in <module>
    subprocess.check_call(['mv', x, trashdest])
  File "/usr/lib/python3.5/subprocess.py", line 581, in check_call
    raise CalledProcessError(retcode, cmd)
subprocess.CalledProcessError: Command '['mv', '/home/pokybuild/yocto-worke=
r/nightly-x86-64-bsp/', '${BASE_HOMEDIR}/git/trash/1530767509-20564']' retu=
rned non-zero exit status 1
program finished with exit code 1

2. Change to use python3
    #!/usr/bin/env python2 to #!/usr/bin/env/python3
   =20
    Change and print to debug message
    trashdir =3D utils.getconfig("TRASH_DIR", ourconfig)
    print(trashdir)

Results:
using PTY: False
/home/pokybuild/git/trash      <----------------------- debug message
program finished with exit code 0
elapsedTime=3D0.050781

I'll updated the patch on Item 2 in https://lists.yoctoproject.org/pipermai=
l/yocto/2018-July/041694.html
Thanks,

Best wishes,
Aaron
________________________________________
From: richard.purdie@linuxfoundation.org [richard.purdie@linuxfoundation.or=
g]
Sent: Wednesday, July 04, 2018 3:51 PM
To: Chan, Aaron Chun Yew; yocto@yoctoproject.org
Subject: Re: [PATCH] [yocto-ab-helper] utils.py: Resolved unicode data expa=
nsion

Hi Aaron,

On Wed, 2018-07-04 at 06:42 +0000, Chan, Aaron Chun Yew wrote:
> This morning I had the new autobuilder setup from scratch with the
> latest patch you just check out, thanks for that and rollout the fix
> below manually. Everything else is clean and I did what you asked me
> to.
> However this did not resolved the data expansion when called
> utils.getconfig("REPO_STASH_DIR, ourconfig), this applies when you
> invoke ourconfig["REPO_STASH_DIR"]. Both yields the same errors.
> We assume the  JSON dumps are properly handled in ourconfig[c] when
> we handles config[c] but that is not the case. I do see there is a
> growing issues as your strategy to use nested JSON, however
> we wont be able to handle all of these conditions needed when nested
> JSON becomes complex. Anyway, i'll leave it you decide what will be
> best course of action.

I had another look at this as we shouldn't be seeing unicode items in
this in python3. I've realised that clobberdir is using python2. If you
change clobberdir to use python3 does this mean the unicode part of the
patch is no longer needed? I think that may be the real problem!

Cheers,

Richard

