Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1723E01506; Tue,  3 Jul 2018 06:25:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D49E8E00ECA
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2018 06:25:47 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w63DPecA000572
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Tue, 3 Jul 2018 14:25:41 +0100
Message-ID: <bbf68c28f4d23fb85f282f59190fd898e93e87ef.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Aaron Chan <aaron.chun.yew.chan@intel.com>, yocto@yoctoproject.org
Date: Tue, 03 Jul 2018 14:25:40 +0100
In-Reply-To: <1530582284-6467-1-git-send-email-aaron.chun.yew.chan@intel.com>
References: <1530582284-6467-1-git-send-email-aaron.chun.yew.chan@intel.com>
X-Mailer: Evolution 3.28.1-2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.4 at dan
X-Virus-Status: Clean
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
X-List-Received-Date: Tue, 03 Jul 2018 13:25:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

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

http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder-helper/commit/?id=d6253df2bc21752bc0b53202e491140b0994ff63

which changes direct accesses into ourconfig, e.g.:

ourconfig["REPO_STASH_DIR"]

into accesses using a function:

utils.getconfig("REPO_STASH_DIR", ourconfig)

and that function handles the expansion.

You should therefore be able to fix the clobberdir issue by using the
getconfig() method instead of direct access?

Cheers,

Richard



