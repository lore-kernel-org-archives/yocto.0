Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7940EE010AE; Tue,  3 Jul 2018 23:44:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1CDBE00EBF
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2018 23:44:02 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	03 Jul 2018 23:44:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,306,1526367600"; d="scan'208";a="69940228"
Received: from kmsmsx154.gar.corp.intel.com ([172.21.73.14])
	by orsmga001.jf.intel.com with ESMTP; 03 Jul 2018 23:44:01 -0700
Received: from pgsmsx103.gar.corp.intel.com ([169.254.2.131]) by
	KMSMSX154.gar.corp.intel.com ([169.254.12.93]) with mapi id
	14.03.0319.002; Wed, 4 Jul 2018 14:42:20 +0800
From: "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [PATCH] [yocto-ab-helper] utils.py: Resolved unicode data
	expansion
Thread-Index: AQHUEm+B3v5pXgFmfEOz1Y4aJeZz4qR897AAgAGeoSQ=
Date: Wed, 4 Jul 2018 06:42:20 +0000
Message-ID: <AA9B40170ABA1047B45E714CB2B866B7068DE9A6@PGSMSX103.gar.corp.intel.com>
References: <1530582284-6467-1-git-send-email-aaron.chun.yew.chan@intel.com>,
	<bbf68c28f4d23fb85f282f59190fd898e93e87ef.camel@linuxfoundation.org>
In-Reply-To: <bbf68c28f4d23fb85f282f59190fd898e93e87ef.camel@linuxfoundation.org>
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
X-List-Received-Date: Wed, 04 Jul 2018 06:44:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Richard,

This morning I had the new autobuilder setup from scratch with the latest p=
atch you just check out, thanks for that and rollout the fix below manually=
. Everything else is clean and I did what you asked me to.
However this did not resolved the data expansion when called utils.getconfi=
g("REPO_STASH_DIR, ourconfig), this applies when you invoke ourconfig["REPO=
_STASH_DIR"]. Both yields the same errors.
We assume the  JSON dumps are properly handled in ourconfig[c] when we hand=
les config[c] but that is not the case. I do see there is a growing issues =
as your strategy to use nested JSON, however=20
we wont be able to handle all of these conditions needed when nested JSON b=
ecomes complex. Anyway, i'll leave it you decide what will be best course o=
f action.

STDERR logs on autobuilder: (poky-tiny)
--------------------------------------
mv: cannot move '/home/pokybuild/yocto-worker/poky-tiny/' to a subdirectory=
 of itself, '${BASE_HOMEDIR}/git/mirror/1530669213-56172/poky-tiny'
Traceback (most recent call last):
  File "/home/pokybuild/yocto-autobuilder-helper/janitor/clobberdir", line =
52, in <module>
    subprocess.check_call(['mv', x, trashdest])
  File "/usr/lib/python2.7/subprocess.py", line 541, in check_call
    raise CalledProcessError(retcode, cmd)
subprocess.CalledProcessError: Command '['mv', '/home/pokybuild/yocto-worke=
r/poky-tiny/', u'${BASE_HOMEDIR}/git/mirror/1530669213-56172']' returned no=
n-zero exit status 1

also, this action causes directory named ${BASE_HOMEDIR} to be created unde=
r ~/yocto-worker/poky-tiny/build

This patch [https://lists.yoctoproject.org/pipermail/yocto/2018-July/041685=
.html] which submitted today resolves the Step 1: Clobber build dir on auto=
builder.=20

Best wishes,
Aaron
________________________________________
From: richard.purdie@linuxfoundation.org [richard.purdie@linuxfoundation.or=
g]
Sent: Tuesday, July 03, 2018 9:25 PM
To: Chan, Aaron Chun Yew; yocto@yoctoproject.org
Subject: Re: [PATCH] [yocto-ab-helper] utils.py: Resolved unicode data expa=
nsion

On Tue, 2018-07-03 at 09:44 +0800, Aaron Chan wrote:
> Updated patch to trigger handlestr() when unicode string is found
> during iteration json.loads(config.json). Unicode and list with data
> expansion were not handled hence adding this patch to handle
> conversion.
> Added a debug message to dump pretty json data populated to
> ourconfig[c].
>
> e.g "REPO_STASH_DIR" read as ${BASE_HOMEDIR}/git/mirror, where it
> should be
>     "REPO_STASH_DIR" as /home/pokybuild/git/mirror
>
> Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
> ---
>  scripts/utils.py | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)

It took me a while to figure out why you were doing this.

We can't expand the data half way through loading the json file as
other pieces of data may later override the values. We therefore have
to defer expansion of variables until the file is completely loaded.

We therefore have to expand the variables later on, when we read them.

I pointed you at this commit:

http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder-helper/commit/?=
id=3Dd6253df2bc21752bc0b53202e491140b0994ff63

which changes direct accesses into ourconfig, e.g.:

ourconfig["REPO_STASH_DIR"]

into accesses using a function:

utils.getconfig("REPO_STASH_DIR", ourconfig)

and that function handles the expansion.

You should therefore be able to fix the clobberdir issue by using the
getconfig() method instead of direct access?

Cheers,

Richard



