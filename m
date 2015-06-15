Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07DD9E00978; Mon, 15 Jun 2015 06:35:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31D47E00960
	for <yocto@yoctoproject.org>; Mon, 15 Jun 2015 06:35:04 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 4806FF811D9; Mon, 15 Jun 2015 07:35:04 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id CCA67F811D9;
	Mon, 15 Jun 2015 07:35:03 -0600 (MDT)
Message-ID: <557ED498.50406@mlbassoc.com>
Date: Mon, 15 Jun 2015 07:35:20 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: sstate black hole?
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
X-List-Received-Date: Mon, 15 Jun 2015 13:35:10 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I'm working with i.MX6 targets (meta-fsl-arm*).  For these
targets, some packages are "special" in that they use i.MX6
specific graphics support.  This ends up with an additional
layer of stratification, so my tmp/work tree has:
   all-amltd-linux
   cortexa9hf-vfp-neon-amltd-linux-gnueabi
   cortexa9hf-vfp-neon-mx6qdl-amltd-linux-gnueabi
   teton_p0382-amltd-linux-gnueabi
   x86_64-amltd-linux-gnueabi
   x86_64-linux

The packages that are built in tmp/work/cortex* are architecture
specific, not target specific, hence my question:

   If I build for two i.MX6 targets, identical in every way
   except for the ${MACHINE} name, if I use sstate to share
   the builds from target A when building for target B, why
   are the packages built in cortexa9hf-vfp-neon-mx6qdl-amltd-linux-gnueabi
   not shared by sstate?  I can see that they are present in
   the sstate cache, but they are always rebuilt for target B.
   I consider this incorrect behaviour as these are the same
   architecture and so they should be sharable via sstate.

Am I missing something here?  How can I determine why the
package from target A (sstate cache) is not usable by target B?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

