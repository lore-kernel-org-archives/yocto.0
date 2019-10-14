Return-Path: <mark.hatle@kernel.crashing.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE98CE00B23; Mon, 14 Oct 2019 14:21:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9976E007AA
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2019 14:21:38 -0700 (PDT)
Received: from Marks-MacBook-Pro.local ([76.164.61.198]) (authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id x9ELLUUn031105
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO); Mon, 14 Oct 2019 16:21:31 -0500
To: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Yocto Project <yocto@yoctoproject.org>
From: Mark Hatle <mark.hatle@kernel.crashing.org>
Message-ID: <a689c6cf-1b24-fd3d-19db-79c2000c9db1@kernel.crashing.org>
Date: Mon, 14 Oct 2019 16:21:29 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
	Gecko/20100101 Thunderbird/68.1.2
MIME-Version: 1.0
Subject: [layerindex-web] Enabled zeus, not working...
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
X-List-Received-Date: Mon, 14 Oct 2019 21:21:41 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

I added the zeus branch on the layers.openembedded.org today and it's not
showing up and being indexed.  Any idea why?

On my own personal layer index I did it and it worked fine.  So it may be
something related to the configuration.

Below are the errors from the update log:

Oct. 14, 2019, 7:13 p.m.

openembedded-core zeus
INFO: Collecting data for layer openembedded-core on branch zeus
ERROR: error: pathspec 'origin/zeus' did not match any file(s) known to git.
ERROR: Traceback (most recent call last):
  File "update_layer.py", line 370, in main
    (tinfoil, tempdir) = recipeparse.init_parser(settings, branch, bitbakepath,
nocheckout=options.nocheckout, logger=logger)
  File "/opt/layerindex/layerindex/recipeparse.py", line 34, in init_parser
    utils.checkout_repo(bitbakepath, bitbake_ref, logger=logger)
  File "/opt/layerindex/layerindex/utils.py", line 246, in checkout_repo
    runcmd(['git', 'checkout', commit], repodir, logger=logger)
  File "/opt/layerindex/layerindex/utils.py", line 327, in runcmd
    raise e
subprocess.CalledProcessError: Command '['git', 'checkout', 'origin/zeus']'
returned non-zero exit status 1

